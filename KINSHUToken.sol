// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public tokenname = "VIKASHANAND";
    string public tokenabbrv = "KINSHU";
    uint public totalsupply = 0;
   
    // mapping variable here
    mapping(address => uint) public balances;
    
    // mint function
    function mint(address _address, uint _value) public {
        totalsupply += _value;
        balances[_address] += _value;
    }
    
    // burn function
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalsupply -= _value;
            balances[_address] -= _value;
            }  
        } 
     }
