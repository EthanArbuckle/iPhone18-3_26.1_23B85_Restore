@interface CSAttSiriController
- (BOOL)_shouldFetchMitigationAssets;
- (BOOL)getPendingActivationStatus;
- (BOOL)isCurrentRequestCCTriggered;
- (BOOL)isDeferredActivationEnabled;
- (CSAttSiriController)initWithAudioProviderSelector:(id)selector;
- (CSAttSiriController)initWithEndpointerNode:(id)node osdNode:(id)osdNode ssrNode:(id)ssrNode asrNode:(id)asrNode uresNode:(id)uresNode needsSSRNode:(BOOL)rNode aFtmNode:(id)ftmNode speechDetectionNode:(id)self0 ccController:(id)self1 isContinuousConverationEnabled:(BOOL)self2 audioProviderSelector:(id)self3 siriEnabledMonitor:(id)self4 siriClientBehaviorMonitor:(id)self5 rcHandler:(id)self6 supportsAcousticProgressiveChecker:(BOOL)self7 supportsUnderstandingOnDevice:(BOOL)self8 requireASROnDevice:(BOOL)self9 supportsHybridUnderstandingOnDevice:(BOOL)understandingOnDevice;
- (id)_startStreamOption;
- (id)_startStreamOptionWithMachAbsTime:(unint64_t)time;
- (id)getNodeOfType:(unint64_t)type;
- (id)getRequestMHUUID;
- (void)CSAudioRouteChangeMonitor:(id)monitor didReceiveAudioRouteChangeEvent:(int64_t)event;
- (void)CSSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)_detachAttendingStreamAndAttachSiriClientStream;
- (void)_detachSiriClientStreamAndAttachAttendingStream;
- (void)_fetchMitigationAssets;
- (void)_fetchRequiredAssets;
- (void)_fetchVoiceTriggerAssets;
- (void)_handleCCTriggeredRequestStart;
- (void)_handleCCTriggeredRequestStop;
- (void)_handleStartProcessingWithRecordContext:(id)context withAudioStartStreamOptions:(id)options completion:(id)completion;
- (void)_handleStopProcessing;
- (void)_holdAttSiriTransactionIfNeeded;
- (void)_prepareAttendingAudioSrcNodeWithStreamRequest:(id)request audioProviderUUID:(id)d;
- (void)_receivedHearstRoutedEvent:(int64_t)event;
- (void)_reconfigureRequiredNodes:(id)nodes enforceAttendingAudioNode:(BOOL)node;
- (void)_releaseAttSiriTransactionIfNeeded;
- (void)_resetAttendingState;
- (void)_setPendingActivationStatus:(BOOL)status;
- (void)_setupAttendingAudioSrcNodeWithStreamRequest:(id)request audioProviderUUID:(id)d;
- (void)_setupAudioSrcNodeWithSiriClientStream:(id)stream;
- (void)_startAudioStreamForContinuousConversation:(id)conversation withStartStreamOption:(id)option;
- (void)_startProcessingContinuousConversationRequest:(unint64_t)request;
- (void)_tearDownBuildGraph:(id)graph;
- (void)_triggerSiriActivation;
- (void)attSiriAttendingAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly;
- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attSiriNode:(id)node didDetectSpeechWithTriggerInfo:(id)info;
- (void)attSiriNodeDidNotDetectSpeechWithTimeout;
- (void)gazeEstimates:(CGPoint)estimates landmarks:(id)landmarks;
- (void)handleAttendingAudioStopUnexpectedly;
- (void)handleAudioStopUnexpectedly;
- (void)handleEndOfAttendingForRequestId:(id)id;
- (void)handleOrbTransition;
- (void)resetAttendingState;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor fetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)siriClientBehaviorMonitor:(id)monitor preparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option;
- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason;
- (void)siriMitigator:(id)mitigator mitigationDecision:(unint64_t)decision;
- (void)start;
- (void)startAttendingWithContext:(id)context;
- (void)startSpeechProcessing:(unint64_t)processing;
- (void)stopAttendingWithContext:(id)context;
- (void)triggerSiriActivation;
@end

@implementation CSAttSiriController

- (void)handleAttendingAudioStopUnexpectedly
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriController handleAttendingAudioStopUnexpectedly]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Calling unimplemented [CSAttSiriController handleAttendingAudioStopUnexpectedly]", &v3, 0xCu);
  }
}

- (void)triggerSiriActivation
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriController triggerSiriActivation]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Calling unimplemented [CSAttSiriController triggerSiriActivation]", &v3, 0xCu);
  }
}

- (void)resetAttendingState
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriController resetAttendingState]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Calling unimplemented [CSAttSiriController resetAttendingState]", &v3, 0xCu);
  }
}

- (void)handleAudioStopUnexpectedly
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriController handleAudioStopUnexpectedly]";
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s Calling unimplemented [CSAttSiriController handleAudioStopUnexpectedly]", &v3, 0xCu);
  }
}

- (void)_receivedHearstRoutedEvent:(int64_t)event
{
  if (self->_hearstRouteStatus != event)
  {
    v5 = +[CSAttSiriStateMonitor sharedInstance];
    isAttending = [v5 isAttending];

    if (isAttending)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[CSAttSiriController _receivedHearstRoutedEvent:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Routed device changed during attending, stop attending", &v8, 0xCu);
      }

      [(CSAttSiriContConvController *)self->_ccController stopAttendingForRequestId:self->_requestMHUUID isReqCC:1 forceStop:1];
    }
  }

  self->_hearstRouteStatus = event;
}

