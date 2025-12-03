@interface CSIntuitiveConvRequestHandler
- (BOOL)_isRequestIdCurrent:(id)current;
- (CSIntuitiveConvRequestHandler)init;
- (CSIntuitiveConvRequestHandler)initWithAudioSrcNode:(id)node endpointerNode:(id)endpointerNode osdNode:(id)osdNode ssrNode:(id)ssrNode speechRecognitionNode:(id)recognitionNode uresNode:(id)uresNode needsSSRNode:(BOOL)rNode aFtmNode:(id)self0 siriEnabledMonitor:(id)self1 siriClientBehaviorMonitor:(id)self2 intuitiveConvAudioCaptureMonitor:(id)self3 rcHandler:(id)self4 tcuGenerator:(id)self5 continuityEndDetector:(id)self6 bridgeMessageHandler:(id)self7 audioCoordinator:(id)self8 magusSupportedPolicy:(id)self9 supportsAcousticProgressiveChecker:(BOOL)checker supportsUnderstandingOnDevice:(BOOL)device requireASROnDevice:(BOOL)onDevice supportsHybridUnderstandingOnDevice:(BOOL)understandingOnDevice supportsLogger:(BOOL)logger supportTCU:(BOOL)u audioSessionInfoProvider:(id)provider aggressiveECHandler:(id)cHandler;
- (id)_recordContextForContinuousConversation;
- (id)_startStreamOption;
- (id)_startStreamOptionWithMachAbsTime:(unint64_t)time;
- (id)fetchCurrentRequestId;
- (id)fetchDismissedRequestId;
- (id)fetchRecordingEventUUIDToIgnore;
- (void)CSSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)_attendingExitAndDismissalWithXpcDisconnect:(BOOL)disconnect;
- (void)_cacheStartAttendingInfo:(id)info attendingDecision:(BOOL)decision;
- (void)_configureAllNodes;
- (void)_fetchMitigationAssets;
- (void)_fetchRequiredAssetsForRecordContext:(id)context;
- (void)_fetchVoiceTriggerAssets;
- (void)_generateStartAttendingHint:(id)hint attendingDecision:(BOOL)decision;
- (void)_handleClientDidStartStreamWithOption:(id)option successfully:(BOOL)successfully;
- (void)_handleClientDidStopWithOption:(id)option;
- (void)_handleClientPreparedAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)_handleClientWillStartStreamWithContext:(id)context option:(id)option;
- (void)_handleStartProcessingWithRecordContext:(id)context withAudioStartStreamOptions:(id)options completion:(id)completion;
- (void)_handleStopProcessingForRequestId:(id)id;
- (void)_setupAudioSrcNodeWithSiriClientStream:(id)stream;
- (void)_startMonitoringAudioSession;
- (void)_stopMonitoringAudioSession;
- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attendingXpcDisconnection;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)dismissAttendingRequested;
- (void)emitRequestLinkEventForMHUUID:(id)d withRequestId:(id)id;
- (void)intuitiveConvAudioCaptureMonitor:(id)monitor didStartAudioCaptureSuccessfully:(BOOL)successfully option:(id)option eventUUID:(id)d;
- (void)intuitiveConvAudioCaptureMonitor:(id)monitor fetchedAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)intuitiveConvAudioCaptureMonitor:(id)monitor willStartAudioCaptureWithContext:(id)context option:(id)option;
- (void)intuitiveConvAudioCaptureMonitor:(id)monitor willStopAudioCaptureReason:(unint64_t)reason;
- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d;
- (void)mxSessionMonitorSomeClientWentActive:(id)active;
- (void)notifyRequestCompletion;
- (void)setRequestHandlerDelegate:(id)delegate;
- (void)setup;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor fetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)siriClientBehaviorMonitor:(id)monitor preparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d;
- (void)siriPromptWillStart;
- (void)siriUIDismissed;
- (void)start;
- (void)testDismissAttendingWithXPDisconnection:(BOOL)disconnection;
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

- (void)testDismissAttendingWithXPDisconnection:(BOOL)disconnection
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D8B8;
  v4[3] = &unk_100253BF8;
  disconnectionCopy = disconnection;
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

- (void)emitRequestLinkEventForMHUUID:(id)d withRequestId:(id)id
{
  dCopy = d;
  idCopy = id;
  v8 = [(CSIntuitiveConvRequestHandler *)self _createRequestLinkInfo:idCopy component:1];
  v9 = [(CSIntuitiveConvRequestHandler *)self _createRequestLinkInfo:dCopy component:9];
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
    v16 = dCopy;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Emit link msg for mhId %@ with reqId %@", &v13, 0x20u);
  }
}

