@interface CSAttSiriUresNode
+ (float)_extractLrnnScoreForResultCandidate:(id)a3;
- (BOOL)_isSpeechRecognizerTaskSupported:(id)a3;
- (BOOL)_shouldApplyAllowListOverride:(id)a3 withInputOrigin:(id)a4;
- (BOOL)_shouldRunMitigationForContext:(id)a3;
- (BOOL)_shouldRunMitigationForRequestContext:(id)a3 forTask:(id)a4;
- (BOOL)getLastMitigationResultForRequestId:(id)a3;
- (BOOL)getMitigationDecisionForRCId:(unint64_t)a3 forRequestId:(id)a4;
- (CSAttSiriController)attSiriController;
- (CSAttSiriMitigatorDeletgate)mitigatorDelegate;
- (CSAttSiriNLDAClassifierNode)nldaClassifierNode;
- (CSAttSiriOSDNode)osdNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriSignalDataAggregatorProtocol)gazeNode;
- (CSAttSiriTCUGenerator)tcuGenerator;
- (CSAttSiriUresNode)init;
- (CSAttSiriUresNode)initWithAttSiriController:(id)a3;
- (CSAttSiriUresNode)initWithSupportsUOD:(BOOL)a3 supportsHybridUOD:(BOOL)a4 isMedocFeatureEnabled:(BOOL)a5;
- (id)_decodeJsonFromFile:(id)a3;
- (id)_getRequestCtxForRequestId:(id)a3;
- (id)constructTCUIntendedInfoForRequestId:(id)a3 withResultCandidate:(id)a4;
- (id)getUresInputFeaturesForRequestId:(id)a3;
- (id)getUresInvocationTypeForRequestId:(id)a3;
- (void)_createMitigatorModelWithConfig:(id)a3;
- (void)_createModelAndRunInferenceForRcId:(unint64_t)a3 withRequestContext:(id)a4 withCompletion:(id)a5;
- (void)_fetchMitigationConfigForRecordCtx:(id)a3;
- (void)_holdTransactionForUresProcessing;
- (void)_logLRNNFailMsgForMhId:(id)a3;
- (void)_logLatticeRNNResults:(id)a3 forMhId:(id)a4;
- (void)_logURESEndMessageWithScore:(float)a3 threshold:(float)a4 spkrIDThreshold:(float)a5 assetVersion:(id)a6 withMhId:(id)a7;
- (void)_logURESFailureMsgInput:(unint64_t)a3 forMhId:(id)a4;
- (void)_logURESResultsForInput:(id)a3 withOutput:(id)a4 forMhId:(id)a5;
- (void)_readAllowListVocabFromFile:(id)a3;
- (void)_releaseUresProcessingTransaction;
- (void)_runLRNNOnlyMitigationForRCId:(unint64_t)a3 speechPackage:(id)a4 requestId:(id)a5 completion:(id)a6;
- (void)_updateInputFeats:(id)a3 forSignalsFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)_updateSupportedInputOrigins;
- (void)addReceiver:(id)a3;
- (void)asrStartedForRequestId:(id)a3 isRecognitionModeClassic:(BOOL)a4;
- (void)attSiriNode:(id)a3 didMitigate:(BOOL)a4 withScore:(float)a5 forRequestId:(id)a6 taskType:(id)a7;
- (void)attSiriNode:(id)a3 didUpdateAttentionState:(unint64_t)a4;
- (void)attSiriNode:(id)a3 didUpdateOSDFeatures:(id)a4 withFrameDurationMs:(double)a5 withMHID:(id)a6;
- (void)attSiriNode:(id)a3 didUpdateWithSpeakerInfo:(id)a4 forReqId:(id)a5;
- (void)didReceiveTCUUpdateForTCUId:(id)a3 withTCUAccepted:(BOOL)a4 forRequestId:(id)a5 isFinal:(BOOL)a6;
- (void)getUresInvocationTypeForRequestId:(id)a3 withCompletion:(id)a4;
- (void)processResultCandidate:(id)a3 forRCId:(unint64_t)a4 forTask:(id)a5 forRequestId:(id)a6 completion:(id)a7;
- (void)registerGazeNode:(id)a3;
- (void)registerNLDAClassifierNode:(id)a3;
- (void)registerOSDNode:(id)a3;
- (void)registerSSRNode:(id)a3;
- (void)registerTCUGenerator:(id)a3;
- (void)setASRModelRootDirectory:(id)a3;
- (void)setEndpointerFeatureEoS:(float)a3;
- (void)setPrefetchedAsset:(id)a3;
- (void)startUresRequestWithAudioRecordContext:(id)a3 forRequestId:(id)a4 mhId:(id)a5 voiceTriggerInfo:(id)a6;
- (void)stop;
- (void)stopUresProcessingForRequest:(id)a3;
@end

