@interface _MKFHomeNetworkRouterSetting
- (MKFHomeNetworkRouterSettingDatabaseID)databaseID;
@end

@implementation _MKFHomeNetworkRouterSetting

- (MKFHomeNetworkRouterSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeNetworkRouterSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end