- (void)CSAudioRouteChangeMonitor:(id)monitor didReceiveAudioRouteChangeEvent:(int64_t)event
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FF81C;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = event;
  dispatch_async(queue, v5);
}

- (id)getRequestMHUUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000FF9F8;
  v10 = sub_1000FFA08;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FFA10;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)getPendingActivationStatus
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    pendingActivationProcessing = self->_pendingActivationProcessing;
    *buf = 136315394;
    v14 = "[CSAttSiriController getPendingActivationStatus]";
    v15 = 1024;
    v16 = pendingActivationProcessing;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s _pendingActivationProcessing:%u", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FFB6C;
  v8[3] = &unk_100253BD0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_resetAttendingState
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    deferredActivation = self->_deferredActivation;
    pendingActivationProcessing = self->_pendingActivationProcessing;
    *buf = 136315650;
    v14 = "[CSAttSiriController _resetAttendingState]";
    v15 = 1024;
    v16 = deferredActivation;
    v17 = 1024;
    v18 = pendingActivationProcessing;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s _deferredActivation:%u _pendingActivationProcessing:%u", buf, 0x18u);
  }

  if (!self->_deferredActivation)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v14 = "[CSAttSiriController _resetAttendingState]";
    v10 = "%s deferredActivation not enabled!";
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    return;
  }

  if (self->_pendingActivationProcessing)
  {
    [(CSAttSiriController *)self _setPendingActivationStatus:0];
    v6 = [[CSAttSiriRequestContext alloc] initWithRequestSource:0];
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FFD84;
    v11[3] = &unk_100253C48;
    v11[4] = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(queue, v11);

    return;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = "[CSAttSiriController _resetAttendingState]";
    v10 = "%s _pendingActivationProcessing not set!";
    goto LABEL_11;
  }
}

- (void)_startProcessingContinuousConversationRequest:(unint64_t)request
{
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  requestMHUUID = self->_requestMHUUID;
  self->_requestMHUUID = uUIDString;

  deviceId = [(CSAudioRecordContext *)self->_audioRecordContext deviceId];
  v9 = +[CSAudioRecordContext contextForContinuousConversation];
  audioRecordContext = self->_audioRecordContext;
  self->_audioRecordContext = v9;

  [(CSAudioRecordContext *)self->_audioRecordContext setDeviceId:deviceId];
  v11 = +[CSAudioStartStreamOption noAlertOption];
  [v11 setStartRecordingSampleCount:request];
  [v11 setRequestHistoricalAudioDataSampleCount:1];
  [v11 setRequestHistoricalAudioDataWithHostTime:0];
  [v11 setRequestMHUUID:self->_requestMHUUID];
  [v11 setSiriSessionUUID:self->_requestMHUUID];
  [v11 setDisableRCSelection:1];
  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v13 = self->_audioRecordContext;
    v14 = self->_requestMHUUID;
    *buf = 136315650;
    v20 = "[CSAttSiriController _startProcessingContinuousConversationRequest:]";
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s recordContext:%@ _requestMHUUID:%@", buf, 0x20u);
  }

  v15 = self->_audioRecordContext;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000FFFD0;
  v17[3] = &unk_100251998;
  v17[4] = self;
  v18 = v11;
  v16 = v11;
  [(CSAttSiriController *)self _handleStartProcessingWithRecordContext:v15 withAudioStartStreamOptions:v16 completion:v17];
}

- (void)_startAudioStreamForContinuousConversation:(id)conversation withStartStreamOption:(id)option
{
  optionCopy = option;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    attendingAudioNode = self->_attendingAudioNode;
    *buf = 136315650;
    v13 = "[CSAttSiriController _startAudioStreamForContinuousConversation:withStartStreamOption:]";
    v14 = 2112;
    v15 = optionCopy;
    v16 = 2112;
    v17 = attendingAudioNode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s startOption:%@ _attendingAudioNode:%@", buf, 0x20u);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001002C4;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = optionCopy;
  v9 = optionCopy;
  dispatch_async(queue, v10);
}

- (void)_setPendingActivationStatus:(BOOL)status
{
  statusCopy = status;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriController _setPendingActivationStatus:]";
    v8 = 1024;
    v9 = statusCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s status:%u", &v6, 0x12u);
  }

  self->_pendingActivationProcessing = statusCopy;
}

- (void)_triggerSiriActivation
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    deferredActivation = self->_deferredActivation;
    pendingActivationProcessing = self->_pendingActivationProcessing;
    v8 = 136315650;
    v9 = "[CSAttSiriController _triggerSiriActivation]";
    v10 = 1024;
    v11 = deferredActivation;
    v12 = 1024;
    v13 = pendingActivationProcessing;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s _deferredActivation:%u _pendingActivationProcessing:%u", &v8, 0x18u);
  }

  if (!self->_deferredActivation)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = 136315138;
    v9 = "[CSAttSiriController _triggerSiriActivation]";
    v7 = "%s deferredActivation not enabled!";
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &v8, 0xCu);
    return;
  }

  if (self->_pendingActivationProcessing)
  {
    [(CSAttSiriContConvController *)self->_ccController triggerActivation:self->_activationStartSampleId];
    self->_activationStartSampleId = 0;
    return;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSAttSiriController _triggerSiriActivation]";
    v7 = "%s _pendingActivationProcessing not set!";
    goto LABEL_11;
  }
}

- (void)startSpeechProcessing:(unint64_t)processing
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100100748;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = processing;
  dispatch_async(queue, v4);
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

  return [(CSAttSiriController *)self _startStreamOptionWithMachAbsTime:v3];
}

