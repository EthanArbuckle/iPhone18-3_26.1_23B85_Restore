@interface CSAttSiriAFTMNode
- (BOOL)_shouldHandleMitigationDecision:(BOOL)decision;
- (CSAttSiriAFTMNode)init;
- (CSAttSiriAFTMNode)initWithAttSiriController:(id)controller;
- (CSAttSiriController)attSiriController;
- (id)_createResultDict;
- (void)_addAudio:(id)audio;
- (void)_handleAFTMResults:(id)results;
- (void)_logAFTMEndMsgWithScore:(float)score analyzedSamples:(unint64_t)samples;
- (void)_logAFTMStartMsg:(id)msg taskType:(id)type;
- (void)_logResultToVTDirectory;
- (void)_reportResultToAnalytics;
- (void)_reset;
- (void)_setAsset:(id)asset forTask:(id)task;
- (void)_startRequestWithContext:(id)context withVtei:(id)vtei withRequestId:(id)id completion:(id)completion;
- (void)_startRequestWithContext:(id)context withVtei:(id)vtei withVTAssets:(id)assets taskType:(id)type withRequestId:(id)id completion:(id)completion;
- (void)addAudio:(id)audio;
- (void)addReceiver:(id)receiver;
- (void)analyzer:(id)analyzer hasFinalResult:(id)result;
- (void)analyzer:(id)analyzer hasPartialResult:(id)result;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)endAudio;
- (void)setPrefetchedAsset:(id)asset;
- (void)startRequestWithContext:(id)context withVtei:(id)vtei taskType:(id)type withRequestId:(id)id completion:(id)completion;
- (void)startRequestWithContext:(id)context withVtei:(id)vtei withVTAssets:(id)assets taskType:(id)type withRequestId:(id)id completion:(id)completion;
- (void)stop;
@end

@implementation CSAttSiriAFTMNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_reportResultToAnalytics
{
  _createResultDict = [(CSAttSiriAFTMNode *)self _createResultDict];
  if (_createResultDict)
  {
    v3 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[CSAttSiriAFTMNode _reportResultToAnalytics]";
      v8 = 2112;
      v9 = _createResultDict;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Submitting AcousticFTM analytics: %@", &v6, 0x16u);
    }

    v4 = +[AFAnalytics sharedAnalytics];
    v5 = [_createResultDict copy];
    [v4 logEventWithType:4713 context:v5];
  }
}

