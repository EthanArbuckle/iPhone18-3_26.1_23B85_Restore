@interface _HPSAccessorySettingServiceConnectionProvider
- (NSXPCConnection)accessorySettingServiceConnection;
@end

@implementation _HPSAccessorySettingServiceConnectionProvider

- (NSXPCConnection)accessorySettingServiceConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_accessorySettingServiceConnection;
  if (!v3)
  {
    accessorySettingServiceConnection = v2->_accessorySettingServiceConnection;
    if (!accessorySettingServiceConnection)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.homepodaccessorysettings.server" options:4096];
      v6 = v2->_accessorySettingServiceConnection;
      v2->_accessorySettingServiceConnection = v5;

      accessorySettingServiceConnection = v2->_accessorySettingServiceConnection;
    }

    v3 = accessorySettingServiceConnection;
  }

  objc_sync_exit(v2);

  return v3;
}

@end