- (id)_startStreamOptionWithMachAbsTime:(unint64_t)time
{
  v4 = +[CSAudioStartStreamOption noAlertOption];
  [v4 setRequestHistoricalAudioDataWithHostTime:1];
  [v4 setStartRecordingHostTime:time];
  [v4 setRequireSingleChannelLookup:1];
  [v4 setSelectedChannel:0];

  return v4;
}

- (id)_startStreamOption
{
  v3 = mach_absolute_time();

  return [(CSIntuitiveConvRequestHandler *)self _startStreamOptionWithMachAbsTime:v3];
}

- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly
{
  queue = [(CSIntuitiveConvRequestHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DFF8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_isRequestIdCurrent:(id)current
{
  if (current)
  {
    return [(NSString *)self->_currentRequestId isEqualToString:?];
  }

  else
  {
    return 1;
  }
}

- (void)_handleStopProcessingForRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSIntuitiveConvRequestHandler _handleStopProcessingForRequestId:]";
    v10 = 2112;
    v11 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s requestId:%@", &v8, 0x16u);
  }

  if ([(CSIntuitiveConvRequestHandler *)self _isRequestIdCurrent:idCopy])
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
      v11 = idCopy;
      v12 = 2112;
      v13 = currentRequestId;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Stop received for invalid requestId:%@, currentRequestId:%@", &v8, 0x20u);
    }
  }
}

- (void)_handleStartProcessingWithRecordContext:(id)context withAudioStartStreamOptions:(id)options completion:(id)completion
{
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v43 = "[CSIntuitiveConvRequestHandler _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
    v44 = 2112;
    v45 = contextCopy;
    v46 = 2112;
    v47 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s recordContext:%@, streamOptions:%@", buf, 0x20u);
  }

  if ([contextCopy isVoiceTriggered])
  {
    v12 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
    v41 = 0;
    [v12 fetchVoiceTriggerInfoWithAudioContext:contextCopy resultVoiceTriggerInfo:&v41 resultRTSTriggerInfo:0];
    v13 = v41;
  }

  else
  {
    v13 = 0;
  }

  if ([contextCopy type] == 17 || objc_msgSend(contextCopy, "type") == 18)
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
    if ([contextCopy isContinuousConversation])
    {
      [optionsCopy setEnforceAutomaticEndpointing:1];
    }

    [(CSAttSiriOSDNode *)self->_osdNode setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriUresNode *)self->_uresNode setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriEagerMitigator *)self->_eagerMitigator setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode prepareToStartSpeechRequestWithStartStreamOption:optionsCopy audioRecordContext:contextCopy voiceTriggerInfo:v13];
    [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode start];
    v36 = -[CSEndpointerSettings initWithDisableEndpointer:]([CSEndpointerSettings alloc], "initWithDisableEndpointer:", [optionsCopy disableEndpointer]);
    [CSAttSiriOSDNode resetForNewRequestWithRecordContext:"resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:" endpointerSettings:contextCopy voiceTriggerInfo:?];
    endpointerNode = self->_endpointerNode;
    +[CSConfig inputRecordingSampleRate];
    [(CSAttSiriEndpointerNode *)endpointerNode resetForNewRequestWithSampleRate:v16 recordContext:contextCopy recordOption:optionsCopy voiceTriggerInfo:v13];
    tcuGenerator = self->_tcuGenerator;
    siriSessionUUID = [optionsCopy siriSessionUUID];
    [(CSAttSiriTCUGenerator *)tcuGenerator startWithRecordContext:contextCopy withRequestId:siriSessionUUID];

    [(CSEndpointDetectedSelfLogger *)self->_endpointDetectedSelfLogger reset];
    -[CSAttSiriContinuityEndDetector setUpWithContinuityEndUsage:](self->_continuityEndDetector, "setUpWithContinuityEndUsage:", [contextCopy isDictation] ^ 1);
    eagerMitigator = self->_eagerMitigator;
    siriSessionUUID2 = [optionsCopy siriSessionUUID];
    [(CSAttSiriEagerMitigator *)eagerMitigator requestStartedWithId:siriSessionUUID2 forRecordContext:contextCopy];

    v21 = [(CSAsset *)self->_mitigationAsset getCategoryKeyWithRecordCtx:contextCopy];
    if ((CSIsCommunalDevice() & 1) != 0 || [(CSAsset *)self->_mitigationAsset shouldRunSpkrIdForCategory:v21])
    {
      [(CSAttSiriSSRNode *)self->_ssrNode setPrefetchedAsset:self->_vtAsset];
      ssrNode = self->_ssrNode;
      siriSessionUUID3 = [optionsCopy siriSessionUUID];
      [(CSAttSiriSSRNode *)ssrNode resetForNewRequestWithRecordContext:contextCopy voiceTriggerInfo:v13 withReqId:siriSessionUUID3];
    }

    v24 = @"AcousticSLTaskTypeVoiceTrigger";
    v25 = @"AcousticSLTaskTypeVoiceTrigger";
    if ([contextCopy isContinuousConversation])
    {
      v24 = @"AcousticSLTaskTypeContConv";
      v26 = @"AcousticSLTaskTypeContConv";
    }

    [(CSAttSiriAFTMNode *)self->_aFTMNode setPrefetchedAsset:self->_mitigationAsset, v21];
    aFTMNode = self->_aFTMNode;
    siriSessionUUID4 = [optionsCopy siriSessionUUID];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10003E6F4;
    v37[3] = &unk_10024EFC0;
    v38 = contextCopy;
    selfCopy = self;
    v29 = optionsCopy;
    v40 = v29;
    [(CSAttSiriAFTMNode *)aFTMNode startRequestWithContext:v38 withVtei:v13 taskType:v24 withRequestId:siriSessionUUID4 completion:v37];

    signalsLogger = self->_signalsLogger;
    audioRecordContext = self->_audioRecordContext;
    siriSessionUUID5 = [v29 siriSessionUUID];
    [(CSIntuitiveConversationLogger *)signalsLogger startLoggingWithAudioRecordContext:audioRecordContext requestId:siriSessionUUID5];

    if (+[CSUtils supportsAudioMessage])
    {
      audioMessageRequestHandler = self->_audioMessageRequestHandler;
      siriSessionUUID6 = [v29 siriSessionUUID];
      [(CSSiriAudioMessageRequestHandler *)audioMessageRequestHandler startLoggingWithRequestId:siriSessionUUID6 recordContext:self->_audioRecordContext];
    }
  }
}

