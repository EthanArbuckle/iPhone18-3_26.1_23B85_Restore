@interface MBPeerInitResponse
- (MBPeerInitResponse)initWithDictionary:(id)a3 error:(id *)a4;
- (MBPeerInitResponse)initWithSourceDeviceUDID:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 buildVersion:(id)a6 productVersion:(id)a7;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerInitResponse

- (id)dictionaryRepresentation
{
  v13[0] = @"MBProtocolVersion";
  v3 = [(MBPeerInitResponse *)self sourceProtocolVersion];
  v14[0] = v3;
  v13[1] = @"MBDeviceUDID";
  v4 = [(MBPeerInitResponse *)self sourceDeviceUDID];
  v14[1] = v4;
  v13[2] = @"MBDeviceName";
  v5 = [(MBPeerInitResponse *)self sourceDeviceName];
  v14[2] = v5;
  v13[3] = @"MBDeviceClass";
  v6 = [(MBPeerInitResponse *)self sourceDeviceClass];
  v14[3] = v6;
  v13[4] = @"MBBuildVersion";
  v7 = [(MBPeerInitResponse *)self sourceBuildVersion];
  v14[4] = v7;
  v13[5] = @"MBProductVersion";
  v8 = [(MBPeerInitResponse *)self sourceProductVersion];
  v14[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  v10 = [(MBPeerInitResponse *)self sourceRequiredProductVersion];
  if (v10)
  {
    v11 = [v9 mutableCopy];
    [v11 setObject:v10 forKeyedSubscript:@"MBRequiredProductVersion"];

    v9 = v11;
  }

  return v9;
}

- (MBPeerInitResponse)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = MBPeerInitResponse;
  v7 = [(MBPeerInitResponse *)&v24 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v6 objectForKeyedSubscript:@"MBProtocolVersion"];
  sourceProtocolVersion = v7->_sourceProtocolVersion;
  v7->_sourceProtocolVersion = v8;

  v10 = [v6 objectForKeyedSubscript:@"MBDeviceUDID"];
  sourceDeviceUDID = v7->_sourceDeviceUDID;
  v7->_sourceDeviceUDID = v10;

  v12 = [v6 objectForKeyedSubscript:@"MBDeviceName"];
  sourceDeviceName = v7->_sourceDeviceName;
  v7->_sourceDeviceName = v12;

  v14 = [v6 objectForKeyedSubscript:@"MBDeviceClass"];
  sourceDeviceClass = v7->_sourceDeviceClass;
  v7->_sourceDeviceClass = v14;

  v16 = [v6 objectForKeyedSubscript:@"MBBuildVersion"];
  sourceBuildVersion = v7->_sourceBuildVersion;
  v7->_sourceBuildVersion = v16;

  v18 = [v6 objectForKeyedSubscript:@"MBProductVersion"];
  sourceProductVersion = v7->_sourceProductVersion;
  v7->_sourceProductVersion = v18;

  v20 = [v6 objectForKeyedSubscript:@"MBRequiredProductVersion"];
  sourceRequiredProductVersion = v7->_sourceRequiredProductVersion;
  v7->_sourceRequiredProductVersion = v20;

  if (!v7->_sourceProtocolVersion)
  {
    goto LABEL_9;
  }

  if (v7->_sourceDeviceUDID && v7->_sourceDeviceName && v7->_sourceDeviceClass && v7->_sourceProductVersion && v7->_sourceBuildVersion)
  {
LABEL_8:
    v22 = v7;
  }

  else
  {
LABEL_9:
    if (a4)
    {
      [MBError errorWithCode:11 format:@"Failed to decode response. Missing property in dictionary %@", v6];
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (MBPeerInitResponse)initWithSourceDeviceUDID:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 buildVersion:(id)a6 productVersion:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = MBPeerInitResponse;
  v17 = [(MBPeerInitResponse *)&v22 init];
  v18 = v17;
  if (v17)
  {
    sourceProtocolVersion = v17->_sourceProtocolVersion;
    v17->_sourceProtocolVersion = &off_1003E0DF8;

    objc_storeStrong(&v18->_sourceDeviceUDID, a3);
    objc_storeStrong(&v18->_sourceDeviceName, a4);
    objc_storeStrong(&v18->_sourceDeviceClass, a5);
    objc_storeStrong(&v18->_sourceBuildVersion, a6);
    objc_storeStrong(&v18->_sourceProductVersion, a7);
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  v5 = [(MBPeerInitResponse *)self sourceProtocolVersion];
  v6 = [v5 unsignedLongValue];
  v7 = [(MBPeerInitResponse *)self sourceDeviceUDID];
  v8 = [(MBPeerInitResponse *)self sourceDeviceName];
  v9 = [(MBPeerInitResponse *)self sourceDeviceClass];
  v10 = [(MBPeerInitResponse *)self sourceProductVersion];
  v11 = [(MBPeerInitResponse *)self sourceBuildVersion];
  v12 = [(MBPeerInitResponse *)self sourceRequiredProductVersion];
  v13 = [NSString stringWithFormat:@"<%s: %p protocol=%lu, deviceUDID=%@, deviceName=%@, deviceClass=%@, productVersion=%@, buildVersion=%@, requiredProductVersion=%@>", Name, self, v6, v7, v8, v9, v10, v11, v12];;

  return v13;
}

@end