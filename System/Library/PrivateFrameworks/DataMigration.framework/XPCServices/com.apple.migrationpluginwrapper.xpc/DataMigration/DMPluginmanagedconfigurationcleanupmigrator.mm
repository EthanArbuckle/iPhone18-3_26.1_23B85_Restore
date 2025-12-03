@interface DMPluginmanagedconfigurationcleanupmigrator
- (id)activity;
- (void)faultWithLog:(id)log message:(id)message;
@end

@implementation DMPluginmanagedconfigurationcleanupmigrator

- (id)activity
{
  v2 = _os_activity_create(&_mh_execute_header, "plugin.managedconfigurationcleanupmigrator", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)faultWithLog:(id)log message:(id)message
{
  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
  {
    sub_1000057C0();
  }
}

@end