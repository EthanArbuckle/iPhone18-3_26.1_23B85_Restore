@interface CSVoiceTriggerAPModeSuspendPolicyIOS
- (BOOL)_isAudioRouteIneligibleForAP;
- (BOOL)_isHearstRoutedAndWithNoPhoneCall;
- (BOOL)_isInPhoneCallStateWithHSPhoneCallCapableRoute;
- (BOOL)_isJarvisRouted;
- (BOOL)_isSpeechDetectionDevicePresent;
- (CSVoiceTriggerAPModeSuspendPolicyIOS)init;
- (void)_addConditionsForIOSAOP;
- (void)_addConditionsForIOSBargeIn;
- (void)_addVoiceTriggerAPModeSuspendConditions;
- (void)_handleClientRecordStateDidChange:(BOOL)change eventUUID:(id)d;
- (void)_subscribeEventMonitors;
- (void)intuitiveConvAudioCaptureMonitor:(id)monitor didStartAudioCaptureSuccessfully:(BOOL)successfully option:(id)option eventUUID:(id)d;
- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor didChangedRecordState:(BOOL)state withEventUUID:(id)d withContext:(id)context;
@end

@implementation CSVoiceTriggerAPModeSuspendPolicyIOS

- (BOOL)_isHearstRoutedAndWithNoPhoneCall
{
  v2 = +[CSAudioRouteChangeMonitor sharedInstance];
  hearstRouteStatus = [v2 hearstRouteStatus];

  v4 = hearstRouteStatus - 1;
  v5 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  phoneCallState = [v5 phoneCallState];

  return v4 < 2 && phoneCallState < 2;
}

- (BOOL)_isJarvisRouted
{
  v2 = +[CSAudioRouteChangeMonitor sharedInstance];
  jarvisConnected = [v2 jarvisConnected];

  v4 = +[CSAudioRouteChangeMonitor sharedInstance];
  hearstRouteStatus = [v4 hearstRouteStatus];

  if ((hearstRouteStatus - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return jarvisConnected;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isSpeechDetectionDevicePresent
{
  v2 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  isPresent = [v2 isPresent];

  if ((isPresent & 1) == 0)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _isSpeechDetectionDevicePresent]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Speech Detection VAD is not available, we will still running in AOP mode", &v6, 0xCu);
    }
  }

  return isPresent;
}

- (BOOL)_isAudioRouteIneligibleForAP
{
  _isSpeechDetectionDevicePresent = [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self _isSpeechDetectionDevicePresent];
  _isHearstRoutedAndWithNoPhoneCall = [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self _isHearstRoutedAndWithNoPhoneCall];
  _isJarvisRouted = [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self _isJarvisRouted];
  v6 = _isSpeechDetectionDevicePresent ^ 1 | _isHearstRoutedAndWithNoPhoneCall | _isJarvisRouted;
  if (v6)
  {
    v7 = _isJarvisRouted;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = 136315906;
      v11 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _isAudioRouteIneligibleForAP]";
      v12 = 1024;
      v13 = _isSpeechDetectionDevicePresent;
      v14 = 1024;
      v15 = _isHearstRoutedAndWithNoPhoneCall & 1;
      v16 = 1024;
      v17 = v7 & 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s VAD is not present (%d) or Hearst routed without phone call (%d) or Jarvis routed (%d)", &v10, 0x1Eu);
    }
  }

  return v6 & 1;
}

- (BOOL)_isInPhoneCallStateWithHSPhoneCallCapableRoute
{
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  phoneCallState = [v2 phoneCallState];

  if (phoneCallState == 2)
  {
    v4 = +[CSUtils supportRingtoneA2DP]^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [CSUtils fetchHypotheticalBluetoothRouteProductIdFromAudioSessionId:0];
  if (v5)
  {
    v6 = AFBTProductIDSupportsAnnounce();
  }

  else
  {
    v6 = 0;
  }

  v7 = +[CSUtils fetchHypotheticalRouteType];
  v8 = +[CSMXRingtoneMonitor sharedInstance];
  isAnyRingtoneCurrentlyPlaying = [v8 isAnyRingtoneCurrentlyPlaying];

  if (+[CSUtils supportHandsFree]&& ((v4 & 1) != 0 || ((phoneCallState - 3) < 2 ? (v10 = 1) : (v10 = isAnyRingtoneCurrentlyPlaying), v10 == 1)))
  {
    if (v7 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = qword_10029E620;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E620, 2) <= 0xCCCCCCCCCCCCCCCuLL)
  {
    v16 = v4;
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      *buf = 136316930;
      v18 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _isInPhoneCallStateWithHSPhoneCallCapableRoute]";
      v19 = 1024;
      v20 = +[CSUtils supportHandsFree];
      v21 = 1024;
      v22 = v16;
      v23 = 1024;
      v24 = isAnyRingtoneCurrentlyPlaying;
      v25 = 1024;
      v26 = phoneCallState;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v7 == 1;
      v31 = 1024;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #PhoneStates: SpprtHF(%d) RingtoneHFP(%d) RingtoneNotfcn(%d) phoneCallState(%u) hsCallHeadsetCnnctd(%d) builtInRoute(%d). Result(%d)", buf, 0x36u);

      v12 = qword_10029E620;
    }
  }

  qword_10029E620 = v12 + 1;

  return v11;
}

