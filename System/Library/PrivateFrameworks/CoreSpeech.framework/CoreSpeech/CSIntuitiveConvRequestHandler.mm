@interface CSIntuitiveConvRequestHandler
- (BOOL)_isRequestIdCurrent:(id)a3;
- (CSIntuitiveConvRequestHandler)init;
- (CSIntuitiveConvRequestHandler)initWithAudioSrcNode:(id)a3 endpointerNode:(id)a4 osdNode:(id)a5 ssrNode:(id)a6 speechRecognitionNode:(id)a7 uresNode:(id)a8 needsSSRNode:(BOOL)a9 aFtmNode:(id)a10 siriEnabledMonitor:(id)a11 siriClientBehaviorMonitor:(id)a12 intuitiveConvAudioCaptureMonitor:(id)a13 rcHandler:(id)a14 tcuGenerator:(id)a15 continuityEndDetector:(id)a16 bridgeMessageHandler:(id)a17 audioCoordinator:(id)a18 magusSupportedPolicy:(id)a19 supportsAcousticProgressiveChecker:(BOOL)a20 supportsUnderstandingOnDevice:(BOOL)a21 requireASROnDevice:(BOOL)a22 supportsHybridUnderstandingOnDevice:(BOOL)a23 supportsLogger:(BOOL)a24 supportTCU:(BOOL)a25 audioSessionInfoProvider:(id)a26 aggressiveECHandler:(id)a27;
- (id)_recordContextForContinuousConversation;
- (id)_startStreamOption;
- (id)_startStreamOptionWithMachAbsTime:(unint64_t)a3;
- (id)fetchCurrentRequestId;
- (id)fetchDismissedRequestId;
- (id)fetchRecordingEventUUIDToIgnore;
- (void)CSSiriEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)_attendingExitAndDismissalWithXpcDisconnect:(BOOL)a3;
- (void)_cacheStartAttendingInfo:(id)a3 attendingDecision:(BOOL)a4;
- (void)_configureAllNodes;
- (void)_fetchMitigationAssets;
- (void)_fetchRequiredAssetsForRecordContext:(id)a3;
- (void)_fetchVoiceTriggerAssets;
- (void)_generateStartAttendingHint:(id)a3 attendingDecision:(BOOL)a4;
- (void)_handleClientDidStartStreamWithOption:(id)a3 successfully:(BOOL)a4;
- (void)_handleClientDidStopWithOption:(id)a3;
- (void)_handleClientPreparedAudioStream:(id)a3 successfully:(BOOL)a4;
- (void)_handleClientWillStartStreamWithContext:(id)a3 option:(id)a4;
- (void)_handleStartProcessingWithRecordContext:(id)a3 withAudioStartStreamOptions:(id)a4 completion:(id)a5;
- (void)_handleStopProcessingForRequestId:(id)a3;
- (void)_setupAudioSrcNodeWithSiriClientStream:(id)a3;
- (void)_startMonitoringAudioSession;
- (void)_stopMonitoringAudioSession;
- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)a3;
- (void)attSiriNode:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 usesAutomaticEndpointing:(BOOL)a6;
- (void)attendingXpcDisconnection;
- (void)audioSessionInfoProvider:(id)a3 didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)a4;
- (void)dismissAttendingRequested;
- (void)emitRequestLinkEventForMHUUID:(id)a3 withRequestId:(id)a4;
- (void)intuitiveConvAudioCaptureMonitor:(id)a3 didStartAudioCaptureSuccessfully:(BOOL)a4 option:(id)a5 eventUUID:(id)a6;
- (void)intuitiveConvAudioCaptureMonitor:(id)a3 fetchedAudioStream:(id)a4 successfully:(BOOL)a5;
- (void)intuitiveConvAudioCaptureMonitor:(id)a3 willStartAudioCaptureWithContext:(id)a4 option:(id)a5;
- (void)intuitiveConvAudioCaptureMonitor:(id)a3 willStopAudioCaptureReason:(unint64_t)a4;
- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)a3 stopStreamOption:(id)a4 eventUUID:(id)a5;
- (void)mxSessionMonitorSomeClientWentActive:(id)a3;
- (void)notifyRequestCompletion;
- (void)setRequestHandlerDelegate:(id)a3;
- (void)setup;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5;
- (void)siriClientBehaviorMonitor:(id)a3 fetchedSiriClientAudioStream:(id)a4 successfully:(BOOL)a5;
- (void)siriClientBehaviorMonitor:(id)a3 preparedSiriClientAudioStream:(id)a4 successfully:(BOOL)a5;
- (void)siriClientBehaviorMonitor:(id)a3 willStartStreamWithContext:(id)a4 option:(id)a5 withEventUUID:(id)a6;
- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5 withEventUUID:(id)a6;
- (void)siriPromptWillStart;
- (void)siriUIDismissed;
- (void)start;
- (void)testDismissAttendingWithXPDisconnection:(BOOL)a3;
@end

@implementation CSIntuitiveConvRequestHandler

- (void)attendingXpcDisconnection
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSIntuitiveConvRequestHandler attendingXpcDisconnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Triggering asset refresh due to XPC disconnection", buf, 0xCu);
  }

  v4 = +[CSAttSiriMitigationAssetHandler sharedHandler];
  [v4 triggerAssetRefresh];

  v5 = +[CSVoiceTriggerAssetHandler sharedHandler];
  [v5 triggerAssetRefresh];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004D0C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopMonitoringAudioSession
{
  if (self->_audioSessionMonitoringInProgress)
  {
    v3 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSIntuitiveConvRequestHandler _stopMonitoringAudioSession]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
    }

    v4 = +[CSMXSessionMonitor sharedInstance];
    [v4 removeObserver:self];

    self->_audioSessionMonitoringInProgress = 0;
  }
}

