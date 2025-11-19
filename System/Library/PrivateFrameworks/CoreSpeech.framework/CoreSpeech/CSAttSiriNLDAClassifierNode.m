@interface CSAttSiriNLDAClassifierNode
- (BOOL)_isRequestBPWithCtx:(id)a3;
- (BOOL)_shouldCreateODLDProcessor:(id)a3;
- (CSAttSiriController)attSiriController;
- (CSAttSiriNLDAClassifierNode)init;
- (CSAttSiriNLDAClassifierNode)initWithAttSiriController:(id)a3;
- (id)_createInputContextForRecordCtx:(id)a3;
- (id)processSpeechPackageSync:(id)a3;
- (void)_clearContextForNewTurn;
- (void)_holdTransactionForNldaProcessing;
- (void)_logMHOdldFalseTriggerMitigationScores:(id)a3 withOdldScores:(float)a4 withOdldScoreThreshold:(float)a5 withSocialScore:(float)a6 withAnchorRequestId:(id)a7 withAnchorSocialScore:(float)a8 withPrevRequestId:(id)a9 withConversationalScore:(float)a10 withSuccess:(BOOL)a11;
- (void)_releaseNldaProcessingTransaction;
- (void)_saveContextForMitigationDecision:(BOOL)a3 forRequestId:(id)a4 isFinal:(BOOL)a5;
- (void)_updateContextForRecordCtx:(id)a3;
- (void)informMitigationDecision:(BOOL)a3 forRequestId:(id)a4 isFinal:(BOOL)a5;
- (void)setMhId:(id)a3;
- (void)setPrefetchedAsset:(id)a3;
- (void)startWithRecordContext:(id)a3 withRequestId:(id)a4;
- (void)stop;
@end

@implementation CSAttSiriNLDAClassifierNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_saveContextForMitigationDecision:(BOOL)a3 forRequestId:(id)a4 isFinal:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (!v5 || v6)
  {
    if (v6)
    {
      v24 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "[CSAttSiriNLDAClassifierNode _saveContextForMitigationDecision:forRequestId:isFinal:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Ignoring context for mitigated request", &v29, 0xCu);
      }
    }
  }

  else
  {
    v9 = [(SLODLDInputContext *)self->_inputCtx inputOrigin];
    v10 = [v9 isEqualToNumber:&off_10025E6D8];

    if ((v10 & 1) == 0)
    {
      [(SLODLDProcessorResult *)self->_prevResult outputAnchor];
      v11 = [NSNumber numberWithFloat:?];
      cachedInitialAnchor = self->_cachedInitialAnchor;
      self->_cachedInitialAnchor = v11;

      v13 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_cachedInitialAnchor;
        v29 = 136315394;
        v30 = "[CSAttSiriNLDAClassifierNode _saveContextForMitigationDecision:forRequestId:isFinal:]";
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Saving initial anchor %@", &v29, 0x16u);
      }

      objc_storeStrong(&self->_anchorRequestId, self->_requestId);
    }

    v15 = [(SLODLDProcessorResult *)self->_prevResult outputEmb];

    if (v15)
    {
      v16 = [(SLODLDProcessorResult *)self->_prevResult outputEmb];
      v17 = [v16 copy];
      cachedEmbedding = self->_cachedEmbedding;
      self->_cachedEmbedding = v17;
    }

    v19 = [(SLODLDProcessorResult *)self->_prevResult tokens];
    v20 = [v19 copy];
    cachedTokens = self->_cachedTokens;
    self->_cachedTokens = v20;

    v22 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      prevResult = self->_prevResult;
      v29 = 136315394;
      v30 = "[CSAttSiriNLDAClassifierNode _saveContextForMitigationDecision:forRequestId:isFinal:]";
      v31 = 2112;
      v32 = prevResult;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Saving context from prev result %@", &v29, 0x16u);
    }

    objc_storeStrong(&self->_prevRequestId, self->_requestId);
  }

  if (v5)
  {
    inputCtx = self->_inputCtx;
    self->_inputCtx = 0;

    recordCtx = self->_recordCtx;
    self->_recordCtx = 0;

    v27 = self->_prevResult;
    self->_prevResult = 0;

    v28 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315138;
      v30 = "[CSAttSiriNLDAClassifierNode _saveContextForMitigationDecision:forRequestId:isFinal:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Clearing inputCtx for final mitigation decision", &v29, 0xCu);
    }
  }
}

