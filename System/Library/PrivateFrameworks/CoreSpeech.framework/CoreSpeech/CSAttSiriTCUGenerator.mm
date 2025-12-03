@interface CSAttSiriTCUGenerator
- (BOOL)_shouldDropPackage:(id)package;
- (BOOL)_shouldProcessResultCandidateForTask:(id)task;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriTCUGenerator)init;
- (CSAttSiriTCUGeneratorDelegate)delegate;
- (CSAttSiriUresNode)uresNode;
- (id)_generateNewTRPId;
- (id)_generateSingleTCU:(id)u withRequestID:(id)d uresInvocationType:(id)type;
- (id)_generateTCUs:(id)us withRequestID:(id)d uresInvocationType:(id)type;
- (id)_generateTCUsFromExistingTCUs:(id)us;
- (int64_t)_getPhraseTypeFromUresInvocationType:(id)type;
- (void)_deliverTRPCandidatePackage:(id)package;
- (void)_deliverTRPDetected:(id)detected withTRPId:(id)id;
- (void)_emitSpeechStopDetectedWithTrpId:(id)id withHostTime:(unint64_t)time;
- (void)_emitTRPCreatedEventWithTRPId:(id)id withResultCandidateId:(id)candidateId withRequestId:(id)requestId;
- (void)_emitTRPRequestLinkEventWithTRPId:(id)id withRequestId:(id)requestId;
- (void)_enforceLastEagerRCSelection;
- (void)_generateTCUCandidateWithRefershedScoresForTrpIdAsync:(id)async;
- (void)_processMultiUserResultCandidate:(id)candidate withId:(id)id isScoreRefreshAllowed:(BOOL)allowed;
- (void)_processResultCandidate:(id)candidate withId:(id)id uresInvocationType:(id)type isScoreRefreshAllowed:(BOOL)allowed;
- (void)_reportEndpointMetrics:(id)metrics forTrpId:(id)id;
- (void)_reset;
- (void)_sendSelectedTrpId:(id)id endpointerMetrics:(id)metrics;
- (void)_updateRefreshScoresForPackage:(id)package;
- (void)_updateTcuCache:(id)cache;
- (void)addRecognitionTaskCompletionReceiver:(id)receiver;
- (void)addTCUReceiver:(id)receiver;
- (void)addTRPCandidateExecutionStateReceiver:(id)receiver;
- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attSiriNode:(id)node selectedTRPId:(id)id withMetrics:(id)metrics;
- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package taskName:(id)name;
- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId inputOrigin:(id)origin speechPackage:(id)package duration:(double)duration taskName:(id)name;
- (void)processTCUUpdateMessage:(id)message;
- (void)registerEagerResultAnalyzer:(id)analyzer;
- (void)registerUresNode:(id)node;
- (void)reset;
- (void)setMhId:(id)id;
- (void)startWithRecordContext:(id)context withRequestId:(id)id;
- (void)updateAFTMOperationalStatus:(BOOL)status forRequestId:(id)id;
- (void)updateInvocationType:(id)type forRequestId:(id)id;
@end

@implementation CSAttSiriTCUGenerator

- (CSAttSiriEndpointerNode)endpointerNode
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);

  return WeakRetained;
}

- (CSAttSiriUresNode)uresNode
{
  WeakRetained = objc_loadWeakRetained(&self->_uresNode);

  return WeakRetained;
}

- (CSAttSiriTCUGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_generateTCUsFromExistingTCUs:(id)us
{
  usCopy = us;
  if (!usCopy)
  {
    v4 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSAttSiriTCUGenerator _generateTCUsFromExistingTCUs:]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s new TCU Object is nil!", &v6, 0xCu);
    }
  }

  return 0;
}