- (void)_fetchVoiceTriggerAssets
{
  v3 = +[CSVoiceTriggerAssetHandler sharedHandler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000058F4;
  v4[3] = &unk_100252F10;
  v4[4] = self;
  [v3 getVoiceTriggerAssetWithEndpointId:0 completion:v4];
}

- (void)_fetchMitigationAssets
{
  v3 = +[CSAttSiriMitigationAssetHandler sharedHandler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005A50;
  v4[3] = &unk_100252F10;
  v4[4] = self;
  [v3 getMitigationAssetWithEndpointId:0 completion:v4];
}

- (void)notifyRequestCompletion
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C44;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)testDismissAttendingWithXPDisconnection:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D8B8;
  v4[3] = &unk_100253BF8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (id)fetchDismissedRequestId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003DA70;
  v10 = sub_10003DA80;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003DA88;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fetchCurrentRequestId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003DA70;
  v10 = sub_10003DA80;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003DB8C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fetchRecordingEventUUIDToIgnore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003DA70;
  v10 = sub_10003DA80;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003DC90;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)emitRequestLinkEventForMHUUID:(id)a3 withRequestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSIntuitiveConvRequestHandler *)self _createRequestLinkInfo:v7 component:1];
  v9 = [(CSIntuitiveConvRequestHandler *)self _createRequestLinkInfo:v6 component:9];
  v10 = objc_alloc_init(SISchemaRequestLink);
  [v10 setSource:v8];
  [v10 setTarget:v9];
  v11 = +[AssistantSiriAnalytics sharedStream];
  [v11 emitMessage:v10];

  v12 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[CSIntuitiveConvRequestHandler emitRequestLinkEventForMHUUID:withRequestId:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Emit link msg for mhId %@ with reqId %@", &v13, 0x20u);
  }
}

- (id)_startStreamOptionWithMachAbsTime:(unint64_t)a3
{
  v4 = +[CSAudioStartStreamOption noAlertOption];
  [v4 setRequestHistoricalAudioDataWithHostTime:1];
  [v4 setStartRecordingHostTime:a3];
  [v4 setRequireSingleChannelLookup:1];
  [v4 setSelectedChannel:0];

  return v4;
}

- (id)_startStreamOption
{
  v3 = mach_absolute_time();

  return [(CSIntuitiveConvRequestHandler *)self _startStreamOptionWithMachAbsTime:v3];
}

- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)a3
{
  v4 = [(CSIntuitiveConvRequestHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DFF8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)_isRequestIdCurrent:(id)a3
{
  if (a3)
  {
    return [(NSString *)self->_currentRequestId isEqualToString:?];
  }

  else
  {
    return 1;
  }
}

- (void)_handleStopProcessingForRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSIntuitiveConvRequestHandler _handleStopProcessingForRequestId:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s requestId:%@", &v8, 0x16u);
  }

  if ([(CSIntuitiveConvRequestHandler *)self _isRequestIdCurrent:v4])
  {
    [(CSAttSiriEndpointerNode *)self->_endpointerNode stop];
    [(CSAttSiriOSDNode *)self->_osdNode stop];
    [(CSAttSiriAFTMNode *)self->_aFTMNode stop];
    [(CSAttSiriSSRNode *)self->_ssrNode stop];
    [(CSAttSiriEagerMitigator *)self->_eagerMitigator requestEndedForId:self->_currentRequestId];
  }

  else
  {
    v6 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      currentRequestId = self->_currentRequestId;
      v8 = 136315650;
      v9 = "[CSIntuitiveConvRequestHandler _handleStopProcessingForRequestId:]";
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = currentRequestId;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Stop received for invalid requestId:%@, currentRequestId:%@", &v8, 0x20u);
    }
  }
}

- (void)_handleStartProcessingWithRecordContext:(id)a3 withAudioStartStreamOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v43 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s recordContext:%@, streamOptions:%@", buf, 0x20u);
  }

  if ([v8 isVoiceTriggered])
  {
    v12 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
    v41 = 0;
    [v12 fetchVoiceTriggerInfoWithAudioContext:v8 resultVoiceTriggerInfo:&v41 resultRTSTriggerInfo:0];
    v13 = v41;
  }

  else
  {
    v13 = 0;
  }

  if ([v8 type] == 17 || objc_msgSend(v8, "type") == 18)
  {
    v14 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Skip processing for remora requests!", buf, 0xCu);
    }
  }

  else
  {
    if ([v8 isContinuousConversation])
    {
      [v9 setEnforceAutomaticEndpointing:1];
    }

    [(CSAttSiriOSDNode *)self->_osdNode setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriUresNode *)self->_uresNode setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriEagerMitigator *)self->_eagerMitigator setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode prepareToStartSpeechRequestWithStartStreamOption:v9 audioRecordContext:v8 voiceTriggerInfo:v13];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode start];
    v36 = -[CSEndpointerSettings initWithDisableEndpointer:]([CSEndpointerSettings alloc], "initWithDisableEndpointer:", [v9 disableEndpointer]);
    [CSAttSiriOSDNode resetForNewRequestWithRecordContext:"resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:" endpointerSettings:v8 voiceTriggerInfo:?];
    endpointerNode = self->_endpointerNode;
    +[CSConfig inputRecordingSampleRate];
    [(CSAttSiriEndpointerNode *)endpointerNode resetForNewRequestWithSampleRate:v16 recordContext:v8 recordOption:v9 voiceTriggerInfo:v13];
    tcuGenerator = self->_tcuGenerator;
    v18 = [v9 siriSessionUUID];
    [(CSAttSiriTCUGenerator *)tcuGenerator startWithRecordContext:v8 withRequestId:v18];

    [(CSEndpointDetectedSelfLogger *)self->_endpointDetectedSelfLogger reset];
    -[CSAttSiriContinuityEndDetector setUpWithContinuityEndUsage:](self->_continuityEndDetector, "setUpWithContinuityEndUsage:", [v8 isDictation] ^ 1);
    eagerMitigator = self->_eagerMitigator;
    v20 = [v9 siriSessionUUID];
    [(CSAttSiriEagerMitigator *)eagerMitigator requestStartedWithId:v20 forRecordContext:v8];

    v21 = [(CSAsset *)self->_mitigationAsset getCategoryKeyWithRecordCtx:v8];
    if ((CSIsCommunalDevice() & 1) != 0 || [(CSAsset *)self->_mitigationAsset shouldRunSpkrIdForCategory:v21])
    {
      [(CSAttSiriSSRNode *)self->_ssrNode setPrefetchedAsset:self->_vtAsset];
      ssrNode = self->_ssrNode;
      v23 = [v9 siriSessionUUID];
      [(CSAttSiriSSRNode *)ssrNode resetForNewRequestWithRecordContext:v8 voiceTriggerInfo:v13 withReqId:v23];
    }

    v24 = @"AcousticSLTaskTypeVoiceTrigger";
    v25 = @"AcousticSLTaskTypeVoiceTrigger";
    if ([v8 isContinuousConversation])
    {
      v24 = @"AcousticSLTaskTypeContConv";
      v26 = @"AcousticSLTaskTypeContConv";
    }

    [(CSAttSiriAFTMNode *)self->_aFTMNode setPrefetchedAsset:self->_mitigationAsset, v21];
    aFTMNode = self->_aFTMNode;
    v28 = [v9 siriSessionUUID];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10003E6F4;
    v37[3] = &unk_10024EFC0;
    v38 = v8;
    v39 = self;
    v29 = v9;
    v40 = v29;
    [(CSAttSiriAFTMNode *)aFTMNode startRequestWithContext:v38 withVtei:v13 taskType:v24 withRequestId:v28 completion:v37];

    signalsLogger = self->_signalsLogger;
    audioRecordContext = self->_audioRecordContext;
    v32 = [v29 siriSessionUUID];
    [(CSIntuitiveConversationLogger *)signalsLogger startLoggingWithAudioRecordContext:audioRecordContext requestId:v32];

    if (+[CSUtils supportsAudioMessage])
    {
      audioMessageRequestHandler = self->_audioMessageRequestHandler;
      v34 = [v29 siriSessionUUID];
      [(CSSiriAudioMessageRequestHandler *)audioMessageRequestHandler startLoggingWithRequestId:v34 recordContext:self->_audioRecordContext];
    }
  }
}

