@interface CSRemoraEndpointAnalyzer
- (CSRemoraEndpointAnalyzer)init;
- (id)delegate;
- (id)endpointerModelVersion;
- (void)CSAssetManagerDidDownloadNewAsset:(id)a3;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)_emitEndpointDetectedEventWithEndpointTimeMs:(double)a3 endpointBufferHostTime:(unint64_t)a4 endpointerFeatures:(id)a5 endpointerDecisionLagInNs:(double)a6 extraDelayMs:(unint64_t)a7 endpointScore:(double)a8 asrFeaturesLatencies:(id)a9;
- (void)_loadAndSetupEndpointerAssetIfNecessary;
- (void)_readParametersFromHEPAsset:(id)a3;
- (void)_updateAssetWithCurrentLanguage;
- (void)_updateAssetWithLanguage:(id)a3;
- (void)osdAnalyzer:(id)a3 didUpdateOSDFeatures:(id)a4;
- (void)processAudioSamplesAsynchronously:(id)a3;
- (void)resetForNewRequestWithSampleRate:(unint64_t)a3 recordContext:(id)a4 recordOption:(id)a5 voiceTriggerInfo:(id)a6;
- (void)setMhId:(id)a3;
- (void)terminateProcessing;
- (void)updateEndpointerThreshold:(float)a3;
@end

@implementation CSRemoraEndpointAnalyzer

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEndpointerThreshold:(float)a3
{
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000976D0;
  v4[3] = &unk_1002534E8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(hybridClassifierQueue, v4);
}

- (void)_updateAssetWithCurrentLanguage
{
  v4 = +[CSAssetManager sharedManager];
  v3 = [v4 currentLanguageCode];
  [(CSRemoraEndpointAnalyzer *)self _updateAssetWithLanguage:v3];
}

- (void)_updateAssetWithLanguage:(id)a3
{
  v4 = a3;
  stateSerialQueue = self->super._stateSerialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000978A4;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(stateSerialQueue, v7);
}

- (void)CSAssetManagerDidDownloadNewAsset:(id)a3
{
  v4 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSRemoraEndpointAnalyzer CSAssetManagerDidDownloadNewAsset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s New hybrid endpoint asset downloaded", &v5, 0xCu);
  }

  [(CSRemoraEndpointAnalyzer *)self _updateAssetWithCurrentLanguage];
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  v6 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSRemoraEndpointAnalyzer CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language changed to: %{public}@", &v7, 0x16u);
  }

  [(CSRemoraEndpointAnalyzer *)self _updateAssetWithLanguage:v5];
}