- (void)_reportEndpointMetrics:(id)metrics forTrpId:(id)id
{
  metricsCopy = metrics;
  idCopy = id;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  tcuReceivers = [(CSAttSiriTCUGenerator *)self tcuReceivers];
  v9 = [tcuReceivers countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(tcuReceivers);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (v13)
        {
          v14 = *(*(&v34 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 attSiriNode:self selectedTRPId:idCopy withMetrics:metricsCopy];
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [tcuReceivers countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v10);
  }

  if (!self->_isMultiUserRequest)
  {
    v16 = [(CSAttSiriTCUCache *)self->_tcuCache getTCUPackageWithTrpId:idCopy];
    speechPackage = [v16 speechPackage];
    goto LABEL_16;
  }

  multiUserTrpCache = self->_multiUserTrpCache;
  if (multiUserTrpCache && self->_requestId)
  {
    v16 = [(NSMutableDictionary *)multiUserTrpCache objectForKeyedSubscript:?];
    trpCandidateList = [v16 trpCandidateList];
    firstObject = [trpCandidateList firstObject];
    tcuList = [firstObject tcuList];
    firstObject2 = [tcuList firstObject];
    speechPackage = [firstObject2 speechPackage];

LABEL_16:
    v38[0] = @"leadingSilence";
    [CSAttSiriSpeechPackageHelper getFirstTokenLeadingSilenceFromSpeechPackage:speechPackage];
    v23 = [NSNumber numberWithDouble:v22 * 1000.0];
    v39[0] = v23;
    v38[1] = @"trailingSilence";
    [CSAttSiriSpeechPackageHelper getLastTokenTrailingSilenceFromSpeechPackage:speechPackage];
    v25 = [NSNumber numberWithDouble:v24 * 1000.0];
    v39[1] = v25;
    v38[2] = @"endTime";
    [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:speechPackage];
    v27 = [NSNumber numberWithDouble:v26 * 1000.0];
    v39[2] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];

    [(CSEndpointDelayReporter *)self->_epdDelayReporter setStopRecordingHostTime:mach_absolute_time()];
    epdDelayReporter = self->_epdDelayReporter;
    [metricsCopy totalAudioRecorded];
    [(CSEndpointDelayReporter *)epdDelayReporter setEndpointTimeInMs:?];
    -[CSEndpointDelayReporter setEndpointBufferHostTime:](self->_epdDelayReporter, "setEndpointBufferHostTime:", [metricsCopy endpointBufferHostTime]);
    v30 = self->_epdDelayReporter;
    [CSAttSiriSpeechPackageHelper getLastTokenSilenceStartFromSpeechPackage:speechPackage];
    [(CSEndpointDelayReporter *)v30 setUserSpeakingEndedTimeInMs:v31 * 1000.0];
    [(CSEndpointDelayReporter *)self->_epdDelayReporter setSpeechRecognizedContext:v28 withEndpointerMetrics:metricsCopy withTrpId:idCopy];
    [(CSEndpointDelayReporter *)self->_epdDelayReporter reportEndpointDelayIfNeed];

    goto LABEL_19;
  }

  v32 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
  {
    requestId = self->_requestId;
    *buf = 136315394;
    v41 = "[CSAttSiriTCUGenerator _reportEndpointMetrics:forTrpId:]";
    v42 = 2112;
    v43 = requestId;
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s No Valid MultiUser TRPCache found for Multiuser requestId(%@), Bailing out!", buf, 0x16u);
  }

LABEL_19:
}

- (void)_emitSpeechStopDetectedWithTrpId:(id)id withHostTime:(unint64_t)time
{
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A718;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = idCopy;
  timeCopy = time;
  v8 = idCopy;
  dispatch_async(queue, block);
}

- (void)_emitTRPCreatedEventWithTRPId:(id)id withResultCandidateId:(id)candidateId withRequestId:(id)requestId
{
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v22 = 136315906;
    v23 = "[CSAttSiriTCUGenerator _emitTRPCreatedEventWithTRPId:withResultCandidateId:withRequestId:]";
    v24 = 2112;
    v25 = idCopy;
    v26 = 2112;
    v27 = candidateIdCopy;
    v28 = 2112;
    v29 = requestIdCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s emitting SELF logging event TRPCreated with TRPId: %@, resultCandidateId: %@, requestId: %@", &v22, 0x2Au);
  }

  v12 = objc_alloc_init(MHSchemaMHTRPCreated);
  v13 = [SISchemaUUID alloc];
  v14 = [[NSUUID alloc] initWithUUIDString:idCopy];
  v15 = [v13 initWithNSUUID:v14];
  [v12 setTrpId:v15];

  [v12 setResultCandidateId:candidateIdCopy];
  v16 = objc_alloc_init(MHSchemaMHClientEvent);
  v17 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v18 = [SISchemaUUID alloc];
  v19 = [[NSUUID alloc] initWithUUIDString:self->_mhId];
  v20 = [v18 initWithNSUUID:v19];
  [v17 setMhId:v20];

  [v16 setEventMetadata:v17];
  [v16 setTrpCreated:v12];
  v21 = +[AssistantSiriAnalytics sharedStream];
  [v21 emitMessage:v16];
}