- (void)_handleCCTriggeredRequestStop
{
  if (([(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation]& 1) != 0)
  {
    attentionNode = [(CSAttSiriContConvController *)self->_ccController attentionNode];
    [attentionNode removeReceiver:self->_uresNode];
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "[CSAttSiriController _handleCCTriggeredRequestStop]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Nothing to do ", buf, 0xCu);
    }
  }
}

- (void)_handleCCTriggeredRequestStart
{
  isContinuousConversation = [(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation];
  [(CSAttSiriContConvController *)self->_ccController stopAttendingForRequestId:self->_requestMHUUID isReqCC:isContinuousConversation forceStop:0];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriController _handleCCTriggeredRequestStart]";
    v9 = 1024;
    v10 = isContinuousConversation;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s isReqCC:%u", &v7, 0x12u);
  }

  ccController = self->_ccController;
  if (isContinuousConversation)
  {
    attentionNode = [(CSAttSiriContConvController *)ccController attentionNode];
    [attentionNode addReceiver:self->_uresNode];
  }

  else
  {
    [(CSAttSiriContConvController *)ccController startMagusLoggingForTriggerRequest];
  }
}

- (void)handleEndOfAttendingForRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100C4C;
  v7[3] = &unk_100253C48;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)handleOrbTransition
{
  attSiriSvcListener = [(CSAttSiriController *)self attSiriSvcListener];
  [attSiriSvcListener notifyClientsWithBlock:&stru_100251970];
}

- (void)gazeEstimates:(CGPoint)estimates landmarks:(id)landmarks
{
  y = estimates.y;
  x = estimates.x;
  landmarksCopy = landmarks;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriController gazeEstimates:landmarks:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  [(CSAttSiriContConvController *)self->_ccController relayGazeEstimates:landmarksCopy landmarks:x, y];
}

- (void)stopAttendingWithContext:(id)context
{
  contextCopy = context;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSAttSiriController stopAttendingWithContext:]";
    v13 = 2114;
    v14 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ctx: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001010F8;
  v8[3] = &unk_100253C48;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  dispatch_async(queue, v8);
}

- (void)startAttendingWithContext:(id)context
{
  contextCopy = context;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSAttSiriController startAttendingWithContext:]";
    v13 = 2114;
    v14 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ctx: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001013A0;
  v8[3] = &unk_100253C48;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001016A0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriAttendingAudioSrcNodeDidStopUnexpectedly:(id)unexpectedly
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001017C8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_releaseAttSiriTransactionIfNeeded
{
  attSiriTransaction = self->_attSiriTransaction;
  if (attSiriTransaction)
  {
    self->_attSiriTransaction = 0;
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[CSAttSiriController _releaseAttSiriTransactionIfNeeded]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s attSiriTransaction already released", &v4, 0xCu);
    }
  }
}

- (void)_holdAttSiriTransactionIfNeeded
{
  if (!self->_attSiriTransaction)
  {
    v4 = [[CSOSTransaction alloc] initWithDescription:@"attSiri transaction"];
    attSiriTransaction = self->_attSiriTransaction;
    self->_attSiriTransaction = v4;
  }
}

- (void)_handleStopProcessing
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttSiriController _handleStopProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(CSAttSiriEndpointerNode *)self->_endpointerNode stop];
  v4 = +[CSAttSiriStateMonitor sharedInstance];
  isAttending = [v4 isAttending];

  if ((isAttending & 1) == 0)
  {
    [(CSAttSiriOSDNode *)self->_osdNode stop];
  }

  [(CSAttSiriAFTMNode *)self->_aFTMNode stop];
  [(CSAttSiriSSRNode *)self->_ssrNode stop];
  [(CSAttSiriController *)self _handleCCTriggeredRequestStop];
  if (!self->_shouldSkipAttending && [(CSAttSiriContConvController *)self->_ccController shouldRunCCForAudioRecordContext:self->_audioRecordContext]&& [(CSAttSiriAttendingAudioSrcNode *)self->_attendingAudioNode isStreaming])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSAttSiriController _handleStopProcessing]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Don't stop audioStream, continue listening for CC", buf, 0xCu);
    }

    [(CSAttSiriController *)self _detachSiriClientStreamAndAttachAttendingStream];
    if ((+[CSUtils isIOSDeviceSupportingBargeIn]& 1) != 0 || CSIsHorseman())
    {
      v7 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      phoneCallState = [v7 phoneCallState];

      if ((phoneCallState - 2) >= 3)
      {
        [(CSAttSiriContConvController *)self->_ccController startAttendingWithAudioRecordContext:self->_audioRecordContext withRequestId:self->_requestMHUUID shouldStartTimer:CSIsHorseman()];
      }

      else
      {
        v9 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = "[CSAttSiriController _handleStopProcessing]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s skip since isRequestDuringActiveCall = YES", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    siriClientAudioStartStreamOption = self->_siriClientAudioStartStreamOption;
    self->_siriClientAudioStartStreamOption = 0;

    audioRecordContext = self->_audioRecordContext;
    self->_audioRecordContext = 0;

    attendingAudioNode = self->_attendingAudioNode;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100101C80;
    v13[3] = &unk_100253300;
    v13[4] = self;
    [(CSAttSiriAttendingAudioSrcNode *)attendingAudioNode stopAudioStreamWithOption:0 completion:v13];
  }
}

