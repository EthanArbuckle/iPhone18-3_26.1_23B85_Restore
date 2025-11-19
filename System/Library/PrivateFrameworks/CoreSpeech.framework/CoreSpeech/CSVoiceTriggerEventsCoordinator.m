@interface CSVoiceTriggerEventsCoordinator
+ (CSVoiceTriggerEventsCoordinator)sharedInstance;
- (BOOL)_isVoiceTriggerFromHearst:(id)a3;
- (BOOL)_isVoiceTriggerFromRemora:(id)a3;
- (BOOL)_shouldIgnoreVoiceTriggerEvent:(id)a3;
- (CSVoiceTriggerEventsCoordinator)init;
- (id)_createVoiceTriggerEventInfoString:(id)a3;
- (id)_myriadPhashFromVoiceTriggerInfo:(id)a3;
- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4;
- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5;
- (void)_notifyKeywordDetect;
- (void)_notifyKeywordReject:(id)a3 deviceId:(id)a4;
- (void)_notifyNearMissEvent:(id)a3 deviceId:(id)a4;
- (void)_notifyRemoteTriggerEvent:(id)a3 myriadHash:(id)a4 remoteTriggerType:(unint64_t)a5 remoteDeviceId:(id)a6 isTriggeredFromFullWake:(BOOL)a7 completion:(id)a8;
- (void)_notifySpeakerReject:(id)a3;
- (void)_notifySuperVector:(id)a3;
- (void)_notifyTriggerEvent:(id)a3 deviceId:(id)a4 completion:(id)a5;
- (void)_notifyWakeKeywordSpokenEvent:(id)a3 deviceId:(id)a4;
- (void)_printVoiceTriggerMetricsString:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setTargetQueue:(id)a3;
- (void)start;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSVoiceTriggerEventsCoordinator

- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100111044;
  v6[3] = &unk_100253C98;
  v6[4] = self;
  v6[5] = a4;
  dispatch_async(queue, v6);
}

- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001110C4;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_notifySuperVector:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111180;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_notifyKeywordDetect
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111318;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_notifyKeywordReject:(id)a3 deviceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001114F0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_notifySpeakerReject:(id)a3
{
  v4 = a3;
  [(CSVoiceTriggerEventsCoordinator *)self _notifyWakeKeywordSpokenEvent:v4 deviceId:0];
  if (CSIsInternalBuild())
  {
    notify_post("com.apple.voicetrigger.PHSReject");
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001116DC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_notifyNearMissEvent:(id)a3 deviceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (CSIsInternalBuild())
  {
    notify_post("com.apple.voicetrigger.NearTrigger");
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001118DC;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_notifyRemoteTriggerEvent:(id)a3 myriadHash:(id)a4 remoteTriggerType:(unint64_t)a5 remoteDeviceId:(id)a6 isTriggeredFromFullWake:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s EventNotifier received VoiceTrigger event", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111BAC;
  block[3] = &unk_100251CE8;
  v30 = a7;
  v28 = v17;
  v29 = a5;
  block[4] = self;
  v25 = v14;
  v26 = v16;
  v27 = v15;
  v20 = v15;
  v21 = v16;
  v22 = v14;
  v23 = v17;
  dispatch_async(queue, block);
}

- (BOOL)_shouldIgnoreVoiceTriggerEvent:(id)a3
{
  v4 = a3;
  if (CSIsAppleSiliconMac())
  {
    if (+[CSUtils shouldBlockVoiceTriggerWhenOtherAppRecording])
    {
      v5 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
      v6 = [v5 isOtherNonEligibleAppRecording];

      if (v6)
      {
        v7 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315138;
          v15 = "[CSVoiceTriggerEventsCoordinator _shouldIgnoreVoiceTriggerEvent:]";
          v8 = "%s Other app is recording, ignore Voicetrigger notification from ASMac";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v14, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  if ([(CSVoiceTriggerEventsCoordinator *)self _isVoiceTriggerFromHearst:v4]|| !+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    goto LABEL_15;
  }

  v9 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  if (([v9 hasDarwinDeviceConnected] & 1) == 0)
  {

    goto LABEL_15;
  }

  v10 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  v11 = [v10 hasDarwinDeviceHandleVoiceTrigger];

  if (!v11)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CSVoiceTriggerEventsCoordinator _shouldIgnoreVoiceTriggerEvent:]";
    v8 = "%s Darwin device connected, ignore Voicetrigger notification from built-in device";
    goto LABEL_12;
  }

LABEL_13:
  v12 = 1;
LABEL_16:

  return v12;
}

- (BOOL)_isVoiceTriggerFromHearst:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = kVTEIfirstPassTriggerSource;
    v6 = [v3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:v5];
      if ([v7 isEqualToString:kVTEIFirstPassTriggeredFromHearst])
      {
        v8 = 1;
      }

      else
      {
        v9 = [v4 objectForKeyedSubscript:v5];
        v8 = [v9 isEqualToString:kVTEIFirstPassTriggeredFromHearstAP];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isVoiceTriggerFromRemora:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = kVTEIfirstPassTriggerSource;
    v6 = [v3 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:v5];
      v8 = [v7 isEqualToString:kVTEIFirstPassTriggeredFromRemora];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_myriadPhashFromVoiceTriggerInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSMyriadPHash);
  v5 = [(CSMyriadPHash *)v4 generatePHashFromVoiceTriggerInfo:v3 writeFile:0];

  return v5;
}

- (void)_notifyTriggerEvent:(id)a3 deviceId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s EventNotifier received VoiceTrigger event", buf, 0xCu);
  }

  [(CSVoiceTriggerEventsCoordinator *)self _notifyWakeKeywordSpokenEvent:v8 deviceId:v9];
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001126D4;
  v16[3] = &unk_100252E58;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  dispatch_async(queue, v16);
}