- (void)_setupAudioSrcNodeWithSiriClientStream:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[CSIntuitiveConvRequestHandler _setupAudioSrcNodeWithSiriClientStream:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  [(CSAttSiriAudioCoordinator *)self->_audioCoordinator reset];
  audioMetricsNode = self->_audioMetricsNode;
  v7 = [v4 streamProvider];
  [(CSAttSiriAudioMetricsNode *)audioMetricsNode setupWithStreamProviding:v7];

  [(CSAttSiriAudioSrcNode *)self->_audioSrcNode attachToMasterStream:v4 name:@"CSIntuitiveConvRequestHandler" completion:&stru_10024EF98];
}

- (void)_fetchRequiredAssetsForRecordContext:(id)a3
{
  if (([a3 isDictation] & 1) == 0)
  {
    [(CSIntuitiveConvRequestHandler *)self _fetchVoiceTriggerAssets];

    [(CSIntuitiveConvRequestHandler *)self _fetchMitigationAssets];
  }
}

- (void)mxSessionMonitorSomeClientWentActive:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EBDC;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_startMonitoringAudioSession
{
  if (!self->_audioSessionMonitoringInProgress)
  {
    v3 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSIntuitiveConvRequestHandler _startMonitoringAudioSession]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
    }

    v4 = +[CSMXSessionMonitor sharedInstance];
    [v4 addObserver:self];

    self->_audioSessionMonitoringInProgress = 1;
  }
}

- (void)audioSessionInfoProvider:(id)a3 didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)a4
{
  audioSrcNode = self->_audioSrcNode;
  if (audioSrcNode)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003EDFC;
    v6[3] = &unk_10024EF50;
    v6[4] = self;
    [(CSAttSiriAudioSrcNode *)audioSrcNode fetchRoutesWithCompletion:v6, a4];
  }
}

- (void)siriPromptWillStart
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F070;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriUIDismissed
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F19C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_attendingExitAndDismissalWithXpcDisconnect:(BOOL)a3
{
  if (a3)
  {
    objc_storeStrong(&self->_dismissedRequestId, self->_currentRequestId);
  }

  else
  {
    siriClientStream = self->_siriClientStream;
    if (siriClientStream)
    {
      v5 = [(CSAudioStream *)siriClientStream startStreamOption];

      if (v5)
      {
        v6 = [(CSAudioStream *)self->_siriClientStream startStreamOption];
        v7 = [v6 siriSessionUUID];
        dismissedRequestId = self->_dismissedRequestId;
        self->_dismissedRequestId = v7;

        v9 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
        {
          v10 = self->_dismissedRequestId;
          v13 = 136315394;
          v14 = "[CSIntuitiveConvRequestHandler _attendingExitAndDismissalWithXpcDisconnect:]";
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s dismissed requestId : %@", &v13, 0x16u);
        }
      }
    }
  }

  v11 = [[CSAttendingStopHintInfo alloc] initWithOrigin:1 reason:4];
  [(CSAttendingHintProviding *)self->_hintProvider postAttendingStopHintWithInfo:v11];
  [(CSIntuitiveConvRequestHandler *)self _stopMonitoringAudioSession];
  [(CSAggressiveECModeHandler *)self->_aggressiveECHandler siriDismissed];
  pendingAttendingStartRootRequestID = self->_pendingAttendingStartRootRequestID;
  self->_pendingAttendingStartRootRequestID = 0;

  self->_pendingStartAttendingDecision = 0;
  [(CSAttSiriSSRNode *)self->_ssrNode handleSiriSessionEnd];
}

- (void)dismissAttendingRequested
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSIntuitiveConvRequestHandler dismissAttendingRequested]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Triggering asset refresh at Siri UI dismissal", buf, 0xCu);
  }

  v4 = +[CSAttSiriMitigationAssetHandler sharedHandler];
  [v4 triggerAssetRefresh];

  v5 = +[CSVoiceTriggerAssetHandler sharedHandler];
  [v5 triggerAssetRefresh];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F4AC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 usesAutomaticEndpointing:(BOOL)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F52C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSSiriEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSIntuitiveConvRequestHandler CSSiriEnabledMonitor:didReceiveEnabled:]";
    v12 = 1026;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Siri enabled : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F700;
  v8[3] = &unk_100253BF8;
  v9 = v4;
  v8[4] = self;
  dispatch_async(queue, v8);
}

