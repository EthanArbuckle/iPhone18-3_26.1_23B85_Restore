@interface CSEndpointAnalyzerBase
- (BOOL)shouldAcceptEagerResultForDurationSync:(double)sync withEndpointerMetrics:(id)metrics;
- (BOOL)shouldProvideTwoShotFeedbackWithRecordContext;
- (CSEndpointAnalyzerBase)init;
- (CSEndpointAnalyzerDelegate)delegate;
- (id)getHybridEndpointerConfigForAsset:(id)asset;
- (id)getSerialQueueWithName:(id)name targetQueue:(id)queue;
- (void)_shouldAcceptEagerResultForDuration:(double)duration asrFeatures:(id)features lastReportedEndpointTimeMs:(double)ms osdFeatures:(id)osdFeatures resultsCompletionHandler:(id)handler;
- (void)handleVoiceTriggerWithActivationInfo:(id)info;
- (void)logFeaturesWithEvent:(id)event locale:(id)locale;
- (void)processASRFeatures:(id)features fromServer:(BOOL)server;
- (void)recordingStoppedForReason:(int64_t)reason;
- (void)shouldAcceptEagerResultForDuration:(double)duration resultsCompletionHandler:(id)handler;
- (void)shouldAcceptEagerResultForDuration:(double)duration withEndpointerMetrics:(id)metrics resultsCompletionHandler:(id)handler;
- (void)stopEndpointer;
- (void)terminateProcessing;
@end

@implementation CSEndpointAnalyzerBase

- (BOOL)shouldProvideTwoShotFeedbackWithRecordContext
{
  isRequestFromTriggerless = [(CSAudioRecordContext *)self->_recordContext isRequestFromTriggerless];
  isGibraltarVoiceTriggered = [(CSAudioRecordContext *)self->_recordContext isGibraltarVoiceTriggered];
  return [(CSAudioRecordContext *)self->_recordContext isVoiceTriggered]& ((isGibraltarVoiceTriggered | isRequestFromTriggerless) ^ 1);
}

- (CSEndpointAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)getHybridEndpointerConfigForAsset:(id)asset
{
  assetCopy = asset;
  if (CSIsHorseman())
  {
    v4 = @"cs_hep_marsh.json";
  }

  else
  {
    v4 = @"cs_hep.json";
  }

  resourcePath = [assetCopy resourcePath];

  v6 = [resourcePath stringByAppendingPathComponent:v4];

  v7 = +[NSFileManager defaultManager];
  LOBYTE(resourcePath) = [v7 fileExistsAtPath:v6];

  if (resourcePath)
  {
    v8 = [NSData dataWithContentsOfFile:v6];
    if (v8)
    {
      v16 = 0;
      v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v16];
      v10 = v16;
      if (v10)
      {
        v11 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = "[CSEndpointAnalyzerBase getHybridEndpointerConfigForAsset:]";
          v19 = 2114;
          v20 = v6;
          v21 = 2114;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Could not decode contents of: %{public}@: err: %{public}@", buf, 0x20u);
        }

        v12 = 0;
      }

      else
      {
        v12 = v9;
      }
    }

    else
    {
      v14 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSEndpointAnalyzerBase getHybridEndpointerConfigForAsset:]";
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Could not read: %{public}@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[CSEndpointAnalyzerBase getHybridEndpointerConfigForAsset:]";
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@ doesnt exist", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)stopEndpointer
{
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointAnalyzerBase stopEndpointer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSEndpointAnalyzerBase *)self terminateProcessing];
}

- (void)terminateProcessing
{
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointAnalyzerBase terminateProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  self->_recordingDidStop = 1;
}

- (void)recordingStoppedForReason:(int64_t)reason
{
  v5 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSEndpointAnalyzerBase recordingStoppedForReason:]";
    v8 = 2050;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s recordingStoppedForReason: %{public}ld", &v6, 0x16u);
  }

  [(CSEndpointAnalyzerBase *)self terminateProcessing];
}

- (void)handleVoiceTriggerWithActivationInfo:(id)info
{
  infoCopy = info;
  stateSerialQueue = self->_stateSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033258;
  v7[3] = &unk_100253C48;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  dispatch_async_and_wait(stateSerialQueue, v7);
}

