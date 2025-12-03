@interface CSEndpointDetectedSelfLogger
+ (id)_decodeFeaturesAtEndpoint:(id)endpoint eventType:(int64_t)type;
+ (void)emitEndpointDetectedEventWithEndpointerMetrics:(id)metrics eventType:(int64_t)type trpId:(id)id mhId:(id)mhId;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSEndpointDetectedSelfLogger)init;
- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)attSiriNode:(id)node selectedTRPId:(id)id withMetrics:(id)metrics;
- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)registerEndpointerNode:(id)node;
- (void)reset;
- (void)setup;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option;
@end

@implementation CSEndpointDetectedSelfLogger

- (CSAttSiriEndpointerNode)endpointerNode
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);

  return WeakRetained;
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  optionCopy = option;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EDE80;
  v11[3] = &unk_100253C48;
  v11[4] = self;
  v12 = optionCopy;
  v10 = optionCopy;
  dispatch_async(queue, v11);
}

- (void)siriClientBehaviorMonitor:(id)monitor willStartStreamWithContext:(id)context option:(id)option
{
  optionCopy = option;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EDFD4;
  v9[3] = &unk_100253C48;
  v9[4] = self;
  v10 = optionCopy;
  v8 = optionCopy;
  dispatch_async(queue, v9);
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE104;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node selectedTRPId:(id)id withMetrics:(id)metrics
{
  idCopy = id;
  metricsCopy = metrics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE2A4;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = metricsCopy;
  v14 = idCopy;
  v10 = idCopy;
  v11 = metricsCopy;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE428;
  block[3] = &unk_1002533C8;
  v13 = metricsCopy;
  typeCopy = type;
  block[4] = self;
  v11 = metricsCopy;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EE584;
  v10[3] = &unk_100253C48;
  v10[4] = self;
  v11 = metricsCopy;
  v9 = metricsCopy;
  dispatch_async(queue, v10);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE6D0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)registerEndpointerNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EE82C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)setup
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE958;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSEndpointDetectedSelfLogger)init
{
  v10.receiver = self;
  v10.super_class = CSEndpointDetectedSelfLogger;
  v2 = [(CSEndpointDetectedSelfLogger *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSEndpointDetectedSelfLogger queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    *&v2->_localSRDisabled = 0;
    v5 = +[CSSiriClientBehaviorMonitor sharedInstance];
    siriClientBehaviorMonitor = v2->_siriClientBehaviorMonitor;
    v2->_siriClientBehaviorMonitor = v5;

    cachedRelaxedEndpointerMetrics = v2->_cachedRelaxedEndpointerMetrics;
    v2->_cachedRelaxedEndpointerMetrics = 0;
  }

  v8 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSEndpointDetectedSelfLogger init]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Created CSEndpointDetectedSelfLogger", buf, 0xCu);
  }

  return v2;
}

