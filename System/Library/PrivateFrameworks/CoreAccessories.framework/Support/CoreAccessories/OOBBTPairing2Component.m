@interface OOBBTPairing2Component
- (OOBBTPairing2Component)initWithComponentInfo:(id)a3;
- (OOBBTPairing2Component)initWithUID:(id)a3 componentID:(id)a4 name:(id)a5 macAddr:(id)a6;
@end

@implementation OOBBTPairing2Component

- (OOBBTPairing2Component)initWithUID:(id)a3 componentID:(id)a4 name:(id)a5 macAddr:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = OOBBTPairing2Component;
  v15 = [(OOBBTPairing2Component *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_componentUID, a3);
    objc_storeStrong(&v16->_componentID, a4);
    objc_storeStrong(&v16->_componentName, a5);
    objc_storeStrong(&v16->_macAddr, a6);
    *&v16->_status = 0;
  }

  return v16;
}

- (OOBBTPairing2Component)initWithComponentInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = OOBBTPairing2Component;
  v5 = [(OOBBTPairing2Component *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ACCOOBBTPairingComponentInfoUID"];
    componentUID = v5->_componentUID;
    v5->_componentUID = v6;

    v8 = [v4 objectForKey:@"ACCOOBBTPairingComponentInfoID"];
    componentID = v5->_componentID;
    v5->_componentID = v8;

    v10 = [v4 objectForKey:@"ACCOOBBTPairingComponentInfoName"];
    componentName = v5->_componentName;
    v5->_componentName = v10;

    v12 = [v4 objectForKey:@"ACCOOBBTPairingComponentInfoMacAddr"];
    macAddr = v5->_macAddr;
    v5->_macAddr = v12;

    *&v5->_status = 0;
  }

  return v5;
}

@end