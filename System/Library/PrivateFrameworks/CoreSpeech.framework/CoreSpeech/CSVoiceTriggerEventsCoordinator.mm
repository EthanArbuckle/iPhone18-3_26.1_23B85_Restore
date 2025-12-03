@interface CSVoiceTriggerEventsCoordinator
+ (CSVoiceTriggerEventsCoordinator)sharedInstance;
- (BOOL)_isVoiceTriggerFromHearst:(id)hearst;
- (BOOL)_isVoiceTriggerFromRemora:(id)remora;
- (BOOL)_shouldIgnoreVoiceTriggerEvent:(id)event;
- (CSVoiceTriggerEventsCoordinator)init;
- (id)_createVoiceTriggerEventInfoString:(id)string;
- (id)_myriadPhashFromVoiceTriggerInfo:(id)info;
- (void)CSAudioRouteChangeMonitor:(id)monitor didReceiveAudioRouteChangeEvent:(int64_t)event;
- (void)CSBluetoothWirelessSplitterMonitor:(id)monitor didReceiveSplitterStateChange:(unint64_t)change shouldDisableSpeakerVerificationInSplitterMode:(BOOL)mode;
- (void)_notifyKeywordDetect;
- (void)_notifyKeywordReject:(id)reject deviceId:(id)id;
- (void)_notifyNearMissEvent:(id)event deviceId:(id)id;
- (void)_notifyRemoteTriggerEvent:(id)event myriadHash:(id)hash remoteTriggerType:(unint64_t)type remoteDeviceId:(id)id isTriggeredFromFullWake:(BOOL)wake completion:(id)completion;
- (void)_notifySpeakerReject:(id)reject;
- (void)_notifySuperVector:(id)vector;
- (void)_notifyTriggerEvent:(id)event deviceId:(id)id completion:(id)completion;
- (void)_notifyWakeKeywordSpokenEvent:(id)event deviceId:(id)id;
- (void)_printVoiceTriggerMetricsString:(id)string;
- (void)registerObserver:(id)observer;
- (void)setTargetQueue:(id)queue;
- (void)start;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSVoiceTriggerEventsCoordinator

- (void)CSBluetoothWirelessSplitterMonitor:(id)monitor didReceiveSplitterStateChange:(unint64_t)change shouldDisableSpeakerVerificationInSplitterMode:(BOOL)mode
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100111044;
  v6[3] = &unk_100253C98;
  v6[4] = self;
  v6[5] = change;
  dispatch_async(queue, v6);
}

- (void)CSAudioRouteChangeMonitor:(id)monitor didReceiveAudioRouteChangeEvent:(int64_t)event
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001110C4;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = event;
  dispatch_async(queue, v5);
}

