@interface CSHybridEndpointAnalyzer
- (BOOL)_isTaskStringAccessible:(id)a3;
- (BOOL)_updateAccessibleEndpointerThresholdIfNeeded;
- (CSHybridEndpointAnalyzer)init;
- (id)delegate;
- (id)endpointerModelVersion;
- (int64_t)fetchCurrentEndpointerOperationMode;
- (void)_generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:(double)a3 osdFeatures:(id)a4 completion:(id)a5;
- (void)_processEnhancedEndpointerTaskString:(id)a3;
- (void)_readParametersFromHEPAsset:(id)a3;
- (void)_swapEnhancedEndpointerModelForTaskString:(id)a3;
- (void)_updateCurrentAsset:(id)a3;
- (void)_updateEndpointerDelayedTrigger:(BOOL)a3;
- (void)_updateEndpointerDelayedTriggerByMhId:(id)a3;
- (void)_updateEndpointerThreshold:(float)a3;
- (void)_updateEnhancedEndpointerDefaultThresholdPartial:(float)a3 defaultThresholdRC:(float)a4 relaxedThresholdPartial:(float)a5 relaxedThresholdRC:(float)a6;
- (void)endpointerAssetManagerDidUpdateAsset:(id)a3;
- (void)logAnchorMachAbsTime:(unint64_t)a3 numSamplesProcessedBeforeAnchorTime:(unint64_t)a4 isAnchorTimeBuffered:(BOOL)a5 audioDeliveryHostTimeDelta:(unint64_t)a6;
- (void)processFirstAudioPacketTimestamp:(id)a3 firstAudioSampleSensorTimestamp:(unint64_t)a4;
- (void)processOSDFeatures:(id)a3 withFrameDurationMs:(double)a4 withMHID:(id)a5;
- (void)processRCFeatures:(id)a3;
- (void)processTaskString:(id)a3;
- (void)resetForNewRequestWithSampleRate:(unint64_t)a3 recordContext:(id)a4 recordOption:(id)a5 voiceTriggerInfo:(id)a6;
- (void)setEndpointerOperationMode:(int64_t)a3;
- (void)setMhId:(id)a3;
- (void)terminateProcessing;
- (void)updateEndpointerThreshold:(float)a3;
@end

@implementation CSHybridEndpointAnalyzer

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_updateAccessibleEndpointerThresholdIfNeeded
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 accessibleEndpointerThreshold];

  if (v4 == 2)
  {
    v5 = @"accessible-extended";
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = @"accessible-maximum";
LABEL_5:
    [(CSHybridEndpointAnalyzer *)self processTaskString:v5];
    return 1;
  }

  return 0;
}

- (void)processRCFeatures:(id)a3
{
  v4 = a3;
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE4BC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(hybridClassifierQueue, v7);
}

- (void)endpointerAssetManagerDidUpdateAsset:(id)a3
{
  v4 = a3;
  stateSerialQueue = self->super._stateSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE684;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateSerialQueue, v7);
}

- (void)_readParametersFromHEPAsset:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->super._stateSerialQueue);
  asrFeaturesQueue = self->super._asrFeaturesQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE73C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(asrFeaturesQueue, v7);
}

