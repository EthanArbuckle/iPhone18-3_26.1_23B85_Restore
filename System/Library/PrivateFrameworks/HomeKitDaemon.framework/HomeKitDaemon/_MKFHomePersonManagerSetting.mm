@interface _MKFHomePersonManagerSetting
- (MKFHomePersonManagerSettingDatabaseID)databaseID;
@end

@implementation _MKFHomePersonManagerSetting

- (MKFHomePersonManagerSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomePersonManagerSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end