- (void)_setupAudioSrcNodeWithSiriClientStream:(id)stream
{
  streamCopy = stream;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[CSIntuitiveConvRequestHandler _setupAudioSrcNodeWithSiriClientStream:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  [(CSAttSiriAudioCoordinator *)self->_audioCoordinator reset];
  audioMetricsNode = self->_audioMetricsNode;
  streamProvider = [streamCopy streamProvider];
  [(CSAttSiriAudioMetricsNode *)audioMetricsNode setupWithStreamProviding:streamProvider];

  [(CSAttSiriAudioSrcNode *)self->_audioSrcNode attachToMasterStream:streamCopy name:@"CSIntuitiveConvRequestHandler" completion:&stru_10024EF98];
}

- (void)_fetchRequiredAssetsForRecordContext:(id)context
{
  if (([context isDictation] & 1) == 0)
  {
    [(CSIntuitiveConvRequestHandler *)self _fetchVoiceTriggerAssets];

    [(CSIntuitiveConvRequestHandler *)self _fetchMitigationAssets];
  }
}

- (void)mxSessionMonitorSomeClientWentActive:(id)active
{
  activeCopy = active;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EBDC;
  v7[3] = &unk_100253C48;
  v8 = activeCopy;
  selfCopy = self;
  v6 = activeCopy;
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

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  audioSrcNode = self->_audioSrcNode;
  if (audioSrcNode)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003EDFC;
    v6[3] = &unk_10024EF50;
    v6[4] = self;
    [(CSAttSiriAudioSrcNode *)audioSrcNode fetchRoutesWithCompletion:v6, info];
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

- (void)_attendingExitAndDismissalWithXpcDisconnect:(BOOL)disconnect
{
  if (disconnect)
  {
    objc_storeStrong(&self->_dismissedRequestId, self->_currentRequestId);
  }

  else
  {
    siriClientStream = self->_siriClientStream;
    if (siriClientStream)
    {
      startStreamOption = [(CSAudioStream *)siriClientStream startStreamOption];

      if (startStreamOption)
      {
        startStreamOption2 = [(CSAudioStream *)self->_siriClientStream startStreamOption];
        siriSessionUUID = [startStreamOption2 siriSessionUUID];
        dismissedRequestId = self->_dismissedRequestId;
        self->_dismissedRequestId = siriSessionUUID;

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

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F52C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSIntuitiveConvRequestHandler CSSiriEnabledMonitor:didReceiveEnabled:]";
    v12 = 1026;
    v13 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Siri enabled : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F700;
  v8[3] = &unk_100253BF8;
  v9 = enabledCopy;
  v8[4] = self;
  dispatch_async(queue, v8);
}

- (void)_handleClientPreparedAudioStream:(id)stream successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  streamCopy = stream;
  if (successfullyCopy)
  {
    objc_storeStrong(&self->_siriClientStream, stream);
    v8 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CSIntuitiveConvRequestHandler _handleClientPreparedAudioStream:successfully:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Cached siri client stream, attach after nodes start", &v12, 0xCu);
    }

    streamRequest = [(CSAudioStream *)self->_siriClientStream streamRequest];
    recordContext = [streamRequest recordContext];
    [(CSIntuitiveConvRequestHandler *)self _fetchRequiredAssetsForRecordContext:recordContext];
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
  recordRoute = [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor recordRoute];
  deviceId = [(CSSiriClientBehaviorMonitor *)self->_siriClientBehaviorMonitor deviceId];
  if ([(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation])
  {
    v5 = [(CSAudioRecordContext *)self->_audioRecordContext copy];
  }

  else
  {
    v5 = [CSAudioRecordContext contextForContinuousConversationWithRecordRoute:recordRoute deviceId:deviceId];
  }

  v6 = v5;

  return v6;
}

- (void)_generateStartAttendingHint:(id)hint attendingDecision:(BOOL)decision
{
  decisionCopy = decision;
  hintCopy = hint;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *v16 = 136315650;
    *&v16[4] = "[CSIntuitiveConvRequestHandler _generateStartAttendingHint:attendingDecision:]";
    *&v16[12] = 2112;
    *&v16[14] = hintCopy;
    if (decisionCopy)
    {
      v8 = @"YES";
    }

    *&v16[22] = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s rootRequestId : %@, shouldStartAttending : %@", v16, 0x20u);
  }

  if (decisionCopy)
  {
    v9 = [CSAttendingStartHintInfo alloc];
    _recordContextForContinuousConversation = [(CSIntuitiveConvRequestHandler *)self _recordContextForContinuousConversation];
    v11 = [(CSAttendingStartHintInfo *)v9 initWithOrigin:1 reason:1 recordContext:_recordContextForContinuousConversation rootRequestId:hintCopy mhUUID:self->_requestMHUUID];

    [(CSAttendingHintProviding *)self->_hintProvider postAttendingStartHintWithInfo:v11];
    aggressiveECHandler = self->_aggressiveECHandler;
    v13 = 1;
LABEL_13:
    [(CSAggressiveECModeHandler *)aggressiveECHandler setAttendingState:v13, *v16, *&v16[16]];
    goto LABEL_14;
  }

  v14 = 0;
  if (hintCopy)
  {
    dismissedRequestId = self->_dismissedRequestId;
    if (dismissedRequestId)
    {
      v14 = [(NSString *)dismissedRequestId isEqualToString:hintCopy];
    }
  }

  v11 = [[CSAttendingMagusNotSupportedHintInfo alloc] initWithOrigin:1 reason:1 rootRequestId:hintCopy];
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

- (void)_cacheStartAttendingInfo:(id)info attendingDecision:(BOOL)decision
{
  decisionCopy = decision;
  infoCopy = info;
  objc_storeStrong(&self->_pendingAttendingStartRootRequestID, info);
  self->_pendingStartAttendingDecision = decisionCopy;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    pendingAttendingStartRootRequestID = self->_pendingAttendingStartRootRequestID;
    v10 = 136315650;
    v11 = "[CSIntuitiveConvRequestHandler _cacheStartAttendingInfo:attendingDecision:]";
    v12 = 1024;
    v13 = decisionCopy;
    v14 = 2112;
    v15 = pendingAttendingStartRootRequestID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Cached: startAttendingDecision:%u, attendingStartRootRequestID:%@", &v10, 0x1Cu);
  }
}

- (void)_handleClientDidStopWithOption:(id)option
{
  optionCopy = option;
  requestId = [optionCopy requestId];
  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [optionCopy description];
    *buf = 136315650;
    v21 = "[CSIntuitiveConvRequestHandler _handleClientDidStopWithOption:]";
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = requestId;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s stopOption : %{public}@, stopOptionRequestId : %{public}@", buf, 0x20u);
  }

  if ([(CSIntuitiveConvRequestHandler *)self _isRequestIdCurrent:requestId])
  {
    [(CSIntuitiveConvRequestHandler *)self _handleStopProcessingForRequestId:requestId];
    startStreamOption = [(CSAudioStream *)self->_siriClientStream startStreamOption];
    siriSessionUUID = [startStreamOption siriSessionUUID];

    dismissedRequestId = self->_dismissedRequestId;
    LOBYTE(startStreamOption) = 1;
    if (dismissedRequestId && siriSessionUUID)
    {
      LODWORD(startStreamOption) = ![(NSString *)dismissedRequestId isEqualToString:siriSessionUUID];
    }

    if ([optionCopy stopRecordingReason] == 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = [optionCopy supportsMagus] & startStreamOption;
    }

    audioSrcNode = self->_audioSrcNode;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003FE38;
    v17[3] = &unk_10024EF78;
    v17[4] = self;
    v18 = siriSessionUUID;
    v19 = v12;
    v16 = siriSessionUUID;
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
      v23 = requestId;
      v24 = 2112;
      v25 = currentRequestId;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Stop received for invalid requestId:%@, currentRequestId:%@", buf, 0x20u);
    }
  }
}

- (void)_handleClientDidStartStreamWithOption:(id)option successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  optionCopy = option;
  v7 = optionCopy;
  if (successfullyCopy)
  {
    requestMHUUID = [optionCopy requestMHUUID];
    requestMHUUID = self->_requestMHUUID;
    self->_requestMHUUID = requestMHUUID;

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
    siriSessionUUID = [optionCopy siriSessionUUID];
    [(CSIntuitiveConvRequestHandler *)self _handleStopProcessingForRequestId:siriSessionUUID];

    v14 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CSIntuitiveConvRequestHandler _handleClientDidStartStreamWithOption:successfully:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Skip asking audioSrcNode to record since Siri client failed to start audio", buf, 0xCu);
    }
  }
}

