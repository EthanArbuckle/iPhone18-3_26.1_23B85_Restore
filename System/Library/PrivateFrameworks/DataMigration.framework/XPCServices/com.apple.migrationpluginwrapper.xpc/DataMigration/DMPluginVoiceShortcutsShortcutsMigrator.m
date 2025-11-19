@interface DMPluginVoiceShortcutsShortcutsMigrator
- (id)activity;
- (void)faultWithLog:(id)a3 message:(id)a4;
@end

@implementation DMPluginVoiceShortcutsShortcutsMigrator

- (id)activity
{
  v2 = _os_activity_create(&_mh_execute_header, "plugin.VoiceShortcutsShortcutsMigrator", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)faultWithLog:(id)a3 message:(id)a4
{
  if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
  {
    sub_100005070();
  }
}

@end