- (void)resetForNewRequestWithSampleRate:(unint64_t)a3 recordContext:(id)a4 recordOption:(id)a5 voiceTriggerInfo:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  kdebug_trace();
  self->super._recordingDidStop = 0;
  v13 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 136315906;
    *&buf[4] = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2114;
    v42 = v10;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = [v11 disableRCSelection];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s sampleRate=%{public}lu, recordContext=%{public}@, disableRCSelection=%d", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_1000DEFA0;
  v43 = sub_1000DEFB0;
  v44 = 0;
  stateSerialQueue = self->super._stateSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DEFB8;
  block[3] = &unk_100252228;
  block[4] = self;
  v16 = v10;
  v35 = v16;
  v36 = buf;
  dispatch_async_and_wait(stateSerialQueue, block);
  v17 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(*&buf[8] + 40);
    *v37 = 136315394;
    *&v37[4] = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
    *&v37[12] = 2114;
    *&v37[14] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "KeyLog - %s CSEndpointAsset exists: %{public}@", v37, 0x16u);
  }

  if (*(*&buf[8] + 40))
  {
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x3032000000;
    v38 = sub_1000DEFA0;
    v39 = sub_1000DEFB0;
    v40 = 0;
    hybridClassifierQueue = self->super._hybridClassifierQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000DF014;
    v29[3] = &unk_1002514C8;
    v29[4] = self;
    v20 = v11;
    v30 = v20;
    v31 = buf;
    v32 = v37;
    v33 = a3;
    dispatch_async_and_wait(hybridClassifierQueue, v29);
    asrFeaturesQueue = self->super._asrFeaturesQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000DF840;
    v28[3] = &unk_100253BD0;
    v28[4] = self;
    v28[5] = v37;
    dispatch_async_and_wait(asrFeaturesQueue, v28);
    v22 = self->super._stateSerialQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000DFA14;
    v27[3] = &unk_100253C98;
    v27[4] = self;
    v27[5] = a3;
    dispatch_async_and_wait(v22, v27);
    if ([v16 isVoiceTriggered])
    {
      [(CSEndpointAnalyzerBase *)self handleVoiceTriggerWithActivationInfo:v12];
    }

    if ([v20 enforceAutomaticEndpointing])
    {
      [(CSHybridEndpointAnalyzer *)self setEndpointerOperationMode:3];
    }

    v23 = [v20 requestMHUUID];
    [(CSHybridEndpointAnalyzer *)self setMhId:v23];

    self->_accessibleEndpointerEnabled = [(CSHybridEndpointAnalyzer *)self _updateAccessibleEndpointerThresholdIfNeeded];
    kdebug_trace();

    _Block_object_dispose(v37, 8);
  }

  else
  {
    v24 = CSLogCategoryEP;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = +[CSAssetManager sharedManager];
      v26 = [v25 currentLanguageCode];
      *v37 = 136315394;
      *&v37[4] = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
      *&v37[12] = 2114;
      *&v37[14] = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "KeyLog - %s No asset for CSHybridEndpointer for currentLanguage: %{public}@.", v37, 0x16u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)terminateProcessing
{
  v5.receiver = self;
  v5.super_class = CSHybridEndpointAnalyzer;
  [(CSEndpointAnalyzerBase *)&v5 terminateProcessing];
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFE48;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(hybridClassifierQueue, block);
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DFF3C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(hybridClassifierQueue, v7);
}

