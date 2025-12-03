@interface MRRemoveSyncedOutputDevicesMessage
- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUID:(id)d;
- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUIDs:(id)ds;
- (NSArray)outputDeviceUIDs;
@end

@implementation MRRemoveSyncedOutputDevicesMessage

- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    v4 = MEMORY[0x1E695DEC8];
    dCopy2 = d;
    v6 = [v4 arrayWithObjects:&dCopy count:1];

    v7 = [(MRRemoveSyncedOutputDevicesMessage *)self initWithOutputDeviceUIDs:v6, dCopy, v11];
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = MRRemoveSyncedOutputDevicesMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRemoveOutputDevicesMessageProtobuf);
    v7 = [dsCopy mutableCopy];
    [(_MRRemoveOutputDevicesMessageProtobuf *)v6 setOutputDeviceUIDs:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSArray)outputDeviceUIDs
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUIDs = [underlyingCodableMessage outputDeviceUIDs];

  return outputDeviceUIDs;
}

@end