- (id)_createResultDict
{
  if (self->_latestResult && self->_context && [(NSArray *)self->_thresholds count])
  {
    v13[0] = @"SLAssetVersion";
    configVersion = [(CSAsset *)self->_currentAsset configVersion];
    v14[0] = configVersion;
    v13[1] = @"SLScore";
    [(SLProgressiveCheckerResult *)self->_latestResult score];
    v4 = [NSNumber numberWithFloat:?];
    v14[1] = v4;
    v13[2] = @"SLAnalyzedSamples";
    v5 = [NSNumber numberWithUnsignedInteger:[(SLProgressiveCheckerResult *)self->_latestResult analyzedSamples]];
    v14[2] = v5;
    v13[3] = @"SLCheckerType";
    v6 = [NSNumber numberWithUnsignedInteger:[(SLProgressiveCheckerResult *)self->_latestResult resultType]];
    v14[3] = v6;
    v13[4] = @"SLThreshold";
    v7 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:0];
    [v7 floatValue];
    v8 = [NSNumber numberWithFloat:?];
    v14[4] = v8;
    v13[5] = @"SLInputOriginType";
    v9 = [NSNumber numberWithLongLong:[(CSAudioRecordContext *)self->_context type]];
    v13[6] = @"SLTaskName";
    taskName = self->_taskName;
    v14[5] = v9;
    v14[6] = taskName;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_logResultToVTDirectory
{
  if (CSIsInternalBuild())
  {
    v3 = +[CSFPreferences sharedPreferences];
    fileLoggingIsEnabled = [v3 fileLoggingIsEnabled];

    if (fileLoggingIsEnabled)
    {
      _createResultDict = [(CSAttSiriAFTMNode *)self _createResultDict];
      if (_createResultDict)
      {
        v6 = +[NSFileManager defaultManager];
        v7 = +[CSFPreferences sharedPreferences];
        voiceTriggerAudioLogDirectory = [v7 voiceTriggerAudioLogDirectory];

        if ([v6 fileExistsAtPath:voiceTriggerAudioLogDirectory])
        {
          v9 = [(NSString *)self->_mhId stringByAppendingString:@"-SL.json"];
          v10 = [voiceTriggerAudioLogDirectory stringByAppendingPathComponent:v9];
          v18 = 0;
          v11 = [NSJSONSerialization dataWithJSONObject:_createResultDict options:3 error:&v18];
          v12 = v18;
          if (v12)
          {
            v13 = CSLogCategorySDSD;
            if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              localizedDescription = [v12 localizedDescription];
              *buf = 136315394;
              v20 = "[CSAttSiriAFTMNode _logResultToVTDirectory]";
              v21 = 2114;
              v22 = localizedDescription;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Error writing out AcousticSL info meta: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v11 writeToFile:v10 atomically:0];
          }

          v17 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v20 = "[CSAttSiriAFTMNode _logResultToVTDirectory]";
            v21 = 2114;
            v22 = v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Saving AcousticSL results at %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v16 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v20 = "[CSAttSiriAFTMNode _logResultToVTDirectory]";
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Assistant audio log not available", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_logAFTMEndMsgWithScore:(float)score analyzedSamples:(unint64_t)samples
{
  if (self->_mhId)
  {
    v7 = [SISchemaUUID alloc];
    v8 = [[NSUUID alloc] initWithUUIDString:self->_mhId];
    v9 = [v7 initWithNSUUID:v8];

    v10 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated);
    *&v11 = score;
    [v10 setScore:v11];
    +[CSConfig inputRecordingSampleRate];
    [v10 setAudioDurationInNs:{+[CSFTimeUtils convertSampleCountToNs:sampleRate:](CSFTimeUtils, "convertSampleCountToNs:sampleRate:", samples)}];
    v12 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext);
    [v12 setScoreGenerated:v10];
    v13 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v13 setMhId:v9];
    v14 = objc_alloc_init(MHSchemaMHClientEvent);
    [v14 setMhId:v9];
    [v14 setEventMetadata:v13];
    [v14 setAcousticFalseTriggerMitigationEvaluationContext:v12];
    v15 = +[AssistantSiriAnalytics sharedStream];
    [v15 emitMessage:v14];

    v16 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      mhId = self->_mhId;
      v19 = 136315394;
      v20 = "[CSAttSiriAFTMNode _logAFTMEndMsgWithScore:analyzedSamples:]";
      v21 = 2112;
      v22 = mhId;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Submit AFTM ScoreGenerated Msg to SELF metrics for MH ID: %@", &v19, 0x16u);
    }
  }

  else
  {
    v18 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[CSAttSiriAFTMNode _logAFTMEndMsgWithScore:analyzedSamples:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s MHID not set, skipping SELF Logging", &v19, 0xCu);
    }
  }
}

- (void)_logAFTMStartMsg:(id)msg taskType:(id)type
{
  msgCopy = msg;
  typeCopy = type;
  if (self->_mhId)
  {
    v8 = [SISchemaUUID alloc];
    v9 = [[NSUUID alloc] initWithUUIDString:self->_mhId];
    v10 = [v8 initWithNSUUID:v9];

    v11 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationStarted);
    [v11 setModelVersion:msgCopy];
    if ([typeCopy isEqualToString:@"AcousticSLTaskTypeVoiceTrigger"])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v11 setMitigationType:v12];
    v13 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext);
    [v13 setStartedOrChanged:v11];
    v14 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v14 setMhId:v10];
    v15 = objc_alloc_init(MHSchemaMHClientEvent);
    [v15 setMhId:v10];
    [v15 setEventMetadata:v14];
    [v15 setAcousticFalseTriggerMitigationEvaluationContext:v13];
    v16 = +[AssistantSiriAnalytics sharedStream];
    [v16 emitMessage:v15];

    v17 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      mhId = self->_mhId;
      v20 = 136315394;
      v21 = "[CSAttSiriAFTMNode _logAFTMStartMsg:taskType:]";
      v22 = 2112;
      v23 = mhId;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Submit AFTM Start Msg to SELF metrics for MH ID: %@", &v20, 0x16u);
    }
  }

  else
  {
    v19 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CSAttSiriAFTMNode _logAFTMStartMsg:taskType:]";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v20, 0xCu);
    }
  }
}