+ (id)_decodeFeaturesAtEndpoint:(id)endpoint eventType:(int64_t)type
{
  endpointCopy = endpoint;
  v6 = [endpointCopy count];
  v7 = v6;
  if ((type - 1) >= 2)
  {
    if (!type && (v6 & 0xFFFFFFFFFFFFFFFBLL) != 2)
    {
      v48 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
      {
        v50 = 136315906;
        v51 = "+[CSEndpointDetectedSelfLogger _decodeFeaturesAtEndpoint:eventType:]";
        v52 = 2048;
        v53 = 6;
        v54 = 2048;
        v55 = 2;
        v56 = 2048;
        v57 = v7;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s Legacy endpointer feature count should always be %lu or %lu (timeout case), instead got %lu", &v50, 0x2Au);
      }

      goto LABEL_20;
    }

LABEL_10:
    v9 = [endpointCopy objectAtIndex:0];
    [v9 floatValue];
    v10 = [CSFTimeUtils millisecondsToNs:?];

    v11 = [endpointCopy objectAtIndex:1];
    [v11 floatValue];
    v12 = [CSFTimeUtils millisecondsToNs:?];

    v13 = 0;
    if (v7 < 6)
    {
      v32 = 0;
      v25 = 0;
      intValue2 = 0;
      intValue = 0;
      v20 = 0;
      v35 = 0;
      v28 = 0;
      v16 = 0;
      v23 = 0;
    }

    else
    {
      v14 = [endpointCopy objectAtIndex:2];
      [v14 floatValue];
      v16 = v15;

      v17 = [endpointCopy objectAtIndex:3];
      intValue = [v17 intValue];

      v19 = [endpointCopy objectAtIndex:4];
      [v19 floatValue];
      v20 = [CSFTimeUtils millisecondsToNs:?];

      v21 = [endpointCopy objectAtIndex:5];
      [v21 floatValue];
      v23 = v22;

      if (v7 < 0xB)
      {
        v32 = 0;
        v25 = 0;
        intValue2 = 0;
        v35 = 0;
        v28 = 0;
      }

      else
      {
        v24 = [endpointCopy objectAtIndex:6];
        [v24 floatValue];
        v25 = [CSFTimeUtils millisecondsToNs:?];

        v26 = [endpointCopy objectAtIndex:7];
        [v26 floatValue];
        v28 = v27;

        v29 = [endpointCopy objectAtIndex:8];
        intValue2 = [v29 intValue];

        v31 = [endpointCopy objectAtIndex:9];
        [v31 floatValue];
        v32 = [CSFTimeUtils millisecondsToNs:?];

        v33 = [endpointCopy objectAtIndex:10];
        [v33 floatValue];
        v35 = v34;

        if (v7 == 13)
        {
          v36 = [endpointCopy objectAtIndex:11];
          [v36 floatValue];
          v13 = v37;

          v38 = [endpointCopy objectAtIndex:12];
          [v38 floatValue];
          v40 = v39;

LABEL_17:
          v41 = objc_alloc_init(MHSchemaMHEndpointFeaturesAtEndpoint);
          [v41 setWordCount:intValue];
          [v41 setTrailingSilenceDurationInNs:v10];
          LODWORD(v42) = v16;
          [v41 setEndOfSentenceLikelihood:v42];
          [v41 setClientSilenceFramesCountInNs:v12];
          [v41 setServerFeaturesLatencyInNs:v20];
          LODWORD(v43) = v23;
          [v41 setClientSilenceProbability:v43];
          [v41 setRcTrailingSilenceDuration:v25];
          LODWORD(v44) = v28;
          [v41 setRcEndOfSentenceLikelihood:v44];
          [v41 setRcWordCount:intValue2];
          [v41 setRcServerFeaturesLatency:v32];
          LODWORD(v45) = v35;
          [v41 setSilencePosterior:v45];
          LODWORD(v46) = v13;
          [v41 setAcousticEndpointerScore:v46];
          LODWORD(v47) = v40;
          [v41 setSilencePosteriorFrameCountInNs:v47];
          goto LABEL_21;
        }
      }
    }

    v40 = 0;
    goto LABEL_17;
  }

  if (v6 <= 0xD && ((1 << v6) & 0x2844) != 0)
  {
    goto LABEL_10;
  }

  v8 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
  {
    v50 = 136316418;
    v51 = "+[CSEndpointDetectedSelfLogger _decodeFeaturesAtEndpoint:eventType:]";
    v52 = 2048;
    v53 = 6;
    v54 = 2048;
    v55 = 2;
    v56 = 2048;
    v57 = 11;
    v58 = 2048;
    v59 = 13;
    v60 = 2048;
    v61 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Endpointer feature count should always be %lu, %lu (timeout case), %lu (EEP), or %lu (AEP), instead got %lu", &v50, 0x3Eu);
    v8 = CSLogCategoryEP;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315394;
    v51 = "+[CSEndpointDetectedSelfLogger _decodeFeaturesAtEndpoint:eventType:]";
    v52 = 2112;
    v53 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v50, 0x16u);
  }

LABEL_20:
  v41 = 0;
LABEL_21:

  return v41;
}

