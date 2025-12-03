@interface DTActivityTraceTapServiceDelegate
+ (void)registerCapabilities:(id)capabilities;
- (DTActivityTraceTapServiceDelegate)initWithMessageSender:(id)sender;
- (id)createConfigWithPlist:(id)plist;
- (id)willStartWithConfig:(id)config;
@end

@implementation DTActivityTraceTapServiceDelegate

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = objc_opt_new();
  [v5 setObject:&unk_285A36B58 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.deferred"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.immediate"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.activitytracetap.windowed"];
  [v5 setObject:&unk_285A36B88 forKeyedSubscript:@"com.apple.instruments.server.services.httparchiverecording"];
  [v5 setObject:&unk_285A36B70 forKeyedSubscript:@"com.apple.instruments.server.services.hitches.recording"];
  [DTTapService registerCapabilities:v5 forDelegateClass:self forConnection:capabilitiesCopy];
}

- (DTActivityTraceTapServiceDelegate)initWithMessageSender:(id)sender
{
  senderCopy = sender;
  v9.receiver = self;
  v9.super_class = DTActivityTraceTapServiceDelegate;
  v6 = [(DTActivityTraceTapServiceDelegate *)&v9 init];
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
  v4 = [(DTTapConfig *)[DTActivityTraceTapConfig alloc] initWithPlist:plistCopy];

  [(DTTapConfig *)v4 setRunningMetadataChangedHandler:&unk_285A188F0];

  return v4;
}

- (id)willStartWithConfig:(id)config
{
  v3 = objc_opt_new();
  [v3 setKind:0];

  return v3;
}

@end