- (void)analyzer:(id)analyzer hasPartialResult:(id)result
{
  analyzerCopy = analyzer;
  resultCopy = result;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E86A0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = analyzerCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = analyzerCopy;
  dispatch_async(queue, block);
}

- (void)analyzer:(id)analyzer hasFinalResult:(id)result
{
  analyzerCopy = analyzer;
  resultCopy = result;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E88D8;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = analyzerCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = analyzerCopy;
  dispatch_async(queue, block);
}

- (void)_handleAFTMResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy)
  {
    objc_storeStrong(&self->_latestResult, results);
    [resultsCopy score];
    v7 = v6;
    firstObject = [(NSArray *)self->_thresholds firstObject];
    [firstObject floatValue];
    v10 = v9;
    v11 = v7 < v9;

    if ([(CSAttSiriAFTMNode *)self _shouldHandleMitigationDecision:v11])
    {
      v12 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        [resultsCopy score];
        v15 = v14;
        v16 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:0];
        [v16 floatValue];
        *buf = 136315650;
        v36 = "[CSAttSiriAFTMNode _handleAFTMResults:]";
        v37 = 2050;
        v38 = v15;
        v39 = 2050;
        v40 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Cancelling Siri request, score: %{public}.3f, threshold: %{public}.3f", buf, 0x20u);
      }

      v18 = +[CSSiriLauncher sharedLauncher];
      [v18 deactivateSiriActivationConnectionWithReason:3 withOptions:0 withContext:0];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = self->_receivers;
    v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [(SLProgressiveCheckerResult *)self->_latestResult score];
            [v24 attSiriNode:self didMitigate:v7 < v10 withScore:self->_requestId forRequestId:self->_taskName taskType:?];
          }
        }

        v21 = [(NSHashTable *)v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
    }

    [(SLProgressiveCheckerResult *)self->_latestResult score];
    v26 = v25;
    analyzedSamples = [(SLProgressiveCheckerResult *)self->_latestResult analyzedSamples];
    LODWORD(v28) = v26;
    [(CSAttSiriAFTMNode *)self _logAFTMEndMsgWithScore:analyzedSamples analyzedSamples:v28];
    [(CSAttSiriAFTMNode *)self _reportResultToAnalytics];
    [(CSAttSiriAFTMNode *)self _logResultToVTDirectory];
  }

  else
  {
    v29 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[CSAttSiriAFTMNode _handleAFTMResults:]";
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Empty result", buf, 0xCu);
    }
  }
}

- (BOOL)_shouldHandleMitigationDecision:(BOOL)decision
{
  if (decision)
  {
    return ![(NSString *)self->_taskName isEqualToString:@"AcousticSLTaskTypeContConv"]&& !self->_isShadowModeEnabled && self->_makeStandaloneMitigation;
  }

  else
  {
    return 0;
  }
}

- (void)_reset
{
  v3 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAFTMNode _reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Siri session ended, stoping acoustic checker", &v4, 0xCu);
  }

  [(SLProgressiveCheckerAnalyzer *)self->_acousticAnalyzer endAudio];
  self->_sessionInProgress = 0;
}

- (void)_addAudio:(id)audio
{
  audioCopy = audio;
  if (self->_sessionInProgress)
  {
    v5 = qword_10029E340;
    if (0xCCCCCCCCCCCCCCCDLL * qword_10029E340 <= 0x3333333333333333)
    {
      v6 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v10 = 136315650;
        v11 = "[CSAttSiriAFTMNode _addAudio:]";
        v12 = 1026;
        numSamples = [audioCopy numSamples];
        v14 = 2050;
        v15 = qword_10029E340;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s CSAcousticProxy has received %{public}d samples, heartbeat = %{public}lld", &v10, 0x1Cu);

        v5 = qword_10029E340;
      }
    }

    qword_10029E340 = v5 + 1;
    acousticAnalyzer = self->_acousticAnalyzer;
    v9 = [audioCopy dataForChannel:0];
    [(SLProgressiveCheckerAnalyzer *)acousticAnalyzer addAudio:v9];
  }
}