@implementation CSAttSiriUresNode

- (CSAttSiriTCUGenerator)tcuGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_tcuGenerator);

  return WeakRetained;
}

- (CSAttSiriMitigatorDeletgate)mitigatorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mitigatorDelegate);

  return WeakRetained;
}

- (CSAttSiriSSRNode)ssrNode
{
  WeakRetained = objc_loadWeakRetained(&self->_ssrNode);

  return WeakRetained;
}

- (CSAttSiriNLDAClassifierNode)nldaClassifierNode
{
  WeakRetained = objc_loadWeakRetained(&self->_nldaClassifierNode);

  return WeakRetained;
}

- (CSAttSiriSignalDataAggregatorProtocol)gazeNode
{
  WeakRetained = objc_loadWeakRetained(&self->_gazeNode);

  return WeakRetained;
}

- (CSAttSiriOSDNode)osdNode
{
  WeakRetained = objc_loadWeakRetained(&self->_osdNode);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (id)getUresInputFeaturesForRequestId:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10012469C;
  v16 = sub_1001246AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001246B4;
  block[3] = &unk_100252228;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_isSpeechRecognizerTaskSupported:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:CoreEmbeddedSpeechRecognizerTaskBeto];
  }

  return v4;
}

- (void)_readAllowListVocabFromFile:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [NSString stringWithContentsOfFile:v4 encoding:4 error:&v17];
  v6 = v17;
  v7 = [v5 lowercaseString];

  v8 = +[NSCharacterSet newlineCharacterSet];
  v9 = [v7 componentsSeparatedByCharactersInSet:v8];

  if (v9)
  {
    v10 = +[NSArray array];
    allowVocabList = self->_allowVocabList;
    p_allowVocabList = &self->_allowVocabList;
    *p_allowVocabList = v10;

    objc_storeStrong(p_allowVocabList, v9);
    v13 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *p_allowVocabList;
      v15 = v13;
      v16 = [v14 count];
      *buf = 136315650;
      v19 = "[CSAttSiriUresNode _readAllowListVocabFromFile:]";
      v20 = 2114;
      v21 = v4;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Read SDSD override list from %{public}@ with %lu entries", buf, 0x20u);
    }
  }
}

- (BOOL)_shouldApplyAllowListOverride:(id)a3 withInputOrigin:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToNumber:&off_10025E7B0])
  {
    if (self->_allowVocabList)
    {
      v7 = [v6 oneBestTranscript];
      v8 = [v7 lowercaseString];

      v9 = [v6 oneBestTokenList];
      if ([v9 count] <= self->_allowListWordCountThreshold)
      {
        if ([(NSArray *)self->_allowVocabList containsObject:v8])
        {
          v14 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "[CSAttSiriUresNode _shouldApplyAllowListOverride:withInputOrigin:]";
            v18 = 2112;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Found transcript (%@) match in override list, don't mitigate", &v16, 0x16u);
          }

          v13 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v10 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
        {
          v16 = 136315138;
          v17 = "[CSAttSiriUresNode _shouldApplyAllowListOverride:withInputOrigin:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Num tokens exceeds threshold, don't apply override", &v16, 0xCu);
        }
      }

      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[CSAttSiriUresNode _shouldApplyAllowListOverride:withInputOrigin:]";
      v12 = "%s Override vocab list not set";
      goto LABEL_10;
    }
  }

  else
  {
    v11 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[CSAttSiriUresNode _shouldApplyAllowListOverride:withInputOrigin:]";
      v12 = "%s Override not applicable for non-magus inputOrigin";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v16, 0xCu);
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (id)_decodeJsonFromFile:(id)a3
{
  v3 = [NSData dataWithContentsOfFile:a3];
  if (v3)
  {
    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v12 = "[CSAttSiriUresNode _decodeJsonFromFile:]";
        v13 = 2112;
        v14 = v3;
        v15 = 2114;
        v16 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ERR: read metafile %@ failed with %{public}@ - defaulting to NO", buf, 0x20u);
      }

      v7 = 0;
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[CSAttSiriUresNode _decodeJsonFromFile:]";
      v13 = 2112;
      v14 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ERR: metaData is nil, defaulting to NO for %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_updateSupportedInputOrigins
{
  supportedInputOrigins = self->_supportedInputOrigins;
  self->_supportedInputOrigins = 0;

  v4 = [(CSAttSiriUresNode *)self _decodeJsonFromFile:self->_configFile];
  if (v4)
  {
    v9 = v4;
    v5 = [v4 objectForKeyedSubscript:@"supportedInputOrigins"];

    v4 = v9;
    if (v5)
    {
      v6 = [v9 objectForKeyedSubscript:@"supportedInputOrigins"];
      v7 = [NSArray arrayWithArray:v6];
      v8 = self->_supportedInputOrigins;
      self->_supportedInputOrigins = v7;

      v4 = v9;
    }
  }
}

- (void)_updateInputFeats:(id)a3 forSignalsFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_gazeNode);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_osdNode);

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_gazeNode);
      v13 = [v12 hadSignalsFrom:a4 to:a5];

      [v8 setDidDetectGazeAtOrb:v13];
      v14 = objc_loadWeakRetained(&self->_osdNode);
      v15 = [v14 hadSignalsFrom:a4 to:a5];

      [v8 setDidDetectVisualActivity:v13];
      v16 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = "[CSAttSiriUresNode _updateInputFeats:forSignalsFrom:to:]";
        v19 = 1024;
        v20 = v13;
        v21 = 1024;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Updated gaze signal to %i and visual speech signal to %i", &v17, 0x18u);
      }
    }
  }
}