- (void)_clearContextForNewTurn
{
  prevResult = self->_prevResult;
  self->_prevResult = 0;

  cachedTokens = self->_cachedTokens;
  self->_cachedTokens = 0;

  cachedEmbedding = self->_cachedEmbedding;
  self->_cachedEmbedding = 0;

  cachedInitialAnchor = self->_cachedInitialAnchor;
  self->_cachedInitialAnchor = &off_10025E6F0;

  prevRequestId = self->_prevRequestId;
  self->_prevRequestId = 0;

  anchorRequestId = self->_anchorRequestId;
  self->_anchorRequestId = 0;
}

- (void)_updateContextForRecordCtx:(id)a3
{
  prefetchedAsset = self->_prefetchedAsset;
  v5 = a3;
  v6 = [CSUtils getInputoriginFromRecordType:v5 withAsset:prefetchedAsset];
  LODWORD(prefetchedAsset) = [v5 isContinuousConversationTriggerlessAnnounce];

  if (prefetchedAsset && (+[CSUtils supportMedocAnnounce](CSUtils, "supportMedocAnnounce") & 1) != 0 || v6 && ([v6 isEqualToNumber:&off_10025E6D8] & 1) == 0)
  {
    [(CSAttSiriNLDAClassifierNode *)self _clearContextForNewTurn];
    v7 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSAttSiriNLDAClassifierNode _updateContextForRecordCtx:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Clear context for new anchor request", &v8, 0xCu);
    }
  }
}

- (id)_createInputContextForRecordCtx:(id)a3
{
  v4 = a3;
  [(CSAttSiriNLDAClassifierNode *)self _updateContextForRecordCtx:v4];
  v5 = [CSUtils getInputoriginFromRecordType:v4 withAsset:self->_prefetchedAsset];

  v6 = [[SLODLDInputContext alloc] initWithInputOrigin:v5 inputAnchor:self->_cachedInitialAnchor prevTokens:self->_cachedTokens prevEmb:self->_cachedEmbedding];

  return v6;
}

- (void)_logMHOdldFalseTriggerMitigationScores:(id)a3 withOdldScores:(float)a4 withOdldScoreThreshold:(float)a5 withSocialScore:(float)a6 withAnchorRequestId:(id)a7 withAnchorSocialScore:(float)a8 withPrevRequestId:(id)a9 withConversationalScore:(float)a10 withSuccess:(BOOL)a11
{
  v11 = a11;
  v20 = a3;
  v21 = a7;
  v22 = a9;
  if (self->_mhId)
  {
    v23 = [SISchemaUUID alloc];
    v24 = [[NSUUID alloc] initWithUUIDString:self->_mhId];
    v25 = [v23 initWithNSUUID:v24];

    v26 = objc_alloc_init(MHSchemaMHOdldFalseTriggerMitigated);
    [v26 setModelVersion:v20];
    *&v27 = a4;
    [v26 setOdldScore:v27];
    *&v28 = a5;
    [v26 setOdldScoreThreshold:v28];
    if (v11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 1953;
    }

    [v26 setErrorCode:v29];
    v30 = [SISchemaUUID alloc];
    v31 = [[NSUUID alloc] initWithUUIDString:v22];
    v32 = [v30 initWithNSUUID:v31];
    [v26 setPreviousRequestId:v32];

    v33 = [SISchemaUUID alloc];
    v34 = [[NSUUID alloc] initWithUUIDString:v21];
    v35 = [v33 initWithNSUUID:v34];
    [v26 setAnchorRequestId:v35];

    *&v36 = a6;
    [v26 setSocialScore:v36];
    *&v37 = a8;
    [v26 setAnchorSocialScore:v37];
    *&v38 = a10;
    [v26 setConversationalOdldScore:v38];
    v39 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v39 setMhId:v25];
    v40 = objc_alloc_init(MHSchemaMHClientEvent);
    [v40 setMhId:v25];
    [v40 setEventMetadata:v39];
    [v40 setOdldFalseTriggerMitigated:v26];
    v41 = +[AssistantSiriAnalytics sharedStream];
    [v41 emitMessage:v40];

    v42 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      mhId = self->_mhId;
      v45 = 136316162;
      v46 = "[CSAttSiriNLDAClassifierNode _logMHOdldFalseTriggerMitigationScores:withOdldScores:withOdldScoreThreshold:withSocialScore:withAnchorRequestId:withAnchorSocialScore:withPrevRequestId:withConversationalScore:withSuccess:]";
      v47 = 2112;
      v48 = mhId;
      v49 = 2048;
      v50 = a4;
      v51 = 2048;
      v52 = a6;
      v53 = 2048;
      v54 = a10;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Submit ODLD False Trigger Mitigation score msg to SELF metrics for MH ID: %@, OdldScore: %f, SocialScore: %f, conversationalScore: %f", &v45, 0x34u);
    }
  }

  else
  {
    v44 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 136315138;
      v46 = "[CSAttSiriNLDAClassifierNode _logMHOdldFalseTriggerMitigationScores:withOdldScores:withOdldScoreThreshold:withSocialScore:withAnchorRequestId:withAnchorSocialScore:withPrevRequestId:withConversationalScore:withSuccess:]";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s MHID not set, skipping SELF Logging", &v45, 0xCu);
    }
  }
}

