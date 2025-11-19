@interface MBPeerInitRequest
- (MBPeerInitRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerInitRequest)initWithTargetDeviceUDID:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 buildVersion:(id)a6 productVersion:(id)a7;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerInitRequest

- (id)dictionaryRepresentation
{
  v11[0] = @"MBProtocolVersion";
  v3 = [(MBPeerInitRequest *)self targetProtocolVersion];
  v12[0] = v3;
  v11[1] = @"MBDeviceUDID";
  v4 = [(MBPeerInitRequest *)self targetDeviceUDID];
  v12[1] = v4;
  v11[2] = @"MBDeviceClass";
  v5 = [(MBPeerInitRequest *)self targetDeviceClass];
  v12[2] = v5;
  v11[3] = @"MBDeviceName";
  v6 = [(MBPeerInitRequest *)self targetDeviceName];
  v12[3] = v6;
  v11[4] = @"MBBuildVersion";
  v7 = [(MBPeerInitRequest *)self targetBuildVersion];
  v12[4] = v7;
  v11[5] = @"MBProductVersion";
  v8 = [(MBPeerInitRequest *)self targetProductVersion];
  v12[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (MBPeerInitRequest)initWithTargetDeviceUDID:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 buildVersion:(id)a6 productVersion:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = MBPeerInitRequest;
  v17 = [(MBPeerInitRequest *)&v22 init];
  v18 = v17;
  if (v17)
  {
    targetProtocolVersion = v17->_targetProtocolVersion;
    v17->_targetProtocolVersion = &off_1003E0DF8;

    objc_storeStrong(&v18->_targetDeviceUDID, a3);
    objc_storeStrong(&v18->_targetDeviceName, a4);
    objc_storeStrong(&v18->_targetDeviceClass, a5);
    objc_storeStrong(&v18->_targetBuildVersion, a6);
    objc_storeStrong(&v18->_targetProductVersion, a7);
  }

  return v18;
}

- (MBPeerInitRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = MBPeerInitRequest;
  v7 = [(MBPeerInitRequest *)&v22 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBProtocolVersion"];
  targetProtocolVersion = v7->_targetProtocolVersion;
  v7->_targetProtocolVersion = v8;

  v10 = [v6 objectForKeyedSubscript:@"MBDeviceUDID"];
  targetDeviceUDID = v7->_targetDeviceUDID;
  v7->_targetDeviceUDID = v10;

  v12 = [v6 objectForKeyedSubscript:@"MBDeviceName"];
  targetDeviceName = v7->_targetDeviceName;
  v7->_targetDeviceName = v12;

  v14 = [v6 objectForKeyedSubscript:@"MBDeviceClass"];
  targetDeviceClass = v7->_targetDeviceClass;
  v7->_targetDeviceClass = v14;

  v16 = [v6 objectForKeyedSubscript:@"MBBuildVersion"];
  targetBuildVersion = v7->_targetBuildVersion;
  v7->_targetBuildVersion = v16;

  v18 = [v6 objectForKeyedSubscript:@"MBProductVersion"];
  targetProductVersion = v7->_targetProductVersion;
  v7->_targetProductVersion = v18;

  if (!v7->_targetProtocolVersion)
  {
    goto LABEL_9;
  }

  if (v7->_targetDeviceUDID && v7->_targetDeviceName && v7->_targetDeviceClass && v7->_targetProductVersion && v7->_targetBuildVersion)
  {
LABEL_8:
    v20 = v7;
  }

  else
  {
LABEL_9:
    if (a4)
    {
      [MBError errorWithCode:11 format:@"Failed to decode request. Missing property in dictionary %@", v6];
      *a4 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  v5 = [(MBPeerInitRequest *)self targetProtocolVersion];
  v6 = [v5 unsignedLongValue];
  v7 = [(MBPeerInitRequest *)self targetDeviceUDID];
  v8 = [(MBPeerInitRequest *)self targetDeviceName];
  v9 = [(MBPeerInitRequest *)self targetDeviceClass];
  v10 = [(MBPeerInitRequest *)self targetProductVersion];
  v11 = [(MBPeerInitRequest *)self targetBuildVersion];
  v12 = [NSString stringWithFormat:@"<%s: %p protocol=%lu, deviceUDID=%@, deviceName=%@, deviceClass=%@, productVersion=%@, buildVersion=%@>", Name, self, v6, v7, v8, v9, v10, v11];;

  return v12;
}

@end