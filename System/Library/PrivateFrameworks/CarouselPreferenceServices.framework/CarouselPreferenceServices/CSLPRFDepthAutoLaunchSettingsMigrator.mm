@interface CSLPRFDepthAutoLaunchSettingsMigrator
- (BOOL)needsMigration;
- (void)migrateIfNeeded;
@end

@implementation CSLPRFDepthAutoLaunchSettingsMigrator

- (BOOL)needsMigration
{
  v2 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"AutoLaunchDepthSettings" defaultValue:0 notification:0];
  v3 = [(CSLPRFTwoWaySyncSetting *)v2 value];

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"AutoLaunchDepthApp" defaultValue:0 notification:0];
    v6 = [(CSLPRFTwoWaySyncSetting *)v5 value];
    v4 = v6 != 0;
  }

  return v4;
}

- (void)migrateIfNeeded
{
  if ([(CSLPRFDepthAutoLaunchSettingsMigrator *)self needsMigration])
  {
    v4 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingKincaidImpl);
    v2 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl);
    v3 = [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)v4 settings];
    [(CSLPRFDepthAutoLaunchAppSettingLighthouseImpl *)v2 applySettings:v3];
    [(CSLPRFDepthAutoLaunchAppSettingKincaidImpl *)v4 removeLegacySettings];
  }
}

@end