- (void)siriClientBehaviorMonitor:(id)monitor didChangedRecordState:(BOOL)state withEventUUID:(id)d withContext:(id)context
{
  dCopy = d;
  recordStateQueue = self->_recordStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100169290;
  block[3] = &unk_100253900;
  stateCopy = state;
  block[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_async(recordStateQueue, block);
}

- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d
{
  dCopy = d;
  recordStateQueue = self->_recordStateQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100169340;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(recordStateQueue, v9);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)monitor didStartAudioCaptureSuccessfully:(BOOL)successfully option:(id)option eventUUID:(id)d
{
  dCopy = d;
  recordStateQueue = self->_recordStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100169400;
  block[3] = &unk_100253900;
  successfullyCopy = successfully;
  block[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_async(recordStateQueue, block);
}

- (void)_handleClientRecordStateDidChange:(BOOL)change eventUUID:(id)d
{
  changeCopy = change;
  dCopy = d;
  if (changeCopy)
  {
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self setIsAssistantClientConsideredAsRecord:1];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self setPendingRecordingStopUUID:0];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self notifyCallbackWithOption:0];
  }

  else
  {
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self setPendingRecordingStopUUID:dCopy];
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[CSVoiceTriggerAPModeSuspendPolicyIOS _handleClientRecordStateDidChange:eventUUID:]";
      v15 = 2050;
      v16 = 0x4010000000000000;
      v17 = 2114;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Will notify Siri Client record state change to STOPPED in %{public}f seconds, eventUUID = %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 4000000000);
    recordStateQueue = self->_recordStateQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001695E8;
    v10[3] = &unk_1002538D8;
    objc_copyWeak(&v12, buf);
    v11 = dCopy;
    dispatch_after(v8, recordStateQueue, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_addConditionsForIOSAOP
{
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001699EC;
  v9[3] = &unk_100253870;
  objc_copyWeak(&v10, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v9];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:&stru_1002538B0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100169AF4;
  v7[3] = &unk_100253870;
  objc_copyWeak(&v8, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100169BEC;
  v5[3] = &unk_100253870;
  objc_copyWeak(&v6, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v5];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100169D44;
  v3[3] = &unk_100253870;
  objc_copyWeak(&v4, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_addConditionsForIOSBargeIn
{
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002A34;
  v13[3] = &unk_100253870;
  objc_copyWeak(&v14, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v13];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:&stru_100253890];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002598;
  v11[3] = &unk_100253870;
  objc_copyWeak(&v12, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002FA8;
  v9[3] = &unk_100253870;
  objc_copyWeak(&v10, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002EB0;
  v7[3] = &unk_100253870;
  objc_copyWeak(&v8, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003554;
  v5[3] = &unk_100253870;
  objc_copyWeak(&v6, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v5];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10016A2D8;
  v3[3] = &unk_100253870;
  objc_copyWeak(&v4, &location);
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_addVoiceTriggerAPModeSuspendConditions
{
  if (+[CSUtils isIOSDeviceSupportingBargeIn])
  {
    v3 = +[CSFPreferences sharedPreferences];
    forceVoiceTriggerAPMode = [v3 forceVoiceTriggerAPMode];

    if (forceVoiceTriggerAPMode)
    {
      v5 = &stru_100253828;
LABEL_13:

      [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self addConditions:v5];
      return;
    }
  }

  if (+[CSUtils isIOSDeviceSupportingBargeIn])
  {

    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self _addConditionsForIOSBargeIn];
  }

  else
  {
    if (!CSHasAOP())
    {
      v5 = &stru_100253848;
      goto LABEL_13;
    }

    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self _addConditionsForIOSAOP];
  }
}

- (void)_subscribeEventMonitors
{
  if (+[CSUtils isIOSDeviceSupportingBargeIn])
  {
    v3 = +[CSBuiltinSpeakerStateMonitor sharedInstance];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v3];

    v4 = +[CSAudioRouteChangeMonitor sharedInstance];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v4];

    v5 = +[CSPlaybackVolumeStatusMonitor sharedInstance];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v5];
  }

  v6 = +[CSSpeechDetectionDevicePresentMonitor sharedInstance];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v6];

  v7 = +[CSAlwaysOnProcessorStateMonitor sharedInstance];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v7];

  v8 = +[CSCommandControlStreamEventMonitor sharedInstance];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v8];

  v9 = +[CSAttSiriStateMonitor sharedInstance];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v9];

  v10 = +[CSAudioStreamActivityMonitor sharedInstance];
  [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v10];

  if (+[CSUtils supportHandsFree])
  {
    v11 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v11];

    v12 = +[CSMXRingtoneMonitor sharedInstance];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)self subscribeEventMonitor:v12];
  }
}

- (CSVoiceTriggerAPModeSuspendPolicyIOS)init
{
  v8.receiver = self;
  v8.super_class = CSVoiceTriggerAPModeSuspendPolicyIOS;
  v2 = [(CSVoiceTriggerAPModeSuspendPolicyIOS *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerAPModeSuspendPolicyIOS RecordState queue", 0);
    recordStateQueue = v2->_recordStateQueue;
    v2->_recordStateQueue = v3;

    v2->_isAssistantClientConsideredAsRecord = 0;
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)v2 _addVoiceTriggerAPModeSuspendConditions];
    [(CSVoiceTriggerAPModeSuspendPolicyIOS *)v2 _subscribeEventMonitors];
    v5 = +[CSSiriClientBehaviorMonitor sharedInstance];
    [v5 registerObserver:v2];

    v6 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
    [v6 registerObserver:v2];
  }

  return v2;
}

@end