@interface CSAttSiriBridgeMessageHandler
- (CSAttSiriBridgeMessageHandler)initWithSpeechRecognitionNode:(id)node tcuGenerator:(id)generator supportTCU:(BOOL)u;
- (void)assetUpdatedRequired;
- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)didGenerateContinuityEnd:(id)end;
- (void)didGenerateMultiUserTRPCandidatePackage:(id)package;
- (void)didGenerateTRPCandidatePackage:(id)package;
- (void)didGenerateTRPDetector:(id)detector;
- (void)didReceiveFinalResultCandidateWithRequestId:(id)id speechPackage:(id)package;
- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata taskName:(id)name;
- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package taskName:(id)name;
- (void)didReceivePartialResultPackageWithRequestId:(id)id language:(id)language package:(id)package metadata:(id)metadata;
- (void)didReceivePartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens;
- (void)didReceivePartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata;
- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId inputOrigin:(id)origin speechPackage:(id)package duration:(double)duration taskName:(id)name;
- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata taskName:(id)name;
- (void)didReceiveVoiceCommandCandidateWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata;
- (void)disableLocalSpeechRecognitionForRequestId:(id)id;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)id;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source;
- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId;
- (void)updateTCUState:(id)state;
- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1;
@end

@implementation CSAttSiriBridgeMessageHandler

- (void)assetUpdatedRequired
{
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriBridgeMessageHandler assetUpdatedRequired]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Sending asset download prompt", &v5, 0xCu);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  [localSRBridgeListener notifyClientsWithBlock:&stru_100253BA8];
}

- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  endpointingCopy = endpointing;
  nodeCopy = node;
  metricsCopy = metrics;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[CSAttSiriBridgeMessageHandler attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    v24 = 2050;
    timeCopy = time;
    v26 = 2050;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didDetectEndpointEventAtTime : %{public}f didDetectEndpointEventType:%{public}ld", buf, 0x20u);
  }

  if (!endpointingCopy)
  {
    v18 = CSLogCategoryRequest;
    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v23 = "[CSAttSiriBridgeMessageHandler attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    v19 = "%s Not sending localSpeechServiceDidDetectedFinalEndpoint due to using manual endpointing.";
    v20 = v18;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_13;
  }

  v15 = CSLogCategoryRequest;
  v16 = os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT);
  if (type != 2)
  {
    if (!v16)
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v23 = "[CSAttSiriBridgeMessageHandler attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    v19 = "%s Not sending localSpeechServiceDidDetectedFinalEndpoint due to only receiving default endpoint event.";
    v20 = v15;
    goto LABEL_12;
  }

  if (v16)
  {
    *buf = 136315138;
    v23 = "[CSAttSiriBridgeMessageHandler attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Report Endpoint", buf, 0xCu);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016C2F8;
  v21[3] = &unk_100253B68;
  *&v21[4] = time;
  [localSRBridgeListener notifyClientsWithBlock:v21];

LABEL_13:
}

- (void)didGenerateContinuityEnd:(id)end
{
  endCopy = end;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateContinuityEnd:]";
    v12 = 2114;
    v13 = endCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateContinuityEnd : %{public}@", buf, 0x16u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C44C;
  v8[3] = &unk_100253B48;
  v9 = endCopy;
  v7 = endCopy;
  [localSRBridgeListener notifyClientsWithBlock:v8];
}

- (void)didGenerateMultiUserTRPCandidatePackage:(id)package
{
  packageCopy = package;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateMultiUserTRPCandidatePackage:]";
    v12 = 2114;
    v13 = packageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateMultiUserTRPDetector : %{public}@", buf, 0x16u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C59C;
  v8[3] = &unk_100253B48;
  v9 = packageCopy;
  v7 = packageCopy;
  [localSRBridgeListener notifyClientsWithBlock:v8];
}

