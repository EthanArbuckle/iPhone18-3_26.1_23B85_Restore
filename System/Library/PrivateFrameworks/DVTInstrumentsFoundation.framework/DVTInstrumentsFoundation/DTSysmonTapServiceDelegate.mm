@interface DTSysmonTapServiceDelegate
+ (void)registerCapabilities:(id)a3;
- (DTSysmonTapServiceDelegate)initWithMessageSender:(id)a3;
- (id)createConfigWithPlist:(id)a3;
- (id)willStartWithConfig:(id)a3;
@end

@implementation DTSysmonTapServiceDelegate

+ (void)registerCapabilities:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x2822399C0];
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    [v5 setObject:&unk_285A36BA0 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap"];
    [v6 setObject:&unk_285A36BB8 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap.deferred"];
    [v6 setObject:&unk_285A36BB8 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap.immediate"];
    [v6 setObject:&unk_285A36BB8 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap.windowed"];
    [v6 setObject:&unk_285A36BB8 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap.processes"];
    [v6 setObject:&unk_285A36BB8 forKeyedSubscript:@"com.apple.instruments.server.services.sysmontap.system"];
  }

  [DTTapService registerCapabilities:v6 forDelegateClass:a1 forConnection:v7];
}

- (DTSysmonTapServiceDelegate)initWithMessageSender:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTSysmonTapServiceDelegate;
  v6 = [(DTSysmonTapServiceDelegate *)&v9 init];
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
  v5 = [(DTTapConfig *)[DTSysmonTapConfig alloc] initWithPlist:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FBBBCC;
  v7[3] = &unk_278EF30B0;
  v7[4] = self;
  [(DTTapConfig *)v5 setRunningMetadataChangedHandler:v7];

  return v5;
}

- (id)willStartWithConfig:(id)a3
{
  v3 = objc_opt_new();
  [v3 setKind:0];
  [v3 setTapVersion:0x10000];

  return v3;
}

@end