- (void)_notifySuperVector:(id)vector
{
  vectorCopy = vector;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111180;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = vectorCopy;
  v6 = vectorCopy;
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

- (void)_notifyKeywordReject:(id)reject deviceId:(id)id
{
  rejectCopy = reject;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001114F0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = rejectCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = rejectCopy;
  dispatch_async(queue, block);
}

- (void)_notifySpeakerReject:(id)reject
{
  rejectCopy = reject;
  [(CSVoiceTriggerEventsCoordinator *)self _notifyWakeKeywordSpokenEvent:rejectCopy deviceId:0];
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
  v8 = rejectCopy;
  v6 = rejectCopy;
  dispatch_async(queue, v7);
}

- (void)_notifyNearMissEvent:(id)event deviceId:(id)id
{
  eventCopy = event;
  idCopy = id;
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
  v12 = eventCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

- (void)_notifyRemoteTriggerEvent:(id)event myriadHash:(id)hash remoteTriggerType:(unint64_t)type remoteDeviceId:(id)id isTriggeredFromFullWake:(BOOL)wake completion:(id)completion
{
  eventCopy = event;
  hashCopy = hash;
  idCopy = id;
  completionCopy = completion;
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
  wakeCopy = wake;
  v28 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v25 = eventCopy;
  v26 = idCopy;
  v27 = hashCopy;
  v20 = hashCopy;
  v21 = idCopy;
  v22 = eventCopy;
  v23 = completionCopy;
  dispatch_async(queue, block);
}

- (BOOL)_shouldIgnoreVoiceTriggerEvent:(id)event
{
  eventCopy = event;
  if (CSIsAppleSiliconMac())
  {
    if (+[CSUtils shouldBlockVoiceTriggerWhenOtherAppRecording])
    {
      v5 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
      isOtherNonEligibleAppRecording = [v5 isOtherNonEligibleAppRecording];

      if (isOtherNonEligibleAppRecording)
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

  if ([(CSVoiceTriggerEventsCoordinator *)self _isVoiceTriggerFromHearst:eventCopy]|| !+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    goto LABEL_15;
  }

  v9 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  if (([v9 hasDarwinDeviceConnected] & 1) == 0)
  {

    goto LABEL_15;
  }

  v10 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  hasDarwinDeviceHandleVoiceTrigger = [v10 hasDarwinDeviceHandleVoiceTrigger];

  if (!hasDarwinDeviceHandleVoiceTrigger)
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

- (BOOL)_isVoiceTriggerFromHearst:(id)hearst
{
  hearstCopy = hearst;
  v4 = hearstCopy;
  if (hearstCopy)
  {
    v5 = kVTEIfirstPassTriggerSource;
    v6 = [hearstCopy objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
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

- (BOOL)_isVoiceTriggerFromRemora:(id)remora
{
  remoraCopy = remora;
  v4 = remoraCopy;
  if (remoraCopy)
  {
    v5 = kVTEIfirstPassTriggerSource;
    v6 = [remoraCopy objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
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

- (id)_myriadPhashFromVoiceTriggerInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(CSMyriadPHash);
  v5 = [(CSMyriadPHash *)v4 generatePHashFromVoiceTriggerInfo:infoCopy writeFile:0];

  return v5;
}

- (void)_notifyTriggerEvent:(id)event deviceId:(id)id completion:(id)completion
{
  eventCopy = event;
  idCopy = id;
  completionCopy = completion;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s EventNotifier received VoiceTrigger event", buf, 0xCu);
  }

  [(CSVoiceTriggerEventsCoordinator *)self _notifyWakeKeywordSpokenEvent:eventCopy deviceId:idCopy];
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001126D4;
  v16[3] = &unk_100252E58;
  v16[4] = self;
  v17 = eventCopy;
  v18 = idCopy;
  v19 = completionCopy;
  v13 = idCopy;
  v14 = completionCopy;
  v15 = eventCopy;
  dispatch_async(queue, v16);
}

- (void)_notifyWakeKeywordSpokenEvent:(id)event deviceId:(id)id
{
  eventCopy = event;
  idCopy = id;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[CSVoiceTriggerEventsCoordinator _notifyWakeKeywordSpokenEvent:deviceId:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Notifying Wake Keyword Spoken Event", &v19, 0xCu);
  }

  notify_post("com.apple.voicetrigger.KeywordSpoken");
  if (eventCopy)
  {
    v8 = kVTEIfirstPassTriggerSource;
    v9 = [eventCopy objectForKeyedSubscript:kVTEIfirstPassTriggerSource];

    if (v9)
    {
      v10 = [eventCopy objectForKeyedSubscript:v8];
      if ([v10 isEqualToString:kVTEIFirstPassTriggeredFromHearst])
      {

LABEL_8:
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenBluetoothDevice:eventCopy deviceId:idCopy];
LABEL_9:

        goto LABEL_10;
      }

      v11 = [eventCopy objectForKeyedSubscript:v8];
      v12 = [v11 isEqualToString:kVTEIFirstPassTriggeredFromHearstAP];

      if (v12)
      {
        goto LABEL_8;
      }

      v14 = [eventCopy objectForKeyedSubscript:v8];
      v15 = [v14 isEqualToString:kVTEIFirstPassTriggeredFromJarvis];

      if (v15)
      {
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenCarPlay:eventCopy deviceId:idCopy];
        goto LABEL_9;
      }

      v16 = [eventCopy objectForKeyedSubscript:v8];
      v17 = [v16 isEqualToString:kVTEIFirstPassTriggeredFromRemora];

      if (v17)
      {
        v13 = +[CSSiriLauncher sharedLauncher];
        [v13 notifyWakeKeywordSpokenRemora:eventCopy deviceId:idCopy];
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

- (void)_printVoiceTriggerMetricsString:(id)string
{
  stringCopy = string;
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
          v11 = [stringCopy objectForKey:v10];

          if (v11)
          {
            v12 = [stringCopy objectForKey:v10];
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

- (id)_createVoiceTriggerEventInfoString:(id)string
{
  stringCopy = string;
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
        v11 = [stringCopy objectForKey:v10];

        if (v11)
        {
          v12 = [stringCopy objectForKey:v10];
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

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113774;
  v7[3] = &unk_100253C48;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113824;
  v7[3] = &unk_100253C48;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
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

- (void)setTargetQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_targetQueue, queue);
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