+ (void)emitEndpointDetectedEventWithEndpointerMetrics:(id)metrics eventType:(int64_t)type trpId:(id)id mhId:(id)mhId
{
  metricsCopy = metrics;
  idCopy = id;
  mhIdCopy = mhId;
  featuresAtEndpoint = [metricsCopy featuresAtEndpoint];
  v14 = objc_alloc_init(MHSchemaMHEndpointDetected);
  v49 = featuresAtEndpoint;
  typeCopy = type;
  v48 = [self _decodeFeaturesAtEndpoint:featuresAtEndpoint eventType:type];
  [v14 setEndpointFeaturesAtEndpoint:?];
  v15 = objc_alloc_init(MHSchemaMHEndpointerTimeoutMetadata);
  [v15 setIsTimeout:{objc_msgSend(metricsCopy, "isRequestTimeOut")}];
  v47 = v15;
  [v14 setTimeoutMetadata:v15];
  firstAudioSampleSensorTimestamp = [metricsCopy firstAudioSampleSensorTimestamp];
  [metricsCopy blkHepAudioOrigin];
  v18 = v17;
  [metricsCopy vtExtraAudioAtStartInMs];
  v20 = v19;
  isAnchorTimeBuffered = [metricsCopy isAnchorTimeBuffered];
  v21 = objc_alloc_init(SISchemaVersion);
  assetConfigVersion = [metricsCopy assetConfigVersion];
  v23 = [assetConfigVersion componentsSeparatedByString:@"."];

  if ([v23 count] == 2)
  {
    v24 = [v23 objectAtIndexedSubscript:0];
    [v21 setMajor:{objc_msgSend(v24, "intValue")}];

    v25 = [v23 objectAtIndexedSubscript:1];
    [v21 setMinor:{objc_msgSend(v25, "intValue")}];
  }

  v50 = mhIdCopy;
  [v14 setEndpointModelConfigVersion:v21];
  endpointerType = [metricsCopy endpointerType];
  v27 = idCopy;
  if (endpointerType >= 4)
  {
    v29 = +[CSDiagnosticReporter sharedInstance];
    [v29 submitEndpointerIssueReport:kCSDiagnosticReporterEndpointerTypeUndefined];

    v28 = 0;
  }

  else
  {
    v28 = dword_1001AA1E0[endpointerType];
  }

  [v14 setEndpointerType:v28];
  asrFeatureLatencyDistribution = [metricsCopy asrFeatureLatencyDistribution];
  v31 = [CSEndpointLoggingHelper getMHStatisticDistributionInfoFromDictionary:asrFeatureLatencyDistribution withScaleFactor:1000.0];

  [metricsCopy totalAudioRecorded];
  *&v32 = v32;
  [v14 setEndpointAudioDurationInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v32)}];
  [v14 setFirstBufferTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", firstAudioSampleSensorTimestamp)}];
  [v14 setEndpointedBufferTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", objc_msgSend(metricsCopy, "endpointBufferHostTime"))}];
  additionalMetrics = [metricsCopy additionalMetrics];
  v34 = [additionalMetrics objectForKey:@"EndpointerDecisionLagMs"];
  [v34 floatValue];
  [v14 setEndpointerDecisionLagInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:")}];

  additionalMetrics2 = [metricsCopy additionalMetrics];
  v36 = [additionalMetrics2 objectForKey:@"ExtraDelayMs"];
  [v36 floatValue];
  [v14 setExtraDelayInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:")}];

  [v14 setDerivedBufferTimeFromHistoricalAudio:isAnchorTimeBuffered];
  *&v37 = v20;
  [v14 setAudioSkippedDurationInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v37)}];
  *&v38 = v18;
  [v14 setEndpointResetPositionInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v38)}];
  [metricsCopy endpointerThreshold];
  [v14 setEndpointerThreshold:?];
  [metricsCopy endpointerScore];
  [v14 setEndpointerScore:?];
  [v14 setAsrFeatureLatencyDistribution:v31];
  if (v27)
  {
    v39 = [SISchemaUUID alloc];
    v40 = [[NSUUID alloc] initWithUUIDString:v27];
    v41 = [v39 initWithNSUUID:v40];
    [v14 setTrpId:v41];
  }

  if (typeCopy <= 2)
  {
    [v14 setTrpDetectionType:?];
  }

  v42 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:v50];
  [v42 setEndpointDetected:v14];
  v43 = +[AssistantSiriAnalytics sharedStream];
  [v43 emitMessage:v42];

  v44 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v52 = "+[CSEndpointDetectedSelfLogger emitEndpointDetectedEventWithEndpointerMetrics:eventType:trpId:mhId:]";
    v53 = 2112;
    v54 = v50;
    v55 = 2112;
    v56 = v27;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointDetectedEvent to SELF for MH ID: %@, TRP ID: %@", buf, 0x20u);
  }
}

@end