- (void)_generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:(double)a3 osdFeatures:(id)a4 completion:(id)a5
{
  v8 = a4;
  v112 = _NSConcreteStackBlock;
  v113 = 3221225472;
  v114 = sub_1000E06EC;
  v115 = &unk_100251478;
  v9 = a5;
  v116 = v9;
  v10 = objc_retainBlock(&v112);
  v11 = [(CSASRFeatures *)self->super._lastKnownASRFeatures processedAudioDurationInMilliseconds];
  if (v11 <= a3)
  {
    [v8 processedAudioMs];
    if (self->super._didReceiveASRFeatures)
    {
      v42 = a3 - [(CSASRFeatures *)self->super._lastKnownASRFeatures processedAudioDurationInMilliseconds];
    }

    else
    {
      v42 = v41;
    }

    if ([(CSHybridEndpointAnalyzer *)self _useEnhancedEndpointer])
    {
      v49 = [(CSASRFeatures *)self->_lastKnownRCFeatures processedAudioDurationInMilliseconds];
      if (self->_didReceiveRCFeatures)
      {
        lastKnownRCFeatureLatency = self->_lastKnownRCFeatureLatency;
      }

      else
      {
        lastKnownRCFeatureLatency = v49;
      }

      v93 = [CSEnhancedEndpointerFeatures alloc];
      v94 = [(CSASRFeatures *)self->super._lastKnownASRFeatures trailingSilenceDuration];
      [v8 silenceFramesCountMs];
      v96 = v95;
      [(CSASRFeatures *)self->super._lastKnownASRFeatures eosLikelihood];
      v98 = exp(-v97);
      v99 = [(CSASRFeatures *)self->super._lastKnownASRFeatures wordCount];
      [v8 silenceProbability];
      v101 = v100;
      v102 = [(CSASRFeatures *)self->_lastKnownRCFeatures trailingSilenceDuration];
      [(CSASRFeatures *)self->_lastKnownRCFeatures eosLikelihood];
      v104 = exp(-v103);
      v105 = [(CSASRFeatures *)self->_lastKnownRCFeatures wordCount];
      [(CSASRFeatures *)self->super._lastKnownASRFeatures silencePosterior];
      v107 = v106;
      [(CSASRFeatures *)self->super._lastKnownASRFeatures acousticEndpointerScore];
      v109 = v108;
      [v8 silenceDurationMs];
      *&v110 = v110;
      LODWORD(v111) = LODWORD(v110);
      v92 = [v93 initWithTrailingSilenceDuration:v94 clientSilenceFramesCount:v99 endOfSentenceLikelihood:v102 wordCount:v105 serverFeaturesLatency:v96 clientSilenceProbability:v98 rcTrailingSilenceDuration:v42 rcEndOfSentenceLikelihood:v101 rcWordCount:v104 rcServerFeaturesLatency:lastKnownRCFeatureLatency silencePosterior:v107 acousticEndpointerScore:v109 silencePosteriorNF:{v111, v112, v113, v114, v115}];
      v40 = 0;
      goto LABEL_26;
    }

    v51 = [_EAREndpointFeatures alloc];
    v52 = [(CSASRFeatures *)self->super._lastKnownASRFeatures wordCount];
    v53 = [(CSASRFeatures *)self->super._lastKnownASRFeatures trailingSilenceDuration];
    [(CSASRFeatures *)self->super._lastKnownASRFeatures eosLikelihood];
    v55 = v54;
    [(CSASRFeatures *)self->super._lastKnownASRFeatures acousticEndpointerScore];
    v57 = v56;
    v58 = [(CSASRFeatures *)self->super._lastKnownASRFeatures pauseCounts];
    [(CSASRFeatures *)self->super._lastKnownASRFeatures silencePosterior];
    v60 = v59;
    [v8 silenceFramesCountMs];
    v62 = v61;
    [v8 silenceProbability];
    v64 = v63;
    [v8 silenceDurationMs];
    *&v66 = v65;
    *&v67 = v42;
    v68 = v51;
    v69 = v52;
    v70 = v53;
    v71 = v55;
    v72 = v57;
    v73 = v58;
    v74 = v60;
    v75 = v62;
    v76 = v64;
    goto LABEL_22;
  }

  v12 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    lastKnownASRFeatures = self->super._lastKnownASRFeatures;
    v14 = v12;
    v15 = COERCE_DOUBLE([(CSASRFeatures *)lastKnownASRFeatures processedAudioDurationInMilliseconds]);
    *buf = 136315650;
    v120 = "[CSHybridEndpointAnalyzer _generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:osdFeatures:completion:]";
    v121 = 2050;
    v122 = v15;
    v123 = 2050;
    v124 = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s ClientLag: asrProcessedAudioMs(%{public}ld) > effectiveClientProcessedAudioMs(%{public}f)", buf, 0x20u);
  }

  v16 = a3 - [(CSASRFeatures *)self->super._lastKnownASRFeatures processedAudioDurationInMilliseconds];
  clientLagThresholdMs = self->super._clientLagThresholdMs;
  if (v16 <= clientLagThresholdMs)
  {
    useDefaultASRFeaturesOnClientLag = self->super._useDefaultASRFeaturesOnClientLag;
    v19 = CSLogCategoryEP;
    v20 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
    if (useDefaultASRFeaturesOnClientLag)
    {
      if (v20)
      {
        *buf = 136315394;
        v120 = "[CSHybridEndpointAnalyzer _generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:osdFeatures:completion:]";
        v121 = 2050;
        v122 = a3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Using DefaultServerFeatures with disconnected-state sfLatency: %{public}f", buf, 0x16u);
      }

      v21 = [(_EAREndpointer *)self->super._hybridClassifier defaultServerEndpointFeatures];
      v22 = [_EAREndpointFeatures alloc];
      v23 = [v21 wordCount];
      v24 = [v21 trailingSilenceDuration];
      [v21 endOfSentenceLikelihood];
      v26 = v25;
      [v21 acousticEndpointerScore];
      v28 = v27;
      [v21 silencePosterior];
      v30 = v29;
      [v8 silenceFramesCountMs];
      v32 = v31;
      [v8 silenceProbability];
      v34 = v33;
      [v8 silenceDurationMs];
      v36 = v35;
      [v8 processedAudioMs];
      *&v38 = v37;
      *&v39 = v36;
      v40 = [v22 initWithWordCount:v23 trailingSilenceDuration:v24 endOfSentenceLikelihood:&__NSArray0__struct acousticEndpointerScore:0 pauseCounts:v26 silencePosterior:v28 clientSilenceFramesCountMs:v30 clientSilenceProbability:v32 silencePosteriorNF:v34 serverFeaturesLatency:v39 eagerResultEndTime:v38];

      goto LABEL_23;
    }

    if (v20)
    {
      clampedASRFeatureLatencyMsForClientLag = self->super._clampedASRFeatureLatencyMsForClientLag;
      *buf = 136315394;
      v120 = "[CSHybridEndpointAnalyzer _generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:osdFeatures:completion:]";
      v121 = 2050;
      v122 = clampedASRFeatureLatencyMsForClientLag;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Using ServerFeatures with ClampedSFLatency: %{public}f", buf, 0x16u);
    }

    v78 = [_EAREndpointFeatures alloc];
    v79 = [(CSASRFeatures *)self->super._lastKnownASRFeatures wordCount];
    v80 = [(CSASRFeatures *)self->super._lastKnownASRFeatures trailingSilenceDuration];
    [(CSASRFeatures *)self->super._lastKnownASRFeatures eosLikelihood];
    v82 = v81;
    [(CSASRFeatures *)self->super._lastKnownASRFeatures acousticEndpointerScore];
    v84 = v83;
    v58 = [(CSASRFeatures *)self->super._lastKnownASRFeatures pauseCounts];
    [(CSASRFeatures *)self->super._lastKnownASRFeatures silencePosterior];
    v86 = v85;
    [v8 silenceFramesCountMs];
    v88 = v87;
    [v8 silenceProbability];
    v90 = v89;
    [v8 silenceDurationMs];
    *&v66 = v91;
    *&v67 = self->super._clampedASRFeatureLatencyMsForClientLag;
    v68 = v78;
    v69 = v79;
    v70 = v80;
    v71 = v82;
    v72 = v84;
    v73 = v58;
    v74 = v86;
    v75 = v88;
    v76 = v90;
LABEL_22:
    v40 = [v68 initWithWordCount:v69 trailingSilenceDuration:v70 endOfSentenceLikelihood:v73 acousticEndpointerScore:0 pauseCounts:v71 silencePosterior:v72 clientSilenceFramesCountMs:v74 clientSilenceProbability:v75 silencePosteriorNF:v76 serverFeaturesLatency:v66 eagerResultEndTime:v67];

LABEL_23:
    v92 = 0;
LABEL_26:
    (v10[2])(v10, 0, v40, v92);

    goto LABEL_27;
  }

  v43 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v120 = "[CSHybridEndpointAnalyzer _generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:osdFeatures:completion:]";
    v121 = 2050;
    v122 = v16;
    v123 = 2050;
    v124 = clientLagThresholdMs;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Not invoking HybridClassifier: sfLatency > clientLagThreshold: %{public}f > %{public}f", buf, 0x20u);
  }

  v44 = [NSError alloc];
  v45 = CSErrorDomain;
  v117[0] = @"sfLatency";
  v46 = [NSNumber numberWithDouble:v16];
  v117[1] = @"clientLagThreshold";
  v118[0] = v46;
  v47 = [NSNumber numberWithDouble:self->super._clientLagThresholdMs];
  v118[1] = v47;
  v48 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:2];
  v40 = [v44 initWithDomain:v45 code:2302 userInfo:v48];

  (v10[2])(v10, v40, 0, 0);