- (void)_handleStartProcessingWithRecordContext:(id)context withAudioStartStreamOptions:(id)options completion:(id)completion
{
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[CSAttSiriController _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ([contextCopy isVoiceTriggered])
  {
    v12 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
    v29 = 0;
    [v12 fetchVoiceTriggerInfoWithAudioContext:contextCopy resultVoiceTriggerInfo:&v29 resultRTSTriggerInfo:0];
    v13 = v29;
  }

  else
  {
    v13 = 0;
  }

  if ([contextCopy type] == 17 || objc_msgSend(contextCopy, "type") == 18)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSAttSiriController _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Skip processing for remora requests!", buf, 0xCu);
    }
  }

  else
  {
    if (+[CSUtils isContinuousConversationSupported])
    {
      [(CSAttSiriController *)self _reconfigureRequiredNodes:contextCopy enforceAttendingAudioNode:0];
    }

    self->_shouldSkipAttending = 0;
    [(CSAttSiriController *)self _holdAttSiriTransactionIfNeeded];
    endpointerNode = self->_endpointerNode;
    +[CSConfig inputRecordingSampleRate];
    [(CSAttSiriEndpointerNode *)endpointerNode resetForNewRequestWithSampleRate:v16 recordContext:contextCopy recordOption:optionsCopy voiceTriggerInfo:v13];
    [(CSAttSiriOSDNode *)self->_osdNode setPrefetchedAsset:self->_mitigationAsset];
    [(CSAttSiriUresNode *)self->_uresNode setPrefetchedAsset:self->_mitigationAsset];
    v28 = -[CSEndpointerSettings initWithDisableEndpointer:]([CSEndpointerSettings alloc], "initWithDisableEndpointer:", [optionsCopy disableEndpointer]);
    [CSAttSiriOSDNode resetForNewRequestWithRecordContext:"resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:" endpointerSettings:contextCopy voiceTriggerInfo:?];
    [(CSAttSiriAsrNode *)self->_asrNode prepareToStartSpeechRequestWithStartStreamOption:optionsCopy audioRecordContext:contextCopy voiceTriggerInfo:v13];
    v17 = [(CSAsset *)self->_mitigationAsset getCategoryKeyWithRecordCtx:contextCopy];
    if ((CSIsCommunalDevice() & 1) != 0 || [(CSAsset *)self->_mitigationAsset shouldRunSpkrIdForCategory:v17])
    {
      [(CSAttSiriSSRNode *)self->_ssrNode setPrefetchedAsset:self->_vtAsset];
      ssrNode = self->_ssrNode;
      siriSessionUUID = [optionsCopy siriSessionUUID];
      [(CSAttSiriSSRNode *)ssrNode resetForNewRequestWithRecordContext:contextCopy voiceTriggerInfo:v13 withReqId:siriSessionUUID];
    }

    v20 = @"AcousticSLTaskTypeVoiceTrigger";
    v21 = @"AcousticSLTaskTypeVoiceTrigger";
    if ([contextCopy isContinuousConversation])
    {
      v20 = @"AcousticSLTaskTypeContConv";
      v22 = @"AcousticSLTaskTypeContConv";
    }

    [(CSAttSiriAFTMNode *)self->_aFTMNode setPrefetchedAsset:self->_mitigationAsset];
    aFTMNode = self->_aFTMNode;
    siriSessionUUID2 = [optionsCopy siriSessionUUID];
    [(CSAttSiriAFTMNode *)aFTMNode startRequestWithContext:contextCopy withVtei:v13 taskType:v20 withRequestId:siriSessionUUID2 completion:&stru_100251950];

    v25 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      deferredActivation = self->_deferredActivation;
      deferredAsrResults = self->_deferredAsrResults;
      *buf = 136315650;
      v31 = "[CSAttSiriController _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]";
      v32 = 1024;
      v33 = deferredActivation;
      v34 = 1024;
      v35 = deferredAsrResults;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s enabled feature: _deferredActivation:%u _deferredAsrResults:%u", buf, 0x18u);
    }

    if (!self->_deferredActivation || ([contextCopy isContinuousConversation] & 1) == 0)
    {
      [(CSAttSiriAsrNode *)self->_asrNode start];
    }

    [(CSAttSiriController *)self _handleCCTriggeredRequestStart];
    if (+[CSUtils isContinuousConversationSupported])
    {
      [(CSAttSiriController *)self _forceBuildGraph:1];
    }
  }
}

- (void)_detachAttendingStreamAndAttachSiriClientStream
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriController _detachAttendingStreamAndAttachSiriClientStream]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSAttSiriAttendingAudioSrcNode *)self->_attendingAudioNode removeReceiver:self->_osdNode];
  [(CSAttSiriAudioSrcNode *)self->_audioSrcNode addReceiver:self->_osdNode];
}

- (void)_detachSiriClientStreamAndAttachAttendingStream
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriController _detachSiriClientStreamAndAttachAttendingStream]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSAttSiriAudioSrcNode *)self->_audioSrcNode removeReceiver:self->_osdNode];
  [(CSAttSiriAttendingAudioSrcNode *)self->_attendingAudioNode addReceiver:self->_osdNode];
}

- (void)_prepareAttendingAudioSrcNodeWithStreamRequest:(id)request audioProviderUUID:(id)d
{
  requestCopy = request;
  dCopy = d;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[CSAttSiriController _prepareAttendingAudioSrcNodeWithStreamRequest:audioProviderUUID:]";
    v18 = 2112;
    v19 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s streamRequest:%@", buf, 0x16u);
  }

  [(CSAttSiriController *)self _setupAttendingAudioSrcNodeWithStreamRequest:requestCopy audioProviderUUID:dCopy];
  attendingAudioNode = [(CSAttSiriController *)self attendingAudioNode];
  v15 = 0;
  [attendingAudioNode prepareAudioStreamSyncWithRequest:requestCopy error:&v15];
  v10 = v15;

  attendingAudioNode2 = [(CSAttSiriController *)self attendingAudioNode];

  if (!attendingAudioNode2 || v10)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      localizedDescription = [v10 localizedDescription];
      *buf = 136315394;
      v17 = "[CSAttSiriController _prepareAttendingAudioSrcNodeWithStreamRequest:audioProviderUUID:]";
      v18 = 2114;
      v19 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to prepare audioSrcNode : %{public}@", buf, 0x16u);
    }
  }
}