- (void)_handleClientPreparedAudioStream:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v4)
  {
    objc_storeStrong(&self->_siriClientStream, a3);
    v8 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CSIntuitiveConvRequestHandler _handleClientPreparedAudioStream:successfully:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Cached siri client stream, attach after nodes start", &v12, 0xCu);
    }

    v9 = [(CSAudioStream *)self->_siriClientStream streamRequest];
    v10 = [v9 recordContext];
    [(CSIntuitiveConvRequestHandler *)self _fetchRequiredAssetsForRecordContext:v10];
  }

  else
  {
    v11 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[CSIntuitiveConvRequestHandler _handleClientPreparedAudioStream:successfully:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Skip asking audioSrcNode to prepare since Siri client failed to prepare audio", &v12, 0xCu);
    }
  }
}

- (id)_recordContextForContinuousConversation
{
  v3 = [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor recordRoute];
  v4 = [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor deviceId];
  if ([(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation])
  {
    v5 = [(CSAudioRecordContext *)self->_audioRecordContext copy];
  }

  else
  {
    v5 = [CSAudioRecordContext contextForContinuousConversationWithRecordRoute:v3 deviceId:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_generateStartAttendingHint:(id)a3 attendingDecision:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *v16 = 136315650;
    *&v16[4] = "[CSIntuitiveConvRequestHandler _generateStartAttendingHint:attendingDecision:]";
    *&v16[12] = 2112;
    *&v16[14] = v6;
    if (v4)
    {
      v8 = @"YES";
    }

    *&v16[22] = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s rootRequestId : %@, shouldStartAttending : %@", v16, 0x20u);
  }

  if (v4)
  {
    v9 = [CSAttendingStartHintInfo alloc];
    v10 = [(CSIntuitiveConvRequestHandler *)self _recordContextForContinuousConversation];
    v11 = [(CSAttendingStartHintInfo *)v9 initWithOrigin:1 reason:1 recordContext:v10 rootRequestId:v6 mhUUID:self->_requestMHUUID];

    [(CSAttendingHintProviding *)self->_hintProvider postAttendingStartHintWithInfo:v11];
    aggressiveECHandler = self->_aggressiveECHandler;
    v13 = 1;
LABEL_13:
    [(CSAggressiveECModeHandler *)aggressiveECHandler setAttendingState:v13, *v16, *&v16[16]];
    goto LABEL_14;
  }

  v14 = 0;
  if (v6)
  {
    dismissedRequestId = self->_dismissedRequestId;
    if (dismissedRequestId)
    {
      v14 = [(NSString *)dismissedRequestId isEqualToString:v6];
    }
  }

  v11 = [[CSAttendingMagusNotSupportedHintInfo alloc] initWithOrigin:1 reason:1 rootRequestId:v6];
  [(CSAttendingHintProviding *)self->_hintProvider postAttendingMagusNotSupportedHintWithInfo:v11];
  [(CSAttSiriAssetDownloadPromptIOS *)self->_downloadPrompter checkIfNewAssetRequiredGivenCurrentVTAsset:self->_vtAsset mitigationAsset:self->_mitigationAsset];
  aggressiveECHandler = self->_aggressiveECHandler;
  if (!v14)
  {
    v13 = 0;
    goto LABEL_13;
  }

  [(CSAggressiveECModeHandler *)aggressiveECHandler siriDismissed];
LABEL_14:
}

- (void)_cacheStartAttendingInfo:(id)a3 attendingDecision:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_pendingAttendingStartRootRequestID, a3);
  self->_pendingStartAttendingDecision = v4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    pendingAttendingStartRootRequestID = self->_pendingAttendingStartRootRequestID;
    v10 = 136315650;
    v11 = "[CSIntuitiveConvRequestHandler _cacheStartAttendingInfo:attendingDecision:]";
    v12 = 1024;
    v13 = v4;
    v14 = 2112;
    v15 = pendingAttendingStartRootRequestID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Cached: startAttendingDecision:%u, attendingStartRootRequestID:%@", &v10, 0x1Cu);
  }
}

- (void)_handleClientDidStopWithOption:(id)a3
{
  v4 = a3;
  v5 = [v4 requestId];
  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 description];
    *buf = 136315650;
    v21 = "[CSIntuitiveConvRequestHandler _handleClientDidStopWithOption:]";
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s stopOption : %{public}@, stopOptionRequestId : %{public}@", buf, 0x20u);
  }

  if ([(CSIntuitiveConvRequestHandler *)self _isRequestIdCurrent:v5])
  {
    [(CSIntuitiveConvRequestHandler *)self _handleStopProcessingForRequestId:v5];
    v11 = [(CSAudioStream *)self->_siriClientStream startStreamOption];
    v9 = [v11 siriSessionUUID];

    dismissedRequestId = self->_dismissedRequestId;
    LOBYTE(v11) = 1;
    if (dismissedRequestId && v9)
    {
      LODWORD(v11) = ![(NSString *)dismissedRequestId isEqualToString:v9];
    }

    if ([v4 stopRecordingReason] == 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v4 supportsMagus] & v11;
    }

    audioSrcNode = self->_audioSrcNode;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003FE38;
    v17[3] = &unk_10024EF78;
    v17[4] = self;
    v18 = v9;
    v19 = v12;
    v16 = v9;
    [CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:audioSrcNode withCompletion:v17];
  }

  else
  {
    v13 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      currentRequestId = self->_currentRequestId;
      *buf = 136315650;
      v21 = "[CSIntuitiveConvRequestHandler _handleClientDidStopWithOption:]";
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = currentRequestId;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Stop received for invalid requestId:%@, currentRequestId:%@", buf, 0x20u);
    }
  }
}

