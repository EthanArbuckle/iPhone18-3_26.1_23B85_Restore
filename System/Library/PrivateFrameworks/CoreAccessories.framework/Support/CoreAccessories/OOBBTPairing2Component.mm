@interface OOBBTPairing2Component
- (OOBBTPairing2Component)initWithComponentInfo:(id)info;
- (OOBBTPairing2Component)initWithUID:(id)d componentID:(id)iD name:(id)name macAddr:(id)addr;
@end

@implementation OOBBTPairing2Component

- (OOBBTPairing2Component)initWithUID:(id)d componentID:(id)iD name:(id)name macAddr:(id)addr
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  addrCopy = addr;
  v18.receiver = self;
  v18.super_class = OOBBTPairing2Component;
  v15 = [(OOBBTPairing2Component *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_componentUID, d);
    objc_storeStrong(&v16->_componentID, iD);
    objc_storeStrong(&v16->_componentName, name);
    objc_storeStrong(&v16->_macAddr, addr);
    *&v16->_status = 0;
  }

  return v16;
}

- (OOBBTPairing2Component)initWithComponentInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = OOBBTPairing2Component;
  v5 = [(OOBBTPairing2Component *)&v15 init];
  if (v5)
  {
    v6 = [infoCopy objectForKey:@"ACCOOBBTPairingComponentInfoUID"];
    componentUID = v5->_componentUID;
    v5->_componentUID = v6;

    v8 = [infoCopy objectForKey:@"ACCOOBBTPairingComponentInfoID"];
    componentID = v5->_componentID;
    v5->_componentID = v8;

    v10 = [infoCopy objectForKey:@"ACCOOBBTPairingComponentInfoName"];
    componentName = v5->_componentName;
    v5->_componentName = v10;

    v12 = [infoCopy objectForKey:@"ACCOOBBTPairingComponentInfoMacAddr"];
    macAddr = v5->_macAddr;
    v5->_macAddr = v12;

    *&v5->_status = 0;
  }

  return v5;
}

@end