- (void)informMitigationDecision:(BOOL)a3 forRequestId:(id)a4 isFinal:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[CSAttSiriNLDAClassifierNode informMitigationDecision:forRequestId:isFinal:]";
    v19 = 2112;
    v20 = v8;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s RequestId: %@, didMitigate: %d, isFinal: %d", buf, 0x22u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117678;
  block[3] = &unk_1002520F0;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v16 = v5;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)_releaseNldaProcessingTransaction
{
  osTransaction = self->_osTransaction;
  v4 = CSLogCategorySDSD;
  v5 = os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO);
  if (osTransaction)
  {
    if (v5)
    {
      v6 = 136315138;
      v7 = "[CSAttSiriNLDAClassifierNode _releaseNldaProcessingTransaction]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s OS transaction released after NLDA inference", &v6, 0xCu);
      osTransaction = self->_osTransaction;
    }

    self->_osTransaction = 0;
  }

  else if (v5)
  {
    v6 = 136315138;
    v7 = "[CSAttSiriNLDAClassifierNode _releaseNldaProcessingTransaction]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s osTransaction already released", &v6, 0xCu);
  }
}

- (void)_holdTransactionForNldaProcessing
{
  if (!self->_osTransaction)
  {
    v3 = [[CSOSTransaction alloc] initWithDescription:@"nlda-bert model"];
    osTransaction = self->_osTransaction;
    self->_osTransaction = v3;
  }

  v5 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriNLDAClassifierNode _holdTransactionForNldaProcessing]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s OS transaction obtained for NLDA inference", &v6, 0xCu);
  }
}

- (BOOL)_isRequestBPWithCtx:(id)a3
{
  v4 = a3;
  if (v4 && self->_prefetchedAsset)
  {
    v5 = [CSUtils getInputoriginFromRecordType:v4 withAsset:?];
    if ([v5 unsignedIntValue] == 1)
    {
      v6 = [v4 isRTSTriggered] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v7 = CSLogCategorySDSD;
    LOBYTE(v6) = 0;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSAttSiriNLDAClassifierNode _isRequestBPWithCtx:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Unable to determine request origin", &v9, 0xCu);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)_shouldCreateODLDProcessor:(id)a3
{
  v3 = [CSUtils getInputoriginFromRecordType:a3 withAsset:self->_prefetchedAsset];
  v4 = v3 != 0;

  return v4;
}

- (id)processSpeechPackageSync:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100117D60;
  v25 = sub_100117D70;
  v26 = 0;
  v5 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v6 = AFSiriLogContextSpeech;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "NLDAClassifier_ProcessSpeechPackage", "", buf, 2u);
  }

  queue = self->_queue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100117D78;
  v15 = &unk_100252000;
  v16 = self;
  v9 = v4;
  v17 = v9;
  v18 = &v21;
  v19 = v5;
  dispatch_sync(queue, &v12);
  if ([(CSAttSiriNLDAClassifierNode *)self _isRequestBPWithCtx:self->_recordCtx, v12, v13, v14, v15, v16])
  {
    v10 = 0;
  }

  else
  {
    v10 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  return v10;
}

- (void)setPrefetchedAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100118110;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100118270;
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
  block[2] = sub_1001182F4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startWithRecordContext:(id)a3 withRequestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSAttSiriNLDAClassifierNode startWithRecordContext:withRequestId:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s RequestId: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100118510;
  block[3] = &unk_100253680;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (CSAttSiriNLDAClassifierNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriNLDAClassifierNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriNLDAClassifierNode)init
{
  v12.receiver = self;
  v12.super_class = CSAttSiriNLDAClassifierNode;
  v2 = [(CSAttSiriNLDAClassifierNode *)&v12 init];
  v3 = v2;
  if (v2)
  {
    requiredNodes = v2->_requiredNodes;
    v2->_type = 12;
    v2->_requiredNodes = &off_10025ED80;

    v3->_isReady = 0;
    v5 = [CSUtils getSerialQueue:@"CSAttSiriNLDANode queue" qualityOfService:33];
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100118AD0;
    block[3] = &unk_100253C20;
    v11 = v3;
    dispatch_async(v7, block);
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSAttSiriNLDAClassifierNode init]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Created NLDA-AS node", buf, 0xCu);
    }
  }

  return v3;
}

@end