LABEL_27:
}

- (void)processOSDFeatures:(id)a3 withFrameDurationMs:(double)a4 withMHID:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->super._recordingDidStop)
  {
    v10 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]";
      *&buf[12] = 2080;
      *&buf[14] = "Don't process OSD features";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = sub_1000DEFA0;
    v72 = sub_1000DEFB0;
    v73 = 0;
    hybridClassifierQueue = self->super._hybridClassifierQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E0E34;
    block[3] = &unk_100253BD0;
    block[5] = buf;
    block[4] = self;
    dispatch_async_and_wait(hybridClassifierQueue, block);
    if ([v9 length] && (objc_msgSend(v9, "isEqualToString:", *(*&buf[8] + 40)) & 1) == 0)
    {
      v24 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
      {
        v25 = *(*&buf[8] + 40);
        *v68 = 136315650;
        *&v68[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]";
        *&v68[12] = 2112;
        *&v68[14] = v25;
        *&v68[22] = 2112;
        v69 = v9;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s MHID mismatch: Endpointer = %@, OSD = %@, don't process OSD features", v68, 0x20u);
      }
    }

    else
    {
      [v8 processedAudioMs];
      v13 = v12;
      [v8 silenceDurationMs];
      v15 = v14;
      v16 = qword_10029E328;
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E328, 1) <= 0x888888888888888uLL)
      {
        kdebug_trace();
        v16 = qword_10029E328;
      }

      qword_10029E328 = v16 + 1;
      v17 = v13;
      v18 = v15;
      *v68 = 0;
      *&v68[8] = v68;
      *&v68[16] = 0x2020000000;
      v69 = 0;
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x2020000000;
      v62[3] = 0;
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v61[3] = 0;
      v59[0] = 0;
      v59[1] = v59;
      v59[2] = 0x2020000000;
      v60 = 0;
      v19 = self->super._hybridClassifierQueue;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000E0E50;
      v58[3] = &unk_100251338;
      v58[4] = self;
      v58[5] = v68;
      v58[6] = v62;
      v58[7] = v59;
      v58[8] = v61;
      dispatch_async(v19, v58);
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x2020000000;
      v57[3] = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v52 = 0;
      stateSerialQueue = self->super._stateSerialQueue;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000E0EA8;
      v49[3] = &unk_100251360;
      v49[4] = self;
      v49[5] = &v53;
      v49[6] = v51;
      v49[7] = v57;
      v50 = v17;
      dispatch_async_and_wait(stateSerialQueue, v49);
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v21 = self->super._stateSerialQueue;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000E0EF0;
      v44[3] = &unk_100253BD0;
      v44[4] = self;
      v44[5] = &v45;
      dispatch_async_and_wait(v21, v44);
      if (*(v46 + 24) == 1 && !self->super._didDetectSpeech)
      {
        v22 = self->super._stateSerialQueue;
        if (v17 <= 300.0 || v18 >= 0.001)
        {
          v23 = v41;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000E1004;
          v41[3] = &unk_1002534E8;
          v41[4] = self;
          v42 = v17;
        }

        else
        {
          v23 = v43;
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1000E0F2C;
          v43[3] = &unk_100253BD0;
          v43[4] = self;
          v43[5] = v57;
        }

        dispatch_async_and_wait(v22, v23);
      }

      if (v54[3])
      {
        v26 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          *v64 = 136315394;
          v65 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]";
          v66 = 2050;
          v67 = v18;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s Already communicated end-pt: Not scheduling work for hybridClassifierQueue for silposnf=%{public}f", v64, 0x16u);
        }
      }

      else
      {
        v27 = [(CSEndpointAnalyzerBase *)self multimodalEndpointerEnabled];
        v28 = self->super._hybridClassifierQueue;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000E1144;
        v29[3] = &unk_100251450;
        v29[4] = self;
        v31 = &v53;
        v39 = v15;
        v30 = v8;
        v32 = v57;
        v40 = v27;
        v33 = v51;
        v34 = v68;
        v35 = v62;
        v36 = v59;
        v38 = a4;
        v37 = v61;
        dispatch_async(v28, v29);
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(v51, 8);
      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(v57, 8);
      _Block_object_dispose(v59, 8);
      _Block_object_dispose(v61, 8);
      _Block_object_dispose(v62, 8);
      _Block_object_dispose(v68, 8);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)processFirstAudioPacketTimestamp:(id)a3 firstAudioSampleSensorTimestamp:(unint64_t)a4
{
  v6 = a3;
  stateSerialQueue = self->super._stateSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2F38;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async_and_wait(stateSerialQueue, block);
}