- (void)_handleClientWillStartStreamWithContext:(id)context option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSIntuitiveConvRequestHandler _handleClientWillStartStreamWithContext:option:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s context : %@", &v15, 0x16u);
  }

  siriSessionUUID = [optionCopy siriSessionUUID];
  currentRequestId = self->_currentRequestId;
  self->_currentRequestId = siriSessionUUID;

  v11 = [contextCopy copy];
  audioRecordContext = self->_audioRecordContext;
  self->_audioRecordContext = v11;

  [(CSIntuitiveConvRequestHandler *)self _handleStartProcessingWithRecordContext:self->_audioRecordContext withAudioStartStreamOptions:optionCopy completion:0];
  if (self->_siriClientStream)
  {
    [(CSIntuitiveConvRequestHandler *)self _setupAudioSrcNodeWithSiriClientStream:?];
  }

  v13 = [[CSAttendingStopHintInfo alloc] initWithOrigin:1 reason:1];
  [(CSAttendingHintProviding *)self->_hintProvider postAttendingStopHintWithInfo:v13];
  requestMHUUID = [optionCopy requestMHUUID];
  [(CSIntuitiveConvRequestHandler *)self emitRequestLinkEventForMHUUID:requestMHUUID withRequestId:self->_currentRequestId];
}

