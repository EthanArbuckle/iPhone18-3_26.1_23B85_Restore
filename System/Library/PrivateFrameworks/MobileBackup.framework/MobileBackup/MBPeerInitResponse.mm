@interface MBPeerInitResponse
- (MBPeerInitResponse)initWithDictionary:(id)dictionary error:(id *)error;
- (MBPeerInitResponse)initWithSourceDeviceUDID:(id)d deviceName:(id)name deviceClass:(id)class buildVersion:(id)version productVersion:(id)productVersion;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerInitResponse

- (id)dictionaryRepresentation
{
  v13[0] = @"MBProtocolVersion";
  sourceProtocolVersion = [(MBPeerInitResponse *)self sourceProtocolVersion];
  v14[0] = sourceProtocolVersion;
  v13[1] = @"MBDeviceUDID";
  sourceDeviceUDID = [(MBPeerInitResponse *)self sourceDeviceUDID];
  v14[1] = sourceDeviceUDID;
  v13[2] = @"MBDeviceName";
  sourceDeviceName = [(MBPeerInitResponse *)self sourceDeviceName];
  v14[2] = sourceDeviceName;
  v13[3] = @"MBDeviceClass";
  sourceDeviceClass = [(MBPeerInitResponse *)self sourceDeviceClass];
  v14[3] = sourceDeviceClass;
  v13[4] = @"MBBuildVersion";
  sourceBuildVersion = [(MBPeerInitResponse *)self sourceBuildVersion];
  v14[4] = sourceBuildVersion;
  v13[5] = @"MBProductVersion";
  sourceProductVersion = [(MBPeerInitResponse *)self sourceProductVersion];
  v14[5] = sourceProductVersion;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  sourceRequiredProductVersion = [(MBPeerInitResponse *)self sourceRequiredProductVersion];
  if (sourceRequiredProductVersion)
  {
    v11 = [v9 mutableCopy];
    [v11 setObject:sourceRequiredProductVersion forKeyedSubscript:@"MBRequiredProductVersion"];

    v9 = v11;
  }

  return v9;
}

- (MBPeerInitResponse)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = MBPeerInitResponse;
  v7 = [(MBPeerInitResponse *)&v24 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MBProtocolVersion"];
  sourceProtocolVersion = v7->_sourceProtocolVersion;
  v7->_sourceProtocolVersion = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"MBDeviceUDID"];
  sourceDeviceUDID = v7->_sourceDeviceUDID;
  v7->_sourceDeviceUDID = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"MBDeviceName"];
  sourceDeviceName = v7->_sourceDeviceName;
  v7->_sourceDeviceName = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"MBDeviceClass"];
  sourceDeviceClass = v7->_sourceDeviceClass;
  v7->_sourceDeviceClass = v14;

  v16 = [dictionaryCopy objectForKeyedSubscript:@"MBBuildVersion"];
  sourceBuildVersion = v7->_sourceBuildVersion;
  v7->_sourceBuildVersion = v16;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"MBProductVersion"];
  sourceProductVersion = v7->_sourceProductVersion;
  v7->_sourceProductVersion = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"MBRequiredProductVersion"];
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
    if (error)
    {
      [MBError errorWithCode:11 format:@"Failed to decode response. Missing property in dictionary %@", dictionaryCopy];
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (MBPeerInitResponse)initWithSourceDeviceUDID:(id)d deviceName:(id)name deviceClass:(id)class buildVersion:(id)version productVersion:(id)productVersion
{
  dCopy = d;
  nameCopy = name;
  classCopy = class;
  versionCopy = version;
  productVersionCopy = productVersion;
  v22.receiver = self;
  v22.super_class = MBPeerInitResponse;
  v17 = [(MBPeerInitResponse *)&v22 init];
  v18 = v17;
  if (v17)
  {
    sourceProtocolVersion = v17->_sourceProtocolVersion;
    v17->_sourceProtocolVersion = &off_1003E0DF8;

    objc_storeStrong(&v18->_sourceDeviceUDID, d);
    objc_storeStrong(&v18->_sourceDeviceName, name);
    objc_storeStrong(&v18->_sourceDeviceClass, class);
    objc_storeStrong(&v18->_sourceBuildVersion, version);
    objc_storeStrong(&v18->_sourceProductVersion, productVersion);
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  sourceProtocolVersion = [(MBPeerInitResponse *)self sourceProtocolVersion];
  unsignedLongValue = [sourceProtocolVersion unsignedLongValue];
  sourceDeviceUDID = [(MBPeerInitResponse *)self sourceDeviceUDID];
  sourceDeviceName = [(MBPeerInitResponse *)self sourceDeviceName];
  sourceDeviceClass = [(MBPeerInitResponse *)self sourceDeviceClass];
  sourceProductVersion = [(MBPeerInitResponse *)self sourceProductVersion];
  sourceBuildVersion = [(MBPeerInitResponse *)self sourceBuildVersion];
  sourceRequiredProductVersion = [(MBPeerInitResponse *)self sourceRequiredProductVersion];
  v13 = [NSString stringWithFormat:@"<%s: %p protocol=%lu, deviceUDID=%@, deviceName=%@, deviceClass=%@, productVersion=%@, buildVersion=%@, requiredProductVersion=%@>", Name, self, unsignedLongValue, sourceDeviceUDID, sourceDeviceName, sourceDeviceClass, sourceProductVersion, sourceBuildVersion, sourceRequiredProductVersion];;

  return v13;
}

@end