- (void)logAnchorMachAbsTime:(unint64_t)a3 numSamplesProcessedBeforeAnchorTime:(unint64_t)a4 isAnchorTimeBuffered:(BOOL)a5 audioDeliveryHostTimeDelta:(unint64_t)a6
{
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E309C;
  block[3] = &unk_100251310;
  block[4] = self;
  block[5] = a3;
  v8 = a5;
  block[6] = a4;
  block[7] = a6;
  dispatch_async(hybridClassifierQueue, block);
}

- (void)_swapEnhancedEndpointerModelForTaskString:(id)a3
{
  v4 = a3;
  if (self->super._recordingDidStop)
  {
    v5 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSHybridEndpointAnalyzer _swapEnhancedEndpointerModelForTaskString:]";
      v17 = 2080;
      v18 = "Don't switch enhanced endpointer models";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", &v15, 0x16u);
    }

    goto LABEL_13;
  }

  dispatch_assert_queue_V2(self->super._hybridClassifierQueue);
  taskEnhancedEndpointerMap = self->_taskEnhancedEndpointerMap;
  if (!taskEnhancedEndpointerMap)
  {
    v10 = CSLogCategoryEP;
    if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v15 = 136315138;
    v16 = "[CSHybridEndpointAnalyzer _swapEnhancedEndpointerModelForTaskString:]";
    v12 = "%s Expected _taskEnhancedEndpointerMap to be non-nil.";
    v13 = v10;
    v14 = 12;
LABEL_17:
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v12, &v15, v14);
    goto LABEL_13;
  }

  v7 = [(NSDictionary *)taskEnhancedEndpointerMap objectForKey:v4];
  if (!v7)
  {
    v7 = [(NSDictionary *)self->_taskEnhancedEndpointerMap objectForKey:@"SearchOrMessaging"];
    v8 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[CSHybridEndpointAnalyzer _swapEnhancedEndpointerModelForTaskString:]";
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = @"SearchOrMessaging";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s No enhanced endpointer model for task %{public}@, falling back to default task %{public}@", &v15, 0x20u);
    }

    if (!v7)
    {
      v11 = CSLogCategoryEP;
      if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }

      v15 = 136315650;
      v16 = "[CSHybridEndpointAnalyzer _swapEnhancedEndpointerModelForTaskString:]";
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = @"SearchOrMessaging";
      v12 = "%s Unable to find enhanced endpointer model for task %{public}@ or default task %{public}@";
      v13 = v11;
      v14 = 32;
      goto LABEL_17;
    }
  }

  objc_storeStrong(&self->_enhancedEndpointer, v7);
  v9 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSHybridEndpointAnalyzer _swapEnhancedEndpointerModelForTaskString:]";
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Swapping enhanced endpointer model to model for %{public}@ (or default)", &v15, 0x16u);
  }

