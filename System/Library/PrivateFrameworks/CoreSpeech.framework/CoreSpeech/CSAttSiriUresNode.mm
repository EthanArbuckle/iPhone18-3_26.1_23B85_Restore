@interface CSAttSiriUresNode
+ (float)_extractLrnnScoreForResultCandidate:(id)candidate;
- (BOOL)_isSpeechRecognizerTaskSupported:(id)supported;
- (BOOL)_shouldApplyAllowListOverride:(id)override withInputOrigin:(id)origin;
- (BOOL)_shouldRunMitigationForContext:(id)context;
- (BOOL)_shouldRunMitigationForRequestContext:(id)context forTask:(id)task;
- (BOOL)getLastMitigationResultForRequestId:(id)id;
- (BOOL)getMitigationDecisionForRCId:(unint64_t)id forRequestId:(id)requestId;
- (CSAttSiriController)attSiriController;
- (CSAttSiriMitigatorDeletgate)mitigatorDelegate;
- (CSAttSiriNLDAClassifierNode)nldaClassifierNode;
- (CSAttSiriOSDNode)osdNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriSignalDataAggregatorProtocol)gazeNode;
- (CSAttSiriTCUGenerator)tcuGenerator;
- (CSAttSiriUresNode)init;
- (CSAttSiriUresNode)initWithAttSiriController:(id)controller;
- (CSAttSiriUresNode)initWithSupportsUOD:(BOOL)d supportsHybridUOD:(BOOL)oD isMedocFeatureEnabled:(BOOL)enabled;
- (id)_decodeJsonFromFile:(id)file;
- (id)_getRequestCtxForRequestId:(id)id;
- (id)constructTCUIntendedInfoForRequestId:(id)id withResultCandidate:(id)candidate;
- (id)getUresInputFeaturesForRequestId:(id)id;
- (id)getUresInvocationTypeForRequestId:(id)id;
- (void)_createMitigatorModelWithConfig:(id)config;
- (void)_createModelAndRunInferenceForRcId:(unint64_t)id withRequestContext:(id)context withCompletion:(id)completion;
- (void)_fetchMitigationConfigForRecordCtx:(id)ctx;
- (void)_holdTransactionForUresProcessing;
- (void)_logLRNNFailMsgForMhId:(id)id;
- (void)_logLatticeRNNResults:(id)results forMhId:(id)id;
- (void)_logURESEndMessageWithScore:(float)score threshold:(float)threshold spkrIDThreshold:(float)dThreshold assetVersion:(id)version withMhId:(id)id;
- (void)_logURESFailureMsgInput:(unint64_t)input forMhId:(id)id;
- (void)_logURESResultsForInput:(id)input withOutput:(id)output forMhId:(id)id;
- (void)_readAllowListVocabFromFile:(id)file;
- (void)_releaseUresProcessingTransaction;
- (void)_runLRNNOnlyMitigationForRCId:(unint64_t)id speechPackage:(id)package requestId:(id)requestId completion:(id)completion;
- (void)_updateInputFeats:(id)feats forSignalsFrom:(unint64_t)from to:(unint64_t)to;
- (void)_updateSupportedInputOrigins;
- (void)addReceiver:(id)receiver;
- (void)asrStartedForRequestId:(id)id isRecognitionModeClassic:(BOOL)classic;
- (void)attSiriNode:(id)node didMitigate:(BOOL)mitigate withScore:(float)score forRequestId:(id)id taskType:(id)type;
- (void)attSiriNode:(id)node didUpdateAttentionState:(unint64_t)state;
- (void)attSiriNode:(id)node didUpdateOSDFeatures:(id)features withFrameDurationMs:(double)ms withMHID:(id)d;
- (void)attSiriNode:(id)node didUpdateWithSpeakerInfo:(id)info forReqId:(id)id;
- (void)didReceiveTCUUpdateForTCUId:(id)id withTCUAccepted:(BOOL)accepted forRequestId:(id)requestId isFinal:(BOOL)final;
- (void)getUresInvocationTypeForRequestId:(id)id withCompletion:(id)completion;
- (void)processResultCandidate:(id)candidate forRCId:(unint64_t)id forTask:(id)task forRequestId:(id)requestId completion:(id)completion;
- (void)registerGazeNode:(id)node;
- (void)registerNLDAClassifierNode:(id)node;
- (void)registerOSDNode:(id)node;
- (void)registerSSRNode:(id)node;
- (void)registerTCUGenerator:(id)generator;
- (void)setASRModelRootDirectory:(id)directory;
- (void)setEndpointerFeatureEoS:(float)s;
- (void)setPrefetchedAsset:(id)asset;
- (void)startUresRequestWithAudioRecordContext:(id)context forRequestId:(id)id mhId:(id)mhId voiceTriggerInfo:(id)info;
- (void)stop;
- (void)stopUresProcessingForRequest:(id)request;
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

