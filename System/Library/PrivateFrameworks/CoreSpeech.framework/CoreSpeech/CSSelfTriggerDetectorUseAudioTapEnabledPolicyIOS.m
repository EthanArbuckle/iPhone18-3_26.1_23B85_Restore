@interface CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS
- (BOOL)_deviceSupportMyriadFriendlySelfTrigger;
- (BOOL)_isSpeakerActive;
- (BOOL)_shouldEnableMyriadFriendlySelfTrigger;
- (CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS)init;
- (void)_addSelfTriggerDetectorEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS

- (BOOL)_isSpeakerActive
{
  v2 = +[CSPlaybackVolumeStatusMonitor sharedInstance];
  v3 = [v2 playbackVolumeStatus];

  v4 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
  v6 = [v4 currentBuiltinSpeakerState] == 1 && v3 == 0;

  v7 = +[CSBluetoothSpeakerStateMonitor sharedInstance];
  v8 = [v7 isActive];

  if ((+[CSUtils isExclaveHardware]& 1) == 0)
  {
    if (+[CSUtils isIOSDeviceSupportingBargeIn])
    {
      v6 = v8;
    }

    else
    {
      v6 |= v8;
    }
  }

  return v6 & 1;
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

- (BOOL)_shouldEnableMyriadFriendlySelfTrigger
{
  if (!_os_feature_enabled_impl() || ![(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self _deviceSupportMyriadFriendlySelfTrigger])
  {
    return 0;
  }

  v3 = +[CSAVCallConnectedMonitor sharedInstance];
  if ([v3 hasConnectedAVCall])
  {
    v4 = +[CSSiriEnabledMonitor sharedInstance];
    if ([v4 isEnabled])
    {
      v5 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
      if ([v5 isSystemShellStarted])
      {
        v6 = +[CSFirstUnlockMonitor sharedInstance];
        v7 = [v6 isFirstUnlocked];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addSelfTriggerDetectorEnabledConditions
{
  objc_initWeak(&location, self);
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self addConditions:&stru_100250BD0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CC2A4;
  v5[3] = &unk_100253870;
  objc_copyWeak(&v6, &location);
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self addConditions:v5];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000CC410;
  v3[3] = &unk_100253870;
  objc_copyWeak(&v4, &location);
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self addConditions:v3];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self addConditions:&stru_100250BF0];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self addConditions:&stru_100250C10];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v3];

  v4 = +[CSAudioPlayingAppMonitor sharedMonitor];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v4];

  v5 = +[CSAudioSessionMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v5];

  v6 = +[CSBluetoothSpeakerStateMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v6];

  v7 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v7];

  v8 = +[CSPlaybackVolumeStatusMonitor sharedInstance];
  [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v8];

  if ([(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self _deviceSupportMyriadFriendlySelfTrigger])
  {
    v9 = +[CSSiriEnabledMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v9];

    v10 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v10];

    v11 = +[CSFirstUnlockMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v11];

    v12 = +[CSAVCallConnectedMonitor sharedInstance];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)self subscribeEventMonitor:v12];
  }
}

- (CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS)init
{
  v14.receiver = self;
  v14.super_class = CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS;
  v2 = [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)&v14 init];
  if (v2)
  {
    if (!+[CSUtils supportAudioTappingSelfTrigger])
    {
      v6 = 0;
      goto LABEL_6;
    }

    v3 = +[CSBuiltInVoiceTriggerEnabledPolicy builtInVoiceTriggerEnabledPolicy];
    voiceTriggerEnabledPolicy = v2->_voiceTriggerEnabledPolicy;
    v2->_voiceTriggerEnabledPolicy = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_voiceTriggerEnabledPolicy;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000CCB20;
    v11 = &unk_100253000;
    objc_copyWeak(&v12, &location);
    [(CSPolicy *)v5 setCallback:&v8];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)v2 _subscribeEventMonitors:v8];
    [(CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS *)v2 _addSelfTriggerDetectorEnabledConditions];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v6 = v2;
LABEL_6:

  return v6;
}

@end