LABEL_13:
}

- (void)_processEnhancedEndpointerTaskString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->super._hybridClassifierQueue);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  asrFeaturesQueue = self->super._asrFeaturesQueue;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000E366C;
  v19 = &unk_1002512E8;
  v20 = self;
  v6 = v4;
  v21 = v6;
  v22 = &v38;
  v23 = &v34;
  v24 = &v30;
  v25 = &v26;
  dispatch_async_and_wait(asrFeaturesQueue, &v16);
  if (*(v39 + 6) > 0.0 && *(v35 + 6) > 0.0)
  {
    [(CSHybridEndpointAnalyzer *)self _swapEnhancedEndpointerModelForTaskString:v6, v16, v17, v18, v19, v20];
    LODWORD(v7) = *(v39 + 6);
    LODWORD(v8) = *(v35 + 6);
    LODWORD(v9) = *(v31 + 6);
    LODWORD(v10) = *(v27 + 6);
    [(CSHybridEndpointAnalyzer *)self _updateEnhancedEndpointerDefaultThresholdPartial:v7 defaultThresholdRC:v8 relaxedThresholdPartial:v9 relaxedThresholdRC:v10];
    v11 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v39 + 6);
      v13 = *(v35 + 6);
      v14 = *(v31 + 6);
      v15 = *(v27 + 6);
      *buf = 136316418;
      v43 = "[CSHybridEndpointAnalyzer _processEnhancedEndpointerTaskString:]";
      v44 = 2114;
      v45 = v6;
      v46 = 2050;
      v47 = v12;
      v48 = 2050;
      v49 = v13;
      v50 = 2050;
      v51 = v14;
      v52 = 2050;
      v53 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Updated enhanced endpointer thresholds for task %{public}@ - defaultThresholdPartial: %{public}f, defaultThresholdRC: %{public}f, relaxedThresholdPartial: %{public}f, relaxedThresholdRC: %{public}f", buf, 0x3Eu);
    }
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

