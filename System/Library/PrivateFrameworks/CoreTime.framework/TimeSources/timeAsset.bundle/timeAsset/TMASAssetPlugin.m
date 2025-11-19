@interface TMASAssetPlugin
- (TMASAssetPlugin)initWithClock:(id)a3 daemonCore:(id)a4;
- (void)dealloc;
@end

@implementation TMASAssetPlugin

- (TMASAssetPlugin)initWithClock:(id)a3 daemonCore:(id)a4
{
  v6 = [(TMASAssetPlugin *)self init];
  if (v6)
  {
    qword_89C0 = os_log_create("com.apple.timed", "assetManager");
    v6->_daemonCore = a4;
    v6->_clock = a3;
    v7 = objc_alloc_init(TMASAssetManager);
    v6->assetManager = v7;
    [(TMASAssetManager *)v7 setDaemonCore:a4];
    v8 = [[TMASAsset alloc] initWithAssetType:@"com.apple.MobileAsset.timed" assetSpecifier:@"locationTZRules" fileName:@"TimeZoneRules.plist" destination:@"/var/db/timed/TimeZoneRules.plist"];
    v6->coreTZRules = v8;
    [(TMASAssetManager *)v6->assetManager addAsset:v8 withInterestReason:@"looking for new versions"];
    v9 = qword_89C0;
    if (os_log_type_enabled(qword_89C0, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "initialized", v11, 2u);
    }
  }

  return v6;
}

- (void)dealloc
{
  self->assetManager = 0;

  self->coreTZRules = 0;
  v3.receiver = self;
  v3.super_class = TMASAssetPlugin;
  [(TMASAssetPlugin *)&v3 dealloc];
}

@end