- (void)_readParametersFromHEPAsset:(id)a3
{
  v4 = a3;
  asrFeaturesQueue = self->super._asrFeaturesQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100097BEC;
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
  self->super._recordingDidStop = 0;
  v13 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2114;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s sampleRate=%{public}lu, recordContext=%{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_100098298;
  v38 = sub_1000982A8;
  v39 = 0;
  stateSerialQueue = self->super._stateSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000982B0;
  block[3] = &unk_100252228;
  block[4] = self;
  v15 = v10;
  v30 = v15;
  v31 = buf;
  dispatch_async_and_wait(stateSerialQueue, block);
  v16 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*&buf[8] + 40);
    *v32 = 136315394;
    *&v32[4] = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
    *&v32[12] = 2114;
    *&v32[14] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s CSEndpointAsset exists: %{public}@", v32, 0x16u);
  }

  if (*(*&buf[8] + 40))
  {
    apQueue = self->_apQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10009830C;
    v28[3] = &unk_100253BD0;
    v28[4] = self;
    v28[5] = buf;
    dispatch_async(apQueue, v28);
    *v32 = 0;
    *&v32[8] = v32;
    *&v32[16] = 0x3032000000;
    v33 = sub_100098298;
    v34 = sub_1000982A8;
    v35 = 0;
    hybridClassifierQueue = self->super._hybridClassifierQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100098530;
    v27[3] = &unk_1002502B0;
    v27[4] = self;
    v27[5] = buf;
    v27[6] = v32;
    v27[7] = a3;
    dispatch_async_and_wait(hybridClassifierQueue, v27);
    asrFeaturesQueue = self->super._asrFeaturesQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000988A8;
    v26[3] = &unk_100253BD0;
    v26[4] = self;
    v26[5] = v32;
    dispatch_async_and_wait(asrFeaturesQueue, v26);
    v21 = self->super._stateSerialQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100098A18;
    v25[3] = &unk_100253C98;
    v25[4] = self;
    v25[5] = a3;
    dispatch_async_and_wait(v21, v25);
    if ([v15 isVoiceTriggered])
    {
      [(CSEndpointAnalyzerBase *)self handleVoiceTriggerWithActivationInfo:v12];
    }

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v22 = CSLogCategoryEP;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = +[CSAssetManager sharedManager];
      v24 = [v23 currentLanguageCode];
      *v32 = 136315394;
      *&v32[4] = "[CSRemoraEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]";
      *&v32[12] = 2114;
      *&v32[14] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s No asset for CSRemoraEndpointAnalyzer for currentLanguage: %{public}@.", v32, 0x16u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)terminateProcessing
{
  v5.receiver = self;
  v5.super_class = CSRemoraEndpointAnalyzer;
  [(CSEndpointAnalyzerBase *)&v5 terminateProcessing];
  apQueue = self->_apQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B3C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(apQueue, block);
}

- (void)_emitEndpointDetectedEventWithEndpointTimeMs:(double)a3 endpointBufferHostTime:(unint64_t)a4 endpointerFeatures:(id)a5 endpointerDecisionLagInNs:(double)a6 extraDelayMs:(unint64_t)a7 endpointScore:(double)a8 asrFeaturesLatencies:(id)a9
{
  v16 = a5;
  v45 = a9;
  dispatch_assert_queue_V2(self->super._hybridClassifierQueue);
  if (self->_mhId)
  {
    v17 = objc_alloc_init(MHSchemaMHEndpointFeaturesAtEndpoint);
    [v17 setWordCount:{objc_msgSend(v16, "wordCount")}];
    *&v18 = [v16 trailingSilenceDuration];
    [v17 setTrailingSilenceDurationInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v18)}];
    [v16 clientSilenceFramesCountMs];
    *&v19 = v19;
    [v17 setClientSilenceFramesCountInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v19)}];
    [v16 endOfSentenceLikelihood];
    *&v20 = v20;
    [v17 setEndOfSentenceLikelihood:v20];
    [v16 serverFeaturesLatency];
    [v17 setServerFeaturesLatencyInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:")}];
    [v16 clientSilenceProbability];
    *&v21 = v21;
    [v17 setClientSilenceProbability:v21];
    *&v68 = 0;
    *(&v68 + 1) = &v68;
    v69 = 0x3032000000;
    v70 = sub_100098298;
    v71 = sub_1000982A8;
    v72 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    stateSerialQueue = self->super._stateSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000991EC;
    block[3] = &unk_100251338;
    block[4] = self;
    block[5] = &v68;
    block[6] = &v60;
    block[7] = &v56;
    block[8] = &v52;
    dispatch_async_and_wait(stateSerialQueue, block);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    apQueue = self->_apQueue;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100099260;
    v46[3] = &unk_100253BD0;
    v46[4] = self;
    v46[5] = &v47;
    dispatch_async_and_wait(apQueue, v46);
    v44 = objc_alloc_init(SISchemaVersion);
    v24 = [*(*(&v68 + 1) + 40) configVersion];
    v25 = [v24 componentsSeparatedByString:@"."];

    if ([v25 count] == 2)
    {
      v26 = [v25 objectAtIndexedSubscript:0];
      [v44 setMajor:{objc_msgSend(v26, "intValue")}];

      v27 = [v25 objectAtIndexedSubscript:1];
      [v44 setMinor:{objc_msgSend(v27, "intValue")}];
    }

    v28 = [CSEndpointLoggingHelper getMHStatisticDistributionInfoFromDictionary:v45, 368];
    v29 = a7;
    v30 = objc_alloc_init(MHSchemaMHEndpointerTimeoutMetadata);
    [v30 setIsTimeout:self->super._isRequestTimeout];
    v31 = objc_alloc_init(MHSchemaMHEndpointDetected);
    [v31 setEndpointerType:3];
    *&v32 = a3;
    [v31 setEndpointAudioDurationInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v32)}];
    [v31 setFirstBufferTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", v61[3])}];
    [v31 setEndpointedBufferTimeInNs:{+[CSFTimeUtils hostTimeToNs:](CSFTimeUtils, "hostTimeToNs:", a4)}];
    [v31 setEndpointFeaturesAtEndpoint:v17];
    *&v33 = a6;
    [v31 setEndpointerDecisionLagInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v33)}];
    *&v34 = v29;
    [v31 setExtraDelayInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v34)}];
    [v31 setEndpointModelConfigVersion:v44];
    [v31 setDerivedBufferTimeFromHistoricalAudio:*(v48 + 24)];
    v35 = v53[3];
    *&v35 = v35;
    [v31 setAudioSkippedDurationInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v35)}];
    v36 = v57[3];
    *&v36 = v36;
    [v31 setEndpointResetPositionInNs:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v36)}];
    *&v37 = a8;
    [v31 setEndpointerScore:v37];
    [v31 setAsrFeatureLatencyDistribution:v28];
    [v31 setTimeoutMetadata:v30];
    v38 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:*(&self->super.super.isa + v43)];
    [v38 setEndpointDetected:v31];
    v39 = +[AssistantSiriAnalytics sharedStream];
    [v39 emitMessage:v38];

    v40 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(&self->super.super.isa + v43);
      *buf = 136315394;
      v65 = "[CSRemoraEndpointAnalyzer _emitEndpointDetectedEventWithEndpointTimeMs:endpointBufferHostTime:endpointerFeatures:endpointerDecisionLagInNs:extraDelayMs:endpointScore:asrFeaturesLatencies:]";
      v66 = 2112;
      v67 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointDetectedEvent to SELF for MH ID: %@", buf, 0x16u);
    }

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v42 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v68) = 136315138;
      *(&v68 + 4) = "[CSRemoraEndpointAnalyzer _emitEndpointDetectedEventWithEndpointTimeMs:endpointBufferHostTime:endpointerFeatures:endpointerDecisionLagInNs:extraDelayMs:endpointScore:asrFeaturesLatencies:]";
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v68, 0xCu);
    }
  }
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  hybridClassifierQueue = self->super._hybridClassifierQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009930C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(hybridClassifierQueue, v7);
}

