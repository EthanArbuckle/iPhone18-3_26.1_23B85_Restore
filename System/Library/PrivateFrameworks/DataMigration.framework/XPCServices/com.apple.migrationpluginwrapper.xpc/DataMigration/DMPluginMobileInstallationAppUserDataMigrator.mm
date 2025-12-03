@interface DMPluginMobileInstallationAppUserDataMigrator
- (id)activity;
- (void)faultWithLog:(id)log message:(id)message;
@end

@implementation DMPluginMobileInstallationAppUserDataMigrator

- (id)activity
{
  v2 = _os_activity_create(&_mh_execute_header, "plugin.MobileInstallationAppUserDataMigrator", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)faultWithLog:(id)log message:(id)message
{
  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
  {
    sub_100004C60();
  }
}

@end