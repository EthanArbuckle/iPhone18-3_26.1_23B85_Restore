@interface _HPSAccessorySettingServiceConnectionProvider
- (NSXPCConnection)accessorySettingServiceConnection;
@end

@implementation _HPSAccessorySettingServiceConnectionProvider

- (NSXPCConnection)accessorySettingServiceConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_accessorySettingServiceConnection;
  if (!v3)
  {
    accessorySettingServiceConnection = selfCopy->_accessorySettingServiceConnection;
    if (!accessorySettingServiceConnection)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.homepodaccessorysettings.server" options:4096];
      v6 = selfCopy->_accessorySettingServiceConnection;
      selfCopy->_accessorySettingServiceConnection = v5;

      accessorySettingServiceConnection = selfCopy->_accessorySettingServiceConnection;
    }

    v3 = accessorySettingServiceConnection;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

@end