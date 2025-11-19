@interface CSListeningEnabledPolicyWatch
- (CSListeningEnabledPolicyWatch)init;
- (void)_addListeningEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSListeningEnabledPolicyWatch

- (void)_addListeningEnabledConditions
{
  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_100250488];
  if (CSHasAOP())
  {
    v3 = &stru_1002504A8;
  }

  else
  {
    v3 = &stru_1002504C8;
  }

  [(CSListeningEnabledPolicyWatch *)self addConditions:v3];
  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_1002504E8];
  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_100250508];
  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_100250528];
  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_100250548];

  [(CSListeningEnabledPolicyWatch *)self addConditions:&stru_100250568];
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSSiriAssertionMonitor sharedInstance];
  [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v3];

  v4 = +[CSSiriEnabledMonitor sharedInstance];
  [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v4];

  v5 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v5];

  v6 = +[CSFirstUnlockMonitor sharedInstance];
  [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v6];

  v7 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v7];

  if (+[CSUtils supportHandsFree])
  {
    v8 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
    [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v8];

    v9 = +[CSPhraseSpotterEnabledMonitor sharedInstance];
    [(CSListeningEnabledPolicyWatch *)self subscribeEventMonitor:v9];
  }
}

- (CSListeningEnabledPolicyWatch)init
{
  v5.receiver = self;
  v5.super_class = CSListeningEnabledPolicyWatch;
  v2 = [(CSListeningEnabledPolicyWatch *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSListeningEnabledPolicyWatch *)v2 _addListeningEnabledConditions];
    [(CSListeningEnabledPolicyWatch *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end