- (void)_emitTRPRequestLinkEventWithTRPId:(id)id withRequestId:(id)requestId
{
  idCopy = id;
  requestIdCopy = requestId;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[CSAttSiriTCUGenerator _emitTRPRequestLinkEventWithTRPId:withRequestId:]";
    v18 = 2112;
    v19 = idCopy;
    v20 = 2112;
    v21 = requestIdCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s emitting SELF logging event TRPRequestLink with TRPId: %@, requestId: %@", &v16, 0x20u);
  }

  v8 = objc_alloc_init(SISchemaTRPRequestLink);
  [v8 setSource:2];
  v9 = [SISchemaUUID alloc];
  v10 = [[NSUUID alloc] initWithUUIDString:idCopy];
  v11 = [v9 initWithNSUUID:v10];
  [v8 setTrpId:v11];

  v12 = [SISchemaUUID alloc];
  v13 = [[NSUUID alloc] initWithUUIDString:requestIdCopy];
  v14 = [v12 initWithNSUUID:v13];
  [v8 setRequestId:v14];

  v15 = +[AssistantSiriAnalytics sharedStream];
  [v15 emitMessage:v8];
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  statisticsCopy = statistics;
  idCopy = id;
  errorCopy = error;
  queue = [(CSAttSiriTCUGenerator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010AE44;
  block[3] = &unk_100253558;
  v20 = statisticsCopy;
  modeCopy = mode;
  block[4] = self;
  v18 = errorCopy;
  v19 = idCopy;
  v14 = statisticsCopy;
  v15 = idCopy;
  v16 = errorCopy;
  dispatch_async(queue, block);
}

- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package taskName:(id)name
{
  idCopy = id;
  packageCopy = package;
  nameCopy = name;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010B168;
  v15[3] = &unk_100252F38;
  v16 = nameCopy;
  selfCopy = self;
  v18 = packageCopy;
  v19 = idCopy;
  v12 = idCopy;
  v13 = packageCopy;
  v14 = nameCopy;
  dispatch_async(queue, v15);
}

- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId inputOrigin:(id)origin speechPackage:(id)package duration:(double)duration taskName:(id)name
{
  idCopy = id;
  packageCopy = package;
  nameCopy = name;
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10010B334;
  v18[3] = &unk_100252F38;
  v19 = nameCopy;
  selfCopy = self;
  v21 = packageCopy;
  v22 = idCopy;
  v15 = idCopy;
  v16 = packageCopy;
  v17 = nameCopy;
  dispatch_async(queue, v18);
}

- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B4D0;
  block[3] = &unk_100252C40;
  endpointingCopy = endpointing;
  timeCopy = time;
  block[4] = self;
  v15 = metricsCopy;
  typeCopy = type;
  v13 = metricsCopy;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node selectedTRPId:(id)id withMetrics:(id)metrics
{
  idCopy = id;
  metricsCopy = metrics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B810;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = idCopy;
  v14 = metricsCopy;
  v10 = metricsCopy;
  v11 = idCopy;
  dispatch_async(queue, block);
}

- (void)registerEagerResultAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B9E0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = analyzerCopy;
  v6 = analyzerCopy;
  dispatch_async(queue, v7);
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010BA84;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = metricsCopy;
  v9 = metricsCopy;
  dispatch_async(queue, v10);
}

- (void)_updateRefreshScoresForPackage:(id)package
{
  tcuList = [package tcuList];
  firstObject = [tcuList firstObject];
  siriIntendedInfo = [firstObject siriIntendedInfo];

  invocationType = [siriIntendedInfo invocationType];
  if (!invocationType)
  {
    goto LABEL_10;
  }

  speechEvent = self->_speechEvent;

  if (speechEvent == 5)
  {
    goto LABEL_10;
  }

  v9 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    isSDSDAftmOperational = self->_isSDSDAftmOperational;
    v14 = 136315394;
    v15 = "[CSAttSiriTCUGenerator _updateRefreshScoresForPackage:]";
    v16 = 1024;
    v17 = isSDSDAftmOperational;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s isAftmModelOperational:%u", &v14, 0x12u);
  }

  if (self->_isSDSDAftmOperational && ([siriIntendedInfo aftmScore], v11 < 0.0))
  {
    v12 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[CSAttSiriTCUGenerator _updateRefreshScoresForPackage:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s AFTM score is nil, needs TCU refresh", &v14, 0xCu);
    }

    v13 = 1;
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  self->_shouldRefreshScores = v13;
}