- (BOOL)_isTaskStringAccessible:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"accessible-maximum"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"accessible-extended"];
  }

  return v4;
}

- (void)processTaskString:(id)a3
{
  v4 = a3;
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3974;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(hybridClassifierQueue, v7);
}

- (int64_t)fetchCurrentEndpointerOperationMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateSerialQueue = self->super._stateSerialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E3ED0;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(stateSerialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setEndpointerOperationMode:(int64_t)a3
{
  v5 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[CSHybridEndpointAnalyzer setEndpointerOperationMode:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  stateSerialQueue = self->super._stateSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E40DC;
  v7[3] = &unk_100253C98;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(stateSerialQueue, v7);
}

- (void)_updateEndpointerDelayedTrigger:(BOOL)a3
{
  if (self->super._recordingDidStop)
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "[CSHybridEndpointAnalyzer _updateEndpointerDelayedTrigger:]";
      v9 = 2080;
      v10 = "Don't update trigger switch";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    hybridClassifierQueue = self->super._hybridClassifierQueue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000E4354;
    v5[3] = &unk_100253BF8;
    v5[4] = self;
    v6 = a3;
    dispatch_async(hybridClassifierQueue, v5);
  }
}

- (void)_updateEndpointerDelayedTriggerByMhId:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->super._hybridClassifierQueue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1000;
  asrFeaturesQueue = self->super._asrFeaturesQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E4540;
  v7[3] = &unk_100253BD0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_async_and_wait(asrFeaturesQueue, v7);
  v6 = [v4 hash];
  if (v6 % v9[3] == 1)
  {
    [(CSHybridEndpointAnalyzer *)self _updateEndpointerDelayedTrigger:1];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_updateEnhancedEndpointerDefaultThresholdPartial:(float)a3 defaultThresholdRC:(float)a4 relaxedThresholdPartial:(float)a5 relaxedThresholdRC:(float)a6
{
  if (self->super._recordingDidStop)
  {
    v6 = CSLogCategoryEP;
    if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    v18 = "[CSHybridEndpointAnalyzer _updateEnhancedEndpointerDefaultThresholdPartial:defaultThresholdRC:relaxedThresholdPartial:relaxedThresholdRC:]";
    v19 = 2080;
    v20 = "Don't update thresholds";
    v7 = "%s Recording stopped: %s";
    v8 = v6;
    v9 = 22;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    return;
  }

  if (self->_accessibleEndpointerEnabled)
  {
    v10 = CSLogCategoryEP;
    if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v18 = "[CSHybridEndpointAnalyzer _updateEnhancedEndpointerDefaultThresholdPartial:defaultThresholdRC:relaxedThresholdPartial:relaxedThresholdRC:]";
    v7 = "%s Don't update threshold since an accessible threshold is set";
    v8 = v10;
    v9 = 12;
    goto LABEL_7;
  }

  hybridClassifierQueue = self->super._hybridClassifierQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E46F0;
  block[3] = &unk_1002512C0;
  block[4] = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  dispatch_async(hybridClassifierQueue, block);
}

- (void)_updateEndpointerThreshold:(float)a3
{
  if (self->_accessibleEndpointerEnabled)
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSHybridEndpointAnalyzer _updateEndpointerThreshold:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Don't update threshold since an accessible threshold is set", buf, 0xCu);
    }
  }

  else
  {
    hybridClassifierQueue = self->super._hybridClassifierQueue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000E490C;
    v5[3] = &unk_1002534E8;
    v5[4] = self;
    v6 = a3;
    dispatch_async(hybridClassifierQueue, v5);
  }
}

