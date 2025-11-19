@interface MRRemoveSyncedOutputDevicesMessage
- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUID:(id)a3;
- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUIDs:(id)a3;
- (NSArray)outputDeviceUIDs;
@end

@implementation MRRemoveSyncedOutputDevicesMessage

- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];

    v7 = [(MRRemoveSyncedOutputDevicesMessage *)self initWithOutputDeviceUIDs:v6, v10, v11];
    self = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MRRemoveSyncedOutputDevicesMessage)initWithOutputDeviceUIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRRemoveSyncedOutputDevicesMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRemoveOutputDevicesMessageProtobuf);
    v7 = [v4 mutableCopy];
    [(_MRRemoveOutputDevicesMessageProtobuf *)v6 setOutputDeviceUIDs:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSArray)outputDeviceUIDs
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUIDs];

  return v3;
}

@end