- (void)_generateTCUCandidateWithRefershedScoresForTrpIdAsync:(id)async
{
  asyncCopy = async;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BD68;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(queue, v7);
}

- (int64_t)_getPhraseTypeFromUresInvocationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToNumber:&off_10025E678])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToNumber:&off_10025E690])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_generateSingleTCU:(id)u withRequestID:(id)d uresInvocationType:(id)type
{
  dCopy = d;
  typeCopy = type;
  uCopy = u;
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  v13 = dCopy;
  [uCopy utteranceStart];
  v15 = v14;
  recognition = [uCopy recognition];
  [recognition processedAudioDuration];
  v18 = v15 + v17;

  v19 = objc_alloc(sub_10010C110());
  speechEvent = self->_speechEvent;
  v21 = [(CSAttSiriTCUGenerator *)self _getPhraseTypeFromUresInvocationType:typeCopy];

  v22 = [v19 initWithTcuId:uUIDString requestId:v13 tcuState:1 speechEvent:speechEvent voiceTriggerPhraseType:v21 siriIntendedInfo:0 prevTCUIds:v15 startAudioTimeStampInMs:v18 endAudioTimeStampInMs:0 speechPackage:uCopy];
  v23 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[CSAttSiriTCUGenerator _generateSingleTCU:withRequestID:uresInvocationType:]";
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s newTCUObject :%@", buf, 0x16u);
  }

  if (!v22)
  {
    v24 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CSAttSiriTCUGenerator _generateSingleTCU:withRequestID:uresInvocationType:]";
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to create TCU Object!", buf, 0xCu);
    }
  }

  return v22;
}

- (id)_generateTCUs:(id)us withRequestID:(id)d uresInvocationType:(id)type
{
  dCopy = d;
  typeCopy = type;
  usCopy = us;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];

  v14 = dCopy;
  [usCopy utteranceStart];
  v16 = v15;
  recognition = [usCopy recognition];
  [recognition processedAudioDuration];
  v19 = v16 + v18;

  v20 = objc_alloc(sub_10010C110());
  speechEvent = self->_speechEvent;
  v22 = [(CSAttSiriTCUGenerator *)self _getPhraseTypeFromUresInvocationType:typeCopy];

  v23 = [v20 initWithTcuId:uUIDString requestId:v14 tcuState:1 speechEvent:speechEvent voiceTriggerPhraseType:v22 siriIntendedInfo:0 prevTCUIds:v16 startAudioTimeStampInMs:v19 endAudioTimeStampInMs:0 speechPackage:usCopy];
  v24 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[CSAttSiriTCUGenerator _generateTCUs:withRequestID:uresInvocationType:]";
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s newTCUObject :%@", buf, 0x16u);
  }

  if (v23)
  {
    [v11 addObject:v23];
    v25 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[CSAttSiriTCUGenerator _generateTCUs:withRequestID:uresInvocationType:]";
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s TCUCandidateList :%@", buf, 0x16u);
    }

    v26 = v11;
  }

  else
  {
    v27 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[CSAttSiriTCUGenerator _generateTCUs:withRequestID:uresInvocationType:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Failed to create TCU Object!", buf, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

- (id)_generateNewTRPId
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (void)_deliverTRPDetected:(id)detected withTRPId:(id)id
{
  detectedCopy = detected;
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_shouldRefreshScores)
  {
    v7 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSAttSiriTCUGenerator _deliverTRPDetected:withTRPId:]";
      *&buf[12] = 2112;
      *&buf[14] = idCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Trigger new TCU candidate for trpId: %@", buf, 0x16u);
    }

    [(CSAttSiriTCUGenerator *)self _generateTCUCandidateWithRefershedScoresForTrpIdAsync:idCopy];
    self->_shouldRefreshScores = 0;
  }

  else
  {
    if (detectedCopy)
    {
      endpointBufferHostTime = [detectedCopy endpointBufferHostTime];
      [detectedCopy totalAudioRecorded];
      v10 = v9;
    }

    else
    {
      endpointBufferHostTime = mach_absolute_time();
      v11 = [(CSAttSiriTCUCache *)self->_tcuCache getTCUPackageWithTrpId:self->_lastTRPIdForSegment];
      [v11 endAudioTimeStampInMs];
      v13 = v12;
      [v11 startAudioTimeStampInMs];
      v10 = v13 - v14;
    }

    v15 = endpointBufferHostTime;
    v16 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[CSAttSiriTCUGenerator _deliverTRPDetected:withTRPId:]";
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s trpDetectGenerationTime:%f totalRecordAudio:%f ", buf, 0x20u);
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v17 = qword_10029E3B8;
    v34 = qword_10029E3B8;
    if (!qword_10029E3B8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10010CCC8;
      v37 = COERCE_DOUBLE(&unk_100253580);
      v38 = &v31;
      sub_10010CCC8(buf);
      v17 = v32[3];
    }

    v18 = v17;
    _Block_object_dispose(&v31, 8);
    v19 = [[v17 alloc] initWithGeneratedHostTime:v15 lastTRPCandidateId:idCopy trpDetectedAudioTimeStamp:self->_requestId requestId:v10];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    tcuReceivers = [(CSAttSiriTCUGenerator *)self tcuReceivers];
    v21 = [tcuReceivers countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v21)
    {
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(tcuReceivers);
          }

          v24 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v24 didGenerateTRPDetector:v19];
          }
        }

        v21 = [tcuReceivers countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    -[CSAttSiriTCUGenerator _emitSpeechStopDetectedWithTrpId:withHostTime:](self, "_emitSpeechStopDetectedWithTrpId:withHostTime:", idCopy, [detectedCopy endpointHostTime]);
    self->_trpDetectDelivered = 1;
    if (detectedCopy)
    {
      [(CSAttSiriTCUGenerator *)self _reportEndpointMetrics:detectedCopy forTrpId:idCopy];
    }

    else
    {
      v25 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[CSAttSiriTCUGenerator _deliverTRPDetected:withTRPId:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Not reporting EPD due to nil endpointerMetrics", buf, 0xCu);
      }
    }
  }
}