- (void)_startRequestWithContext:(id)context withVtei:(id)vtei withRequestId:(id)id completion:(id)completion
{
  contextCopy = context;
  vteiCopy = vtei;
  idCopy = id;
  completionCopy = completion;
  v15 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = +[CSAudioRecordContext recordTypeString:](CSAudioRecordContext, "recordTypeString:", [contextCopy type]);
    supportedRecordType = self->_supportedRecordType;
    taskName = self->_taskName;
    *buf = 136315906;
    v50 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withRequestId:completion:]";
    v51 = 2114;
    v52 = v17;
    v53 = 2050;
    v54 = supportedRecordType;
    v55 = 2114;
    v56 = taskName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Received start request for record type: %{public}@, supportedRecordTypes: %{public}lx taskName %{public}@", buf, 0x2Au);

    v15 = CSLogCategorySDSD;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sessionInProgress = self->_sessionInProgress;
    *buf = 136315394;
    v50 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withRequestId:completion:]";
    v51 = 1024;
    LODWORD(v52) = sessionInProgress;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s session in progress:%u", buf, 0x12u);
  }

  if (self->_sessionInProgress)
  {
    [(CSAttSiriAFTMNode *)self _reset];
  }

  if (self->_currentAsset)
  {
    v21 = self->_supportedRecordType;
    if ((v21 & (1 << [contextCopy type])) != 0)
    {
      v22 = [SLProgressiveCheckerAnalyzer alloc];
      configFile = self->_configFile;
      v48 = 0;
      v24 = [v22 initWithConfig:configFile withDelegate:self error:&v48];
      v25 = v48;
      acousticAnalyzer = self->_acousticAnalyzer;
      self->_acousticAnalyzer = v24;

      if (self->_acousticAnalyzer && !v25)
      {
        v27 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
        v28 = +[CSConfig inputRecordingIsFloat];
        v29 = 2;
        if (!v28)
        {
          v29 = 0;
        }

        v30 = [CSUtils getInputoriginFromRecordType:contextCopy withAsset:self->_currentAsset, v29];
        v46 = idCopy;
        v44 = v30;
        if ([v30 unsignedIntegerValue])
        {
          if ([v30 unsignedIntegerValue] == 4)
          {
            v31 = 5;
          }

          else if ([v30 unsignedIntegerValue] == 3)
          {
            v31 = 6;
          }

          else
          {
            v31 = 2;
          }
        }

        else
        {
          v31 = 4;
        }

        v33 = +[NSMutableDictionary dictionary];
        v45 = v27;
        [v33 setObject:v27 forKey:kSLLanguageCode];
        v34 = [NSNumber numberWithUnsignedInteger:v31];
        [v33 setObject:v34 forKey:kSLInvocationType];

        v35 = [NSNumber numberWithUnsignedInteger:v43];
        [v33 setObject:v35 forKey:kSLAudioSourceOption];

        if (vteiCopy)
        {
          [v33 setObject:vteiCopy forKey:kSLVoiceTriggerEventInfo];
        }

        v47 = 0;
        v36 = [[SLProgressiveCheckerContext alloc] initWithContext:v33 error:&v47];
        v37 = v47;
        v25 = v37;
        if (v36 && !v37)
        {
          [(SLProgressiveCheckerAnalyzer *)self->_acousticAnalyzer startNewRequestWithContext:v36];
          self->_sessionInProgress = 1;
          latestResult = self->_latestResult;
          self->_latestResult = 0;

          objc_storeStrong(&self->_context, context);
          objc_storeStrong(&self->_requestId, id);
          v39 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v40 = self->_acousticAnalyzer;
            *buf = 136315650;
            v50 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withRequestId:completion:]";
            v51 = 2114;
            v52 = v40;
            v53 = 2114;
            v54 = v33;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s Created SLProgressiveCheckerAnalyzer %{public}@ with context %{public}@", buf, 0x20u);
          }

          configVersion = [(CSAsset *)self->_currentAsset configVersion];
          [(CSAttSiriAFTMNode *)self _logAFTMStartMsg:configVersion taskType:self->_taskName];

          if (completionCopy)
          {
            completionCopy[2](completionCopy, 1, 0);
          }

          goto LABEL_34;
        }

        v42 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v50 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withRequestId:completion:]";
          v51 = 2114;
          v52 = v25;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s Unable to create progressive checker context with error:%{public}@", buf, 0x16u);
          if (!completionCopy)
          {
            goto LABEL_34;
          }
        }

        else if (!completionCopy)
        {
LABEL_34:

          idCopy = v46;
          goto LABEL_35;
        }

        (completionCopy)[2](completionCopy, 0, v25);
        goto LABEL_34;
      }

      v32 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v50 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withRequestId:completion:]";
        v51 = 2114;
        v52 = v25;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Unable to create progressive checker with error:%{public}@", buf, 0x16u);
        if (!completionCopy)
        {
          goto LABEL_35;
        }
      }

      else if (!completionCopy)
      {
LABEL_35:

        goto LABEL_36;
      }

      (completionCopy)[2](completionCopy, 0, v25);
      goto LABEL_35;
    }
  }

