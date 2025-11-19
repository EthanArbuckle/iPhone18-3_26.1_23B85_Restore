@interface UARPUpdaterServiceAFUPreferences
+ (id)sharedInstance;
- (NSURL)overriddenFirmwareAssetDirectoryURL;
- (UARPUpdaterServiceAFUPreferences)init;
@end

@implementation UARPUpdaterServiceAFUPreferences

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001748;
  block[3] = &unk_100004290;
  block[4] = a1;
  if (qword_1000088E8 != -1)
  {
    dispatch_once(&qword_1000088E8, block);
  }

  v2 = qword_1000088E0;

  return v2;
}

- (UARPUpdaterServiceAFUPreferences)init
{
  v8.receiver = self;
  v8.super_class = UARPUpdaterServiceAFUPreferences;
  v2 = [(UARPUpdaterServiceAFUPreferences *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.UARPUpdaterServiceAFU", "preferences");
    log = v2->_log;
    v2->_log = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.accessoryupdater.UARPUpdaterServiceAFU"];
    userPrefs = v2->_userPrefs;
    v2->_userPrefs = v5;
  }

  return v2;
}

- (NSURL)overriddenFirmwareAssetDirectoryURL
{
  v3 = [(NSUserDefaults *)self->_userPrefs objectForKey:@"OverrideAssetDirectoryURL"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100001CD8(v3, log);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end