- (void)_deliverTRPCandidatePackage:(id)package
{
  packageCopy = package;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSAttSiriTCUGenerator _deliverTRPCandidatePackage:]";
    v19 = 2112;
    v20 = packageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s trpCandidateInfo:%@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  tcuReceivers = [(CSAttSiriTCUGenerator *)self tcuReceivers];
  v7 = [tcuReceivers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(tcuReceivers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didGenerateTRPCandidatePackage:packageCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [tcuReceivers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  self->_trpCandidateDelivered = 1;
}

- (void)_updateTcuCache:(id)cache
{
  cacheCopy = cache;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttSiriTCUGenerator _updateTcuCache:]";
    v10 = 2112;
    v11 = cacheCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s trpCandidateInfo:%@", buf, 0x16u);
  }

  tcuList = [cacheCopy tcuList];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010D008;
  v7[3] = &unk_100251C20;
  v7[4] = self;
  [tcuList enumerateObjectsUsingBlock:v7];
}

- (BOOL)_shouldDropPackage:(id)package
{
  isFinal = [package isFinal];
  cachedTCUCount = [(CSAttSiriTCUCache *)self->_tcuCache cachedTCUCount];
  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    trpDetectDelivered = self->_trpDetectDelivered;
    v9 = 136315906;
    v10 = "[CSAttSiriTCUGenerator _shouldDropPackage:]";
    v11 = 1024;
    v12 = trpDetectDelivered;
    v13 = 1024;
    v14 = isFinal;
    v15 = 1024;
    v16 = cachedTCUCount != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s trpDetectDelivered:%u isFinalRC:%u anyCachedRC:%u", &v9, 0x1Eu);
  }

  result = self->_trpDetectDelivered;
  if (!result && ((isFinal ^ 1) & 1) == 0)
  {
    result = 0;
    if (self->_shouldEnforceLastEagerRCSelection)
    {
      if (cachedTCUCount)
      {
        [(CSAttSiriTCUGenerator *)self _enforceLastEagerRCSelection];
        return 1;
      }
    }
  }

  return result;
}

- (void)_enforceLastEagerRCSelection
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriTCUGenerator _enforceLastEagerRCSelection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Force select last Eager RC", &v6, 0xCu);
  }

  v4 = [(CSAttSiriTCUCache *)self->_tcuCache getTCUPackageWithTrpId:self->_lastTRPIdForSegment];
  speechPackage = [v4 speechPackage];
  self->_shouldRefreshScores = 0;
  [(CSAttSiriTCUGenerator *)self _doTrpTcuMappingWithTrpid:self->_lastTRPIdForSegment speechPackage:speechPackage forceTrpSelection:1];
}