- (void)_handleClientDidStartStreamWithOption:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 requestMHUUID];
    requestMHUUID = self->_requestMHUUID;
    self->_requestMHUUID = v8;

    v10 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_requestMHUUID;
      *buf = 136315650;
      v17 = "[CSIntuitiveConvRequestHandler _handleClientDidStartStreamWithOption:successfully:]";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s _requestMHUUID set to :%@ option:%@", buf, 0x20u);
    }

    [(CSAttSiriAFTMNode *)self->_aFTMNode setMhId:self->_requestMHUUID];
    [(CSAttSiriSSRNode *)self->_ssrNode setMhId:self->_requestMHUUID];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode setMhId:self->_requestMHUUID];
    [(CSIntuitiveConversationLogger *)self->_signalsLogger setMhId:self->_requestMHUUID];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator setMhId:self->_requestMHUUID];
    [(CSAttSiriEndpointerNode *)self->_endpointerNode setMhId:self->_requestMHUUID];
    [(CSEndpointDetectedSelfLogger *)self->_endpointDetectedSelfLogger setMhId:self->_requestMHUUID];
    [(CSAttSiriOSDNode *)self->_osdNode setMhId:self->_requestMHUUID];
    audioSrcNode = self->_audioSrcNode;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000401DC;
    v15[3] = &unk_10024EF50;
    v15[4] = self;
    [(CSAttSiriAudioSrcNode *)audioSrcNode fetchRoutesWithCompletion:v15];
  }

  else
  {
    v13 = [v6 siriSessionUUID];
    [(CSIntuitiveConvRequestHandler *)self _handleStopProcessingForRequestId:v13];

    v14 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CSIntuitiveConvRequestHandler _handleClientDidStartStreamWithOption:successfully:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Skip asking audioSrcNode to record since Siri client failed to start audio", buf, 0xCu);
    }
  }
}

- (void)_handleClientWillStartStreamWithContext:(id)a3 option:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSIntuitiveConvRequestHandler _handleClientWillStartStreamWithContext:option:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s context : %@", &v15, 0x16u);
  }

  v9 = [v7 siriSessionUUID];
  currentRequestId = self->_currentRequestId;
  self->_currentRequestId = v9;

  v11 = [v6 copy];
  audioRecordContext = self->_audioRecordContext;
  self->_audioRecordContext = v11;

  [(CSIntuitiveConvRequestHandler *)self _handleStartProcessingWithRecordContext:self->_audioRecordContext withAudioStartStreamOptions:v7 completion:0];
  if (self->_siriClientStream)
  {
    [(CSIntuitiveConvRequestHandler *)self _setupAudioSrcNodeWithSiriClientStream:?];
  }

  v13 = [[CSAttendingStopHintInfo alloc] initWithOrigin:1 reason:1];
  [(CSAttendingHintProviding *)self->_hintProvider postAttendingStopHintWithInfo:v13];
  v14 = [v7 requestMHUUID];
  [(CSIntuitiveConvRequestHandler *)self emitRequestLinkEventForMHUUID:v14 withRequestId:self->_currentRequestId];
}

- (void)siriClientBehaviorMonitor:(id)a3 preparedSiriClientAudioStream:(id)a4 successfully:(BOOL)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000405C8;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 fetchedSiriClientAudioStream:(id)a4 successfully:(BOOL)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040680;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040758;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5 withEventUUID:(id)a6
{
  v9 = a4;
  v10 = a6;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100040880;
  v14[3] = &unk_1002510C8;
  v14[4] = self;
  v15 = v10;
  v16 = v9;
  v17 = a5;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  v10 = a6;
  v11 = a7;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000409B0;
  v15[3] = &unk_100252420;
  v15[4] = self;
  v16 = v11;
  v17 = v10;
  v18 = a5;
  v13 = v10;
  v14 = v11;
  dispatch_async(queue, v15);
}

