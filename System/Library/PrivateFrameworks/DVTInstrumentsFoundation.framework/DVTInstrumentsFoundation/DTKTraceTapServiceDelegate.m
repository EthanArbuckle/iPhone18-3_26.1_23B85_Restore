@interface DTKTraceTapServiceDelegate
+ (void)registerCapabilities:(id)a3;
- (BOOL)requiresExpiredPIDCacheForConfig:(id)a3;
- (DTKTraceTapServiceDelegate)initWithMessageSender:(id)a3;
- (id)createConfigWithPlist:(id)a3;
- (id)willStartWithConfig:(id)a3;
@end

@implementation DTKTraceTapServiceDelegate

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  v5 = +[DTDeviceKTraceSupport capabilities];
  [DTTapService registerCapabilities:v5 forDelegateClass:a1 forConnection:v4];
}

- (DTKTraceTapServiceDelegate)initWithMessageSender:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTKTraceTapServiceDelegate;
  v6 = [(DTKTraceTapServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageSender, a3);
  }

  return v7;
}

- (id)createConfigWithPlist:(id)a3
{
  v4 = a3;
  v5 = [(DTTapConfig *)[DTKTraceTapConfig alloc] initWithPlist:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE2C2C;
  v7[3] = &unk_278EF30B0;
  v7[4] = self;
  [(DTTapConfig *)v5 setRunningMetadataChangedHandler:v7];

  return v5;
}

- (BOOL)requiresExpiredPIDCacheForConfig:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FE2D9C;
  v6[3] = &unk_278EF26B0;
  v6[4] = &v7;
  [v3 enumerateTriggerConfigs:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)willStartWithConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setKind:0];
  v5 = [v3 triggerConfigCount];

  [v4 setTriggerCount:v5];
  [v4 setCoreCount:DTGetCoreCount()];
  [v4 setTapVersion:0x10000];

  return v4;
}

@end