- (void)_sendSelectedTrpId:(id)id endpointerMetrics:(id)metrics
{
  idCopy = id;
  metricsCopy = metrics;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSAttSiriTCUGenerator _sendSelectedTrpId:endpointerMetrics:]";
    v13 = 2112;
    v14 = idCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Sending selected TRPId %@ to delegates", &v11, 0x16u);
    v8 = CSLogCategoryRequest;
  }

  trpDetectDelivered = self->_trpDetectDelivered;
  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (trpDetectDelivered)
  {
    if (v10)
    {
      v11 = 136315394;
      v12 = "[CSAttSiriTCUGenerator _sendSelectedTrpId:endpointerMetrics:]";
      v13 = 2112;
      v14 = idCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Ignore TRP selection for trpId: %@, since TRPDetect is already sent", &v11, 0x16u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 136315394;
      v12 = "[CSAttSiriTCUGenerator _sendSelectedTrpId:endpointerMetrics:]";
      v13 = 2112;
      v14 = idCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received selected trpId: %@ sending TRPDetect msg", &v11, 0x16u);
    }

    [(CSAttSiriTCUGenerator *)self _deliverTRPDetected:metricsCopy withTRPId:idCopy];
  }
}

- (void)_processResultCandidate:(id)candidate withId:(id)id uresInvocationType:(id)type isScoreRefreshAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  candidateCopy = candidate;
  idCopy = id;
  typeCopy = type;
  v13 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    isFinal = [candidateCopy isFinal];
    rawRecognition = [candidateCopy rawRecognition];
    oneBestTranscript = [rawRecognition oneBestTranscript];
    *buf = 136315906;
    v37 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]";
    v38 = 1024;
    *v39 = isFinal;
    *&v39[4] = 2112;
    *&v39[6] = oneBestTranscript;
    *&v39[14] = 1024;
    *&v39[16] = allowedCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "KeyLog - %s isFinal:%u utterance:%@ isScoreRefreshAllowed:%u", buf, 0x22u);
  }

  if ([(CSAttSiriTCUGenerator *)self _shouldDropPackage:candidateCopy])
  {
    v18 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Duplicate package - needs to be dropped", buf, 0xCu);
    }
  }

  else if (candidateCopy)
  {
    _generateNewTRPId = [(CSAttSiriTCUGenerator *)self _generateNewTRPId];
    objc_storeStrong(&self->_lastTRPIdForSegment, _generateNewTRPId);
    v20 = [(CSAttSiriTCUGenerator *)self _generateTCUs:candidateCopy withRequestID:idCopy uresInvocationType:typeCopy];
    v21 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      lastTRPIdForSegment = self->_lastTRPIdForSegment;
      *buf = 136315650;
      v37 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]";
      v38 = 2112;
      *v39 = lastTRPIdForSegment;
      *&v39[8] = 2112;
      *&v39[10] = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s TRPId:%@ TCUPackage:%@", buf, 0x20u);
    }

    v23 = [objc_alloc(sub_10010DA0C()) initWithTrpCandidateId:self->_lastTRPIdForSegment requestId:self->_requestId tcuList:v20];
    v24 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]";
      v38 = 2112;
      *v39 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s TRPCandidateInfo :%@", buf, 0x16u);
    }

    resultCandidateId = [candidateCopy resultCandidateId];
    TCUPruner = self->_TCUPruner;
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10010DAEC;
    v31 = &unk_100251BF8;
    selfCopy = self;
    v33 = idCopy;
    v34 = resultCandidateId;
    v35 = allowedCopy;
    [(CSTCUPruner *)TCUPruner processTRPCandidateInfo:v23 requestId:v33 withCompletion:&v28];
    [(CSAttSiriTCUGenerator *)self _doTrpTcuMappingWithTrpid:self->_lastTRPIdForSegment speechPackage:candidateCopy forceTrpSelection:0, v28, v29, v30, v31, selfCopy];
  }

  else
  {
    v27 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Speech package is nil - bailing out", buf, 0xCu);
    }
  }
}

