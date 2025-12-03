@interface CSSelfTriggerDetectorEnabledPolicyDarwin
- (BOOL)_shouldEnableMyriadFriendlySelfTrigger;
- (CSSelfTriggerDetectorEnabledPolicyDarwin)init;
- (void)_addSelfTriggerDetectorEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSSelfTriggerDetectorEnabledPolicyDarwin

- (BOOL)_shouldEnableMyriadFriendlySelfTrigger
{
  v2 = +[CSSelfTriggerEnabledMonitorAccessory sharedInstance];
  isEnabled = [v2 isEnabled];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (isEnabled)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSSelfTriggerDetectorEnabledPolicyDarwin _shouldEnableMyriadFriendlySelfTrigger]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device meets myriad-friendly selfTrigger condition : %{public}@", &v7, 0x16u);
  }

  return isEnabled;
}

- (void)_addSelfTriggerDetectorEnabledConditions
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005BAA4;
  v3[3] = &unk_10024F4F0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(CSSelfTriggerDetectorEnabledPolicyDarwin *)self addConditions:v3];
  [(CSSelfTriggerDetectorEnabledPolicyDarwin *)self addConditions:&stru_10024F510];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSSelfTriggerEnabledMonitorAccessory sharedInstance];
  [(CSSelfTriggerDetectorEnabledPolicyDarwin *)self subscribeEventMonitor:v3];

  v4 = +[CSHostPowerStateMonitor sharedInstance];
  [(CSSelfTriggerDetectorEnabledPolicyDarwin *)self subscribeEventMonitor:v4];
}

- (CSSelfTriggerDetectorEnabledPolicyDarwin)init
{
  v13.receiver = self;
  v13.super_class = CSSelfTriggerDetectorEnabledPolicyDarwin;
  v2 = [(CSSelfTriggerDetectorEnabledPolicyDarwin *)&v13 init];
  if (v2)
  {
    v3 = +[CSBuiltInVoiceTriggerEnabledPolicy builtInVoiceTriggerEnabledPolicy];
    voiceTriggerEnabledPolicy = v2->_voiceTriggerEnabledPolicy;
    v2->_voiceTriggerEnabledPolicy = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_voiceTriggerEnabledPolicy;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10005BE20;
    v10 = &unk_100253000;
    objc_copyWeak(&v11, &location);
    [(CSPolicy *)v5 setCallback:&v7];
    [(CSSelfTriggerDetectorEnabledPolicyDarwin *)v2 _subscribeEventMonitors:v7];
    [(CSSelfTriggerDetectorEnabledPolicyDarwin *)v2 _addSelfTriggerDetectorEnabledConditions];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end