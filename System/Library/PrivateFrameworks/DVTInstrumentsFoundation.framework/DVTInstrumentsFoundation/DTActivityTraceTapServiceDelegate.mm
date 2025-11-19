@interface DTActivityTraceTapServiceDelegate
+ (void)registerCapabilities:(id)a3;
- (DTActivityTraceTapServiceDelegate)initWithMessageSender:(id)a3;
- (id)createConfigWithPlist:(id)a3;
- (id)willStartWithConfig:(id)a3;
@end

@implementation DTActivityTraceTapServiceDelegate

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:&unk_285A36B58 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.deferred"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.immediate"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.windowed"];
  [v5 setObject:&unk_285A36B88 forKeyedSubscript:@"com.apple.instruments.server.services.httparchiverecording"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.hitches.recording"];
  [DTTapService registerCapabilities:v5 forDelegateClass:a1 forConnection:v4];
}

- (DTActivityTraceTapServiceDelegate)initWithMessageSender:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTActivityTraceTapServiceDelegate;
  v6 = [(DTActivityTraceTapServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageSender, a3);
  }

  return v7;
}

- (id)createConfigWithPlist:(id)a3
{
  v3 = a3;
  v4 = [(DTTapConfig *)[DTActivityTraceTapConfig alloc] initWithPlist:v3];

  [(DTTapConfig *)v4 setRunningMetadataChangedHandler:&unk_285A188F0];

  return v4;
}

- (id)willStartWithConfig:(id)a3
{
  v3 = objc_opt_new();
  [v3 setKind:0];

  return v3;
}

@end