LABEL_36:
}

- (void)_setAsset:(id)asset forTask:(id)task
{
  assetCopy = asset;
  taskCopy = task;
  objc_storeStrong(&self->_currentAsset, asset);
  objc_storeStrong(&self->_taskName, task);
  if ([taskCopy isEqualToString:@"AcousticSLTaskTypeVoiceTrigger"])
  {
    progCheckerConfigFile = [assetCopy progCheckerConfigFile];
    configFile = self->_configFile;
    self->_configFile = progCheckerConfigFile;

    self->_supportedRecordType = [assetCopy supportedInputOrigins];
    checkerThresholds = [assetCopy checkerThresholds];
    thresholds = self->_thresholds;
    self->_thresholds = checkerThresholds;

    self->_isShadowModeEnabled = [assetCopy progCheckerShadowMode];
  }

  else if ([taskCopy isEqualToString:@"AcousticSLTaskTypeContConv"])
  {
    contConvConfigFile = [assetCopy contConvConfigFile];
    v14 = self->_configFile;
    self->_configFile = contConvConfigFile;

    self->_supportedRecordType = -1;
    contConvThresholds = [assetCopy contConvThresholds];
    v16 = self->_thresholds;
    self->_thresholds = contConvThresholds;

    self->_isShadowModeEnabled = 1;
  }

  v17 = self->_configFile;
  if (v17 && self->_supportedRecordType && self->_thresholds)
  {
    v18 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = "[CSAttSiriAFTMNode _setAsset:forTask:]";
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = taskCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Reading config from: %{public}@ for task %{public}@", &v24, 0x20u);
      v18 = CSLogCategorySDSD;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      supportedRecordType = self->_supportedRecordType;
      v24 = 136315394;
      v25 = "[CSAttSiriAFTMNode _setAsset:forTask:]";
      v26 = 2050;
      v27 = supportedRecordType;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Configured recording types: %{public}lu", &v24, 0x16u);
      v18 = CSLogCategorySDSD;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_thresholds;
      v24 = 136315394;
      v25 = "[CSAttSiriAFTMNode _setAsset:forTask:]";
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Thresholds read: %{public}@", &v24, 0x16u);
      v18 = CSLogCategorySDSD;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      isShadowModeEnabled = self->_isShadowModeEnabled;
      v24 = 136315394;
      v25 = "[CSAttSiriAFTMNode _setAsset:forTask:]";
      v26 = 1026;
      LODWORD(v27) = isShadowModeEnabled;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Shadow Mode: %{public}d", &v24, 0x12u);
    }
  }

  else
  {
    v22 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315650;
      v25 = "[CSAttSiriAFTMNode _setAsset:forTask:]";
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = taskCopy;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Invalid FTM config read from configFile %{public}@ for task %{public}@", &v24, 0x20u);
    }

    currentAsset = self->_currentAsset;
    self->_currentAsset = 0;
  }
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9970;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E9A10;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = chunkCopy;
  v7 = chunkCopy;
  dispatch_async(queue, v8);
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9A94;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addAudio:(id)audio
{
  audioCopy = audio;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E9B34;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = audioCopy;
  v6 = audioCopy;
  dispatch_async(queue, v7);
}

