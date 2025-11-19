@interface DMPluginmobilemailmigrator
- (id)activity;
- (void)faultWithLog:(id)a3 message:(id)a4;
@end

@implementation DMPluginmobilemailmigrator

- (id)activity
{
  v2 = _os_activity_create(&_mh_execute_header, "plugin.mobilemailmigrator", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)faultWithLog:(id)a3 message:(id)a4
{
  if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
  {
    sub_100005A30();
  }
}

@end