- (void)siriClientBehaviorMonitor:(id)a3 willStartStreamWithContext:(id)a4 option:(id)a5 withEventUUID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100040AF8;
  v16[3] = &unk_100252F38;
  v17 = v10;
  v18 = self;
  v19 = v11;
  v20 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  dispatch_async(queue, v16);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)a3 fetchedAudioStream:(id)a4 successfully:(BOOL)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040CD4;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)a3 stopStreamOption:(id)a4 eventUUID:(id)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040D7C;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)a3 willStopAudioCaptureReason:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040DFC;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)a3 didStartAudioCaptureSuccessfully:(BOOL)a4 option:(id)a5 eventUUID:(id)a6
{
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040EB4;
  block[3] = &unk_100253900;
  v14 = a4;
  v12 = v8;
  v13 = self;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)a3 willStartAudioCaptureWithContext:(id)a4 option:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041050;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)setRequestHandlerDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000410F8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_configureAllNodes
{
  if (self->_bridgeMessageHandler)
  {
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addResultCandidateReceiver:?];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addSpeechRecognitionReceiver:self->_bridgeMessageHandler];
    [(CSAttSiriEndpointerNode *)self->_endpointerNode addReceiver:self->_bridgeMessageHandler];
    v3 = [[CSAttSiriAssetDownloadPromptIOS alloc] initWithDelegate:self->_bridgeMessageHandler];
    downloadPrompter = self->_downloadPrompter;
    self->_downloadPrompter = v3;
  }

  if (self->_supportTCU)
  {
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addTCUReceiver:self->_continuityEndDetector];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addTCUReceiver:self->_bridgeMessageHandler];
    [(CSAttSiriContinuityEndDetector *)self->_continuityEndDetector addContinuityDetectionReceiver:self->_bridgeMessageHandler];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator setDelegate:self->_endpointerNode];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addTCUReceiver:self->_uresNode];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addTRPCandidateExecutionStateReceiver:self->_continuityEndDetector];
  }

  audioSrcNode = self->_audioSrcNode;
  if (audioSrcNode)
  {
    [(CSAttSiriAudioSrcNode *)audioSrcNode setDelegate:self];
  }

  if (self->_audioCoordinator)
  {
    [(CSAttSiriAudioSrcNode *)self->_audioSrcNode addReceiver:?];
    [(CSAttSiriEndpointerNode *)self->_endpointerNode addReceiver:self->_audioCoordinator];
    [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor registerObserver:self->_audioCoordinator];
    [(CSIntuitiveConvAudioCaptureMonitor *)self->_intuitiveConvAudioCaptureMonitor registerObserver:self->_audioCoordinator];
  }

  endpointerNode = self->_endpointerNode;
  if (endpointerNode)
  {
    [(CSAttSiriEndpointerNode *)endpointerNode setEndpointerNodeDelegate:self];
    [(CSAttSiriOSDNode *)self->_osdNode addReceiver:self->_endpointerNode];
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:self->_endpointerNode];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addEndpointFeatureReceiver:self->_endpointerNode];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addResultCandidateReceiver:self->_endpointerNode];
    [(CSAttSiriRCHandler *)self->_rcHandler addResultCandidateReceiver:self->_endpointerNode];
  }

  if (self->_osdNode)
  {
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:?];
    +[CSUtils isContinuousConversationSupported];
  }

  if (self->_ssrNode)
  {
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:?];
  }

  speechRecognitionNode = self->_speechRecognitionNode;
  if (speechRecognitionNode)
  {
    [(CSAttSiriSpeechRecognitionNode *)speechRecognitionNode registerEndpointerNode:self->_endpointerNode];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode registerSSRNode:self->_ssrNode];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addSpeechRecognitionReceiver:self->_attendingStatesMessageHandler];
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:self->_speechRecognitionNode];
    [(CSAttSiriEndpointerNode *)self->_endpointerNode addReceiver:self->_speechRecognitionNode];
  }

  if (self->_uresNode)
  {
    if (+[CSUtils supportsUnderstandingOnDevice])
    {
      [(CSAttSiriUresNode *)self->_uresNode registerSSRNode:self->_ssrNode];
      [(CSAttSiriUresNode *)self->_uresNode registerOSDNode:self->_osdNode];
      [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addReceiver:self->_uresNode];
      [(CSAttSiriAFTMNode *)self->_aFTMNode addReceiver:self->_uresNode];
      [(CSAttSiriOSDNode *)self->_osdNode addReceiver:self->_uresNode];
      [(CSAttSiriSSRNode *)self->_ssrNode addReceiver:self->_uresNode];
      [(CSAttSiriNLDAClassifierNode *)self->_nldaClassifierNode addReceiver:self->_uresNode];
      [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addEndpointFeatureReceiver:self->_uresNode];
      [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addSpeechRecognitionReceiver:self->_uresNode];
      [(CSAttSiriTCUGenerator *)self->_tcuGenerator registerUresNode:self->_uresNode];
      if (self->_supportTCU)
      {
        v8 = objc_alloc_init(CSAttSiriEagerMitigator);
        eagerMitigator = self->_eagerMitigator;
        self->_eagerMitigator = v8;

        [(CSAttSiriUresNode *)self->_uresNode addReceiver:self->_eagerMitigator];
      }
    }
  }

  if (self->_nldaClassifierNode)
  {
    [(CSAttSiriUresNode *)self->_uresNode registerNLDAClassifierNode:?];
  }

  if (self->_tcuGenerator)
  {
    [(CSAttSiriEndpointerNode *)self->_endpointerNode addReceiver:?];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addResultCandidateReceiver:self->_tcuGenerator];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode addRecognitionTaskCompletionReceiver:self->_tcuGenerator];
    [(CSAttSiriContinuityEndDetector *)self->_continuityEndDetector addContinuityDetectionReceiver:self->_tcuGenerator];
    tcuGenerator = self->_tcuGenerator;
    v11 = [(CSAttSiriEndpointerNode *)self->_endpointerNode eagerResultAnalyzer];
    [(CSAttSiriTCUGenerator *)tcuGenerator registerEagerResultAnalyzer:v11];

    [(CSAttSiriRCHandler *)self->_rcHandler addResultCandidateReceiver:self->_tcuGenerator];
    [(CSAttSiriUresNode *)self->_uresNode registerTCUGenerator:self->_tcuGenerator];
  }

  if (self->_continuityEndDetector)
  {
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addRecognitionTaskCompletionReceiver:?];
    [(CSAttSiriContinuityEndDetector *)self->_continuityEndDetector addRecognitionTaskCompletionReceiver:self->_attendingStatesMessageHandler];
    [(CSAttSiriContinuityEndDetector *)self->_continuityEndDetector addRecognitionTaskCompletionReceiver:self->_bridgeMessageHandler];
  }

  if (self->_aFTMNode && +[CSUtils supportsUnderstandingOnDevice])
  {
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:self->_aFTMNode];
  }

  v12 = +[CSFPreferences sharedPreferences];
  v13 = [v12 isAttentiveSiriAudioLoggingEnabled];

  if (v13 && self->_signalsLogger)
  {
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:?];
  }

  if (self->_audioMessageRequestHandler)
  {
    [(CSAttSiriAudioCoordinator *)self->_audioCoordinator addReceiver:?];
  }

  endpointDetectedSelfLogger = self->_endpointDetectedSelfLogger;
  if (endpointDetectedSelfLogger)
  {
    [(CSEndpointDetectedSelfLogger *)endpointDetectedSelfLogger registerEndpointerNode:self->_endpointerNode];
    [(CSAttSiriEndpointerNode *)self->_endpointerNode addReceiver:self->_endpointDetectedSelfLogger];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addRecognitionTaskCompletionReceiver:self->_endpointDetectedSelfLogger];
    [(CSAttSiriTCUGenerator *)self->_tcuGenerator addTCUReceiver:self->_endpointDetectedSelfLogger];
    [(CSEndpointDetectedSelfLogger *)self->_endpointDetectedSelfLogger setup];
  }

  if (self->_audioMetricsNode)
  {
    audioCoordinator = self->_audioCoordinator;

    [(CSAttSiriAudioCoordinator *)audioCoordinator addReceiver:?];
  }
}

- (void)start
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[CSIntuitiveConvRequestHandler start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004168C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setup
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CSIntuitiveConvRequestHandler setup]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor registerObserver:self];
  [(CSIntuitiveConvAudioCaptureMonitor *)self->_intuitiveConvAudioCaptureMonitor registerObserver:self];
  [(CSSiriEnabledMonitor *)self->_siriEnabledMonitor addObserver:self];
  [(CSAudioSessionInfoProvider *)self->_audioSessionInfoProvider registerObserver:self];
}

