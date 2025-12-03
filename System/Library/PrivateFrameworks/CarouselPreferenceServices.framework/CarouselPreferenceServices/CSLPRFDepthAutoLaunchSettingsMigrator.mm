@interface CSLPRFDepthAutoLaunchSettingsMigrator
- (BOOL)needsMigration;
- (void)migrateIfNeeded;
@end

@implementation CSLPRFDepthAutoLaunchSettingsMigrator

- (BOOL)needsMigration
{
  v2 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"AutoLaunchDepthSettings" defaultValue:0 notification:0];
  value = [(CSLPRFTwoWaySyncSetting *)v2 value];

  if (value)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"AutoLaunchDepthApp" defaultValue:0 notification:0];
    value2 = [(CSLPRFTwoWaySyncSetting *)v5 value];
    v4 = value2 != 0;
  }

  return v4;
}

- (void)migrateIfNeeded
{
  if ([(CSLPRFDepthAutoLaunchSettingsMigrator *)self needsMigration])
  {
    v4 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingKincaidImpl);
    v2 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl);
    settings = [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)v4 settings];
    [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)v2 applySettings:settings];
    [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)v4 removeLegacySettings];
  }
}

@end