- (void)logFeaturesWithEvent:(id)event locale:(id)locale
{
  eventCopy = event;
  localeCopy = locale;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003353C;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = eventCopy;
  v13 = localeCopy;
  v9 = localeCopy;
  v10 = eventCopy;
  dispatch_async(stateSerialQueue, block);
}

- (void)_shouldAcceptEagerResultForDuration:(double)duration asrFeatures:(id)features lastReportedEndpointTimeMs:(double)ms osdFeatures:(id)osdFeatures resultsCompletionHandler:(id)handler
{
  featuresCopy = features;
  osdFeaturesCopy = osdFeatures;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_hybridClassifierQueue);
  if (self->_hasAcceptedEagerResult)
  {
    v15 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[CSEndpointAnalyzerBase _shouldAcceptEagerResultForDuration:asrFeatures:lastReportedEndpointTimeMs:osdFeatures:resultsCompletionHandler:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Rejecting RC: Already accepted an earlier RC for this request", buf, 0xCu);
    }

    [NSNumber numberWithDouble:duration];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *v59 = v16;
    v17 = [NSNumber numberWithDouble:ms];
    v59[1] = v17;
    v18 = v59;
LABEL_9:
    v20 = [NSArray arrayWithObjects:v18 count:2];
    handlerCopy[2](handlerCopy, 0, v20);
LABEL_10:

    goto LABEL_11;
  }

  if (self->_disableRCSelection)
  {
    v19 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[CSEndpointAnalyzerBase _shouldAcceptEagerResultForDuration:asrFeatures:lastReportedEndpointTimeMs:osdFeatures:resultsCompletionHandler:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Rejecting RC: ASR is running on-device (full UoD)", buf, 0xCu);
    }

    [NSNumber numberWithDouble:duration];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *v58 = v16;
    v17 = [NSNumber numberWithDouble:ms];
    v58[1] = v17;
    v18 = v58;
    goto LABEL_9;
  }

  v21 = ms - [featuresCopy processedAudioDurationInMilliseconds];
  v22 = ms - duration;
  if (ms - duration < 0.0)
  {
    v23 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v49 = "[CSEndpointAnalyzerBase _shouldAcceptEagerResultForDuration:asrFeatures:lastReportedEndpointTimeMs:osdFeatures:resultsCompletionHandler:]";
      v50 = 2050;
      durationCopy2 = duration;
      v52 = 2050;
      msCopy2 = ms;
      v54 = 2050;
      v55 = v21;
      v56 = 2050;
      v57 = ms - duration;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Accepting RC: RCTime < 0: ASR's processedAudioDuration(%{public}f) > lastReportedEndpointTimeMs(%{public}f): asrFeatureLatency: %{public}f, rcTimeMs: %{public}f", buf, 0x34u);
    }

    [NSNumber numberWithDouble:duration];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *v47 = v16;
    v17 = [NSNumber numberWithDouble:ms];
    v47[1] = v17;
    v20 = [NSArray arrayWithObjects:v47 count:2];
    handlerCopy[2](handlerCopy, 1, v20);
    goto LABEL_10;
  }

  if (v21 < 0.0)
  {
    v24 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v49 = "[CSEndpointAnalyzerBase _shouldAcceptEagerResultForDuration:asrFeatures:lastReportedEndpointTimeMs:osdFeatures:resultsCompletionHandler:]";
      v50 = 2050;
      durationCopy2 = duration;
      v52 = 2050;
      msCopy2 = ms;
      v54 = 2050;
      v55 = v21;
      v56 = 2050;
      v57 = ms - duration;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Rejecting RC: SFLatency < 0: ASR's processedAudioDuration(%{public}f): lastReportedEndpointTimeMs(%{public}f): asrFeatureLatency: %{public}f, rcTimeMs: %{public}f", buf, 0x34u);
    }

    [NSNumber numberWithDouble:duration];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *v46 = v16;
    v17 = [NSNumber numberWithDouble:ms];
    v46[1] = v17;
    v18 = v46;
    goto LABEL_9;
  }

  v25 = [_EAREndpointFeatures alloc];
  wordCount = [featuresCopy wordCount];
  trailingSilenceDuration = [featuresCopy trailingSilenceDuration];
  [featuresCopy eosLikelihood];
  v29 = v28;
  [featuresCopy acousticEndpointerScore];
  v31 = v30;
  pauseCounts = [featuresCopy pauseCounts];
  [featuresCopy silencePosterior];
  v34 = v33;
  [osdFeaturesCopy silenceFramesCountMs];
  v36 = v35;
  [osdFeaturesCopy silenceProbability];
  v38 = v37;
  [osdFeaturesCopy silenceDurationMs];
  *&v40 = v39;
  *&v41 = v21;
  v16 = COERCE_DOUBLE([v25 initWithWordCount:wordCount trailingSilenceDuration:trailingSilenceDuration endOfSentenceLikelihood:pauseCounts acousticEndpointerScore:v22 pauseCounts:v29 silencePosterior:v31 clientSilenceFramesCountMs:v34 clientSilenceProbability:v36 silencePosteriorNF:v38 serverFeaturesLatency:v40 eagerResultEndTime:v41]);

  hybridClassifier = self->_hybridClassifier;
  v45 = 0;
  v43 = [(_EAREndpointer *)hybridClassifier acceptEagerResultWithFeatures:*&v16 featuresToLog:&v45];
  v17 = v45;
  v44 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v49 = "[CSEndpointAnalyzerBase _shouldAcceptEagerResultForDuration:asrFeatures:lastReportedEndpointTimeMs:osdFeatures:resultsCompletionHandler:]";
    v50 = 2114;
    durationCopy2 = v16;
    v52 = 1026;
    LODWORD(msCopy2) = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s rcEpFeatures: %{public}@ shouldAccept: %{public}d", buf, 0x1Cu);
  }

  (handlerCopy)[2](handlerCopy, v43, v17);
  self->_hasAcceptedEagerResult = v43;
