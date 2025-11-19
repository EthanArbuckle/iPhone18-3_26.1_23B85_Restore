@interface CSVoiceTriggerEnabledPolicyNonAOP
- (CSVoiceTriggerEnabledPolicyNonAOP)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSVoiceTriggerEnabledPolicyNonAOP

- (void)_addVoiceTriggerEnabledConditions
{
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024F980];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024F9A0];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024F9C0];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024F9E0];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FA00];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FA20];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FA40];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FA60];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FA80];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FAA0];

  [(CSVoiceTriggerEnabledPolicyNonAOP *)self addConditions:&stru_10024FAC0];
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v3];

  v4 = +[CSSiriAssertionMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v4];

  v5 = +[CSSiriEnabledMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v5];

  v6 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v6];

  v7 = +[CSFirstUnlockMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v7];

  v8 = +[CSBatteryMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v8];

  v9 = +[CSScreenLockMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v9];

  v10 = +[CSSiriRestrictionOnLockScreenMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v10];

  v11 = +[CSSoftwareUpdateCheckingMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v11];

  v12 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v12];

  v13 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v13];

  v14 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v14];

  v15 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v15];

  v16 = +[CSHangUpEnabledMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v16];

  v17 = +[CSSiriInCallEnabledMonitor sharedInstance];
  [(CSVoiceTriggerEnabledPolicyNonAOP *)self subscribeEventMonitor:v17];
}

- (CSVoiceTriggerEnabledPolicyNonAOP)init
{
  v5.receiver = self;
  v5.super_class = CSVoiceTriggerEnabledPolicyNonAOP;
  v2 = [(CSVoiceTriggerEnabledPolicyNonAOP *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSVoiceTriggerEnabledPolicyNonAOP *)v2 _addVoiceTriggerEnabledConditions];
    [(CSVoiceTriggerEnabledPolicyNonAOP *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end