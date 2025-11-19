@interface CSAttSiriContConvController
- (BOOL)_shouldConfigureAudioForContinuousConversation;
- (BOOL)shouldRunCCForAudioRecordContext:(id)a3;
- (CSAttSiriContConvController)initWithAttSiriController:(id)a3;
- (CSAttSiriContConvController)initWithAttSiriController:(id)a3 supportAttentionLostAndGain:(BOOL)a4;
- (void)_applyGazeSignalMandate;
- (void)_configureAttendingTimeout;
- (void)_setupAttendingTimer;
- (void)_setupClientPendingTimer;
- (void)_setupGazeNodeWithAttSiriController:(id)a3;
- (void)_startAttendingWithAudioRecordContext:(id)a3 withRequestId:(id)a4 shouldStartTimer:(BOOL)a5;
- (void)_stopAttendingForRequestId:(id)a3 isReqCC:(BOOL)a4 forceStop:(BOOL)a5;
- (void)_stopNodes;
- (void)_stopTimers;
- (void)attSiriNode:(id)a3 startSpeechProcessing:(unint64_t)a4;
- (void)gazeTrackerFaceTrackingMetaDataUpdate:(id)a3 atMachAbsTime:(unint64_t)a4;
- (void)handleAttendingTimeout;
- (void)relayGazeEstimates:(CGPoint)a3 landmarks:(id)a4;
- (void)startAttendingWithAudioRecordContext:(id)a3 attendingSiriRequestContext:(id)a4 withRequestId:(id)a5 shouldStartTimer:(BOOL)a6;
- (void)startMagusLoggingForTriggerRequest;
- (void)stopAttendingForRequestId:(id)a3 isReqCC:(BOOL)a4 forceStop:(BOOL)a5;
- (void)updateSiriOrbLocation:(CGRect)a3;
@end

@implementation CSAttSiriContConvController

- (void)handleAttendingTimeout
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A2C4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setupAttendingTimer
{
  attendingTimeoutInSecs = self->_attendingTimeoutInSecs;
  if (attendingTimeoutInSecs >= 1.0)
  {
    attendingTimer = self->_attendingTimer;
    if (attendingTimer)
    {
      [(CSAttSiriTimer *)attendingTimer cancelTimer];
      v6 = self->_attendingTimer;
      self->_attendingTimer = 0;
    }

    v7 = [[CSAttSiriTimer alloc] initWithQueue:0];
    v8 = self->_attendingTimer;
    self->_attendingTimer = v7;

    objc_initWeak(&location, self);
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_attendingTimeoutInSecs;
      *buf = 136315394;
      v17 = "[CSAttSiriContConvController _setupAttendingTimer]";
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Setup attending timer for duration %f secs", buf, 0x16u);
    }

    v11 = self->_attendingTimer;
    v12 = self->_attendingTimeoutInSecs;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006A558;
    v13[3] = &unk_100253510;
    objc_copyWeak(&v14, &location);
    [(CSAttSiriTimer *)v11 setTimerForSecs:v13 completionBlock:v12];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[CSAttSiriContConvController _setupAttendingTimer]";
      v18 = 2048;
      v19 = attendingTimeoutInSecs;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Not setting up attending timer. Timeout value set to :%f(sec)", buf, 0x16u);
    }
  }
}

- (void)_configureAttendingTimeout
{
  v3 = +[CSFPreferences sharedPreferences];
  [v3 getAttendingTimeoutConfig];
  self->_attendingTimeoutInSecs = v4;

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    attendingTimeoutInSecs = self->_attendingTimeoutInSecs;
    *buf = 136315394;
    v11 = "[CSAttSiriContConvController _configureAttendingTimeout]";
    v12 = 2048;
    v13 = attendingTimeoutInSecs;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s attending timeout:%f", buf, 0x16u);
  }

  *&v6 = self->_attendingTimeoutInSecs;
  if ([(CSAttSiriContConvController *)self _useAttendingTimeoutInAsset:v6])
  {
    v8 = +[CSAttSiriMitigationAssetHandler sharedHandler];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006A774;
    v9[3] = &unk_100252F10;
    v9[4] = self;
    [v8 getMitigationAssetWithEndpointId:0 completion:v9];
  }
}

