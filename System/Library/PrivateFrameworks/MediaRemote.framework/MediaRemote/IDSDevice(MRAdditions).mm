@interface IDSDevice(MRAdditions)
- (MRAVDistantOutputDevice)mr_outputDevice;
- (MRDeviceInfo)mr_deviceInfo;
- (uint64_t)mr_deviceClass;
- (uint64_t)mr_deviceSubType;
@end

@implementation IDSDevice(MRAdditions)

- (MRDeviceInfo)mr_deviceInfo
{
  v2 = objc_alloc_init(MRDeviceInfo);
  uniqueIDOverride = [self uniqueIDOverride];
  [(MRDeviceInfo *)v2 setDeviceUID:uniqueIDOverride];

  name = [self name];
  [(MRDeviceInfo *)v2 setName:name];

  modelIdentifier = [self modelIdentifier];
  [(MRDeviceInfo *)v2 setModelID:modelIdentifier];

  -[MRDeviceInfo setDeviceClass:](v2, "setDeviceClass:", [self mr_deviceClass]);

  return v2;
}

- (MRAVDistantOutputDevice)mr_outputDevice
{
  v2 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  name = [self name];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setName:name];

  uniqueIDOverride = [self uniqueIDOverride];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setUniqueIdentifier:uniqueIDOverride];

  modelIdentifier = [self modelIdentifier];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setModelID:modelIdentifier];

  uniqueIDOverride2 = [self uniqueIDOverride];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setGroupID:uniqueIDOverride2];

  -[_MRAVOutputDeviceDescriptorProtobuf setDeviceSubType:](v2, "setDeviceSubType:", [self mr_deviceSubType]);
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setDeviceType:4];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setIsRemoteControllable:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setIsGroupLeader:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setGroupContainsGroupLeader:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setTransportType:4];
  -[_MRAVOutputDeviceDescriptorProtobuf setHostDeviceClass:](v2, "setHostDeviceClass:", _MRDeviceInfoMessageProtobuf_DeviceClassFromModel([self mr_deviceClass]));
  v7 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v7;
}

- (uint64_t)mr_deviceClass
{
  deviceType = [self deviceType];
  if ((deviceType - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1A2B80C58[deviceType - 1];
  }
}

- (uint64_t)mr_deviceSubType
{
  deviceType = [self deviceType];
  if ((deviceType - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A2B80C90[deviceType - 1];
  }
}

@end