- (BOOL)_shouldRunMitigationForContext:(id)a3
{
  v3 = a3;
  v4 = (CSIsCommunalDevice() & 1) == 0 && !CSIsWatch() || ([v3 isUIButtonPress] & 1) == 0 && (objc_msgSend(v3, "isHomePressed") & 1) == 0 && (objc_msgSend(v3, "isRemoraButtonPress") & 1) == 0 && (objc_msgSend(v3, "isHearstDoubleTapTriggered") & 1) == 0;

  return v4;
}

- (void)_releaseUresProcessingTransaction
{
  osTransaction = self->_osTransaction;
  v4 = CSLogCategorySDSD;
  v5 = os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO);
  if (osTransaction)
  {
    if (v5)
    {
      v6 = 136315138;
      v7 = "[CSAttSiriUresNode _releaseUresProcessingTransaction]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s OS transaction released after UReS inference", &v6, 0xCu);
      osTransaction = self->_osTransaction;
    }

    self->_osTransaction = 0;
  }

  else if (v5)
  {
    v6 = 136315138;
    v7 = "[CSAttSiriUresNode _releaseUresProcessingTransaction]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s osTransaction already released", &v6, 0xCu);
  }
}

- (void)_holdTransactionForUresProcessing
{
  if (!self->_osTransaction)
  {
    v3 = [NSString stringWithFormat:@"Ures ID - %@", self->_mhId];
    v4 = [[CSOSTransaction alloc] initWithDescription:v3];
    osTransaction = self->_osTransaction;
    self->_osTransaction = v4;
  }

  v6 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[CSAttSiriUresNode _holdTransactionForUresProcessing]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s OS transaction obtained for UReS inference", buf, 0xCu);
  }
}

- (void)didReceiveTCUUpdateForTCUId:(id)a3 withTCUAccepted:(BOOL)a4 forRequestId:(id)a5 isFinal:(BOOL)a6
{
  v9 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012528C;
  block[3] = &unk_1002520F0;
  v15 = a4;
  v16 = a6;
  v13 = v9;
  v14 = self;
  v11 = v9;
  dispatch_async(queue, block);
}