LABEL_11:
}

- (void)shouldAcceptEagerResultForDuration:(double)duration resultsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100033868;
  v15[4] = sub_100033878;
  v16 = 0;
  asrFeaturesQueue = self->_asrFeaturesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003424C;
  block[3] = &unk_100253BD0;
  block[4] = self;
  block[5] = v15;
  dispatch_async_and_wait(asrFeaturesQueue, block);
  hybridClassifierQueue = self->_hybridClassifierQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034260;
  v10[3] = &unk_10024EBA8;
  durationCopy = duration;
  v11 = handlerCopy;
  v12 = v15;
  v10[4] = self;
  v9 = handlerCopy;
  dispatch_async(hybridClassifierQueue, v10);

  _Block_object_dispose(v15, 8);
}

- (void)shouldAcceptEagerResultForDuration:(double)duration withEndpointerMetrics:(id)metrics resultsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  metricsCopy = metrics;
  [metricsCopy totalAudioRecorded];
  v11 = v10;
  asrFeaturesAtEndpoint = [metricsCopy asrFeaturesAtEndpoint];
  osdFeaturesAtEndpoint = [metricsCopy osdFeaturesAtEndpoint];

  hybridClassifierQueue = self->_hybridClassifierQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000343A4;
  v18[3] = &unk_100250158;
  v18[4] = self;
  v19 = asrFeaturesAtEndpoint;
  durationCopy = duration;
  v23 = v11;
  v20 = osdFeaturesAtEndpoint;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = osdFeaturesAtEndpoint;
  v17 = asrFeaturesAtEndpoint;
  dispatch_async(hybridClassifierQueue, v18);
}

- (BOOL)shouldAcceptEagerResultForDurationSync:(double)sync withEndpointerMetrics:(id)metrics
{
  metricsCopy = metrics;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  [metricsCopy totalAudioRecorded];
  v8 = v7;
  asrFeaturesAtEndpoint = [metricsCopy asrFeaturesAtEndpoint];
  osdFeaturesAtEndpoint = [metricsCopy osdFeaturesAtEndpoint];
  hybridClassifierQueue = self->_hybridClassifierQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034500;
  v15[3] = &unk_10024EB80;
  v15[4] = self;
  v16 = asrFeaturesAtEndpoint;
  syncCopy = sync;
  v20 = v8;
  v17 = osdFeaturesAtEndpoint;
  v18 = &v21;
  v12 = osdFeaturesAtEndpoint;
  v13 = asrFeaturesAtEndpoint;
  dispatch_async_and_wait(hybridClassifierQueue, v15);
  LOBYTE(hybridClassifierQueue) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return hybridClassifierQueue;
}