- (void)didGenerateTRPDetector:(id)detector
{
  detectorCopy = detector;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateTRPDetector:]";
    v12 = 2114;
    v13 = detectorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateTRPDetector : %{public}@", buf, 0x16u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C6EC;
  v8[3] = &unk_100253B48;
  v9 = detectorCopy;
  v7 = detectorCopy;
  [localSRBridgeListener notifyClientsWithBlock:v8];
}

- (void)didGenerateTRPCandidatePackage:(id)package
{
  packageCopy = package;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateTRPCandidatePackage:]";
    v12 = 2114;
    v13 = packageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateTRPCandidate : %{public}@", buf, 0x16u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C83C;
  v8[3] = &unk_100253B48;
  v9 = packageCopy;
  v7 = packageCopy;
  [localSRBridgeListener notifyClientsWithBlock:v8];
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  statisticsCopy = statistics;
  idCopy = id;
  errorCopy = error;
  v13 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "[CSAttSiriBridgeMessageHandler didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]";
    v25 = 2112;
    v26 = statisticsCopy;
    v27 = 2114;
    v28 = idCopy;
    v29 = 1024;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didCompleteRecognitionWithStatistics : %@, %{public}@, %d", buf, 0x26u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10016C9F4;
  v18[3] = &unk_100253B20;
  v19 = statisticsCopy;
  v20 = idCopy;
  v21 = errorCopy;
  modeCopy2 = mode;
  v15 = errorCopy;
  v16 = idCopy;
  v17 = statisticsCopy;
  [localSRBridgeListener notifyClientsWithBlock:v18];
}

- (void)didReceivePartialResultPackageWithRequestId:(id)id language:(id)language package:(id)package metadata:(id)metadata
{
  idCopy = id;
  languageCopy = language;
  packageCopy = package;
  metadataCopy = metadata;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v26 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultPackageWithRequestId:language:package:metadata:]";
    v27 = 2114;
    v28 = idCopy;
    v29 = 2114;
    v30 = languageCopy;
    v31 = 2112;
    v32 = packageCopy;
    v33 = 2112;
    v34 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@, %@, %@", buf, 0x34u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016CBD0;
  v20[3] = &unk_100253AF8;
  v21 = idCopy;
  v22 = languageCopy;
  v23 = packageCopy;
  v24 = metadataCopy;
  v16 = metadataCopy;
  v17 = packageCopy;
  v18 = languageCopy;
  v19 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v20];
}

- (void)didReceivePartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata
{
  idCopy = id;
  languageCopy = language;
  tokensCopy = tokens;
  metadataCopy = metadata;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultWithRequestId:language:tokens:metadata:]";
    v27 = 2114;
    v28 = idCopy;
    v29 = 2114;
    v30 = languageCopy;
    v31 = 2112;
    v32 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@, %@", buf, 0x2Au);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016CDA4;
  v20[3] = &unk_100253AF8;
  v21 = idCopy;
  v22 = languageCopy;
  v23 = tokensCopy;
  v24 = metadataCopy;
  v16 = metadataCopy;
  v17 = tokensCopy;
  v18 = languageCopy;
  v19 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v20];
}

- (void)didReceivePartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens
{
  idCopy = id;
  languageCopy = language;
  tokensCopy = tokens;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultWithRequestId:language:tokens:]";
    v22 = 2114;
    v23 = idCopy;
    v24 = 2114;
    v25 = languageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@", buf, 0x20u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016CF4C;
  v16[3] = &unk_100253AA8;
  v17 = idCopy;
  v18 = languageCopy;
  v19 = tokensCopy;
  v13 = tokensCopy;
  v14 = languageCopy;
  v15 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v16];
}

- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata taskName:(id)name
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  nameCopy = name;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultWithRequestId:speechPackage:metadata:taskName:]";
    v25 = 2114;
    v26 = idCopy;
    v27 = 2112;
    v28 = packageCopy;
    v29 = 2112;
    v30 = metadataCopy;
    v31 = 2112;
    v32 = nameCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultWithRequestId : %{public}@, %@, %@, %@", buf, 0x34u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10016D118;
  v19[3] = &unk_100253AA8;
  v20 = idCopy;
  v21 = packageCopy;
  v22 = metadataCopy;
  v16 = metadataCopy;
  v17 = packageCopy;
  v18 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v19];
}

