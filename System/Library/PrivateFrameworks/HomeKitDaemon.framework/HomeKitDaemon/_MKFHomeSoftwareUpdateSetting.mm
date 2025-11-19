@interface _MKFHomeSoftwareUpdateSetting
- (MKFHomeSoftwareUpdateSettingDatabaseID)databaseID;
@end

@implementation _MKFHomeSoftwareUpdateSetting

- (MKFHomeSoftwareUpdateSettingDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeSoftwareUpdateSettingDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end