- (void)osdAnalyzer:(id)a3 didUpdateOSDFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->super._recordingDidStop)
  {
    v9 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]";
      *&buf[12] = 2080;
      *&buf[14] = "Ignoring silenceScoreEstimateAvailable, Not queuing";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    [v7 processedAudioMs];
    v11 = v10;
    [v8 silenceDurationMs];
    v13 = v12;
    v14 = qword_10029E1E0;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E1E0, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v14 = qword_10029E1E0;
    }

    qword_10029E1E0 = v14 + 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v51 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    stateSerialQueue = self->super._stateSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000997E4;
    block[3] = &unk_100251360;
    block[4] = self;
    block[5] = &v42;
    block[6] = v40;
    block[7] = buf;
    v39 = v11;
    dispatch_async_and_wait(stateSerialQueue, block);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    if (CSIsHorseman())
    {
      *(v35 + 24) = 1;
    }

    v16 = v13;
    v17 = self->super._stateSerialQueue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10009982C;
    v33[3] = &unk_100253BD0;
    v33[4] = self;
    v33[5] = &v34;
    dispatch_async_and_wait(v17, v33);
    if (*(v35 + 24) == 1 && !self->super._didDetectSpeech)
    {
      v18 = self->super._stateSerialQueue;
      if (v11 <= 300.0 || v16 >= 0.001)
      {
        v19 = v30;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100099940;
        v30[3] = &unk_1002534E8;
        v30[4] = self;
        v31 = v11;
      }

      else
      {
        v19 = v32;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100099868;
        v32[3] = &unk_100253BD0;
        v32[4] = self;
        v32[5] = buf;
      }

      dispatch_async_and_wait(v18, v19);
    }

    if (v43[3])
    {
      v20 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 136315394;
        v47 = "[CSRemoraEndpointAnalyzer osdAnalyzer:didUpdateOSDFeatures:]";
        v48 = 2050;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Already communicated end-pt: Not scheduling work for hybridClassifierQueue for silposnf=%{public}f", v46, 0x16u);
      }
    }

    else
    {
      v21 = [(CSEndpointAnalyzerBase *)self multimodalEndpointerEnabled];
      hybridClassifierQueue = self->super._hybridClassifierQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100099A80;
      v23[3] = &unk_100250288;
      v23[4] = self;
      v25 = &v42;
      v28 = v16;
      v24 = v8;
      v26 = buf;
      v27 = v40;
      v29 = v21;
      dispatch_async(hybridClassifierQueue, v23);
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v40, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)processAudioSamplesAsynchronously:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._recordingDidStop)
  {
    v6 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSRemoraEndpointAnalyzer processAudioSamplesAsynchronously:]";
      *&buf[12] = 2080;
      *&buf[14] = "Ignoring processAudioSamplesAsynchronously: Not queueing";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }
  }

  else
  {
    stateSerialQueue = self->super._stateSerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009B36C;
    block[3] = &unk_100253C48;
    block[4] = self;
    v8 = v4;
    v16 = v8;
    dispatch_async_and_wait(stateSerialQueue, block);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 0;
    v9 = self->super._stateSerialQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009B484;
    v14[3] = &unk_100253BD0;
    v14[4] = self;
    v14[5] = buf;
    dispatch_async_and_wait(v9, v14);
    apQueue = self->_apQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009B498;
    v11[3] = &unk_100252228;
    v11[4] = self;
    v12 = v8;
    v13 = buf;
    dispatch_async(apQueue, v11);

    _Block_object_dispose(buf, 8);
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
    block[2] = sub_10009B8A4;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async_and_wait(stateSerialQueue, block);
    endpointerModelVersion = self->_endpointerModelVersion;
  }

  return endpointerModelVersion;
}

