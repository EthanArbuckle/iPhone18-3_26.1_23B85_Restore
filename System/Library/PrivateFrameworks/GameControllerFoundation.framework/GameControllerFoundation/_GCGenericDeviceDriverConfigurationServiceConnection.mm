@interface _GCGenericDeviceDriverConfigurationServiceConnection
- (id)applyConfiguration:(id)configuration;
@end

@implementation _GCGenericDeviceDriverConfigurationServiceConnection

- (id)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___GCGenericDeviceDriverConfigurationServiceConnection_applyConfiguration___block_invoke;
  v8[3] = &unk_1E8415018;
  v9 = configurationCopy;
  v5 = configurationCopy;
  v6 = [(_GCDeviceDriverServiceConnection *)self serviceVendorRequestWithLabel:@"Apply Configuration" handler:v8];

  return v6;
}

@end