- (id)getUresInputFeaturesForRequestId:(id)id
{
  idCopy = id;
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
  v10 = idCopy;
  v11 = &v12;
  block[4] = self;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_isSpeechRecognizerTaskSupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
  {
    v4 = 1;
  }

  else
  {
    v4 = [supportedCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskBeto];
  }

  return v4;
}

- (void)_readAllowListVocabFromFile:(id)file
{
  fileCopy = file;
  v17 = 0;
  v5 = [NSString stringWithContentsOfFile:fileCopy encoding:4 error:&v17];
  v6 = v17;
  lowercaseString = [v5 lowercaseString];

  v8 = +[NSCharacterSet newlineCharacterSet];
  v9 = [lowercaseString componentsSeparatedByCharactersInSet:v8];

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
      v21 = fileCopy;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Read SDSD override list from %{public}@ with %lu entries", buf, 0x20u);
    }
  }
}

- (BOOL)_shouldApplyAllowListOverride:(id)override withInputOrigin:(id)origin
{
  overrideCopy = override;
  if ([origin isEqualToNumber:&off_10025E7B0])
  {
    if (self->_allowVocabList)
    {
      oneBestTranscript = [overrideCopy oneBestTranscript];
      lowercaseString = [oneBestTranscript lowercaseString];

      oneBestTokenList = [overrideCopy oneBestTokenList];
      if ([oneBestTokenList count] <= self->_allowListWordCountThreshold)
      {
        if ([(NSArray *)self->_allowVocabList containsObject:lowercaseString])
        {
          v14 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "[CSAttSiriUresNode _shouldApplyAllowListOverride:withInputOrigin:]";
            v18 = 2112;
            v19 = lowercaseString;
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

- (id)_decodeJsonFromFile:(id)file
{
  v3 = [NSData dataWithContentsOfFile:file];
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

- (void)_updateInputFeats:(id)feats forSignalsFrom:(unint64_t)from to:(unint64_t)to
{
  featsCopy = feats;
  WeakRetained = objc_loadWeakRetained(&self->_gazeNode);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_osdNode);

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_gazeNode);
      v13 = [v12 hadSignalsFrom:from to:to];

      [featsCopy setDidDetectGazeAtOrb:v13];
      v14 = objc_loadWeakRetained(&self->_osdNode);
      v15 = [v14 hadSignalsFrom:from to:to];

      [featsCopy setDidDetectVisualActivity:v13];
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

- (BOOL)_shouldRunMitigationForContext:(id)context
{
  contextCopy = context;
  v4 = (CSIsCommunalDevice() & 1) == 0 && !CSIsWatch() || ([contextCopy isUIButtonPress] & 1) == 0 && (objc_msgSend(contextCopy, "isHomePressed") & 1) == 0 && (objc_msgSend(contextCopy, "isRemoraButtonPress") & 1) == 0 && (objc_msgSend(contextCopy, "isHearstDoubleTapTriggered") & 1) == 0;

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

- (void)didReceiveTCUUpdateForTCUId:(id)id withTCUAccepted:(BOOL)accepted forRequestId:(id)requestId isFinal:(BOOL)final
{
  requestIdCopy = requestId;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012528C;
  block[3] = &unk_1002520F0;
  acceptedCopy = accepted;
  finalCopy = final;
  v13 = requestIdCopy;
  selfCopy = self;
  v11 = requestIdCopy;
  dispatch_async(queue, block);
}

- (id)constructTCUIntendedInfoForRequestId:(id)id withResultCandidate:(id)candidate
{
  idCopy = id;
  candidateCopy = candidate;
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
    v9 = idCopy;
    v21 = v9;
    selfCopy = self;
    v10 = candidateCopy;
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
    selfCopy2 = self;
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

- (void)attSiriNode:(id)node didUpdateWithSpeakerInfo:(id)info forReqId:(id)id
{
  infoCopy = info;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001264BC;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = idCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = idCopy;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didUpdateOSDFeatures:(id)features withFrameDurationMs:(double)ms withMHID:(id)d
{
  featuresCopy = features;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100126B24;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v12 = featuresCopy;
  msCopy = ms;
  v10 = featuresCopy;
  dispatch_async(queue, block);
}

- (void)attSiriNode:(id)node didMitigate:(BOOL)mitigate withScore:(float)score forRequestId:(id)id taskType:(id)type
{
  idCopy = id;
  typeCopy = type;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100126E58;
  v15[3] = &unk_100252078;
  scoreCopy = score;
  v16 = idCopy;
  v17 = typeCopy;
  selfCopy = self;
  v13 = typeCopy;
  v14 = idCopy;
  dispatch_async(queue, v15);
}

- (void)attSiriNode:(id)node didUpdateAttentionState:(unint64_t)state
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100127398;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = state;
  dispatch_async(queue, v5);
}

- (void)_createMitigatorModelWithConfig:(id)config
{
  configCopy = config;
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
  v8 = [[SLUresMitigator alloc] initWithConfig:configCopy error:&v14];
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
    localizedDescription = [v9 localizedDescription];
    *buf = 136315394;
    v16 = "[CSAttSiriUresNode _createMitigatorModelWithConfig:]";
    v17 = 2114;
    v18 = localizedDescription;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to create Ures mitigator with err: %{public}@", buf, 0x16u);
  }

LABEL_10:
}

- (void)setEndpointerFeatureEoS:(float)s
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100127810;
  v4[3] = &unk_1002534E8;
  v4[4] = self;
  sCopy = s;
  dispatch_async(queue, v4);
}

- (void)_runLRNNOnlyMitigationForRCId:(unint64_t)id speechPackage:(id)package requestId:(id)requestId completion:(id)completion
{
  completionCopy = completion;
  requestIdToFeatsMapping = self->_requestIdToFeatsMapping;
  packageCopy = package;
  v13 = [(NSMutableDictionary *)requestIdToFeatsMapping objectForKeyedSubscript:requestId];
  latticeMitigatorResult = [packageCopy latticeMitigatorResult];
  [latticeMitigatorResult score];
  v16 = v15;
  v17 = v15;

  latticeMitigatorResult2 = [packageCopy latticeMitigatorResult];

  [latticeMitigatorResult2 threshold];
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

  [(CSAttSiriUresNode *)self _storeMitigationDecision:v16 < v20 forRCId:id requestContext:v13];
  mhId = [v13 mhId];
  LODWORD(v25) = -1.0;
  *&v26 = v16;
  *&v27 = v20;
  [(CSAttSiriUresNode *)self _logURESEndMessageWithScore:@"16.1.1" threshold:mhId spkrIDThreshold:v26 assetVersion:v27 withMhId:v25];

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
    idCopy = id;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Final mitigation result: %{public}@ for RCId: %{public}lu", &v34, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16 < v20);
  }
}

- (void)processResultCandidate:(id)candidate forRCId:(unint64_t)id forTask:(id)task forRequestId:(id)requestId completion:(id)completion
{
  candidateCopy = candidate;
  taskCopy = task;
  requestIdCopy = requestId;
  completionCopy = completion;
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
  v25 = requestIdCopy;
  v28 = completionCopy;
  idCopy = id;
  v26 = taskCopy;
  v27 = candidateCopy;
  v20 = candidateCopy;
  v21 = taskCopy;
  v22 = completionCopy;
  v23 = requestIdCopy;
  dispatch_async(queue, v24);
}

- (BOOL)_shouldRunMitigationForRequestContext:(id)context forTask:(id)task
{
  contextCopy = context;
  taskCopy = task;
  recordCtx = [contextCopy recordCtx];
  v9 = [(CSAttSiriUresNode *)self _shouldRunMitigationForContext:recordCtx];

  if (v9)
  {
    inputFeats = [contextCopy inputFeats];
    v11 = inputFeats;
    if (inputFeats && ([inputFeats inputOrigin], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      supportedInputOrigins = self->_supportedInputOrigins;
      if (supportedInputOrigins && ([v11 inputOrigin], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NSArray containsObject:](supportedInputOrigins, "containsObject:", v14), v14, (v15 & 1) == 0))
      {
        v26 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v29 = v26;
          inputOrigin = [v11 inputOrigin];
          v31 = 136315394;
          v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
          v33 = 2114;
          v34 = inputOrigin;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s UReS not supported for inputOrigin: %{public}@, abort", &v31, 0x16u);
        }

        mhId = [contextCopy mhId];
        selfCopy3 = self;
        v23 = 1906;
      }

      else
      {
        if ([(CSAttSiriUresNode *)self _isSpeechRecognizerTaskSupported:taskCopy])
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
          v34 = taskCopy;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Recognizer task: %{public}@ isn't support, don't run URES mitigator", &v31, 0x16u);
        }

        mhId = [contextCopy mhId];
        selfCopy3 = self;
        v23 = 1905;
      }
    }

    else
    {
      v20 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v27 = v20;
        inputOrigin2 = [v11 inputOrigin];
        v31 = 136315394;
        v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
        v33 = 2114;
        v34 = inputOrigin2;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Unable to get all required inputs for decision - (inputOrigin: %{public}@), abort", &v31, 0x16u);
      }

      mhId = [contextCopy mhId];
      selfCopy3 = self;
      v23 = 1901;
    }

    [(CSAttSiriUresNode *)selfCopy3 _logURESFailureMsgInput:v23 forMhId:mhId];

    v16 = 0;
    goto LABEL_14;
  }

  v17 = CSLogCategorySDSD;
  v16 = 0;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    recordCtx2 = [contextCopy recordCtx];
    v31 = 136315394;
    v32 = "[CSAttSiriUresNode _shouldRunMitigationForRequestContext:forTask:]";
    v33 = 2114;
    v34 = recordCtx2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Mitigation not supported for ctx: %{public}@", &v31, 0x16u);

    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (void)_createModelAndRunInferenceForRcId:(unint64_t)id withRequestContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
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
      mhId = [contextCopy mhId];
      *buf = 136315650;
      v22 = "[CSAttSiriUresNode _createModelAndRunInferenceForRcId:withRequestContext:withCompletion:]";
      v23 = 2112;
      v24 = mhId;
      v25 = 2112;
      v26 = contextCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s request-MHID:%@ requestCtx:%@", buf, 0x20u);
    }

    mitigator = self->_mitigator;
    inputFeats = [contextCopy inputFeats];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100128BD8;
    v14[3] = &unk_100252028;
    v17 = v19;
    v16 = completionCopy;
    v14[4] = self;
    idCopy = id;
    v15 = contextCopy;
    [(SLUresMitigator *)mitigator processInputFeats:inputFeats completion:v14];
  }

  else
  {
    [(CSAttSiriUresNode *)self _storeMitigationDecision:0 forRCId:id requestContext:contextCopy];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  _Block_object_dispose(v19, 8);
}