- (void)_applyGazeSignalMandate
{
  objc_initWeak(&location, self);
  v3 = +[CSAttSiriMitigationAssetHandler sharedHandler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006AABC;
  v4[3] = &unk_10024FB10;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 getMitigationAssetWithEndpointId:0 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldConfigureAudioForContinuousConversation
{
  v2 = +[CSUtils isContinuousConversationSupported];
  v3 = +[CSAudioRouteChangeMonitor sharedInstance];
  v4 = [v3 carPlayConnected];

  v5 = +[CSUtils isBluetoothAudioDeviceConnected];
  v6 = +[CSAudioRouteChangeMonitor sharedInstance];
  v7 = [v6 hearstRouteStatus];

  if (v7)
  {
    v8 = v7 == 5;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = v5 ^ 1 | v9;
  if (v4)
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136316418;
    v15 = "[CSAttSiriContConvController _shouldConfigureAudioForContinuousConversation]";
    v16 = 1024;
    v17 = v11 & 1;
    v18 = 1024;
    v19 = v2;
    v20 = 1024;
    v21 = v4;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s ccSupported:%u --> isCCConfigEnabled:%u isCarplayConnected:%u isBluetoothDeviceConnected:%u isHearstConnected:%u", &v14, 0x2Au);
  }

  return v11 & 1;
}

- (void)_setupClientPendingTimer
{
  clientPendingTimer = self->_clientPendingTimer;
  if (clientPendingTimer)
  {
    [(CSAttSiriTimer *)clientPendingTimer cancelTimer];
    v4 = self->_clientPendingTimer;
    self->_clientPendingTimer = 0;
  }

  v5 = [[CSAttSiriTimer alloc] initWithQueue:0];
  v6 = self->_clientPendingTimer;
  self->_clientPendingTimer = v5;

  objc_initWeak(&location, self);
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSAttSiriContConvController _setupClientPendingTimer]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Setup client pending timer", buf, 0xCu);
  }

  v8 = self->_clientPendingTimer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006AFBC;
  v9[3] = &unk_100253510;
  objc_copyWeak(&v10, &location);
  [(CSAttSiriTimer *)v8 setTimerForSecs:v9 completionBlock:10.0];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_stopNodes
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriContConvController _stopNodes]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSAttSiriMagusLoggingNode *)self->_magusLoggingNode stop];
  [(CSAttSiriNode *)self->_gazeNode stop];
  [(CSAttSiriAttentionNode *)self->_attentionNode stop];
  [(CSAttSiriMotionNode *)self->_motionNode stop];
}

- (void)_stopTimers
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriContConvController _stopTimers]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  [(CSAttSiriTimer *)self->_attendingTimer cancelTimer];
  [(CSAttSiriTimer *)self->_clientPendingTimer cancelTimer];
  attendingTimer = self->_attendingTimer;
  self->_attendingTimer = 0;

  clientPendingTimer = self->_clientPendingTimer;
  self->_clientPendingTimer = 0;

  audioRecordContext = self->_audioRecordContext;
  self->_audioRecordContext = 0;

  requestMHUUID = self->_requestMHUUID;
  self->_requestMHUUID = 0;

  self->_isAttending = 0;
  v8 = +[CSAttSiriStateMonitor sharedInstance];
  [v8 updateState:0];
}

