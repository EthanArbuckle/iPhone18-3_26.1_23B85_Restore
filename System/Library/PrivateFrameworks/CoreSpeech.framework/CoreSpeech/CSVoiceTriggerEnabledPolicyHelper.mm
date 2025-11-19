@interface CSVoiceTriggerEnabledPolicyHelper
+ (BOOL)siriInCallPolicy;
@end

@implementation CSVoiceTriggerEnabledPolicyHelper

+ (BOOL)siriInCallPolicy
{
  v2 = +[CSHangUpEnabledMonitor sharedInstance];
  if ([v2 isEnabled])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[CSSiriInCallEnabledMonitor sharedInstance];
    v3 = [v4 isEnabled];
  }

  v5 = +[CSUtils supportHangUp];
  v6 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v7 = [v6 phoneCallState];

  v8 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v9 = [v8 firstPartyCall];

  v10 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  v11 = [v10 splitterState];

  v12 = +[CSUtils fetchHypotheticalRouteType];
  if (v12 == 1)
  {
    v14 = 0;
    v13 = 1;
  }

  else if (v12 == 2)
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "+[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy]";
    v26 = 1024;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Hang up toggle: %d", &v24, 0x12u);
  }

  v16 = v7 - 5;
  if ((v5 & v3 & 1) == 0 && v16 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = CSLogContextFacilityCoreSpeech;
    v18 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (!v18)
    {
      return v18;
    }

    v24 = 136315138;
    v25 = "+[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy]";
    v19 = "%s VoiceTrigger cannot be turned on since we are not in the desired call state";
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  if ((v16 < 0xFFFFFFFFFFFFFFFELL) | v9 & 1)
  {
    if (v16 < 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_20:
      if (v7 == 2 && ((v11 - 2) < 3 || !(v14 | v13)))
      {
        v22 = CSLogContextFacilityCoreSpeech;
        v18 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
        if (!v18)
        {
          return v18;
        }

        v24 = 136315906;
        v25 = "+[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy]";
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v13;
        v30 = 1024;
        v31 = (v11 - 2) < 3;
        v19 = "%s VoiceTrigger cannot be turned on because we are in a ringtone and hsPhoneCallCapableHeadsetConnected: %d builtInState: %d isInSplitterMode: %d";
        v20 = v22;
        v21 = 30;
        goto LABEL_16;
      }

LABEL_28:
      LOBYTE(v18) = 1;
      return v18;
    }

    if ((v14 | +[CSUtils isIOSDeviceSupportingBargeIn]))
    {
      goto LABEL_28;
    }

    v17 = CSLogContextFacilityCoreSpeech;
    v18 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (!v18)
    {
      return v18;
    }

    v24 = 136315138;
    v25 = "+[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy]";
    v19 = "%s VoiceTrigger cannot be turned on since the device is not supporting bargeIn and there is no HS phone call capable headset connected.";
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    v18 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (!v18)
    {
      return v18;
    }

    v24 = 136315138;
    v25 = "+[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy]";
    v19 = "%s VoiceTrigger cannot be turned on since we are in a hang up supported call state but it is not first party.";
  }

LABEL_15:
  v20 = v17;
  v21 = 12;
LABEL_16:
  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
  LOBYTE(v18) = 0;
  return v18;
}

@end