- (void)_logURESFailureMsgInput:(unint64_t)input forMhId:(id)id
{
  idCopy = id;
  v6 = [SISchemaUUID alloc];
  v7 = [[NSUUID alloc] initWithUUIDString:idCopy];

  v13 = [v6 initWithNSUUID:v7];
  v8 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionFailed);
  [v8 setErrorCode:input];
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

- (void)_logURESResultsForInput:(id)input withOutput:(id)output forMhId:(id)id
{
  inputCopy = input;
  outputCopy = output;
  idCopy = id;
  if (idCopy)
  {
    selfCopy = self;
    v11 = [SISchemaUUID alloc];
    v12 = [[NSUUID alloc] initWithUUIDString:idCopy];
    v13 = [v11 initWithNSUUID:v12];

    v14 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated);
    acousticFTMScores = [inputCopy acousticFTMScores];
    [acousticFTMScores floatValue];
    [v14 setScore:?];

    speechPackage = [inputCopy speechPackage];
    latticeMitigatorResult = [speechPackage latticeMitigatorResult];

    v44 = inputCopy;
    if (latticeMitigatorResult)
    {
      latticeMitigatorResult = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEnded);
      speechPackage2 = [inputCopy speechPackage];
      latticeMitigatorResult2 = [speechPackage2 latticeMitigatorResult];
      [latticeMitigatorResult2 score];
      [latticeMitigatorResult setScore:?];
    }

    v20 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionStarted);
    extractedFeats = [outputCopy extractedFeats];
    v22 = [extractedFeats objectForKeyedSubscript:@"numAsrRecords"];
    [v20 setNumAsrRecords:{objc_msgSend(v22, "unsignedIntValue")}];

    extractedFeats2 = [outputCopy extractedFeats];
    v24 = [extractedFeats2 objectForKeyedSubscript:@"numTokensTopPath"];
    [v20 setNumTokensTopPath:{objc_msgSend(v24, "unsignedIntValue")}];

    extractedFeats3 = [outputCopy extractedFeats];
    v26 = [extractedFeats3 objectForKeyedSubscript:@"trailingSilenceDuration"];
    [v26 floatValue];
    [v20 setTrailingSilenceDurationInNs:{+[CSFTimeUtils secondsToNs:](CSFTimeUtils, "secondsToNs:")}];

    v27 = v14;
    [v20 setAftmScore:v14];
    if (latticeMitigatorResult)
    {
      [v20 setLrnnScore:latticeMitigatorResult];
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

    [outputCopy score];
    v34 = v33;
    [outputCopy threshold];
    v36 = v35;
    [outputCopy speakerIDThreshold];
    v38 = v37;
    assetVersion = [outputCopy assetVersion];
    LODWORD(v40) = v34;
    LODWORD(v41) = v36;
    LODWORD(v42) = v38;
    [(CSAttSiriUresNode *)selfCopy _logURESEndMessageWithScore:assetVersion threshold:idCopy spkrIDThreshold:v40 assetVersion:v41 withMhId:v42];

    inputCopy = v44;
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

- (void)_logURESEndMessageWithScore:(float)score threshold:(float)threshold spkrIDThreshold:(float)dThreshold assetVersion:(id)version withMhId:(id)id
{
  versionCopy = version;
  idCopy = id;
  if (idCopy)
  {
    v13 = [SISchemaUUID alloc];
    v14 = [[NSUUID alloc] initWithUUIDString:idCopy];
    v15 = [v13 initWithNSUUID:v14];

    v16 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEnded);
    [v16 setModelVersion:versionCopy];
    *&v17 = score;
    [v16 setScore:v17];
    *&v18 = threshold;
    [v16 setThreshold:v18];
    *&v19 = dThreshold;
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
      v29 = idCopy;
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

- (void)_logLRNNFailMsgForMhId:(id)id
{
  idCopy = id;
  v4 = [SISchemaUUID alloc];
  v5 = [[NSUUID alloc] initWithUUIDString:idCopy];

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

- (void)_logLatticeRNNResults:(id)results forMhId:(id)id
{
  resultsCopy = results;
  idCopy = id;
  if (idCopy)
  {
    v7 = [SISchemaUUID alloc];
    v8 = [[NSUUID alloc] initWithUUIDString:idCopy];
    v9 = [v7 initWithNSUUID:v8];

    v10 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationStarted);
    version = [resultsCopy version];
    [v10 setModelVersion:version];

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
    [resultsCopy score];
    [v16 setScore:?];
    [resultsCopy threshold];
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
      v26 = idCopy;
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

- (BOOL)getMitigationDecisionForRCId:(unint64_t)id forRequestId:(id)requestId
{
  requestIdCopy = requestId;
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
    v33 = requestIdCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A124;
  block[3] = &unk_100252000;
  block[4] = self;
  v9 = requestIdCopy;
  v24 = &v26;
  idCopy = id;
  v23 = v9;
  dispatch_sync(queue, block);
  v10 = self->_queue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10012A384;
  v17 = &unk_100252000;
  selfCopy = self;
  v11 = v9;
  v20 = &v26;
  idCopy2 = id;
  v19 = v11;
  dispatch_async(v10, &v14);
  [(CSAttSiriUresNode *)self stopUresProcessingForRequest:v11, v14, v15, v16, v17, selfCopy];
  v12 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v12 & 1;
}

- (BOOL)getLastMitigationResultForRequestId:(id)id
{
  idCopy = id;
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
  v9 = idCopy;
  v10 = &v11;
  v6 = idCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)setASRModelRootDirectory:(id)directory
{
  directoryCopy = directory;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012AA9C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = directoryCopy;
  v6 = directoryCopy;
  dispatch_async(queue, v7);
}

- (void)stopUresProcessingForRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012AC90;
  v7[3] = &unk_100253C48;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchMitigationConfigForRecordCtx:(id)ctx
{
  ctxCopy = ctx;
  prefetchedAsset = self->_prefetchedAsset;
  if (prefetchedAsset)
  {
    allowKeywordsFile = [(CSAsset *)prefetchedAsset allowKeywordsFile];
    [(CSAttSiriUresNode *)self _readAllowListVocabFromFile:allowKeywordsFile];

    allowListWordCountThreshold = [(CSAsset *)self->_prefetchedAsset allowListWordCountThreshold];
    self->_allowListWordCountThreshold = allowListWordCountThreshold;
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[CSAttSiriUresNode _fetchMitigationConfigForRecordCtx:]";
      v19 = 2048;
      v20 = allowListWordCountThreshold;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s _allowListWordCountThreshold:%lu", &v17, 0x16u);
    }

    v9 = [(CSAsset *)self->_prefetchedAsset getCategoryKeyWithRecordCtx:ctxCopy];
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

- (void)asrStartedForRequestId:(id)id isRecognitionModeClassic:(BOOL)classic
{
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B0E4;
  block[3] = &unk_100253900;
  classicCopy = classic;
  v10 = idCopy;
  selfCopy = self;
  v8 = idCopy;
  dispatch_async(queue, block);
}

- (void)startUresRequestWithAudioRecordContext:(id)context forRequestId:(id)id mhId:(id)mhId voiceTriggerInfo:(id)info
{
  contextCopy = context;
  idCopy = id;
  mhIdCopy = mhId;
  infoCopy = info;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B450;
  block[3] = &unk_100252D58;
  v20 = idCopy;
  v21 = mhIdCopy;
  v22 = contextCopy;
  v23 = infoCopy;
  selfCopy = self;
  v15 = infoCopy;
  v16 = contextCopy;
  v17 = mhIdCopy;
  v18 = idCopy;
  dispatch_async(queue, block);
}

- (void)getUresInvocationTypeForRequestId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012BB94;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (id)getUresInvocationTypeForRequestId:(id)id
{
  idCopy = id;
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
  v10 = idCopy;
  v11 = &v12;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_getRequestCtxForRequestId:(id)id
{
  requestIdToFeatsMapping = self->_requestIdToFeatsMapping;
  if (id)
  {
    firstObject = [(NSMutableDictionary *)requestIdToFeatsMapping objectForKeyedSubscript:?];
  }

  else
  {
    allValues = [(NSMutableDictionary *)requestIdToFeatsMapping allValues];
    firstObject = [allValues firstObject];
  }

  return firstObject;
}

- (void)setPrefetchedAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012BFE0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (![(NSHashTable *)self->_receivers containsObject:receiverCopy])
  {
    if ([receiverCopy conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriUresNodeDelegate])
    {
      [(NSHashTable *)self->_receivers addObject:receiverCopy];
    }

    else
    {
      v5 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[CSAttSiriUresNode addReceiver:]";
        v8 = 2112;
        v9 = receiverCopy;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

- (void)registerTCUGenerator:(id)generator
{
  generatorCopy = generator;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C260;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = generatorCopy;
  v6 = generatorCopy;
  dispatch_async(queue, v7);
}

- (void)registerSSRNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C304;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)registerNLDAClassifierNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C3A8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)registerGazeNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C44C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(queue, v7);
}

- (void)registerOSDNode:(id)node
{
  nodeCopy = node;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C4F0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
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

- (CSAttSiriUresNode)initWithSupportsUOD:(BOOL)d supportsHybridUOD:(BOOL)oD isMedocFeatureEnabled:(BOOL)enabled
{
  oDCopy = oD;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = CSAttSiriUresNode;
  v8 = [(CSAttSiriUresNode *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 8;
    v8->_supportsUnderstandingOnDevice = dCopy;
    v8->_supportsHybridUnderstandingOnDevice = oDCopy;
    v8->_isMedocFeatureEnabled = enabled;
    if (dCopy || oDCopy)
    {
      v10 = &off_10025EDB0;
      if (dCopy)
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

- (CSAttSiriUresNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriUresNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
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

+ (float)_extractLrnnScoreForResultCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = candidateCopy;
  v5 = -1.0;
  if (candidateCopy)
  {
    latticeMitigatorResult = [candidateCopy latticeMitigatorResult];

    if (latticeMitigatorResult)
    {
      latticeMitigatorResult2 = [v4 latticeMitigatorResult];
      [latticeMitigatorResult2 score];
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