- (void)_setupAttendingAudioSrcNodeWithStreamRequest:(id)request audioProviderUUID:(id)d
{
  audioProviderSelector = self->_audioProviderSelector;
  requestCopy = request;
  v8 = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithUUID:d];
  v9 = [[CSAttSiriAttendingAudioSrcNode alloc] initWithAudioStreamProvider:v8 audioProviderSelector:self->_audioProviderSelector streamName:0 streamRequest:requestCopy];

  [(CSAttSiriAttendingAudioSrcNode *)v9 setDelegate:self];
  if (v9)
  {
    [(NSMapTable *)self->_nodesCache setObject:v9 forKey:&off_10025E660];
    [(CSAttSiriAttendingAudioSrcNode *)v9 setIsWeakStream:0];
    [(CSAttSiriController *)self setAttendingAudioNode:v9];
    [(CSAttSiriController *)self _forceBuildGraph:1];
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[CSAttSiriController _setupAttendingAudioSrcNodeWithStreamRequest:audioProviderUUID:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Attached attending audio src node", &v14, 0xCu);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      localizedDescription = [0 localizedDescription];
      v14 = 136315394;
      v15 = "[CSAttSiriController _setupAttendingAudioSrcNodeWithStreamRequest:audioProviderUUID:]";
      v16 = 2114;
      v17 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to setup audioSrcNode : %{public}@", &v14, 0x16u);
    }
  }
}

- (void)_setupAudioSrcNodeWithSiriClientStream:(id)stream
{
  streamCopy = stream;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSAttSiriController _setupAudioSrcNodeWithSiriClientStream:]";
    v10 = 2112;
    v11 = streamCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s siriClientStream:%@", &v8, 0x16u);
  }

  v6 = [[CSAttSiriAudioSrcNode alloc] initWithTargetQueue:0];
  [(CSAttSiriAudioSrcNode *)v6 setDelegate:self];
  if (v6)
  {
    [(NSMapTable *)self->_nodesCache setObject:v6 forKey:&off_10025E648];
    [(CSAttSiriController *)self setAudioSrcNode:v6];
    [(CSAttSiriController *)self _forceBuildGraph:1];
    [(CSAttSiriController *)self _detachAttendingStreamAndAttachSiriClientStream];
    [(CSAttSiriAudioSrcNode *)v6 attachToMasterStream:streamCopy name:@"CSAttSiriAudioSrcNode" completion:&stru_100251930];
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSAttSiriController _setupAudioSrcNodeWithSiriClientStream:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to setup audioSrcNode", &v8, 0xCu);
    }
  }
}

- (void)_fetchRequiredAssets
{
  [(CSAttSiriController *)self _fetchVoiceTriggerAssets];
  if ([(CSAttSiriController *)self _shouldFetchMitigationAssets])
  {

    [(CSAttSiriController *)self _fetchMitigationAssets];
  }
}

- (BOOL)_shouldFetchMitigationAssets
{
  if (AFDeviceSupportsFullSiriUOD())
  {
    return 1;
  }

  return _AFDeviceSupportsHybridUOD();
}

- (void)_fetchVoiceTriggerAssets
{
  v3 = +[CSVoiceTriggerAssetHandler sharedHandler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100102ACC;
  v4[3] = &unk_100252F10;
  v4[4] = self;
  [v3 getVoiceTriggerAssetWithEndpointId:0 completion:v4];
}

- (void)_fetchMitigationAssets
{
  mitigationAssetFetchQueue = self->_mitigationAssetFetchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102D98;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(mitigationAssetFetchQueue, block);
}

- (void)_reconfigureRequiredNodes:(id)nodes enforceAttendingAudioNode:(BOOL)node
{
  nodeCopy = node;
  nodesCopy = nodes;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[CSAttSiriController _reconfigureRequiredNodes:enforceAttendingAudioNode:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v31 = nodesCopy;
  if ([nodesCopy isContinuousConversation])
  {
    v8 = +[CSFPreferences sharedPreferences];
    isDeferredActivationEnabled = [v8 isDeferredActivationEnabled];

    if ((isDeferredActivationEnabled & 1) == 0 && !nodeCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!nodeCopy)
  {
LABEL_6:
    v10 = &off_10025E648;
    goto LABEL_9;
  }

  v10 = &off_10025E660;
LABEL_9:
  v11 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_nodesCache;
  v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    v32 = *v43;
    selfCopy = self;
    do
    {
      v15 = 0;
      v34 = v13;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v15;
        v16 = *(*(&v42 + 1) + 8 * v15);
        if (([v16 isEqual:&off_10025E630] & 1) == 0)
        {
          v17 = [(NSMapTable *)self->_nodesCache objectForKey:v16];
          if (v17)
          {
            v18 = v17;
            [(CSAttSiriController *)self _tearDownBuildGraph:v17];
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = v18;
            requiredNodes = [v18 requiredNodes];
            v20 = [requiredNodes countByEnumeratingWithState:&v38 objects:v52 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              v23 = *v39;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v39 != v23)
                  {
                    objc_enumerationMutation(requiredNodes);
                  }

                  v25 = *(*(&v38 + 1) + 8 * i);
                  if ([v25 isEqual:&off_10025E648] & 1) != 0 || (objc_msgSend(v25, "isEqual:", &off_10025E660))
                  {
                    if ((v22 & 1) == 0)
                    {
                      [v11 addObject:v10];
                    }

                    v22 = 1;
                  }

                  else
                  {
                    [v11 addObject:v25];
                  }
                }

                v21 = [requiredNodes countByEnumeratingWithState:&v38 objects:v52 count:16];
              }

              while (v21);
            }

            v26 = [v11 copy];
            [v36 setRequiredNodes:v26];

            [v11 removeAllObjects];
            v27 = CSLogContextFacilityCoreSpeech;
            v28 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
            v17 = v36;
            v14 = v32;
            self = selfCopy;
            v13 = v34;
            if (v28)
            {
              v29 = v27;
              requiredNodes2 = [v36 requiredNodes];
              *buf = 136315650;
              v47 = "[CSAttSiriController _reconfigureRequiredNodes:enforceAttendingAudioNode:]";
              v48 = 2112;
              v49 = v36;
              v50 = 2112;
              v51 = requiredNodes2;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s currDp:%@ newRequiredNodes:%@", buf, 0x20u);

              v17 = v36;
            }
          }
        }

        v15 = v37 + 1;
      }

      while ((v37 + 1) != v13);
      v13 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v13);
  }
}

