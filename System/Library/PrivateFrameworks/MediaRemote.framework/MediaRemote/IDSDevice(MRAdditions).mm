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
  v3 = [a1 uniqueIDOverride];
  [(MRDeviceInfo *)v2 setDeviceUID:v3];

  v4 = [a1 name];
  [(MRDeviceInfo *)v2 setName:v4];

  v5 = [a1 modelIdentifier];
  [(MRDeviceInfo *)v2 setModelID:v5];

  -[MRDeviceInfo setDeviceClass:](v2, "setDeviceClass:", [a1 mr_deviceClass]);

  return v2;
}

- (MRAVDistantOutputDevice)mr_outputDevice
{
  v2 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  v3 = [a1 name];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setName:v3];

  v4 = [a1 uniqueIDOverride];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setUniqueIdentifier:v4];

  v5 = [a1 modelIdentifier];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setModelID:v5];

  v6 = [a1 uniqueIDOverride];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setGroupID:v6];

  -[_MRAVOutputDeviceDescriptorProtobuf setDeviceSubType:](v2, "setDeviceSubType:", [a1 mr_deviceSubType]);
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setDeviceType:4];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setIsRemoteControllable:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setIsGroupLeader:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setGroupContainsGroupLeader:1];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v2 setTransportType:4];
  -[_MRAVOutputDeviceDescriptorProtobuf setHostDeviceClass:](v2, "setHostDeviceClass:", _MRDeviceInfoMessageProtobuf_DeviceClassFromModel([a1 mr_deviceClass]));
  v7 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v7;
}

- (uint64_t)mr_deviceClass
{
  v1 = [a1 deviceType];
  if ((v1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1A2B80C58[v1 - 1];
  }
}

- (uint64_t)mr_deviceSubType
{
  v1 = [a1 deviceType];
  if ((v1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A2B80C90[v1 - 1];
  }
}

@end