@interface DTKTraceTapServiceDelegate
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)requiresExpiredPIDCacheForConfig:(id)config;
- (DTKTraceTapServiceDelegate)initWithMessageSender:(id)sender;
- (id)createConfigWithPlist:(id)plist;
- (id)willStartWithConfig:(id)config;
@end

@implementation DTKTraceTapServiceDelegate

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = +[DTDeviceKTraceSupport capabilities];
  [DTTapService registerCapabilities:v5 forDelegateClass:self forConnection:capabilitiesCopy];
}

- (DTKTraceTapServiceDelegate)initWithMessageSender:(id)sender
{
  senderCopy = sender;
  v9.receiver = self;
  v9.super_class = DTKTraceTapServiceDelegate;
  v6 = [(DTKTraceTapServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageSender, sender);
  }

  return v7;
}

- (id)createConfigWithPlist:(id)plist
{
  plistCopy = plist;
  v5 = [(DTTapConfig *)[DTKTraceTapConfig alloc] initWithPlist:plistCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE2C2C;
  v7[3] = &unk_278EF30B0;
  v7[4] = self;
  [(DTTapConfig *)v5 setRunningMetadataChangedHandler:v7];

  return v5;
}

- (BOOL)requiresExpiredPIDCacheForConfig:(id)config
{
  configCopy = config;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FE2D9C;
  v6[3] = &unk_278EF26B0;
  v6[4] = &v7;
  [configCopy enumerateTriggerConfigs:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)willStartWithConfig:(id)config
{
  configCopy = config;
  v4 = objc_opt_new();
  [v4 setKind:0];
  triggerConfigCount = [configCopy triggerConfigCount];

  [v4 setTriggerCount:triggerConfigCount];
  [v4 setCoreCount:DTGetCoreCount()];
  [v4 setTapVersion:0x10000];

  return v4;
}

@end