- (void)siriClientBehaviorMonitor:(id)monitor preparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000405C8;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = streamCopy;
  successfullyCopy = successfully;
  v9 = streamCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor fetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040680;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = streamCopy;
  successfullyCopy = successfully;
  v9 = streamCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d
{
  streamCopy = stream;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040758;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = dCopy;
  v14 = streamCopy;
  v10 = streamCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d
{
  streamCopy = stream;
  dCopy = d;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100040880;
  v14[3] = &unk_1002510C8;
  v14[4] = self;
  v15 = dCopy;
  v16 = streamCopy;
  reasonCopy = reason;
  v12 = streamCopy;
  v13 = dCopy;
  dispatch_async(queue, v14);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  optionCopy = option;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000409B0;
  v15[3] = &unk_100252420;
  v15[4] = self;
  v16 = dCopy;
  v17 = optionCopy;
  successfullyCopy = successfully;
  v13 = optionCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100040AF8;
  v16[3] = &unk_100252F38;
  v17 = optionCopy;
  selfCopy = self;
  v19 = dCopy;
  v20 = contextCopy;
  v13 = contextCopy;
  v14 = dCopy;
  v15 = optionCopy;
  dispatch_async(queue, v16);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)monitor fetchedAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040CD4;
  block[3] = &unk_100253900;
  block[4] = self;
  v11 = streamCopy;
  successfullyCopy = successfully;
  v9 = streamCopy;
  dispatch_async(queue, block);
}

