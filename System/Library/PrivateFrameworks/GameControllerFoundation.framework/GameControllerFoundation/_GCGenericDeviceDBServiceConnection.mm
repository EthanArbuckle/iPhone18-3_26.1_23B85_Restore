@interface _GCGenericDeviceDBServiceConnection
- (id)hasModelForDevice:(id)device;
- (id)preparedModelForDevice:(id)device;
@end

@implementation _GCGenericDeviceDBServiceConnection

- (id)hasModelForDevice:(id)device
{
  deviceCopy = device;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57___GCGenericDeviceDBServiceConnection_hasModelForDevice___block_invoke;
  v8[3] = &unk_1E8414DF0;
  v9 = deviceCopy;
  v5 = deviceCopy;
  v6 = [(GCConfigXPCServiceServiceConnection *)self serviceVendorRequestWithLabel:@"Has Model For Device" handler:v8];

  return v6;
}

- (id)preparedModelForDevice:(id)device
{
  deviceCopy = device;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___GCGenericDeviceDBServiceConnection_preparedModelForDevice___block_invoke;
  v8[3] = &unk_1E8414DF0;
  v9 = deviceCopy;
  v5 = deviceCopy;
  v6 = [(GCConfigXPCServiceServiceConnection *)self serviceVendorRequestWithLabel:@"Has Model For Device" handler:v8];

  return v6;
}

@end