- (void)processASRFeatures:(id)features fromServer:(BOOL)server
{
  featuresCopy = features;
  v7 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CSEndpointAnalyzerBase processASRFeatures:fromServer:]";
    *&buf[12] = 2114;
    *&buf[14] = featuresCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s EARSPG: CSASRFeatures: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v16 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034784;
  block[3] = &unk_100253BD0;
  block[4] = self;
  block[5] = buf;
  dispatch_async_and_wait(stateSerialQueue, block);
  processedAudioDurationInMilliseconds = [featuresCopy processedAudioDurationInMilliseconds];
  if (*(*&buf[8] + 24) <= processedAudioDurationInMilliseconds)
  {
    asrFeaturesQueue = self->_asrFeaturesQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034798;
    v11[3] = &unk_100253900;
    v11[4] = self;
    serverCopy = server;
    v12 = featuresCopy;
    dispatch_async(asrFeaturesQueue, v11);
  }

  _Block_object_dispose(buf, 8);
}

- (id)getSerialQueueWithName:(id)name targetQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v6 = dispatch_queue_create_with_target_V2([name UTF8String], 0, queueCopy);
  }

  else
  {
    v6 = [CSUtils getSerialQueueWithQOS:33 name:name fixedPriority:kCSDefaultSerialQueueFixedPriority];
  }

  v7 = v6;

  return v7;
}

- (CSEndpointAnalyzerBase)init
{
  v27.receiver = self;
  v27.super_class = CSEndpointAnalyzerBase;
  v2 = [(CSEndpointAnalyzerBase *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v2->_didCommunicateEndpoint = 0;
    v2->_speechEndpointDetected = 0;
    v2->_recordingDidStop = 0;
    v2->_lastEndpointPosterior = 0.0;
    if ((+[CSUtils supportsDispatchWorkloop]& 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = [CSUtils rootQueueWithFixedPriority:kCSDefaultSerialQueueFixedPriority];
    }

    targetQueue = v3->_targetQueue;
    v3->_targetQueue = v4;

    v6 = [objc_opt_class() description];
    lowercaseString = [v6 lowercaseString];
    v8 = [NSString stringWithFormat:@"com.apple.cs.%@.stateserialqueue", lowercaseString];

    v9 = [(CSEndpointAnalyzerBase *)v3 getSerialQueueWithName:v8 targetQueue:v3->_targetQueue];
    stateSerialQueue = v3->_stateSerialQueue;
    v3->_stateSerialQueue = v9;

    v11 = [objc_opt_class() description];
    lowercaseString2 = [v11 lowercaseString];
    v13 = [NSString stringWithFormat:@"com.apple.cs.%@.asrFeaturesQueue", lowercaseString2];

    v14 = [(CSEndpointAnalyzerBase *)v3 getSerialQueueWithName:v13 targetQueue:v3->_targetQueue];
    asrFeaturesQueue = v3->_asrFeaturesQueue;
    v3->_asrFeaturesQueue = v14;

    v16 = [objc_opt_class() description];
    lowercaseString3 = [v16 lowercaseString];
    v18 = [NSString stringWithFormat:@"com.apple.cs.%@.hybridClassifierfQueue", lowercaseString3];

    v19 = [(CSEndpointAnalyzerBase *)v3 getSerialQueueWithName:v18 targetQueue:v3->_targetQueue];
    hybridClassifierQueue = v3->_hybridClassifierQueue;
    v3->_hybridClassifierQueue = v19;

    +[CSConfig inputRecordingSampleRate];
    v3->_currentRequestSampleRate = v21;
    v22 = +[CSASRFeatures initialASRFeatures];
    lastKnownASRFeatures = v3->_lastKnownASRFeatures;
    v3->_lastKnownASRFeatures = v22;

    v3->_lastKnownASRFeatureLatency = -0.01;
    v3->_epResult = 0;
    v24 = [[OSDFeatures alloc] initWithSilenceFramesCountMs:0.0 silenceProbability:0.0 silenceDurationMs:0.0 processedAudioMs:0.0];
    lastKnownOSDFeatures = v3->_lastKnownOSDFeatures;
    v3->_lastKnownOSDFeatures = v24;

    *&v3->_clientLagThresholdMs = xmmword_1001AA130;
    v3->_useDefaultASRFeaturesOnClientLag = 1;
    *&v3->_hasAcceptedEagerResult = 0;
  }

  return v3;
}

@end