- (id)constructTCUIntendedInfoForRequestId:(id)a3 withResultCandidate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[CSUtils isTCUSupported])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10012469C;
    v34 = sub_1001246AC;
    v35 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_10012469C;
    v28[4] = sub_1001246AC;
    v29 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100125718;
    block[3] = &unk_1002520A0;
    v9 = v6;
    v21 = v9;
    v22 = self;
    v10 = v7;
    v23 = v10;
    v24 = v28;
    v25 = v27;
    v26 = &v30;
    dispatch_sync(queue, block);
    v11 = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100125D3C;
    v14[3] = &unk_1002520C8;
    v18 = v28;
    v15 = v9;
    v16 = self;
    v19 = v27;
    v17 = v10;
    dispatch_async(v11, v14);
    v12 = v31[5];

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v28, 8);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)attSiriNode:(id)a3 didUpdateWithSpeakerInfo:(id)a4 forReqId:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001264BC;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)a3 didUpdateOSDFeatures:(id)a4 withFrameDurationMs:(double)a5 withMHID:(id)a6
{
  v8 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100126B24;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v12 = v8;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)a3 didMitigate:(BOOL)a4 withScore:(float)a5 forRequestId:(id)a6 taskType:(id)a7
{
  v10 = a6;
  v11 = a7;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100126E58;
  v15[3] = &unk_100252078;
  v19 = a5;
  v16 = v10;
  v17 = v11;
  v18 = self;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)attSiriNode:(id)a3 didUpdateAttentionState:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100127398;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_createMitigatorModelWithConfig:(id)a3
{
  v4 = a3;
  if (self->_mitigator)
  {
    v5 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriUresNode _createMitigatorModelWithConfig:]";
      v6 = "%s Reusing existing mitigator instance";
      v7 = v5;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = 0;
  v8 = [[SLUresMitigator alloc] initWithConfig:v4 error:&v14];
  v9 = v14;
  mitigator = self->_mitigator;
  self->_mitigator = v8;

  v11 = CSLogCategorySDSD;
  if (self->_mitigator && !v9)
  {
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSAttSiriUresNode _createMitigatorModelWithConfig:]";
      v6 = "%s Created URES Mitigator !";
      v7 = v11;
      goto LABEL_8;
    }

LABEL_9:
    [(CSAttSiriUresNode *)self _holdTransactionForUresProcessing];
    goto LABEL_10;
  }

  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = [v9 localizedDescription];
    *buf = 136315394;
    v16 = "[CSAttSiriUresNode _createMitigatorModelWithConfig:]";
    v17 = 2114;
    v18 = v13;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to create Ures mitigator with err: %{public}@", buf, 0x16u);
  }

LABEL_10:
}

- (void)setEndpointerFeatureEoS:(float)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100127810;
  v4[3] = &unk_1002534E8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)_runLRNNOnlyMitigationForRCId:(unint64_t)a3 speechPackage:(id)a4 requestId:(id)a5 completion:(id)a6
{
  v10 = a6;
  requestIdToFeatsMapping = self->_requestIdToFeatsMapping;
  v12 = a4;
  v13 = [(NSMutableDictionary *)requestIdToFeatsMapping objectForKeyedSubscript:a5];
  v14 = [v12 latticeMitigatorResult];
  [v14 score];
  v16 = v15;
  v17 = v15;

  v18 = [v12 latticeMitigatorResult];

  [v18 threshold];
  v20 = v19;
  v21 = v19;

  v22 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315394;
    v35 = "[CSAttSiriUresNode _runLRNNOnlyMitigationForRCId:speechPackage:requestId:completion:]";
    v36 = 1024;
    LODWORD(v37) = v16 < v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s shouldMitigate = %d", &v34, 0x12u);
  }

  if (v16 >= v20)
  {
    v23 = @"requestNotMitigated";
  }

  else
  {
    v23 = @"requestMitigated";
  }

  [(CSAttSiriUresNode *)self _storeMitigationDecision:v16 < v20 forRCId:a3 requestContext:v13];
  v24 = [v13 mhId];
  LODWORD(v25) = -1.0;
  *&v26 = v16;
  *&v27 = v20;
  [(CSAttSiriUresNode *)self _logURESEndMessageWithScore:@"16.1.1" threshold:v24 spkrIDThreshold:v26 assetVersion:v27 withMhId:v25];

  v28 = v23;
  v40[0] = @"score";
  v29 = [NSNumber numberWithDouble:v17];
  v41[0] = v29;
  v41[1] = v28;
  v40[1] = @"decision";
  v40[2] = @"decisionValue";
  v30 = [NSNumber numberWithBool:v16 < v20];
  v41[2] = v30;
  v40[3] = @"threshold";
  v31 = [NSNumber numberWithDouble:v21];
  v40[4] = @"assetVersion";
  v41[3] = v31;
  v41[4] = @"16.1.1";
  v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:5];

  v33 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315650;
    v35 = "[CSAttSiriUresNode _runLRNNOnlyMitigationForRCId:speechPackage:requestId:completion:]";
    v36 = 2114;
    v37 = v32;
    v38 = 2050;
    v39 = a3;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Final mitigation result: %{public}@ for RCId: %{public}lu", &v34, 0x20u);
  }

  if (v10)
  {
    v10[2](v10, v16 < v20);
  }
}