- (void)_tearDownBuildGraph:(id)graph
{
  graphCopy = graph;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requiredNodes = [graphCopy requiredNodes];
  v6 = [requiredNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(requiredNodes);
        }

        v10 = [(NSMapTable *)self->_nodesCache objectForKey:*(*(&v12 + 1) + 8 * v9)];
        v11 = v10;
        if (v10)
        {
          [v10 removeReceiver:graphCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [requiredNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [graphCopy setIsReady:0];
}

- (void)attSiriNodeDidNotDetectSpeechWithTimeout
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001038A8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didDetectSpeechWithTriggerInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100103994;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103AB4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriMitigator:(id)mitigator mitigationDecision:(unint64_t)decision
{
  mitigatorCopy = mitigator;
  if (decision)
  {
    if (decision == 1)
    {
      [(CSAttSiriController *)self _resetAttendingState];
    }
  }

  else
  {
    queue = [(CSAttSiriController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100103BCC;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)CSSiriEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriController CSSiriEnabledMonitor:didReceiveEnabled:]";
    v12 = 1026;
    v13 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Siri enabled : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100103CF0;
  v8[3] = &unk_100253BF8;
  v9 = enabledCopy;
  v8[4] = self;
  dispatch_async(queue, v8);
}

- (void)siriClientBehaviorMonitor:(id)monitor preparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103DAC;
  block[3] = &unk_100253900;
  successfullyCopy = successfully;
  block[4] = self;
  v11 = streamCopy;
  v9 = streamCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor fetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103FB8;
  block[3] = &unk_100253900;
  successfullyCopy = successfully;
  block[4] = self;
  v11 = streamCopy;
  v9 = streamCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104190;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001042B8;
  v6[3] = &unk_100253C98;
  v6[4] = self;
  v6[5] = reason;
  dispatch_async(queue, v6);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001043B8;
  block[3] = &unk_1002524B8;
  block[4] = self;
  v19 = contextCopy;
  successfullyCopy = successfully;
  v20 = optionCopy;
  v21 = dCopy;
  v15 = dCopy;
  v16 = optionCopy;
  v17 = contextCopy;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option
{
  contextCopy = context;
  optionCopy = option;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[CSAttSiriController siriClientBehaviorMonitor:willStartStreamWithContext:option:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s context : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104968;
  block[3] = &unk_100253680;
  block[4] = self;
  v14 = contextCopy;
  v15 = optionCopy;
  v11 = optionCopy;
  v12 = contextCopy;
  dispatch_async(queue, block);
}

- (BOOL)isCurrentRequestCCTriggered
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSAttSiriController isCurrentRequestCCTriggered]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100104D2C;
  v7[3] = &unk_100253BD0;
  v7[4] = self;
  v7[5] = &buf;
  dispatch_sync(queue, v7);
  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v5;
}

- (BOOL)isDeferredActivationEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100104E10;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104EA0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)getNodeOfType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000FF9F8;
  v11 = sub_1000FFA08;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100105040;
  block[3] = &unk_100252170;
  block[4] = self;
  block[5] = &v7;
  block[6] = type;
  dispatch_async_and_wait(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (CSAttSiriController)initWithEndpointerNode:(id)node osdNode:(id)osdNode ssrNode:(id)ssrNode asrNode:(id)asrNode uresNode:(id)uresNode needsSSRNode:(BOOL)rNode aFtmNode:(id)ftmNode speechDetectionNode:(id)self0 ccController:(id)self1 isContinuousConverationEnabled:(BOOL)self2 audioProviderSelector:(id)self3 siriEnabledMonitor:(id)self4 siriClientBehaviorMonitor:(id)self5 rcHandler:(id)self6 supportsAcousticProgressiveChecker:(BOOL)self7 supportsUnderstandingOnDevice:(BOOL)self8 requireASROnDevice:(BOOL)self9 supportsHybridUnderstandingOnDevice:(BOOL)understandingOnDevice
{
  rNodeCopy = rNode;
  nodeCopy = node;
  osdNodeCopy = osdNode;
  ssrNodeCopy = ssrNode;
  asrNodeCopy = asrNode;
  uresNodeCopy = uresNode;
  ftmNodeCopy = ftmNode;
  detectionNodeCopy = detectionNode;
  controllerCopy = controller;
  v29 = nodeCopy;
  selectorCopy = selector;
  monitorCopy = monitor;
  v32 = osdNodeCopy;
  behaviorMonitorCopy = behaviorMonitor;
  handlerCopy = handler;
  v89.receiver = self;
  v89.super_class = CSAttSiriController;
  v35 = [(CSAttSiriController *)&v89 init];
  if (!v35)
  {
    goto LABEL_53;
  }

  v83 = asrNodeCopy;
  v36 = dispatch_queue_create("AttSiriController queue", 0);
  queue = v35->_queue;
  v35->_queue = v36;

  v78 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v38 = dispatch_queue_create("AttSiriController mitigation asset fetch queue", v78);
  mitigationAssetFetchQueue = v35->_mitigationAssetFetchQueue;
  v35->_mitigationAssetFetchQueue = v38;

  v40 = +[NSMapTable strongToWeakObjectsMapTable];
  nodesCache = v35->_nodesCache;
  v35->_nodesCache = v40;

  v35->_activationStartSampleId = 0;
  [(CSAttSiriController *)v35 setPendingActivationProcessing:0];
  v42 = +[CSFPreferences sharedPreferences];
  v35->_deferredActivation = [v42 isDeferredActivationEnabled];

  v43 = +[CSFPreferences sharedPreferences];
  v35->_deferredAsrResults = [v43 isDeferredAsrResultsEnabled];

  v81 = controllerCopy;
  v79 = v29;
  if (v29)
  {
    v44 = v29;
  }

  else
  {
    v44 = objc_alloc_init(CSAttSiriEndpointerNode);
  }

  endpointerNode = v35->_endpointerNode;
  v35->_endpointerNode = v44;

  [(CSAttSiriEndpointerNode *)v35->_endpointerNode setEndpointerNodeDelegate:v35];
  [(NSMapTable *)v35->_nodesCache setObject:v35->_endpointerNode forKey:&off_10025E588];
  if (rNodeCopy)
  {
    if (+[CSUtils shouldDisableSpeakerRecognition])
    {
      v46 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v91 = "[CSAttSiriController initWithEndpointerNode:osdNode:ssrNode:asrNode:uresNode:needsSSRNode:aFtmNode:speechDetectionNode:ccController:isContinuousConverationEnabled:audioProviderSelector:siriEnabledMonitor:siriClientBehaviorMonitor:rcHandler:supportsAcousticProgressiveChecker:supportsUnderstandingOnDevice:requireASROnDevice:supportsHybridUnderstandingOnDevice:]";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s Overriding SSR node requirement", buf, 0xCu);
      }
    }

    else
    {
      if (ssrNodeCopy)
      {
        v47 = ssrNodeCopy;
      }

      else
      {
        v47 = objc_alloc_init(CSAttSiriSSRNode);
      }

      ssrNode = v35->_ssrNode;
      v35->_ssrNode = v47;

      [(NSMapTable *)v35->_nodesCache setObject:v35->_ssrNode forKey:&off_10025E5A0];
    }
  }

  if (onDevice || understandingOnDevice)
  {
    if (v83)
    {
      v49 = v83;
    }

    else
    {
      v49 = objc_alloc_init(CSAttSiriAsrNode);
    }

    asrNode = v35->_asrNode;
    v35->_asrNode = v49;

    [(CSAttSiriAsrNode *)v35->_asrNode registerEndpointerNode:v35->_endpointerNode];
    [(CSAttSiriAsrNode *)v35->_asrNode registerSSRNode:v35->_ssrNode];
    [(NSMapTable *)v35->_nodesCache setObject:v35->_asrNode forKey:&off_10025E5B8];
  }

  if (device || understandingOnDevice)
  {
    if (uresNodeCopy)
    {
      v51 = uresNodeCopy;
    }

    else
    {
      v51 = objc_alloc_init(CSAttSiriUresNode);
    }

    uresNode = v35->_uresNode;
    v35->_uresNode = v51;

    [(NSMapTable *)v35->_nodesCache setObject:v35->_uresNode forKey:&off_10025E5D0];
    [(CSAttSiriUresNode *)v35->_uresNode setMitigatorDelegate:v35];
    v53 = objc_alloc_init(CSAttSiriNLDAClassifierNode);
    nldaClassifierNode = v35->_nldaClassifierNode;
    v35->_nldaClassifierNode = v53;

    [(NSMapTable *)v35->_nodesCache setObject:v35->_nldaClassifierNode forKey:&off_10025E5E8];
    [(CSAttSiriUresNode *)v35->_uresNode registerNLDAClassifierNode:v35->_nldaClassifierNode];
    [(CSAttSiriAsrNode *)v35->_asrNode registerUresNode:v35->_uresNode];
    [(CSAttSiriUresNode *)v35->_uresNode registerSSRNode:v35->_ssrNode];
    if (handlerCopy)
    {
      v55 = handlerCopy;
    }

    else
    {
      v55 = [[CSAttSiriRCHandler alloc] initWithEndpointerNode:v35->_endpointerNode uresNode:v35->_uresNode];
    }

    rcHandler = v35->_rcHandler;
    v35->_rcHandler = v55;
  }

  if (checker)
  {
    if (ftmNodeCopy)
    {
      v57 = ftmNodeCopy;
    }

    else
    {
      v57 = objc_alloc_init(CSAttSiriAFTMNode);
    }

    aFTMNode = v35->_aFTMNode;
    v35->_aFTMNode = v57;

    [(NSMapTable *)v35->_nodesCache setObject:v35->_aFTMNode forKey:&off_10025E600];
  }

  v35->_boronScore = 0;
  if (enabled)
  {
    if (v81)
    {
      v59 = v81;
    }

    else
    {
      v59 = [[CSAttSiriContConvController alloc] initWithAttSiriController:v35];
    }

    ccController = v35->_ccController;
    v35->_ccController = v59;

    nodesCache = [(CSAttSiriContConvController *)v35->_ccController nodesCache];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_1001057CC;
    v87[3] = &unk_1002518D0;
    v63 = v35;
    v88 = v63;
    [nodesCache enumerateKeysAndObjectsUsingBlock:v87];

    [(CSAttSiriContConvController *)v35->_ccController setNodesCache:0];
    osdNode = [(CSAttSiriContConvController *)v35->_ccController osdNode];
    osdNode = v63->_osdNode;
    v63->_osdNode = osdNode;

    if (CSIsIOS())
    {
      v66 = v63->_uresNode;
      gazeNode = [(CSAttSiriContConvController *)v35->_ccController gazeNode];
      [(CSAttSiriUresNode *)v66 registerGazeNode:gazeNode];
    }

    [(CSAttSiriUresNode *)v63->_uresNode registerOSDNode:v63->_osdNode];
    [(CSAttSiriUresNode *)v63->_uresNode registerNLDAClassifierNode:v63->_nldaClassifierNode];
    v63->_shouldSkipAttending = 0;

    controllerCopy = v81;
    asrNodeCopy = v83;
    if (detectionNodeCopy)
    {
      goto LABEL_42;
    }

LABEL_45:
    v68 = objc_alloc_init(CSAttSiriSpeechDetectionNode);
    goto LABEL_46;
  }

  controllerCopy = v81;
  asrNodeCopy = v83;
  if (v32)
  {
    v60 = v32;
  }

  else
  {
    v60 = objc_alloc_init(CSAttSiriOSDNode);
  }

  v69 = v35->_osdNode;
  v35->_osdNode = v60;

  [(NSMapTable *)v35->_nodesCache setObject:v35->_osdNode forKey:&off_10025E618];
  if (!detectionNodeCopy)
  {
    goto LABEL_45;
  }

LABEL_42:
  v68 = detectionNodeCopy;
LABEL_46:
  speechDetectionNode = v35->_speechDetectionNode;
  v35->_speechDetectionNode = v68;

  [(CSAttSiriSpeechDetectionNode *)v35->_speechDetectionNode setDelegate:v35];
  [(NSMapTable *)v35->_nodesCache setObject:v35->_speechDetectionNode forKey:&off_10025E630];
  [(CSAttSiriSpeechDetectionNode *)v35->_speechDetectionNode registerOSDNode:v35->_osdNode];
  objc_storeStrong(&v35->_audioProviderSelector, selector);
  if (monitorCopy)
  {
    v71 = monitorCopy;
  }

  else
  {
    v71 = +[CSSiriEnabledMonitor sharedInstance];
  }

  siriEnabledMonitor = v35->_siriEnabledMonitor;
  v35->_siriEnabledMonitor = v71;

  if (behaviorMonitorCopy)
  {
    v73 = behaviorMonitorCopy;
  }

  else
  {
    v73 = +[CSSiriClientBehaviorMonitor sharedInstance];
  }

  siriClientBehaviorMonitor = v35->_siriClientBehaviorMonitor;
  v35->_siriClientBehaviorMonitor = v73;

  [(CSSiriClientBehaviorMonitor *)v35->_siriClientBehaviorMonitor registerObserver:v35];
  v75 = +[CSAudioRouteChangeMonitor sharedInstance];
  audioRouteChangeMonitor = v35->_audioRouteChangeMonitor;
  v35->_audioRouteChangeMonitor = v75;

  v29 = v79;
LABEL_53:

  return v35;
}

- (CSAttSiriController)initWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  if ((+[CSUtils isMedocFeatureEnabled]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    if (CSIsCommunalDevice())
    {
      v6 = 1;
    }

    else
    {
      v6 = CSIsAppleSiliconMac();
    }

    v7 = +[CSUtils isContinuousConversationSupported];
    v8 = +[CSUtils supportAcousticProgressiveChecker];
    v9 = +[CSUtils supportsUnderstandingOnDevice];
    if ((+[CSUtils supportsSpeechRecognitionOnDevice]& 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = +[CSUtils supportVoiceID];
    }

    BYTE3(v13) = +[CSUtils supportsHybridUnderstandingOnDevice];
    BYTE2(v13) = v10;
    BYTE1(v13) = v9;
    LOBYTE(v13) = v8;
    LOBYTE(v12) = v7;
    self = [CSAttSiriController initWithEndpointerNode:"initWithEndpointerNode:osdNode:ssrNode:asrNode:uresNode:needsSSRNode:aFtmNode:speechDetectionNode:ccController:isContinuousConverationEnabled:audioProviderSelector:siriEnabledMonitor:siriClientBehaviorMonitor:rcHandler:supportsAcousticProgressiveChecker:supportsUnderstandingOnDevice:requireASROnDevice:supportsHybridUnderstandingOnDevice:" osdNode:0 ssrNode:0 asrNode:0 uresNode:0 needsSSRNode:0 aFtmNode:v6 speechDetectionNode:0 ccController:0 isContinuousConverationEnabled:0 audioProviderSelector:v12 siriEnabledMonitor:selectorCopy siriClientBehaviorMonitor:0 rcHandler:0 supportsAcousticProgressiveChecker:0 supportsUnderstandingOnDevice:v13 requireASROnDevice:? supportsHybridUnderstandingOnDevice:?];
    selfCopy = self;
  }

  return selfCopy;
}

@end