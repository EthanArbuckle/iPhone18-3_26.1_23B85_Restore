@interface CSAdBlockerEnabledPolicy
- (CSAdBlockerEnabledPolicy)init;
- (void)_subscribeEventMonitors;
@end

@implementation CSAdBlockerEnabledPolicy

- (void)_subscribeEventMonitors
{
  v3 = +[CSSiriEnabledMonitor sharedInstance];
  [(CSAdBlockerEnabledPolicy *)self subscribeEventMonitor:v3];
}

- (CSAdBlockerEnabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = CSAdBlockerEnabledPolicy;
  v2 = [(CSAdBlockerEnabledPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSAdBlockerEnabledPolicy *)v2 _subscribeEventMonitors];
    [(CSAdBlockerEnabledPolicy *)v3 _addContinuousAudioFingerprintEnabledConditions];
  }

  return v3;
}

@end