- (void)processResultCandidate:(id)a3 forRCId:(unint64_t)a4 forTask:(id)a5 forRequestId:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = AFSiriLogContextSpeech;
  v17 = os_signpost_id_generate(AFSiriLogContextSpeech);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v18, "UresMitigator_processResultCandidateStart", "", buf, 2u);
    }
  }

  queue = self->_queue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100127F1C;
  v24[3] = &unk_100252050;
  v24[4] = self;
  v25 = v14;
  v28 = v15;
  v29 = a4;
  v26 = v13;
  v27 = v12;
  v20 = v12;
  v21 = v13;
  v22 = v15;
  v23 = v14;
  dispatch_async(queue, v24);
}

- (BOOL)_shouldRunMitigationForRequestContext:(id)a3 forTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordCtx];
  v9 = [(CSAttSiriUresNode *)self _shouldRunMitigationForContext:v8];

  if (v9)
  {
    v10 = [v6 inputFeats];
    v11 = v10;
    if (v10 && ([v10 inputOrigin], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      supportedInputOrigins = self->_supportedInputOrigins;
      if (supportedInputOrigins && ([v11 inputOrigin], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NSArray containsObject:](supportedInputOrigins, "containsObject:", v14), v14, (v15 & 1) == 0))
      {
        v26 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v29 = v26;
          v30 = [v11 inputOrigin];
          v31 = 136315394;
          v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
          v33 = 2114;
          v34 = v30;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s UReS not supported for inputOrigin: %{public}@, abort", &v31, 0x16u);
        }

        v21 = [v6 mhId];
        v22 = self;
        v23 = 1906;
      }

      else
      {
        if ([(CSAttSiriUresNode *)self _isSpeechRecognizerTaskSupported:v7])
        {
          v16 = 1;
LABEL_14:

          goto LABEL_15;
        }

        v25 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v31 = 136315394;
          v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
          v33 = 2114;
          v34 = v7;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Recognizer task: %{public}@ isn't support, don't run URES mitigator", &v31, 0x16u);
        }

        v21 = [v6 mhId];
        v22 = self;
        v23 = 1905;
      }
    }

    else
    {
      v20 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v27 = v20;
        v28 = [v11 inputOrigin];
        v31 = 136315394;
        v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
        v33 = 2114;
        v34 = v28;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Unable to get all required inputs for decision - (inputOrigin: %{public}@), abort", &v31, 0x16u);
      }

      v21 = [v6 mhId];
      v22 = self;
      v23 = 1901;
    }

    [(CSAttSiriUresNode *)v22 _logURESFailureMsgInput:v23 forMhId:v21];

    v16 = 0;
    goto LABEL_14;
  }

  v17 = CSLogCategorySDSD;
  v16 = 0;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v6 recordCtx];
    v31 = 136315394;
    v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
    v33 = 2114;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Mitigation not supported for ctx: %{public}@", &v31, 0x16u);

    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (void)_createModelAndRunInferenceForRcId:(unint64_t)a3 withRequestContext:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(CSAttSiriUresNode *)self _createMitigatorModelWithConfig:self->_configFile];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_10012469C;
  v19[4] = sub_1001246AC;
  v20 = 0;
  if (self->_mitigator)
  {
    v10 = CSLogCategorySDSD;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 mhId];
      *buf = 136315650;
      v22 = "[CSAttSiriUresNode _createModelAndRunInferenceForRcId:withRequestContext:withCompletion:]";
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s request-MHID:%@ requestCtx:%@", buf, 0x20u);
    }

    mitigator = self->_mitigator;
    v13 = [v8 inputFeats];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100128BD8;
    v14[3] = &unk_100252028;
    v17 = v19;
    v16 = v9;
    v14[4] = self;
    v18 = a3;
    v15 = v8;
    [(SLUresMitigator *)mitigator processInputFeats:v13 completion:v14];
  }

  else
  {
    [(CSAttSiriUresNode *)self _storeMitigationDecision:0 forRCId:a3 requestContext:v8];
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }

  _Block_object_dispose(v19, 8);
}

- (void)_logURESFailureMsgInput:(unint64_t)a3 forMhId:(id)a4
{
  v5 = a4;
  v6 = [SISchemaUUID alloc];
  v7 = [[NSUUID alloc] initWithUUIDString:v5];

  v13 = [v6 initWithNSUUID:v7];
  v8 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionFailed);
  [v8 setErrorCode:a3];
  v9 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEvaluationContext);
  [v9 setFailed:v8];
  v10 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  [v10 setMhId:v13];
  v11 = objc_alloc_init(MHSchemaMHClientEvent);
  [v11 setMhId:v13];
  [v11 setEventMetadata:v10];
  [v11 setUnintendedResponseSuppressionExecutionContext:v9];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v11];
}

