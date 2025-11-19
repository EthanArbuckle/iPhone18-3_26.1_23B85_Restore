@interface _MKFHomeMediaSetting
- (MKFHomeMediaSettingDatabaseID)databaseID;
@end

@implementation _MKFHomeMediaSetting

- (MKFHomeMediaSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeMediaSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end