- (void)intuitiveConvAudioCaptureMonitorDidStopAudioCapture:(id)capture stopStreamOption:(id)option eventUUID:(id)d
{
  optionCopy = option;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040D7C;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = optionCopy;
  v8 = optionCopy;
  dispatch_async(queue, v9);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)monitor willStopAudioCaptureReason:(unint64_t)reason
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040DFC;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = reason;
  dispatch_async(queue, v5);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)monitor didStartAudioCaptureSuccessfully:(BOOL)successfully option:(id)option eventUUID:(id)d
{
  optionCopy = option;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040EB4;
  block[3] = &unk_100253900;
  successfullyCopy = successfully;
  v12 = optionCopy;
  selfCopy = self;
  v10 = optionCopy;
  dispatch_async(queue, block);
}

- (void)intuitiveConvAudioCaptureMonitor:(id)monitor willStartAudioCaptureWithContext:(id)context option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041050;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = contextCopy;
  v14 = optionCopy;
  v10 = optionCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

- (void)setRequestHandlerDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000410F8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
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
    eagerResultAnalyzer = [(CSAttSiriEndpointerNode *)self->_endpointerNode eagerResultAnalyzer];
    [(CSAttSiriTCUGenerator *)tcuGenerator registerEagerResultAnalyzer:eagerResultAnalyzer];

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
  isAttentiveSiriAudioLoggingEnabled = [v12 isAttentiveSiriAudioLoggingEnabled];

  if (isAttentiveSiriAudioLoggingEnabled && self->_signalsLogger)
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