- (void)didReceiveFinalResultWithRequestId:(id)id speechPackage:(id)package taskName:(id)name
{
  idCopy = id;
  packageCopy = package;
  nameCopy = name;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultWithRequestId:speechPackage:taskName:]";
    v20 = 2114;
    v21 = idCopy;
    v22 = 2112;
    v23 = packageCopy;
    v24 = 2112;
    v25 = nameCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultWithRequestId : %{public}@, %@, %@", buf, 0x2Au);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016D2B8;
  v15[3] = &unk_100253AD0;
  v16 = idCopy;
  v17 = packageCopy;
  v13 = packageCopy;
  v14 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v15];
}

- (void)didReceiveFinalResultCandidateWithRequestId:(id)id speechPackage:(id)package
{
  idCopy = id;
  packageCopy = package;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultCandidateWithRequestId:speechPackage:]";
    v17 = 2114;
    v18 = idCopy;
    v19 = 2112;
    v20 = packageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultCandidateWithRequestId : %{public}@, %@", buf, 0x20u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016D434;
  v12[3] = &unk_100253AD0;
  v13 = idCopy;
  v14 = packageCopy;
  v10 = packageCopy;
  v11 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v12];
}

- (void)didReceiveVoiceCommandCandidateWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriBridgeMessageHandler didReceiveVoiceCommandCandidateWithRequestId:speechPackage:metadata:]";
    v22 = 2114;
    v23 = idCopy;
    v24 = 2112;
    v25 = packageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceiveVoiceCommandCandidateWithRequestId : %{public}@, %@", buf, 0x20u);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016D5DC;
  v16[3] = &unk_100253AA8;
  v17 = idCopy;
  v18 = packageCopy;
  v19 = metadataCopy;
  v13 = metadataCopy;
  v14 = packageCopy;
  v15 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v16];
}

- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata taskName:(id)name
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  v16 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v28 = "[CSAttSiriBridgeMessageHandler didReceiveResultCandidateWithRequestId:rcId:speechPackage:duration:metadata:taskName:]";
    v29 = 2114;
    v30 = idCopy;
    v31 = 1024;
    rcIdCopy = rcId;
    v33 = 2112;
    v34 = packageCopy;
    v35 = 2048;
    durationCopy = duration;
    v37 = 2112;
    v38 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s didReceiveResultCandidateWithRequestId : %{public}@, %d, %@, %f, %@", buf, 0x3Au);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016D7BC;
  v21[3] = &unk_100253A80;
  v22 = idCopy;
  v23 = packageCopy;
  durationCopy2 = duration;
  v24 = metadataCopy;
  rcIdCopy2 = rcId;
  v18 = metadataCopy;
  v19 = packageCopy;
  v20 = idCopy;
  [localSRBridgeListener notifyClientsWithBlock:v21];
}

- (void)didReceiveResultCandidateWithRequestId:(id)id rcId:(unint64_t)rcId inputOrigin:(id)origin speechPackage:(id)package duration:(double)duration taskName:(id)name
{
  idCopy = id;
  originCopy = origin;
  packageCopy = package;
  nameCopy = name;
  if (([nameCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation) & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskVoiceMail) & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskWebSearch))
  {
    [(CSAttSiriBridgeMessageHandler *)self supportTCU];
  }

  else if ([(CSAttSiriBridgeMessageHandler *)self supportTCU])
  {
    goto LABEL_9;
  }

  v18 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v26 = "[CSAttSiriBridgeMessageHandler didReceiveResultCandidateWithRequestId:rcId:inputOrigin:speechPackage:duration:taskName:]";
    v27 = 2114;
    v28 = idCopy;
    v29 = 1024;
    rcIdCopy = rcId;
    v31 = 2114;
    v32 = originCopy;
    v33 = 2112;
    v34 = packageCopy;
    v35 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s didReceiveResultCandidateWithRequestId : %{public}@ %d, %{public}@, %@, %f", buf, 0x3Au);
  }

  localSRBridgeListener = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016DA18;
  v20[3] = &unk_100253A58;
  v21 = idCopy;
  rcIdCopy2 = rcId;
  v22 = packageCopy;
  durationCopy2 = duration;
  [localSRBridgeListener notifyClientsWithBlock:v20];