- (void)_logURESResultsForInput:(id)a3 withOutput:(id)a4 forMhId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v45 = self;
    v11 = [SISchemaUUID alloc];
    v12 = [[NSUUID alloc] initWithUUIDString:v10];
    v13 = [v11 initWithNSUUID:v12];

    v14 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated);
    v15 = [v8 acousticFTMScores];
    [v15 floatValue];
    [v14 setScore:?];

    v16 = [v8 speechPackage];
    v17 = [v16 latticeMitigatorResult];

    v44 = v8;
    if (v17)
    {
      v17 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEnded);
      v18 = [v8 speechPackage];
      v19 = [v18 latticeMitigatorResult];
      [v19 score];
      [v17 setScore:?];
    }

    v20 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionStarted);
    v21 = [v9 extractedFeats];
    v22 = [v21 objectForKeyedSubscript:@"numAsrRecords"];
    [v20 setNumAsrRecords:{objc_msgSend(v22, "unsignedIntValue")}];

    v23 = [v9 extractedFeats];
    v24 = [v23 objectForKeyedSubscript:@"numTokensTopPath"];
    [v20 setNumTokensTopPath:{objc_msgSend(v24, "unsignedIntValue")}];

    v25 = [v9 extractedFeats];
    v26 = [v25 objectForKeyedSubscript:@"trailingSilenceDuration"];
    [v26 floatValue];
    [v20 setTrailingSilenceDurationInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v27 = v14;
    [v20 setAftmScore:v14];
    if (v17)
    {
      [v20 setLrnnScore:v17];
    }

    v28 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEvaluationContext);
    [v28 setStartedOrChanged:v20];
    v29 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v29 setMhId:v13];
    v30 = objc_alloc_init(MHSchemaMHClientEvent);
    [v30 setMhId:v13];
    [v30 setEventMetadata:v29];
    [v30 setUnintendedResponseSuppressionExecutionContext:v28];
    +[AssistantSiriAnalytics sharedStream];
    v32 = v31 = v13;
    [v32 emitMessage:v30];

    [v9 score];
    v34 = v33;
    [v9 threshold];
    v36 = v35;
    [v9 speakerIDThreshold];
    v38 = v37;
    v39 = [v9 assetVersion];
    LODWORD(v40) = v34;
    LODWORD(v41) = v36;
    LODWORD(v42) = v38;
    [(CSAttSiriUresNode *)v45 _logURESEndMessageWithScore:v39 threshold:v10 spkrIDThreshold:v40 assetVersion:v41 withMhId:v42];

    v8 = v44;
  }

  else
  {
    v43 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = "[CSAttSiriUresNode _logURESResultsForInput:withOutput:forMhId:]";
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", buf, 0xCu);
    }
  }
}

- (void)_logURESEndMessageWithScore:(float)a3 threshold:(float)a4 spkrIDThreshold:(float)a5 assetVersion:(id)a6 withMhId:(id)a7
{
  v11 = a6;
  v12 = a7;
  if (v12)
  {
    v13 = [SISchemaUUID alloc];
    v14 = [[NSUUID alloc] initWithUUIDString:v12];
    v15 = [v13 initWithNSUUID:v14];

    v16 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEnded);
    [v16 setModelVersion:v11];
    *&v17 = a3;
    [v16 setScore:v17];
    *&v18 = a4;
    [v16 setThreshold:v18];
    *&v19 = a5;
    [v16 setSpeakerIDThreshold:v19];
    v20 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEvaluationContext);
    [v20 setEnded:v16];
    v21 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v21 setMhId:v15];
    v22 = objc_alloc_init(MHSchemaMHClientEvent);
    [v22 setMhId:v15];
    [v22 setUnintendedResponseSuppressionExecutionContext:v20];
    [v22 setEventMetadata:v21];
    v23 = +[AssistantSiriAnalytics sharedStream];
    [v23 emitMessage:v22];

    v24 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = "[CSAttSiriUresNode _logURESEndMessageWithScore:threshold:spkrIDThreshold:assetVersion:withMhId:]";
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Submit URES SELF metrics for MH ID: %@", &v26, 0x16u);
    }
  }

  else
  {
    v25 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "[CSAttSiriUresNode _logURESEndMessageWithScore:threshold:spkrIDThreshold:assetVersion:withMhId:]";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v26, 0xCu);
    }
  }
}

