@interface CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS
- (BOOL)_deviceSupportMyriadFriendlySelfTrigger;
- (BOOL)_shouldEnableMyriadFriendlySelfTrigger;
- (CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS)init;
- (void)_addSelfTriggerDetectorEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS

- (BOOL)_shouldEnableMyriadFriendlySelfTrigger
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[CSSiriEnabledMonitor sharedInstance];
    isEnabled = [v3 isEnabled];

    if ([(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self _deviceSupportMyriadFriendlySelfTrigger])
    {
      v5 = +[CSAVCallConnectedMonitor sharedInstance];
      if (([v5 hasConnectedAVCall] & isEnabled) == 1)
      {
        v6 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
        if ([v6 isSystemShellStarted])
        {
          v7 = +[CSFirstUnlockMonitor sharedInstance];
          isFirstUnlocked = [v7 isFirstUnlocked];
        }

        else
        {
          isFirstUnlocked = 0;
        }
      }

      else
      {
        isFirstUnlocked = 0;
      }
    }

    else
    {
      isFirstUnlocked = 0;
    }

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (isFirstUnlocked)
      {
        v10 = @"YES";
      }

      v12 = 136315394;
      v13 = "[CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS _shouldEnableMyriadFriendlySelfTrigger]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s shouldEnableMyriadFriendly STS? %@", &v12, 0x16u);
    }
  }

  else
  {
    LOBYTE(isFirstUnlocked) = 0;
  }

  return isFirstUnlocked;
}

- (BOOL)_deviceSupportMyriadFriendlySelfTrigger
{
  v2 = +[CSUtils isIOSDeviceSupportingBargeIn];
  if (v2)
  {

    LOBYTE(v2) = +[CSUtils supportHandsFree];
  }

  return v2;
}

- (void)_addSelfTriggerDetectorEnabledConditions
{
  objc_initWeak(&location, self);
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_100002720;
  v6 = &unk_100253870;
  objc_copyWeak(&v7, &location);
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self addConditions:&v3];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self addConditions:&stru_10024EC80, v3, v4, v5, v6];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self addConditions:&stru_10024ECA0];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self addConditions:&stru_10024ECC0];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v3];

  v4 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v4];

  v5 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v5];

  v6 = +[CSPlaybackVolumeStatusMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v6];

  if ([(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self _deviceSupportMyriadFriendlySelfTrigger])
  {
    v7 = +[CSSiriEnabledMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v7];

    v8 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v8];

    v9 = +[CSFirstUnlockMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v9];

    v10 = +[CSAVCallConnectedMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)self subscribeEventMonitor:v10];
  }
}

- (CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS)init
{
  v13.receiver = self;
  v13.super_class = CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS;
  v2 = [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)&v13 init];
  if (v2)
  {
    v3 = +[CSBuiltInVoiceTriggerEnabledPolicy builtInVoiceTriggerEnabledPolicy];
    voiceTriggerEnabledPolicy = v2->_voiceTriggerEnabledPolicy;
    v2->_voiceTriggerEnabledPolicy = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_voiceTriggerEnabledPolicy;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100003850;
    v10 = &unk_100253000;
    objc_copyWeak(&v11, &location);
    [(CSPolicy *)v5 setCallback:&v7];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)v2 _subscribeEventMonitors:v7];
    [(CSSelfTriggerDetectorUseAVVCEnabledPolicyIOS *)v2 _addSelfTriggerDetectorEnabledConditions];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end