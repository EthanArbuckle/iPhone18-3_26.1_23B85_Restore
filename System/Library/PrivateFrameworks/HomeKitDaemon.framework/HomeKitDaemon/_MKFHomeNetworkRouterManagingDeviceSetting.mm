@interface _MKFHomeNetworkRouterManagingDeviceSetting
- (MKFHomeNetworkRouterManagingDeviceSettingDatabaseID)databaseID;
@end

@implementation _MKFHomeNetworkRouterManagingDeviceSetting

- (MKFHomeNetworkRouterManagingDeviceSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeNetworkRouterManagingDeviceSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end