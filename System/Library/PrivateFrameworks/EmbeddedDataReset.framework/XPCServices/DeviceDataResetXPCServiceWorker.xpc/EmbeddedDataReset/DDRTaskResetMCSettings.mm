@interface DDRTaskResetMCSettings
- (void)run;
@end

@implementation DDRTaskResetMCSettings

- (void)run
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 resetAllSettingsToDefaults];
}

@end