- (CSIntuitiveConvRequestHandler)initWithAudioSrcNode:(id)a3 endpointerNode:(id)a4 osdNode:(id)a5 ssrNode:(id)a6 speechRecognitionNode:(id)a7 uresNode:(id)a8 needsSSRNode:(BOOL)a9 aFtmNode:(id)a10 siriEnabledMonitor:(id)a11 siriClientBehaviorMonitor:(id)a12 intuitiveConvAudioCaptureMonitor:(id)a13 rcHandler:(id)a14 tcuGenerator:(id)a15 continuityEndDetector:(id)a16 bridgeMessageHandler:(id)a17 audioCoordinator:(id)a18 magusSupportedPolicy:(id)a19 supportsAcousticProgressiveChecker:(BOOL)a20 supportsUnderstandingOnDevice:(BOOL)a21 requireASROnDevice:(BOOL)a22 supportsHybridUnderstandingOnDevice:(BOOL)a23 supportsLogger:(BOOL)a24 supportTCU:(BOOL)a25 audioSessionInfoProvider:(id)a26 aggressiveECHandler:(id)a27
{
  v110 = a3;
  v109 = a4;
  v108 = a5;
  obj = a6;
  v102 = a6;
  v105 = a7;
  v104 = a8;
  v103 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a16;
  v38 = a17;
  v39 = a18;
  v40 = a19;
  v107 = a26;
  v106 = a27;
  v111.receiver = self;
  v111.super_class = CSIntuitiveConvRequestHandler;
  v41 = [(CSIntuitiveConvRequestHandler *)&v111 init];
  if (v41)
  {
    v42 = dispatch_queue_create("CSIntuitiveConvRequestHandler queue", 0);
    queue = v41->_queue;
    v41->_queue = v42;

    v44 = [CSUtils getSerialQueue:@"targetQueue for ASR" qualityOfService:33];
    targetQueueForASR = v41->_targetQueueForASR;
    v41->_targetQueueForASR = v44;

    v46 = +[NSMapTable strongToWeakObjectsMapTable];
    nodesCache = v41->_nodesCache;
    v41->_nodesCache = v46;

    v41->_supportTCU = a25;
    if (v110)
    {
      v48 = v110;
    }

    else
    {
      v48 = [[CSAttSiriAudioSrcNode alloc] initWithTargetQueue:v41->_targetQueueForASR];
    }

    audioSrcNode = v41->_audioSrcNode;
    v41->_audioSrcNode = v48;

    v100 = v32;
    if (v39)
    {
      v50 = v39;
    }

    else
    {
      v50 = [[CSAttSiriAudioCoordinator alloc] initWithTargetQueue:v41->_targetQueueForASR];
    }

    audioCoordinator = v41->_audioCoordinator;
    v41->_audioCoordinator = v50;

    if (v109)
    {
      v52 = v109;
    }

    else
    {
      v52 = objc_alloc_init(CSAttSiriEndpointerNode);
    }

    endpointerNode = v41->_endpointerNode;
    v41->_endpointerNode = v52;

    if (a9)
    {
      if (+[CSUtils shouldDisableSpeakerRecognition])
      {
        v54 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v113 = "[CSIntuitiveConvRequestHandler initWithAudioSrcNode:endpointerNode:osdNode:ssrNode:speechRecognitionNode:uresNode:needsSSRNode:aFtmNode:siriEnabledMonitor:siriClientBehaviorMonitor:intuitiveConvAudioCaptureMonitor:rcHandler:tcuGenerator:continuityEndDetector:bridgeMessageHandler:audioCoordinator:magusSupportedPolicy:supportsAcousticProgressiveChecker:supportsUnderstandingOnDevice:requireASROnDevice:supportsHybridUnderstandingOnDevice:supportsLogger:supportTCU:audioSessionInfoProvider:aggressiveECHandler:]";
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%s Overriding SSR node requirement", buf, 0xCu);
        }
      }

      else if (v102)
      {
        objc_storeStrong(&v41->_ssrNode, obj);
      }

      else
      {
        v55 = objc_alloc_init(CSAttSiriSSRNode);
        ssrNode = v41->_ssrNode;
        v41->_ssrNode = v55;
      }
    }

    if (a22 || a23)
    {
      if (v105)
      {
        v57 = v105;
      }

      else
      {
        v57 = objc_alloc_init(CSAttSiriSpeechRecognitionNode);
      }

      speechRecognitionNode = v41->_speechRecognitionNode;
      v41->_speechRecognitionNode = v57;
    }

    if (a21 || a23)
    {
      if (v104)
      {
        v59 = v104;
      }

      else
      {
        v59 = objc_alloc_init(CSAttSiriUresNode);
      }

      uresNode = v41->_uresNode;
      v41->_uresNode = v59;

      v61 = objc_alloc_init(CSAttSiriNLDAClassifierNode);
      nldaClassifierNode = v41->_nldaClassifierNode;
      v41->_nldaClassifierNode = v61;

      if (v35)
      {
        v63 = v35;
      }

      else
      {
        v63 = [[CSAttSiriRCHandler alloc] initWithEndpointerNode:v41->_endpointerNode uresNode:v41->_uresNode];
      }

      rcHandler = v41->_rcHandler;
      v41->_rcHandler = v63;
    }

    v32 = v100;
    if (a20)
    {
      if (v103)
      {
        v65 = v103;
      }

      else
      {
        v65 = objc_alloc_init(CSAttSiriAFTMNode);
      }

      aFTMNode = v41->_aFTMNode;
      v41->_aFTMNode = v65;
    }

    if (v108)
    {
      v67 = v108;
    }

    else
    {
      v67 = objc_alloc_init(CSAttSiriOSDNode);
    }

    osdNode = v41->_osdNode;
    v41->_osdNode = v67;

    if (v41->_supportTCU)
    {
      if (v36)
      {
        v69 = v36;
      }

      else
      {
        v69 = objc_alloc_init(CSAttSiriTCUGenerator);
      }

      tcuGenerator = v41->_tcuGenerator;
      v41->_tcuGenerator = v69;
    }

    if (v37)
    {
      v71 = v37;
    }

    else
    {
      v71 = objc_alloc_init(CSAttSiriContinuityEndDetector);
    }

    continuityEndDetector = v41->_continuityEndDetector;
    v41->_continuityEndDetector = v71;

    if (v38)
    {
      v73 = v38;
    }

    else
    {
      v73 = [[CSAttSiriBridgeMessageHandler alloc] initWithSpeechRecognitionNode:v41->_speechRecognitionNode tcuGenerator:v41->_tcuGenerator supportTCU:a25];
    }

    bridgeMessageHandler = v41->_bridgeMessageHandler;
    v41->_bridgeMessageHandler = v73;

    if (v100)
    {
      v75 = v100;
    }

    else
    {
      v75 = +[CSSiriEnabledMonitor sharedInstance];
    }

    siriEnabledMonitor = v41->_siriEnabledMonitor;
    v41->_siriEnabledMonitor = v75;

    if (v33)
    {
      v77 = v33;
    }

    else
    {
      v77 = +[CSSiriClientBehaviorMonitor sharedInstance];
    }

    siriClientBehaviorMonitor = v41->_siriClientBehaviorMonitor;
    v41->_siriClientBehaviorMonitor = v77;

    if (v34)
    {
      v79 = v34;
    }

    else
    {
      v79 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
    }

    intuitiveConvAudioCaptureMonitor = v41->_intuitiveConvAudioCaptureMonitor;
    v41->_intuitiveConvAudioCaptureMonitor = v79;

    if (v106)
    {
      v81 = v106;
    }

    else
    {
      v81 = objc_alloc_init(CSAggressiveECModeHandler);
    }

    aggressiveECHandler = v41->_aggressiveECHandler;
    v41->_aggressiveECHandler = v81;

    if (a24)
    {
      v83 = objc_alloc_init(CSIntuitiveConversationLogger);
      signalsLogger = v41->_signalsLogger;
      v41->_signalsLogger = v83;

      [(CSIntuitiveConversationLogger *)v41->_signalsLogger start];
    }

    v85 = objc_alloc_init(CSSiriAudioMessageRequestHandler);
    audioMessageRequestHandler = v41->_audioMessageRequestHandler;
    v41->_audioMessageRequestHandler = v85;

    v87 = objc_alloc_init(CSEndpointDetectedSelfLogger);
    endpointDetectedSelfLogger = v41->_endpointDetectedSelfLogger;
    v41->_endpointDetectedSelfLogger = v87;

    if (v40)
    {
      v89 = v40;
    }

    else
    {
      v89 = +[CSAttSiriMagusSupportedPolicy sharedInstance];
    }

    magusSupportedPolicy = v41->_magusSupportedPolicy;
    v41->_magusSupportedPolicy = v89;

    if (v107)
    {
      v91 = v107;
    }

    else
    {
      v91 = +[CSAudioSessionInfoProvider sharedInstance];
    }

    audioSessionInfoProvider = v41->_audioSessionInfoProvider;
    v41->_audioSessionInfoProvider = v91;

    v41->_audioSessionMonitoringInProgress = 0;
    v93 = [[CSAttSiriAudioSessionStateClient alloc] initWithDelegate:v41];
    siriStateClient = v41->_siriStateClient;
    v41->_siriStateClient = v93;

    pendingAttendingStartRootRequestID = v41->_pendingAttendingStartRootRequestID;
    v41->_pendingAttendingStartRootRequestID = 0;

    v41->_pendingStartAttendingDecision = 0;
    if (+[CSUtils isExclaveHardware])
    {
      v96 = objc_alloc_init(CSAttSiriAudioMetricsNode);
      audioMetricsNode = v41->_audioMetricsNode;
      v41->_audioMetricsNode = v96;
    }
  }

  return v41;
}