- (void)_stopAttendingForRequestId:(id)a3 isReqCC:(BOOL)a4 forceStop:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[CSAttSiriContConvController _stopAttendingForRequestId:isReqCC:forceStop:]";
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s mhId:%@ isReqCC:%u forceStop:%u", &v11, 0x22u);
  }

  objc_storeStrong(&self->_prevStoppedMhId, a3);
  [(CSAttSiriContConvController *)self _stopTimers];
  if (!v6)
  {
    [(CSAttSiriContConvController *)self _stopNodes];
  }

  if (v5)
  {
    [(CSAttSiriOSDNode *)self->_osdNode stop];
    [(CSAttSiriController *)self->_attSiriController handleEndOfAttendingForRequestId:self->_requestMHUUID];
  }
}

- (void)_startAttendingWithAudioRecordContext:(id)a3 withRequestId:(id)a4 shouldStartTimer:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    isAttending = self->_isAttending;
    requestMHUUID = self->_requestMHUUID;
    *buf = 136316162;
    v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
    v32 = 1024;
    *v33 = isAttending;
    *&v33[4] = 2112;
    *&v33[6] = requestMHUUID;
    *&v33[14] = 2112;
    *&v33[16] = v10;
    v34 = 1024;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s _isAttending:%u _requestMHUUID:%@ mhId:%@ startTimer:%u", buf, 0x2Cu);
    v11 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    attendingTimeoutInSecs = self->_attendingTimeoutInSecs;
    *buf = 136315650;
    v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
    v32 = 2048;
    *v33 = attendingTimeoutInSecs;
    *&v33[8] = 2048;
    *&v33[10] = 0x3FF0000000000000;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s _attendingTimeoutInSecs:%f kCSAttSiriAttendingTimeoutMinVal:%f", buf, 0x20u);
  }

  if (!self->_isAttending)
  {
    if (self->_prevStoppedMhId && [v10 isEqualToString:?] && !-[CSAttSiriController getPendingActivationStatus](self->_attSiriController, "getPendingActivationStatus"))
    {
      v27 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 136315394;
      v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
      v32 = 2112;
      *v33 = v10;
      v18 = "%s Ignoring attending start request for previously stopped MHId:%@";
      v19 = v27;
    }

    else
    {
      objc_storeStrong(&self->_audioRecordContext, a3);
      objc_storeStrong(&self->_requestMHUUID, a4);
      [(CSAttSiriMagusLoggingNode *)self->_magusLoggingNode setMhId:v10];
      [(CSAttSiriMagusLoggingNode *)self->_magusLoggingNode setAudioRecordContext:self->_audioRecordContext];
      [(CSAttSiriMagusLoggingNode *)self->_magusLoggingNode stop];
      [(CSAttSiriOSDNode *)self->_osdNode resetForNewRequestWithRecordContext:self->_audioRecordContext endpointerSettings:0 voiceTriggerInfo:0 osdMode:1];
      [(CSAttSiriNode *)self->_gazeNode start];
      [(CSAttSiriAttentionNode *)self->_attentionNode start];
      [(CSAttSiriMotionNode *)self->_motionNode start];
      [(CSAttSiriMagusLoggingNode *)self->_magusLoggingNode start];
      v21 = +[CSFPreferences sharedPreferences];
      v22 = [v21 isGazeSimlModelEnabled] ^ 1;

      v23 = [(CSAttSiriController *)self->_attSiriController attSiriSvcListener];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006B7E4;
      v28[3] = &unk_1002537E8;
      v29 = v22;
      v28[4] = self;
      [v23 notifyClientsWithBlock:v28];

      self->_isAttending = 1;
      if (v5)
      {
        [(CSAttSiriContConvController *)self _setupAttendingTimer];
      }

      v24 = +[CSAttSiriStateMonitor sharedInstance];
      [v24 updateState:1];

      v25 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v26 = self->_requestMHUUID;
      *buf = 136315394;
      v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
      v32 = 2112;
      *v33 = v26;
      v18 = "%s Started attending for request Id: %@";
      v19 = v25;
    }

    v20 = 22;
    goto LABEL_20;
  }

  if (v5)
  {
    if ([(NSString *)self->_requestMHUUID isEqualToString:v10])
    {
      [(CSAttSiriContConvController *)self _setupAttendingTimer];
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Start/Restart attending timer", buf, 0xCu);
      }
    }
  }

  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestMHUUID;
    *buf = 136315650;
    v31 = "[CSAttSiriContConvController _startAttendingWithAudioRecordContext:withRequestId:shouldStartTimer:]";
    v32 = 2112;
    *v33 = v17;
    *&v33[8] = 2112;
    *&v33[10] = v10;
    v18 = "%s Already attending with id: %@, ignore new start attending request for id: %@";
    v19 = v16;
    v20 = 32;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
  }