- (void)updateEndpointerThreshold:(float)a3
{
  v5 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[CSHybridEndpointAnalyzer updateEndpointerThreshold:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  *&v6 = a3;
  [(CSHybridEndpointAnalyzer *)self _updateEndpointerThreshold:v6];
}

- (void)_updateCurrentAsset:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->super._stateSerialQueue);
  currentAsset = self->super._currentAsset;
  v7 = CSLogCategoryEP;
  v8 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
  if (currentAsset == v5)
  {
    if (v8)
    {
      v9 = 136315138;
      v10 = "[CSHybridEndpointAnalyzer _updateCurrentAsset:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s New asset is the same as current asset - no update needed.", &v9, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 136315138;
      v10 = "[CSHybridEndpointAnalyzer _updateCurrentAsset:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Updating current asset.", &v9, 0xCu);
    }

    objc_storeStrong(&self->super._currentAsset, a3);
    [(CSHybridEndpointAnalyzer *)self _readParametersFromHEPAsset:self->super._currentAsset];
  }
}

- (id)endpointerModelVersion
{
  endpointerModelVersion = self->_endpointerModelVersion;
  if (!endpointerModelVersion)
  {
    stateSerialQueue = self->super._stateSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4CA0;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async_and_wait(stateSerialQueue, block);
    endpointerModelVersion = self->_endpointerModelVersion;
  }

  return endpointerModelVersion;
}

- (CSHybridEndpointAnalyzer)init
{
  v14.receiver = self;
  v14.super_class = CSHybridEndpointAnalyzer;
  v2 = [(CSEndpointAnalyzerBase *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_endpointerOperationMode = 0;
    stateSerialQueue = v2->super._stateSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4FA0;
    block[3] = &unk_100253C20;
    v5 = v2;
    v13 = v5;
    dispatch_async(stateSerialQueue, block);
    v5->_extraDelayFrequency = 1000;
    taskThresholdMap = v5->_taskThresholdMap;
    v5->_taskThresholdMap = 0;

    enhancedEndpointerTaskThresholdMap = v5->_enhancedEndpointerTaskThresholdMap;
    v5->_enhancedEndpointerTaskThresholdMap = 0;

    v5->_lastKnownRCFeatureLatency = -0.01;
    v8 = +[CSASRFeatures initialResultCandidateFeatures];
    lastKnownRCFeatures = v5->_lastKnownRCFeatures;
    v5->_lastKnownRCFeatures = v8;

    currentTaskString = v5->_currentTaskString;
    v5->_currentTaskString = @"SearchOrMessaging";

    v5->_currentEndpointerThreshold = 0.0;
  }

  return v3;
}

@end