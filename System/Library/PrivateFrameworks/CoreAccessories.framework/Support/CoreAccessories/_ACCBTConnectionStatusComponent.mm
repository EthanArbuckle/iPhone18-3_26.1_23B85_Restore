@interface _ACCBTConnectionStatusComponent
- (_ACCBTConnectionStatusComponent)initWithUID:(id)d componentUID:(id)iD name:(id)name macAddr:(id)addr;
- (id)copyDictionary;
@end

@implementation _ACCBTConnectionStatusComponent

- (_ACCBTConnectionStatusComponent)initWithUID:(id)d componentUID:(id)iD name:(id)name macAddr:(id)addr
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  addrCopy = addr;
  v18.receiver = self;
  v18.super_class = _ACCBTConnectionStatusComponent;
  v15 = [(_ACCBTConnectionStatusComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessoryUID, d);
    objc_storeStrong(&v16->_componentUID, iD);
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v16->_macAddr, addr);
    *&v16->_enabled = 0;
    v16->_needToUnplugBTDevice = 0;
  }

  return v16;
}

- (id)copyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:self->_accessoryUID forKey:@"ACCBluetoothStatusComponentInfoAccessoryUID"];
  [v3 setObject:self->_componentUID forKey:@"ACCBluetoothStatusComponentInfoUID"];
  [v3 setObject:self->_macAddr forKey:@"ACCBluetoothStatusComponentInfoMACAddr"];
  [v3 setObject:self->_name forKey:@"ACCBluetoothStatusComponentInfoName"];
  v4 = [NSNumber numberWithBool:self->_enabled];
  [v3 setObject:v4 forKey:@"ACCBluetoothStatusComponentInfoEnabled"];

  return v3;
}

@end