- (CSIntuitiveConvRequestHandler)initWithAudioSrcNode:(id)node endpointerNode:(id)endpointerNode osdNode:(id)osdNode ssrNode:(id)ssrNode speechRecognitionNode:(id)recognitionNode uresNode:(id)uresNode needsSSRNode:(BOOL)rNode aFtmNode:(id)self0 siriEnabledMonitor:(id)self1 siriClientBehaviorMonitor:(id)self2 intuitiveConvAudioCaptureMonitor:(id)self3 rcHandler:(id)self4 tcuGenerator:(id)self5 continuityEndDetector:(id)self6 bridgeMessageHandler:(id)self7 audioCoordinator:(id)self8 magusSupportedPolicy:(id)self9 supportsAcousticProgressiveChecker:(BOOL)checker supportsUnderstandingOnDevice:(BOOL)device requireASROnDevice:(BOOL)onDevice supportsHybridUnderstandingOnDevice:(BOOL)understandingOnDevice supportsLogger:(BOOL)logger supportTCU:(BOOL)u audioSessionInfoProvider:(id)provider aggressiveECHandler:(id)cHandler
{
  nodeCopy = node;
  endpointerNodeCopy = endpointerNode;
  osdNodeCopy = osdNode;
  obj = ssrNode;
  ssrNodeCopy = ssrNode;
  recognitionNodeCopy = recognitionNode;
  uresNodeCopy = uresNode;
  ftmNodeCopy = ftmNode;
  monitorCopy = monitor;
  behaviorMonitorCopy = behaviorMonitor;
  captureMonitorCopy = captureMonitor;
  handlerCopy = handler;
  generatorCopy = generator;
  detectorCopy = detector;
  messageHandlerCopy = messageHandler;
  coordinatorCopy = coordinator;
  policyCopy = policy;
  providerCopy = provider;
  cHandlerCopy = cHandler;
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

    v41->_supportTCU = u;
    if (nodeCopy)
    {
      v48 = nodeCopy;
    }

    else
    {
      v48 = [[CSAttSiriAudioSrcNode alloc] initWithTargetQueue:v41->_targetQueueForASR];
    }

    audioSrcNode = v41->_audioSrcNode;
    v41->_audioSrcNode = v48;

    v100 = monitorCopy;
    if (coordinatorCopy)
    {
      v50 = coordinatorCopy;
    }

    else
    {
      v50 = [[CSAttSiriAudioCoordinator alloc] initWithTargetQueue:v41->_targetQueueForASR];
    }

    audioCoordinator = v41->_audioCoordinator;
    v41->_audioCoordinator = v50;

    if (endpointerNodeCopy)
    {
      v52 = endpointerNodeCopy;
    }

    else
    {
      v52 = objc_alloc_init(CSAttSiriEndpointerNode);
    }

    endpointerNode = v41->_endpointerNode;
    v41->_endpointerNode = v52;

    if (rNode)
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

      else if (ssrNodeCopy)
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

    if (onDevice || understandingOnDevice)
    {
      if (recognitionNodeCopy)
      {
        v57 = recognitionNodeCopy;
      }

      else
      {
        v57 = objc_alloc_init(CSAttSiriSpeechRecognitionNode);
      }

      speechRecognitionNode = v41->_speechRecognitionNode;
      v41->_speechRecognitionNode = v57;
    }

    if (device || understandingOnDevice)
    {
      if (uresNodeCopy)
      {
        v59 = uresNodeCopy;
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

      if (handlerCopy)
      {
        v63 = handlerCopy;
      }

      else
      {
        v63 = [[CSAttSiriRCHandler alloc] initWithEndpointerNode:v41->_endpointerNode uresNode:v41->_uresNode];
      }

      rcHandler = v41->_rcHandler;
      v41->_rcHandler = v63;
    }

    monitorCopy = v100;
    if (checker)
    {
      if (ftmNodeCopy)
      {
        v65 = ftmNodeCopy;
      }

      else
      {
        v65 = objc_alloc_init(CSAttSiriAFTMNode);
      }

      aFTMNode = v41->_aFTMNode;
      v41->_aFTMNode = v65;
    }

    if (osdNodeCopy)
    {
      v67 = osdNodeCopy;
    }

    else
    {
      v67 = objc_alloc_init(CSAttSiriOSDNode);
    }

    osdNode = v41->_osdNode;
    v41->_osdNode = v67;

    if (v41->_supportTCU)
    {
      if (generatorCopy)
      {
        v69 = generatorCopy;
      }

      else
      {
        v69 = objc_alloc_init(CSAttSiriTCUGenerator);
      }

      tcuGenerator = v41->_tcuGenerator;
      v41->_tcuGenerator = v69;
    }

    if (detectorCopy)
    {
      v71 = detectorCopy;
    }

    else
    {
      v71 = objc_alloc_init(CSAttSiriContinuityEndDetector);
    }

    continuityEndDetector = v41->_continuityEndDetector;
    v41->_continuityEndDetector = v71;

    if (messageHandlerCopy)
    {
      v73 = messageHandlerCopy;
    }

    else
    {
      v73 = [[CSAttSiriBridgeMessageHandler alloc] initWithSpeechRecognitionNode:v41->_speechRecognitionNode tcuGenerator:v41->_tcuGenerator supportTCU:u];
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

    if (behaviorMonitorCopy)
    {
      v77 = behaviorMonitorCopy;
    }

    else
    {
      v77 = +[CSSiriClientBehaviorMonitor sharedInstance];
    }

    siriClientBehaviorMonitor = v41->_siriClientBehaviorMonitor;
    v41->_siriClientBehaviorMonitor = v77;

    if (captureMonitorCopy)
    {
      v79 = captureMonitorCopy;
    }

    else
    {
      v79 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
    }

    intuitiveConvAudioCaptureMonitor = v41->_intuitiveConvAudioCaptureMonitor;
    v41->_intuitiveConvAudioCaptureMonitor = v79;

    if (cHandlerCopy)
    {
      v81 = cHandlerCopy;
    }

    else
    {
      v81 = objc_alloc_init(CSAggressiveECModeHandler);
    }

    aggressiveECHandler = v41->_aggressiveECHandler;
    v41->_aggressiveECHandler = v81;

    if (logger)
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

    if (policyCopy)
    {
      v89 = policyCopy;
    }

    else
    {
      v89 = +[CSAttSiriMagusSupportedPolicy sharedInstance];
    }

    magusSupportedPolicy = v41->_magusSupportedPolicy;
    v41->_magusSupportedPolicy = v89;

    if (providerCopy)
    {
      v91 = providerCopy;
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