LABEL_9:
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriBridgeMessageHandler sendVisualContextAndCorrectionsInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode sendVisualContextAndCorrectionsInfo:infoCopy interactionIdentifier:identifierCopy];
}

- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId
{
  idCopy = id;
  trpIdCopy = trpId;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSAttSiriBridgeMessageHandler trpCandidateReadyForExecutionForRequestId:withTrpId:]";
    v11 = 2112;
    v12 = idCopy;
    v13 = 2112;
    v14 = trpIdCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s trpCandidate ready for execution for:%@, %@", &v9, 0x20u);
  }

  [(CSAttSiriTCUGenerator *)self->_tcuGenerator processReadyForExecutionForRequestId:idCopy withTrpId:trpIdCopy];
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSAttSiriBridgeMessageHandler sendSpeechCorrectionInfo:interactionIdentifier:]";
    v11 = 2112;
    v12 = infoCopy;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Send speech correctioninfo : %@, %@", &v9, 0x20u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode sendSpeechCorrectionInfo:infoCopy interactionIdentifier:identifierCopy];
}

- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  v25 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[CSAttSiriBridgeMessageHandler updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v29 = 2114;
    v30 = idCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Update voice command context with id: %{public}@", buf, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode updateVoiceCommandContextWithRequestId:idCopy prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy undoEvent:eventCopy];
}

- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSAttSiriBridgeMessageHandler resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v17 = 2114;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Resume local recognition request id: %{public}@", &v15, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode resumeLocalRecognitionWithRequestId:idCopy prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy];
}

- (void)pauseLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler pauseLocalSpeechRecognitionForRequestId:]";
    v8 = 2114;
    v9 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Pause local speech recognition for requestId: %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode pauseLocalSpeechRecognitionForRequestId:idCopy];
}

- (void)disableLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler disableLocalSpeechRecognitionForRequestId:]";
    v8 = 2114;
    v9 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s disable local speech recognition for request : %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode disableLocalSpeechRecognitionForRequestId:idCopy];
}

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source
{
  sourceCopy = source;
  languageCopy = language;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSAttSiriBridgeMessageHandler preheatLocalSpeechRecognitionWithLanguage:source:]";
    v10 = 2114;
    v11 = languageCopy;
    v12 = 1024;
    v13 = sourceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s preheat local speech recognition : %{public}@ %d", &v8, 0x1Cu);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode preheatWithLanguage:languageCopy source:0 shouldDownloadMissingAsset:1];
}

- (void)updateTCUState:(id)state
{
  stateCopy = state;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler updateTCUState:]";
    v8 = 2114;
    v9 = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Update TCU State : %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriTCUGenerator *)self->_tcuGenerator processTCUUpdateMessage:stateCopy];
}

- (CSAttSiriBridgeMessageHandler)initWithSpeechRecognitionNode:(id)node tcuGenerator:(id)generator supportTCU:(BOOL)u
{
  nodeCopy = node;
  generatorCopy = generator;
  v14.receiver = self;
  v14.super_class = CSAttSiriBridgeMessageHandler;
  v11 = [(CSAttSiriBridgeMessageHandler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_speechRecognitionNode, node);
    objc_storeStrong(&v12->_tcuGenerator, generator);
    v12->_supportTCU = u;
  }

  return v12;
}

@end