- (void)_notifyWakeKeywordSpokenEvent:(id)a3 deviceId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[CSVoiceTriggerEventsCoordinator _notifyWakeKeywordSpokenEvent:deviceId:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Notifying Wake Keyword Spoken Event", &v19, 0xCu);
  }

  notify_post("com.apple.voicetrigger.KeywordSpoken");
  if (v5)
  {
    v8 = kVTEIfirstPassTriggerSource;
    v9 = [v5 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];

    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:v8];
      if ([v10 isEqualToString:kVTEIFirstPassTriggeredFromHearst])
      {

LABEL_8:
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenBluetoothDevice:v5 deviceId:v6];
LABEL_9:

        goto LABEL_10;
      }

      v11 = [v5 objectForKeyedSubscript:v8];
      v12 = [v11 isEqualToString:kVTEIFirstPassTriggeredFromHearstAP];

      if (v12)
      {
        goto LABEL_8;
      }

      v14 = [v5 objectForKeyedSubscript:v8];
      v15 = [v14 isEqualToString:kVTEIFirstPassTriggeredFromJarvis];

      if (v15)
      {
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenCarPlay:v5 deviceId:v6];
        goto LABEL_9;
      }

      v16 = [v5 objectForKeyedSubscript:v8];
      v17 = [v16 isEqualToString:kVTEIFirstPassTriggeredFromRemora];

      if (v17)
      {
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenRemora:v5 deviceId:v6];
        goto LABEL_9;
      }

      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[CSVoiceTriggerEventsCoordinator _notifyWakeKeywordSpokenEvent:deviceId:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Skip notifying the keyword spoken event because the trigger is not from Hearst, Jarvis or Remora", &v19, 0xCu);
      }
    }
  }

LABEL_10:
}

- (void)_printVoiceTriggerMetricsString:(id)a3
{
  v3 = a3;
  if (CSIsInternalBuild())
  {
    if (qword_10029E3F8 != -1)
    {
      dispatch_once(&qword_10029E3F8, &stru_100251CC0);
    }

    v4 = [@"\nVoiceTrigger Metrics: {\n" mutableCopy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = qword_10029E3F0;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v3 objectForKey:v10];

          if (v11)
          {
            v12 = [v3 objectForKey:v10];
            v13 = [NSString stringWithFormat:@"\t%@: %@\n", v10, v12, v15];
            [v4 appendString:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v7);
    }

    [v4 appendString:@"}"];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[CSVoiceTriggerEventsCoordinator _printVoiceTriggerMetricsString:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }
  }
}

- (id)_createVoiceTriggerEventInfoString:(id)a3
{
  v3 = a3;
  if (qword_10029E3E8 != -1)
  {
    dispatch_once(&qword_10029E3E8, &stru_100251CA0);
  }

  v4 = [@"\nvoiceTriggerEventInfo: {\n" mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = qword_10029E3E0;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];

        if (v11)
        {
          v12 = [v3 objectForKey:v10];
          v13 = [NSString stringWithFormat:@"\t%@: %@\n", v10, v12, v15];
          [v4 appendString:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"}"];

  return v4;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113774;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113824;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001138B0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setTargetQueue:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_targetQueue, a3);
  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_set_target_queue(self->_queue, targetQueue);
  }
}

- (CSVoiceTriggerEventsCoordinator)init
{
  v8.receiver = self;
  v8.super_class = CSVoiceTriggerEventsCoordinator;
  v2 = [(CSVoiceTriggerEventsCoordinator *)&v8 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [CSUtils getSerialQueue:@"VoiceTriggerEventNotifier queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_splitterState = 0;
  }

  return v2;
}

+ (CSVoiceTriggerEventsCoordinator)sharedInstance
{
  if (qword_10029E3D8 != -1)
  {
    dispatch_once(&qword_10029E3D8, &stru_100251C80);
  }

  v3 = qword_10029E3D0;

  return v3;
}

@end