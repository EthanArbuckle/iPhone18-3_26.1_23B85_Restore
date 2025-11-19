@interface CSAttSiriBridgeMessageHandler
- (CSAttSiriBridgeMessageHandler)initWithSpeechRecognitionNode:(id)a3 tcuGenerator:(id)a4 supportTCU:(BOOL)a5;
- (void)assetUpdatedRequired;
- (void)attSiriNode:(id)a3 didDetectEndpointEventAtTime:(double)a4 eventType:(int64_t)a5 withMetrics:(id)a6 usesAutomaticEndpointing:(BOOL)a7;
- (void)didCompleteRecognitionTaskWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6;
- (void)didGenerateContinuityEnd:(id)a3;
- (void)didGenerateMultiUserTRPCandidatePackage:(id)a3;
- (void)didGenerateTRPCandidatePackage:(id)a3;
- (void)didGenerateTRPDetector:(id)a3;
- (void)didReceiveFinalResultCandidateWithRequestId:(id)a3 speechPackage:(id)a4;
- (void)didReceiveFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5 taskName:(id)a6;
- (void)didReceiveFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 taskName:(id)a5;
- (void)didReceivePartialResultPackageWithRequestId:(id)a3 language:(id)a4 package:(id)a5 metadata:(id)a6;
- (void)didReceivePartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5;
- (void)didReceivePartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5 metadata:(id)a6;
- (void)didReceiveResultCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 inputOrigin:(id)a5 speechPackage:(id)a6 duration:(double)a7 taskName:(id)a8;
- (void)didReceiveResultCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6 metadata:(id)a7 taskName:(id)a8;
- (void)didReceiveVoiceCommandCandidateWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5;
- (void)disableLocalSpeechRecognitionForRequestId:(id)a3;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4;
- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4;
- (void)updateTCUState:(id)a3;
- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11;
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

  v4 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  [v4 notifyClientsWithBlock:&stru_100253BA8];
}

- (void)attSiriNode:(id)a3 didDetectEndpointEventAtTime:(double)a4 eventType:(int64_t)a5 withMetrics:(id)a6 usesAutomaticEndpointing:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a6;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[CSAttSiriBridgeMessageHandler attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    v24 = 2050;
    v25 = a4;
    v26 = 2050;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didDetectEndpointEventAtTime : %{public}f didDetectEndpointEventType:%{public}ld", buf, 0x20u);
  }

  if (!v7)
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
  if (a5 != 2)
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

  v17 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016C2F8;
  v21[3] = &unk_100253B68;
  *&v21[4] = a4;
  [v17 notifyClientsWithBlock:v21];

LABEL_13:
}

- (void)didGenerateContinuityEnd:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateContinuityEnd:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateContinuityEnd : %{public}@", buf, 0x16u);
  }

  v6 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C44C;
  v8[3] = &unk_100253B48;
  v9 = v4;
  v7 = v4;
  [v6 notifyClientsWithBlock:v8];
}

- (void)didGenerateMultiUserTRPCandidatePackage:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateMultiUserTRPCandidatePackage:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateMultiUserTRPDetector : %{public}@", buf, 0x16u);
  }

  v6 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C59C;
  v8[3] = &unk_100253B48;
  v9 = v4;
  v7 = v4;
  [v6 notifyClientsWithBlock:v8];
}

- (void)didGenerateTRPDetector:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateTRPDetector:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateTRPDetector : %{public}@", buf, 0x16u);
  }

  v6 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C6EC;
  v8[3] = &unk_100253B48;
  v9 = v4;
  v7 = v4;
  [v6 notifyClientsWithBlock:v8];
}

- (void)didGenerateTRPCandidatePackage:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttSiriBridgeMessageHandler didGenerateTRPCandidatePackage:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didGenerateTRPCandidate : %{public}@", buf, 0x16u);
  }

  v6 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016C83C;
  v8[3] = &unk_100253B48;
  v9 = v4;
  v7 = v4;
  [v6 notifyClientsWithBlock:v8];
}

- (void)didCompleteRecognitionTaskWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "[CSAttSiriBridgeMessageHandler didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    v29 = 1024;
    v30 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "KeyLog - %s didCompleteRecognitionWithStatistics : %@, %{public}@, %d", buf, 0x26u);
  }

  v14 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10016C9F4;
  v18[3] = &unk_100253B20;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v14 notifyClientsWithBlock:v18];
}

- (void)didReceivePartialResultPackageWithRequestId:(id)a3 language:(id)a4 package:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v26 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultPackageWithRequestId:language:package:metadata:]";
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@, %@, %@", buf, 0x34u);
  }

  v15 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016CBD0;
  v20[3] = &unk_100253AF8;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v15 notifyClientsWithBlock:v20];
}

- (void)didReceivePartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultWithRequestId:language:tokens:metadata:]";
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@, %@", buf, 0x2Au);
  }

  v15 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016CDA4;
  v20[3] = &unk_100253AF8;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v15 notifyClientsWithBlock:v20];
}

- (void)didReceivePartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriBridgeMessageHandler didReceivePartialResultWithRequestId:language:tokens:]";
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceivePartialResultWithRequestId : %{public}@, %{public}@", buf, 0x20u);
  }

  v12 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016CF4C;
  v16[3] = &unk_100253AA8;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 notifyClientsWithBlock:v16];
}

- (void)didReceiveFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5 taskName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultWithRequestId:speechPackage:metadata:taskName:]";
    v25 = 2114;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultWithRequestId : %{public}@, %@, %@, %@", buf, 0x34u);
  }

  v15 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10016D118;
  v19[3] = &unk_100253AA8;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v15 notifyClientsWithBlock:v19];
}