- (void)_loadAndSetupEndpointerAssetIfNecessary
{
  currentAsset = self->super._currentAsset;
  if (currentAsset)
  {
LABEL_2:
    [(CSRemoraEndpointAnalyzer *)self _readParametersFromHEPAsset:currentAsset];
    v4 = [_EAREndpointer alloc];
    v5 = [(CSAsset *)self->super._currentAsset path];
    v18 = 0;
    v6 = [v4 initWithConfiguration:v5 modelVersion:&v18];
    v7 = v18;

    if (!v7)
    {
      v8 = +[CSDiagnosticReporter sharedInstance];
      [v8 submitEndpointerIssueReport:kCSDiagnosticReporterEndpointerModelVersionIsNil];

      v9 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v20 = "[CSRemoraEndpointAnalyzer _loadAndSetupEndpointerAssetIfNecessary]";
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s endpointerModelVersion is still nil after fetching it from EAREndpointer", buf, 0xCu);
      }
    }

    endpointerModelVersion = self->_endpointerModelVersion;
    self->_endpointerModelVersion = v7;

    return;
  }

  v11 = +[CSAssetManager sharedManager];
  v12 = [v11 assetForCurrentLanguageOfType:1];
  v13 = self->super._currentAsset;
  self->super._currentAsset = v12;

  currentAsset = self->super._currentAsset;
  v14 = CSLogCategoryEP;
  v15 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
  if (currentAsset)
  {
    if (v15)
    {
      v16 = v14;
      v17 = [(CSAsset *)currentAsset path];
      *buf = 136315650;
      v20 = "[CSRemoraEndpointAnalyzer _loadAndSetupEndpointerAssetIfNecessary]";
      v21 = 2114;
      v22 = currentAsset;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s HEP Asset: %{public}@, path: %{public}@", buf, 0x20u);

      currentAsset = self->super._currentAsset;
    }

    goto LABEL_2;
  }

  if (v15)
  {
    *buf = 136315138;
    v20 = "[CSRemoraEndpointAnalyzer _loadAndSetupEndpointerAssetIfNecessary]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Failed to get HEP asset", buf, 0xCu);
  }
}

- (CSRemoraEndpointAnalyzer)init
{
  v26.receiver = self;
  v26.super_class = CSRemoraEndpointAnalyzer;
  v2 = [(CSEndpointAnalyzerBase *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_didAddAudio = 0;
    v2->super._vtEndInSampleCount = 0;
    v2->_numSamplesProcessed = 0;
    v4 = +[CSLanguageCodeUpdateMonitor sharedInstance];
    [v4 addObserver:v3];

    v5 = objc_alloc_init(CSAssetDownloadingOption);
    [(CSAssetDownloadingOption *)v5 setAllowEndpointAssetDownloading:1];
    v6 = +[CSAssetManager sharedManager];
    [v6 setAssetDownloadingOption:v5];

    v7 = +[CSAssetManager sharedManager];
    [v7 addObserver:v3 forAssetType:1];

    stateSerialQueue = v3->super._stateSerialQueue;
    block = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10009BD64;
    v24 = &unk_100253C20;
    v9 = v3;
    v25 = v9;
    dispatch_async(stateSerialQueue, &block);
    v10 = [objc_opt_class() description];
    v11 = [v10 lowercaseString];
    v12 = [NSString stringWithFormat:@"com.apple.cs.%@.apQueue", v11, block, v22, v23, v24];

    v13 = [(CSEndpointAnalyzerBase *)v9 getSerialQueueWithName:v12 targetQueue:v9->super._targetQueue];
    apQueue = v9->_apQueue;
    v9->_apQueue = v13;

    v15 = [objc_opt_class() description];
    v16 = [v15 lowercaseString];
    v17 = [NSString stringWithFormat:@"com.apple.cs.%@.osdQueue", v16];

    v18 = [(CSEndpointAnalyzerBase *)v9 getSerialQueueWithName:v17 targetQueue:v9->super._targetQueue];
    osdQueue = v9->_osdQueue;
    v9->_osdQueue = v18;
  }

  return v3;
}

@end