- (CSIntuitiveConvRequestHandler)init
{
  if (CSIsCommunalDevice() & 1) != 0 || (CSIsIOS())
  {
    v3 = 1;
  }

  else
  {
    v3 = CSIsMac();
  }

  v4 = +[CSUtils supportAcousticProgressiveChecker];
  v5 = +[CSUtils supportsUnderstandingOnDevice];
  v6 = +[CSUtils supportsSpeechRecognitionOnDevice];
  v7 = +[CSUtils supportsHybridUnderstandingOnDevice];
  v8 = +[CSUtils supportsLogger];
  BYTE5(v11) = +[CSUtils isTCUSupported];
  BYTE4(v11) = v8;
  BYTE3(v11) = v7;
  BYTE2(v11) = v6;
  BYTE1(v11) = v5;
  LOBYTE(v11) = v4;
  LOBYTE(v10) = v3;
  return [CSIntuitiveConvRequestHandler initWithAudioSrcNode:"initWithAudioSrcNode:endpointerNode:osdNode:ssrNode:speechRecognitionNode:uresNode:needsSSRNode:aFtmNode:siriEnabledMonitor:siriClientBehaviorMonitor:intuitiveConvAudioCaptureMonitor:rcHandler:tcuGenerator:continuityEndDetector:bridgeMessageHandler:audioCoordinator:magusSupportedPolicy:supportsAcousticProgressiveChecker:supportsUnderstandingOnDevice:requireASROnDevice:supportsHybridUnderstandingOnDevice:supportsLogger:supportTCU:audioSessionInfoProvider:aggressiveECHandler:" endpointerNode:0 osdNode:0 ssrNode:0 speechRecognitionNode:0 uresNode:0 needsSSRNode:0 aFtmNode:v10 siriEnabledMonitor:0 siriClientBehaviorMonitor:0 intuitiveConvAudioCaptureMonitor:0 rcHandler:0 tcuGenerator:0 continuityEndDetector:0 bridgeMessageHandler:0 audioCoordinator:0 magusSupportedPolicy:0 supportsAcousticProgressiveChecker:0 supportsUnderstandingOnDevice:v11 requireASROnDevice:0 supportsHybridUnderstandingOnDevice:0 supportsLogger:? supportTCU:? audioSessionInfoProvider:? aggressiveECHandler:?];
}

@end