- (void)_logLRNNFailMsgForMhId:(id)a3
{
  v3 = a3;
  v4 = [SISchemaUUID alloc];
  v5 = [[NSUUID alloc] initWithUUIDString:v3];

  v11 = [v4 initWithNSUUID:v5];
  v6 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationFailed);
  [v6 setErrorCode:1904];
  v7 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext);
  [v7 setFailed:v6];
  v8 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  [v8 setMhId:v11];
  v9 = objc_alloc_init(MHSchemaMHClientEvent);
  [v9 setMhId:v11];
  [v9 setEventMetadata:v8];
  [v9 setLatticeFalseTriggerMitigationEvaluationContext:v7];
  v10 = +[AssistantSiriAnalytics sharedStream];
  [v10 emitMessage:v9];
}

- (void)_logLatticeRNNResults:(id)a3 forMhId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [SISchemaUUID alloc];
    v8 = [[NSUUID alloc] initWithUUIDString:v6];
    v9 = [v7 initWithNSUUID:v8];

    v10 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationStarted);
    v11 = [v5 version];
    [v10 setModelVersion:v11];

    v12 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext);
    [v12 setStartedOrChanged:v10];
    v13 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v13 setMhId:v9];
    v14 = objc_alloc_init(MHSchemaMHClientEvent);
    [v14 setMhId:v9];
    [v14 setEventMetadata:v13];
    [v14 setLatticeFalseTriggerMitigationEvaluationContext:v12];
    v15 = +[AssistantSiriAnalytics sharedStream];
    [v15 emitMessage:v14];

    v16 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEnded);
    [v5 score];
    [v16 setScore:?];
    [v5 threshold];
    [v16 setThreshold:?];
    v17 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext);

    [v17 setEnded:v16];
    v18 = objc_alloc_init(MHSchemaMHClientEventMetadata);

    [v18 setMhId:v9];
    v19 = objc_alloc_init(MHSchemaMHClientEvent);

    [v19 setMhId:v9];
    [v19 setEventMetadata:v18];
    [v19 setLatticeFalseTriggerMitigationEvaluationContext:v17];
    v20 = +[AssistantSiriAnalytics sharedStream];
    [v20 emitMessage:v19];

    v21 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[CSAttSiriUresNode _logLatticeRNNResults:forMhId:]";
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Submit LRNN SELF metrics for MH ID: %@", &v23, 0x16u);
    }
  }

  else
  {
    v22 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "[CSAttSiriUresNode _logLatticeRNNResults:forMhId:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v23, 0xCu);
    }
  }
}

- (BOOL)getMitigationDecisionForRCId:(unint64_t)a3 forRequestId:(id)a4
{
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]";
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A124;
  block[3] = &unk_100252000;
  block[4] = self;
  v9 = v6;
  v24 = &v26;
  v25 = a3;
  v23 = v9;
  dispatch_sync(queue, block);
  v10 = self->_queue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10012A384;
  v17 = &unk_100252000;
  v18 = self;
  v11 = v9;
  v20 = &v26;
  v21 = a3;
  v19 = v11;
  dispatch_async(v10, &v14);
  [(CSAttSiriUresNode *)self stopUresProcessingForRequest:v11, v14, v15, v16, v17, v18];
  v12 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v12 & 1;
}

- (BOOL)getLastMitigationResultForRequestId:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A740;
  block[3] = &unk_100252228;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)setASRModelRootDirectory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012AA9C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stopUresProcessingForRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012AC90;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_fetchMitigationConfigForRecordCtx:(id)a3
{
  v4 = a3;
  prefetchedAsset = self->_prefetchedAsset;
  if (prefetchedAsset)
  {
    v6 = [(CSAsset *)prefetchedAsset allowKeywordsFile];
    [(CSAttSiriUresNode *)self _readAllowListVocabFromFile:v6];

    v7 = [(CSAsset *)self->_prefetchedAsset allowListWordCountThreshold];
    self->_allowListWordCountThreshold = v7;
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[CSAttSiriUresNode _fetchMitigationConfigForRecordCtx:]";
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s _allowListWordCountThreshold:%lu", &v17, 0x16u);
    }

    v9 = [(CSAsset *)self->_prefetchedAsset getCategoryKeyWithRecordCtx:v4];
    v10 = [(CSAsset *)self->_prefetchedAsset mitigationConfigFileForCategory:v9];
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v10];

    if (v12)
    {
      objc_storeStrong(&self->_configFile, v10);
      v13 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        configFile = self->_configFile;
        v17 = 136315394;
        v18 = "[CSAttSiriUresNode _fetchMitigationConfigForRecordCtx:]";
        v19 = 2114;
        v20 = configFile;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Use config file at : %{public}@", &v17, 0x16u);
      }

      [(CSAttSiriUresNode *)self _updateSupportedInputOrigins];
    }

    else
    {
      v16 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[CSAttSiriUresNode _fetchMitigationConfigForRecordCtx:]";
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Mitigation file doesn't exist at %{public}@, don't use Siri Assets for mitigation", &v17, 0x16u);
      }
    }
  }

  else
  {
    v15 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSAttSiriUresNode _fetchMitigationConfigForRecordCtx:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Prefetched asset not set", &v17, 0xCu);
    }
  }
}