LABEL_21:
}

- (void)updateSiriOrbLocation:(CGRect)a3
{
  if (self->_gazeNode)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B9E0;
    block[3] = &unk_10024FAE8;
    block[4] = self;
    v6 = a3;
    dispatch_async(queue, block);
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSAttSiriContConvController updateSiriOrbLocation:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s gazeNode is nil!", buf, 0xCu);
    }
  }
}

- (void)relayGazeEstimates:(CGPoint)a3 landmarks:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (self->_gazeNode)
  {
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006BBAC;
    v11[3] = &unk_100250B98;
    v11[4] = self;
    v13 = x;
    v14 = y;
    v12 = v7;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriContConvController relayGazeEstimates:landmarks:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s gazeNode is nil!", buf, 0xCu);
    }
  }
}

- (void)gazeTrackerFaceTrackingMetaDataUpdate:(id)a3 atMachAbsTime:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_gazeNode)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BD64;
    block[3] = &unk_1002533C8;
    block[4] = self;
    v11 = v6;
    v12 = a4;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSAttSiriContConvController gazeTrackerFaceTrackingMetaDataUpdate:atMachAbsTime:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s gazeNode is nil!", buf, 0xCu);
    }
  }
}

- (void)attSiriNode:(id)a3 startSpeechProcessing:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BE58;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)startMagusLoggingForTriggerRequest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BED8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopAttendingForRequestId:(id)a3 isReqCC:(BOOL)a4 forceStop:(BOOL)a5
{
  v8 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BF94;
  block[3] = &unk_1002520F0;
  v14 = a4;
  v15 = a5;
  v12 = v8;
  v13 = self;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)startAttendingWithAudioRecordContext:(id)a3 attendingSiriRequestContext:(id)a4 withRequestId:(id)a5 shouldStartTimer:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006C154;
  v14[3] = &unk_100252420;
  v18 = a6;
  v15 = v10;
  v16 = v9;
  v17 = self;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (BOOL)shouldRunCCForAudioRecordContext:(id)a3
{
  if (-[CSAttSiriContConvController _shouldDisableCCForAudioRecordType:](self, "_shouldDisableCCForAudioRecordType:", [a3 type]))
  {
    return 0;
  }

  return [(CSAttSiriContConvController *)self _shouldConfigureAudioForContinuousConversation];
}

- (void)_setupGazeNodeWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSAttSiriContConvController _setupGazeNodeWithAttSiriController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  v6 = [[CSAttSiriIOSGazeNode alloc] initWithAttSiriController:v4];
  gazeNode = self->_gazeNode;
  self->_gazeNode = v6;

  v8 = self->_gazeNode;
  if (v8)
  {
    [(NSMutableDictionary *)self->_nodesCache setObject:v8 forKey:&off_10025E0D8];
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSAttSiriContConvController _setupGazeNodeWithAttSiriController:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Gaze Node is nil!", &v10, 0xCu);
    }
  }
}

