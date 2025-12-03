@interface DMPluginmessageLegacyAccountsMigrator
- (id)activity;
- (void)faultWithLog:(id)log message:(id)message;
@end

@implementation DMPluginmessageLegacyAccountsMigrator

- (id)activity
{
  v2 = _os_activity_create(&_mh_execute_header, "plugin.messageLegacyAccountsMigrator", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)faultWithLog:(id)log message:(id)message
{
  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
  {
    sub_100005960();
  }
}

@end