- (void)didReceiveFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 taskName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultWithRequestId:speechPackage:taskName:]";
    v20 = 2114;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultWithRequestId : %{public}@, %@, %@", buf, 0x2Au);
  }

  v12 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016D2B8;
  v15[3] = &unk_100253AD0;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 notifyClientsWithBlock:v15];
}

- (void)didReceiveFinalResultCandidateWithRequestId:(id)a3 speechPackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[CSAttSiriBridgeMessageHandler didReceiveFinalResultCandidateWithRequestId:speechPackage:]";
    v17 = 2114;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s didReceiveFinalResultCandidateWithRequestId : %{public}@, %@", buf, 0x20u);
  }

  v9 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016D434;
  v12[3] = &unk_100253AD0;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 notifyClientsWithBlock:v12];
}

- (void)didReceiveVoiceCommandCandidateWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[CSAttSiriBridgeMessageHandler didReceiveVoiceCommandCandidateWithRequestId:speechPackage:metadata:]";
    v22 = 2114;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s didReceiveVoiceCommandCandidateWithRequestId : %{public}@, %@", buf, 0x20u);
  }

  v12 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016D5DC;
  v16[3] = &unk_100253AA8;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 notifyClientsWithBlock:v16];
}

- (void)didReceiveResultCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6 metadata:(id)a7 taskName:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v28 = "[CSAttSiriBridgeMessageHandler didReceiveResultCandidateWithRequestId:rcId:speechPackage:duration:metadata:taskName:]";
    v29 = 2114;
    v30 = v13;
    v31 = 1024;
    v32 = a4;
    v33 = 2112;
    v34 = v14;
    v35 = 2048;
    v36 = a6;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s didReceiveResultCandidateWithRequestId : %{public}@, %d, %@, %f, %@", buf, 0x3Au);
  }

  v17 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10016D7BC;
  v21[3] = &unk_100253A80;
  v22 = v13;
  v23 = v14;
  v26 = a6;
  v24 = v15;
  v25 = a4;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  [v17 notifyClientsWithBlock:v21];
}

- (void)didReceiveResultCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 inputOrigin:(id)a5 speechPackage:(id)a6 duration:(double)a7 taskName:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (([v17 isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskVoiceMail) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskWebSearch))
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
    v28 = v14;
    v29 = 1024;
    v30 = a4;
    v31 = 2114;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2048;
    v36 = a7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s didReceiveResultCandidateWithRequestId : %{public}@ %d, %{public}@, %@, %f", buf, 0x3Au);
  }

  v19 = [(CSAttSiriBridgeMessageHandler *)self localSRBridgeListener];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016DA18;
  v20[3] = &unk_100253A58;
  v21 = v14;
  v23 = a4;
  v22 = v16;
  v24 = a7;
  [v19 notifyClientsWithBlock:v20];

LABEL_9:
}

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriBridgeMessageHandler sendVisualContextAndCorrectionsInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode sendVisualContextAndCorrectionsInfo:v6 interactionIdentifier:v7];
}

- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSAttSiriBridgeMessageHandler trpCandidateReadyForExecutionForRequestId:withTrpId:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s trpCandidate ready for execution for:%@, %@", &v9, 0x20u);
  }

  [(CSAttSiriTCUGenerator *)self->_tcuGenerator processReadyForExecutionForRequestId:v6 withTrpId:v7];
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CSAttSiriBridgeMessageHandler sendSpeechCorrectionInfo:interactionIdentifier:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Send speech correctioninfo : %@, %@", &v9, 0x20u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode sendSpeechCorrectionInfo:v6 interactionIdentifier:v7];
}

- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[CSAttSiriBridgeMessageHandler updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s Update voice command context with id: %{public}@", buf, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode updateVoiceCommandContextWithRequestId:v16 prefixText:v17 postfixText:v18 selectedText:v19 disambiguationActive:v20 cursorInVisibleText:v21 favorCommandSuppression:v22 abortCommandSuppression:v23 undoEvent:v24];
}

- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSAttSiriBridgeMessageHandler resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Resume local recognition request id: %{public}@", &v15, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode resumeLocalRecognitionWithRequestId:v10 prefixText:v11 postfixText:v12 selectedText:v13];
}

- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler pauseLocalSpeechRecognitionForRequestId:]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Pause local speech recognition for requestId: %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode pauseLocalSpeechRecognitionForRequestId:v4];
}

- (void)disableLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler disableLocalSpeechRecognitionForRequestId:]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s disable local speech recognition for request : %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode disableLocalSpeechRecognitionForRequestId:v4];
}

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSAttSiriBridgeMessageHandler preheatLocalSpeechRecognitionWithLanguage:source:]";
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s preheat local speech recognition : %{public}@ %d", &v8, 0x1Cu);
  }

  [(CSAttSiriSpeechRecognitionNode *)self->_speechRecognitionNode preheatWithLanguage:v6 source:0 shouldDownloadMissingAsset:1];
}

- (void)updateTCUState:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriBridgeMessageHandler updateTCUState:]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Update TCU State : %{public}@", &v6, 0x16u);
  }

  [(CSAttSiriTCUGenerator *)self->_tcuGenerator processTCUUpdateMessage:v4];
}

- (CSAttSiriBridgeMessageHandler)initWithSpeechRecognitionNode:(id)a3 tcuGenerator:(id)a4 supportTCU:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CSAttSiriBridgeMessageHandler;
  v11 = [(CSAttSiriBridgeMessageHandler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_speechRecognitionNode, a3);
    objc_storeStrong(&v12->_tcuGenerator, a4);
    v12->_supportTCU = a5;
  }

  return v12;
}

@end