- (void)asrStartedForRequestId:(id)a3 isRecognitionModeClassic:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B0E4;
  block[3] = &unk_100253900;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)startUresRequestWithAudioRecordContext:(id)a3 forRequestId:(id)a4 mhId:(id)a5 voiceTriggerInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B450;
  block[3] = &unk_100252D58;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v24 = self;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  dispatch_async(queue, block);
}

- (void)getUresInvocationTypeForRequestId:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012BB94;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)getUresInvocationTypeForRequestId:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10012469C;
  v16 = sub_1001246AC;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012BDCC;
  block[3] = &unk_100252228;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_getRequestCtxForRequestId:(id)a3
{
  requestIdToFeatsMapping = self->_requestIdToFeatsMapping;
  if (a3)
  {
    v4 = [(NSMutableDictionary *)requestIdToFeatsMapping objectForKeyedSubscript:?];
  }

  else
  {
    v5 = [(NSMutableDictionary *)requestIdToFeatsMapping allValues];
    v4 = [v5 firstObject];
  }

  return v4;
}

- (void)setPrefetchedAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012BFE0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_receivers containsObject:v4])
  {
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriUresNodeDelegate])
    {
      [(NSHashTable *)self->_receivers addObject:v4];
    }

    else
    {
      v5 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[CSAttSiriUresNode addReceiver:]";
        v8 = 2112;
        v9 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

- (void)registerTCUGenerator:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C260;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerSSRNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C304;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerNLDAClassifierNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C3A8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerGazeNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C44C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerOSDNode:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C4F0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012C570;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAttSiriUresNode)initWithSupportsUOD:(BOOL)a3 supportsHybridUOD:(BOOL)a4 isMedocFeatureEnabled:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v21.receiver = self;
  v21.super_class = CSAttSiriUresNode;
  v8 = [(CSAttSiriUresNode *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 8;
    v8->_supportsUnderstandingOnDevice = v7;
    v8->_supportsHybridUnderstandingOnDevice = v6;
    v8->_isMedocFeatureEnabled = a5;
    if (v7 || v6)
    {
      v10 = &off_10025EDB0;
      if (v7)
      {
        v10 = &off_10025ED98;
      }

      requiredNodes = v8->_requiredNodes;
      v8->_requiredNodes = v10;
    }

    v9->_isReady = 0;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("CSAttSiriUresNode queue", v12);
    queue = v9->_queue;
    v9->_queue = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    receivers = v9->_receivers;
    v9->_receivers = v15;

    v17 = +[NSMutableDictionary dictionary];
    requestIdToFeatsMapping = v9->_requestIdToFeatsMapping;
    v9->_requestIdToFeatsMapping = v17;

    v19 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[CSAttSiriUresNode initWithSupportsUOD:supportsHybridUOD:isMedocFeatureEnabled:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Created URES-AS node", buf, 0xCu);
    }
  }

  return v9;
}

- (CSAttSiriUresNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriUresNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriUresNode)init
{
  v3 = +[CSUtils supportsUnderstandingOnDevice];
  v4 = +[CSUtils supportsHybridUnderstandingOnDevice];
  v5 = +[CSUtils isMedocFeatureEnabled];

  return [(CSAttSiriUresNode *)self initWithSupportsUOD:v3 supportsHybridUOD:v4 isMedocFeatureEnabled:v5];
}

+ (float)_extractLrnnScoreForResultCandidate:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = -1.0;
  if (v3)
  {
    v6 = [v3 latticeMitigatorResult];

    if (v6)
    {
      v7 = [v4 latticeMitigatorResult];
      [v7 score];
      v5 = v8;
    }
  }

  v9 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[CSAttSiriUresNode _extractLrnnScoreForResultCandidate:]";
    v13 = 2050;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Setting lrnn score to %{public}.3f per speech package", &v11, 0x16u);
  }

  return v5;
}

@end