- (void)startRequestWithContext:(id)context withVtei:(id)vtei taskType:(id)type withRequestId:(id)id completion:(id)completion
{
  contextCopy = context;
  vteiCopy = vtei;
  typeCopy = type;
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E9C78;
  v23[3] = &unk_100252CD0;
  v23[4] = self;
  v24 = contextCopy;
  v25 = vteiCopy;
  v26 = typeCopy;
  v27 = idCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = idCopy;
  v20 = typeCopy;
  v21 = vteiCopy;
  v22 = contextCopy;
  dispatch_async(queue, v23);
}

- (void)_startRequestWithContext:(id)context withVtei:(id)vtei withVTAssets:(id)assets taskType:(id)type withRequestId:(id)id completion:(id)completion
{
  contextCopy = context;
  vteiCopy = vtei;
  assetsCopy = assets;
  typeCopy = type;
  idCopy = id;
  completionCopy = completion;
  if ([contextCopy isVoiceTriggered] & 1) != 0 || (objc_msgSend(contextCopy, "isContinuousConversation"))
  {
    [(CSAttSiriAFTMNode *)self _setAsset:assetsCopy forTask:typeCopy];
    [(CSAttSiriAFTMNode *)self _startRequestWithContext:contextCopy withVtei:vteiCopy withRequestId:idCopy completion:completionCopy];
  }

  else
  {
    v20 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = 136315394;
      v23 = "[CSAttSiriAFTMNode _startRequestWithContext:withVtei:withVTAssets:taskType:withRequestId:completion:]";
      v24 = 2048;
      type = [contextCopy type];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Don't run AFTM for recordType: %lld", &v22, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)startRequestWithContext:(id)context withVtei:(id)vtei withVTAssets:(id)assets taskType:(id)type withRequestId:(id)id completion:(id)completion
{
  contextCopy = context;
  vteiCopy = vtei;
  assetsCopy = assets;
  typeCopy = type;
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA0C0;
  block[3] = &unk_100251540;
  block[4] = self;
  v28 = contextCopy;
  v29 = vteiCopy;
  v30 = assetsCopy;
  v31 = typeCopy;
  v32 = idCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = idCopy;
  v23 = typeCopy;
  v24 = assetsCopy;
  v25 = vteiCopy;
  v26 = contextCopy;
  dispatch_async(queue, block);
}

- (void)setPrefetchedAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EA170;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA2B0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (![(NSHashTable *)self->_receivers containsObject:receiverCopy])
  {
    if ([receiverCopy conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriAFTMNodeDelegate])
    {
      [(NSHashTable *)self->_receivers addObject:receiverCopy];
    }

    else
    {
      v5 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "[CSAttSiriAFTMNode addReceiver:]";
        v8 = 2112;
        v9 = receiverCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

- (CSAttSiriAFTMNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriAFTMNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriAFTMNode)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CSAttSiriAFTMNode;
    v4 = [(CSAttSiriAFTMNode *)&v13 init];
    v5 = v4;
    if (v4)
    {
      requiredNodes = v4->_requiredNodes;
      v4->_type = 9;
      v4->_requiredNodes = &off_10025ED68;

      v5->_isReady = 0;
      v7 = +[NSHashTable weakObjectsHashTable];
      receivers = v5->_receivers;
      v5->_receivers = v7;

      v9 = dispatch_queue_create("AcousticSL", 0);
      queue = v5->_queue;
      v5->_queue = v9;

      v5->_sessionInProgress = 0;
      v5->_supportedRecordType = 0;
      v5->_makeStandaloneMitigation = CSIsHorseman();
      v11 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[CSAttSiriAFTMNode init]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Created AFTM-AS node", buf, 0xCu);
      }
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

@end