- (void)_processMultiUserResultCandidate:(id)candidate withId:(id)id isScoreRefreshAllowed:(BOOL)allowed
{
  candidateCopy = candidate;
  idCopy = id;
  v9 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]";
    *&buf[12] = 2112;
    *&buf[14] = idCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s requestId: %@", buf, 0x16u);
  }

  if (candidateCopy)
  {
    _generateNewTRPId = [(CSAttSiriTCUGenerator *)self _generateNewTRPId];
    v11 = +[NSMutableArray array];
    if (!self->_multiUserTrpCache)
    {
      v12 = +[NSMutableDictionary dictionary];
      multiUserTrpCache = self->_multiUserTrpCache;
      self->_multiUserTrpCache = v12;
    }

    self->_isMultiUserRequest = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = sub_1001093EC;
    v65 = sub_1001093FC;
    v66 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10010E318;
    v44[3] = &unk_100251BA8;
    v47 = &v54;
    v48 = buf;
    v44[4] = self;
    v49 = &v50;
    v14 = idCopy;
    v45 = v14;
    v15 = v11;
    v46 = v15;
    [candidateCopy enumerateKeysAndObjectsUsingBlock:v44];
    if (*(v51 + 24) == 1)
    {
      lastObject = [(NSMutableArray *)self->_multiUserTrpIdList lastObject];
      v17 = [(CSTrpTcuMapper *)self->_tcuTrpMapper getMatchingRelaxedEPMetricsForTrp:lastObject];
      v18 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 136315394;
        *&v67[4] = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]";
        *&v67[12] = 2112;
        *&v67[14] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s matchingEPMetrics:%@", v67, 0x16u);
      }

      if (v17)
      {
        [(CSAttSiriTCUGenerator *)self _sendSelectedTrpId:lastObject endpointerMetrics:v17];
      }
    }

    else
    {
      v58 = 0;
      v59 = &v58;
      v60 = 0x2050000000;
      v20 = qword_10029E3B0;
      v61 = qword_10029E3B0;
      if (!qword_10029E3B0)
      {
        *v67 = _NSConcreteStackBlock;
        *&v67[8] = 3221225472;
        *&v67[16] = sub_10010E708;
        v68 = &unk_100253580;
        v69 = &v58;
        sub_10010E708(v67);
        v20 = v59[3];
      }

      v35 = _generateNewTRPId;
      v21 = v20;
      _Block_object_dispose(&v58, 8);
      v22 = [v20 alloc];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10010E778;
      v40[3] = &unk_100251BD0;
      v23 = _generateNewTRPId;
      v41 = v23;
      v24 = v14;
      v42 = v24;
      v43 = v15;
      v25 = [v22 initWithBuilder:v40];
      v26 = v25;
      if (v24 && v25)
      {
        [(NSMutableArray *)self->_multiUserTrpIdList addObject:v23];
        [(NSMutableDictionary *)self->_multiUserTrpCache setValue:v26 forKey:v24];
        v33 = v23;
        v34 = idCopy;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        tcuReceivers = [(CSAttSiriTCUGenerator *)self tcuReceivers];
        v28 = [tcuReceivers countByEnumeratingWithState:&v36 objects:v62 count:16];
        if (v28)
        {
          v29 = *v37;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(tcuReceivers);
              }

              v31 = *(*(&v36 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v31 didGenerateMultiUserTRPCandidatePackage:v26];
              }
            }

            v28 = [tcuReceivers countByEnumeratingWithState:&v36 objects:v62 count:16];
          }

          while (v28);
        }

        idCopy = v34;
        self->_trpCandidateDelivered = 1;
        if (*(v55 + 24) == 1)
        {
          [(CSAttSiriTCUGenerator *)self _doTrpTcuMappingWithTrpid:v33 speechPackage:*(*&buf[8] + 40) forceTrpSelection:1];
        }
      }

      else
      {
        v32 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
        {
          *v67 = 136315138;
          *&v67[4] = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]";
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s multiUserTrpCandidate failed to initialize. Bail out!", v67, 0xCu);
        }
      }

      _generateNewTRPId = v35;
      lastObject = v41;
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v19 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Speech package is nil - bailing out", buf, 0xCu);
    }
  }
}

- (BOOL)_shouldProcessResultCandidateForTask:(id)task
{
  taskCopy = task;
  v4 = ([taskCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging] & 1) != 0 || objc_msgSend(taskCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation);
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriTCUGenerator _shouldProcessResultCandidateForTask:]";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s generateTcuTrpForResultCandidate:%u", &v7, 0x12u);
  }

  return v4;
}