- (CSAttSiriContConvController)initWithAttSiriController:(id)a3 supportAttentionLostAndGain:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v43.receiver = self;
  v43.super_class = CSAttSiriContConvController;
  v8 = [(CSAttSiriContConvController *)&v43 init];
  v9 = v8;
  if (!v8)
  {
LABEL_27:
    v36 = v9;
    goto LABEL_28;
  }

  objc_storeStrong(&v8->_attSiriController, a3);
  v10 = dispatch_queue_create("AttSiriCCController queue", 0);
  queue = v9->_queue;
  v9->_queue = v10;

  v12 = +[NSMutableDictionary dictionary];
  nodesCache = v9->_nodesCache;
  v9->_nodesCache = v12;

  if (CSIsIOS())
  {
    [(CSAttSiriContConvController *)v9 _applyGazeSignalMandate];
    if (v4)
    {
      v14 = [[CSAttSiriAttentionNode alloc] initWithAttSiriController:v9->_attSiriController];
      attentionNode = v9->_attentionNode;
      v9->_attentionNode = v14;

      v16 = v9->_attentionNode;
      if (v16)
      {
        [(NSMutableDictionary *)v9->_nodesCache setObject:v16 forKey:&off_10025E078];
      }

      else
      {
        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s _attentionNode is nil!", buf, 0xCu);
        }
      }
    }
  }

  v18 = objc_alloc_init(CSAttSiriOSDNode);
  osdNode = v9->_osdNode;
  v9->_osdNode = v18;

  v20 = v9->_osdNode;
  if (v20)
  {
    [(NSMutableDictionary *)v9->_nodesCache setObject:v20 forKey:&off_10025E090];
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v9->_osdNode;
      *buf = 136315394;
      v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s _osdNode:%@", buf, 0x16u);
    }

    v23 = +[CSFPreferences sharedPreferences];
    v24 = [v23 isAttentiveSiriAudioLoggingEnabled];

    if (v24)
    {
      v25 = [[CSAttSiriMagusLoggingNode alloc] initWithAttSiriController:v9->_attSiriController];
      magusLoggingNode = v9->_magusLoggingNode;
      v9->_magusLoggingNode = v25;

      v27 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v9->_magusLoggingNode;
        *buf = 136315394;
        v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Created _magusLoggingNode:%@", buf, 0x16u);
      }

      v29 = v9->_magusLoggingNode;
      if (v29)
      {
        [(NSMutableDictionary *)v9->_nodesCache setObject:v29 forKey:&off_10025E0A8];
      }

      if (CSIsIOS())
      {
        v30 = [[CSAttSiriMotionNode alloc] initWithAttSiriController:v9->_attSiriController];
        motionNode = v9->_motionNode;
        v9->_motionNode = v30;

        v32 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v9->_motionNode;
          *buf = 136315394;
          v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
          v46 = 2112;
          v47 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s Created _motionNode:%@", buf, 0x16u);
        }

        v34 = v9->_motionNode;
        if (v34)
        {
          [(NSMutableDictionary *)v9->_nodesCache setObject:v34 forKey:&off_10025E0C0];
        }
      }
    }

    else
    {
      v37 = v9->_magusLoggingNode;
      v9->_magusLoggingNode = 0;

      v38 = v9->_motionNode;
      v9->_motionNode = 0;
    }

    v39 = [[CSAttSiriAudioSessionStateClient alloc] initWithDelegate:v9];
    siriStateClient = v9->_siriStateClient;
    v9->_siriStateClient = v39;

    v9->_isAttending = 0;
    [(CSAttSiriContConvController *)v9 _configureAttendingTimeout];
    v41 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s Created AttSiriCCController", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v35 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v45 = "[CSAttSiriContConvController initWithAttSiriController:supportAttentionLostAndGain:]";
    _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s _osdNode is nil! Initialization failed!", buf, 0xCu);
  }

  v36 = 0;
LABEL_28:

  return v36;
}

- (CSAttSiriContConvController)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriContConvController *)self initWithAttSiriController:v4 supportAttentionLostAndGain:+[CSAttSiriAttentionNode supportAttentionLostAndGain]];

  return v5;
}

@end