- (void)_reset
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAttSiriTCUGenerator _reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  [(CSAttSiriTCUCache *)self->_tcuCache clearTcuCache];
  firstTRPIdForSegment = self->_firstTRPIdForSegment;
  self->_firstTRPIdForSegment = 0;

  lastTRPIdForSegment = self->_lastTRPIdForSegment;
  self->_lastTRPIdForSegment = 0;

  self->_speechEvent = 0;
  *&self->_requestInProcess = 0;
  endpointerMetrics = self->_endpointerMetrics;
  self->_endpointerMetrics = 0;

  *&self->_shouldEnforceLastEagerRCSelection = 257;
  self->_usesAutomaticEndpointing = 1;
  turnIdentifier = self->_turnIdentifier;
  self->_turnIdentifier = 0;

  [(NSMutableArray *)self->_multiUserTrpIdList removeAllObjects];
  self->_isMultiUserRequest = 0;
  [(CSTrpTcuMapper *)self->_tcuTrpMapper resetForNewRequest];
}

- (void)processTCUUpdateMessage:(id)message
{
  messageCopy = message;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010EB44;
  v7[3] = &unk_100253C48;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

- (void)addRecognitionTaskCompletionReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = [(CSAttSiriTCUGenerator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010EF18;
  v7[3] = &unk_100253C48;
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addTRPCandidateExecutionStateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = [(CSAttSiriTCUGenerator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F068;
  v7[3] = &unk_100253C48;
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addTCUReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = [(CSAttSiriTCUGenerator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F1B8;
  v7[3] = &unk_100253C48;
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)updateInvocationType:(id)type forRequestId:(id)id
{
  typeCopy = type;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010F3C0;
  block[3] = &unk_100253680;
  v12 = idCopy;
  selfCopy = self;
  v14 = typeCopy;
  v9 = typeCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)updateAFTMOperationalStatus:(BOOL)status forRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010F5B8;
  block[3] = &unk_100253900;
  v10 = idCopy;
  selfCopy = self;
  statusCopy = status;
  v8 = idCopy;
  dispatch_async(queue, block);
}

- (void)setMhId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F79C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)startWithRecordContext:(id)context withRequestId:(id)id
{
  contextCopy = context;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010F8CC;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = idCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)registerUresNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010FAA8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FBE8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAttSiriTCUGenerator)init
{
  if ((+[CSUtils isMedocFeatureEnabled]& 1) != 0)
  {
    v29.receiver = self;
    v29.super_class = CSAttSiriTCUGenerator;
    v3 = [(CSAttSiriTCUGenerator *)&v29 init];
    if (v3)
    {
      v4 = [CSUtils getSerialQueue:@"CSAttSiriTCUGenerator queue" qualityOfService:33];
      v5 = *(v3 + 8);
      *(v3 + 8) = v4;

      v3[8] = 0;
      v6 = *(v3 + 9);
      *(v3 + 9) = 0;

      v7 = *(v3 + 10);
      *(v3 + 10) = 0;

      *(v3 + 13) = 0;
      v8 = objc_alloc_init(CSAttSiriTCUCache);
      v9 = *(v3 + 14);
      *(v3 + 14) = v8;

      *(v3 + 9) = 0;
      v3[11] = 0;
      v10 = objc_alloc_init(CSTCUPruner);
      v11 = *(v3 + 12);
      *(v3 + 12) = v10;

      v12 = +[NSHashTable weakObjectsHashTable];
      v13 = *(v3 + 15);
      *(v3 + 15) = v12;

      v14 = +[NSHashTable weakObjectsHashTable];
      v15 = *(v3 + 16);
      *(v3 + 16) = v14;

      v16 = +[NSHashTable weakObjectsHashTable];
      v17 = *(v3 + 17);
      *(v3 + 17) = v16;

      v3[12] = 0;
      v18 = *(v3 + 11);
      *(v3 + 11) = 0;

      v19 = *(v3 + 19);
      *(v3 + 19) = 0;

      v3[13] = 1;
      v20 = [[CSTrpTcuMapper alloc] initWithQueue:*(v3 + 8)];
      v21 = *(v3 + 20);
      *(v3 + 20) = v20;

      *(v3 + 7) = 257;
      v22 = *(v3 + 21);
      *(v3 + 21) = 0;

      v23 = objc_alloc_init(NSMutableArray);
      v24 = *(v3 + 22);
      *(v3 + 22) = v23;

      v3[16] = 0;
      v25 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v31 = "[CSAttSiriTCUGenerator init]";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Created CSAttSiriTCUGenerator node", buf, 0xCu);
      }
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    v27 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSAttSiriTCUGenerator init]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Medoc feature flag disabled!", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end