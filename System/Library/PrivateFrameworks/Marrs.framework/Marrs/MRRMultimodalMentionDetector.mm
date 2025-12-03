@interface MRRMultimodalMentionDetector
+ (id)sharedManager;
- (BOOL)detectMentionsInUtterance:(id)utterance maximumCandidates:(unint64_t)candidates status:(id *)status completionBlock:(id)block;
- (BOOL)detectMentionsInUtterance:(id)utterance status:(id *)status completionBlock:(id)block;
- (BOOL)detectMentionsInUtterance:(id)utterance utteranceTokens:(id)tokens tokenEmbeddings:(id)embeddings maximumCandidates:(unint64_t)candidates status:(id *)status completionBlock:(id)block;
- (MRRMultimodalMentionDetector)initWithAssets:(id)assets forLocale:(id)locale status:(id *)status;
- (id)detectMentionsInUtterance:(id)utterance maximumCandidates:(unint64_t)candidates status:(id *)status;
- (id)detectMentionsInUtterance:(id)utterance status:(id *)status;
- (id)detectMentionsInUtterance:(id)utterance utteranceTokens:(id)tokens tokenEmbeddings:(id)embeddings maximumCandidates:(unint64_t)candidates status:(id *)status;
- (id)detectMentionsInUtteranceImpl:(id)impl status:(id *)status;
- (id)detectMentionsInUtteranceRequest:(id)request status:(id *)status;
@end

@implementation MRRMultimodalMentionDetector

- (BOOL)detectMentionsInUtterance:(id)utterance utteranceTokens:(id)tokens tokenEmbeddings:(id)embeddings maximumCandidates:(unint64_t)candidates status:(id *)status completionBlock:(id)block
{
  utteranceCopy = utterance;
  tokensCopy = tokens;
  embeddingsCopy = embeddings;
  blockCopy = block;
  v18 = objc_opt_new();
  [v18 setUtterance:utteranceCopy];
  [v18 setRequestId:0];
  [v18 setNluRequestId:0];
  [v18 setResultCandidateId:0];
  v19 = objc_opt_new();
  [v18 setTokenChain:v19];

  locale = self->_locale;
  tokenChain = [v18 tokenChain];
  [tokenChain setLocale:locale];

  tokenChain2 = [v18 tokenChain];
  [tokenChain2 setStringValue:utteranceCopy];

  v23 = [MEMORY[0x277CBEB18] arrayWithArray:tokensCopy];
  tokenChain3 = [v18 tokenChain];
  [tokenChain3 setTokens:v23];

  [v18 setEmbeddingTensor:embeddingsCopy];
  [v18 setMaxCandidates:candidates];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy_;
  v46[4] = __Block_byref_object_dispose_;
  v47 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __131__MRRMultimodalMentionDetector_detectMentionsInUtterance_utteranceTokens_tokenEmbeddings_maximumCandidates_status_completionBlock___block_invoke;
  block[3] = &unk_2784B5220;
  v33 = v46;
  block[4] = self;
  v26 = v18;
  v31 = v26;
  v34 = &v36;
  v35 = &v42;
  v27 = blockCopy;
  v32 = v27;
  dispatch_async(dispatchQueue, block);
  if (status)
  {
    *status = v37[5];
  }

  v28 = *(v43 + 24);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);

  return v28;
}

void __131__MRRMultimodalMentionDetector_detectMentionsInUtterance_utteranceTokens_tokenEmbeddings_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 detectMentionsInUtteranceImpl:v3 status:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[8] + 8) + 40))
  {
    v8 = 0;
    *(*(a1[9] + 8) + 24) = 1;
  }

  else
  {
    v9 = *(*(a1[7] + 8) + 40);
    if (v9)
    {
      v8 = [v9 mentions];
    }

    else
    {
      v8 = 0;
    }
  }

  (*(a1[6] + 16))();
}

- (BOOL)detectMentionsInUtterance:(id)utterance maximumCandidates:(unint64_t)candidates status:(id *)status completionBlock:(id)block
{
  utteranceCopy = utterance;
  blockCopy = block;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = objc_opt_new();
  [v35[5] setUtterance:utteranceCopy];
  [v35[5] setRequestId:0];
  [v35[5] setNluRequestId:0];
  [v35[5] setResultCandidateId:0];
  [v35[5] setTokenChain:0];
  [v35[5] setEmbeddingTensor:0];
  [v35[5] setMaxCandidates:candidates];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  v33 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__MRRMultimodalMentionDetector_detectMentionsInUtterance_maximumCandidates_status_completionBlock___block_invoke;
  v16[3] = &unk_2784B5248;
  v18 = v32;
  v16[4] = self;
  v19 = &v34;
  v20 = &v22;
  v21 = &v28;
  v13 = blockCopy;
  v17 = v13;
  dispatch_async(dispatchQueue, v16);
  if (status)
  {
    *status = v23[5];
  }

  v14 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v34, 8);
  return v14;
}

void __99__MRRMultimodalMentionDetector_detectMentionsInUtterance_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 detectMentionsInUtteranceImpl:v3 status:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[8] + 8) + 40))
  {
    v8 = 0;
    *(*(a1[9] + 8) + 24) = 1;
  }

  else
  {
    v9 = *(*(a1[6] + 8) + 40);
    if (v9)
    {
      v8 = [v9 mentions];
    }

    else
    {
      v8 = 0;
    }
  }

  (*(a1[5] + 16))();
}

- (id)detectMentionsInUtterance:(id)utterance utteranceTokens:(id)tokens tokenEmbeddings:(id)embeddings maximumCandidates:(unint64_t)candidates status:(id *)status
{
  utteranceCopy = utterance;
  tokensCopy = tokens;
  embeddingsCopy = embeddings;
  v15 = objc_opt_new();
  [v15 setUtterance:utteranceCopy];
  [v15 setRequestId:0];
  [v15 setNluRequestId:0];
  [v15 setResultCandidateId:0];
  v16 = objc_opt_new();
  [v15 setTokenChain:v16];

  locale = self->_locale;
  tokenChain = [v15 tokenChain];
  [tokenChain setLocale:locale];

  tokenChain2 = [v15 tokenChain];
  [tokenChain2 setStringValue:utteranceCopy];

  v20 = [MEMORY[0x277CBEB18] arrayWithArray:tokensCopy];
  tokenChain3 = [v15 tokenChain];
  [tokenChain3 setTokens:v20];

  [v15 setEmbeddingTensor:embeddingsCopy];
  [v15 setMaxCandidates:candidates];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  dispatchQueue = self->_dispatchQueue;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __115__MRRMultimodalMentionDetector_detectMentionsInUtterance_utteranceTokens_tokenEmbeddings_maximumCandidates_status___block_invoke;
  v30 = &unk_2784B51F8;
  v33 = &v35;
  selfCopy = self;
  v23 = v15;
  v32 = v23;
  statusCopy = status;
  dispatch_sync(dispatchQueue, &v27);
  v24 = v36[5];
  if (v24)
  {
    mentions = [v24 mentions];
  }

  else
  {
    mentions = 0;
  }

  _Block_object_dispose(&v35, 8);

  return mentions;
}

uint64_t __115__MRRMultimodalMentionDetector_detectMentionsInUtterance_utteranceTokens_tokenEmbeddings_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detectMentionsInUtteranceImpl:*(a1 + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)detectMentionsInUtterance:(id)utterance maximumCandidates:(unint64_t)candidates status:(id *)status
{
  utteranceCopy = utterance;
  v9 = objc_opt_new();
  [v9 setUtterance:utteranceCopy];
  [v9 setRequestId:0];
  [v9 setNluRequestId:0];
  [v9 setResultCandidateId:0];
  [v9 setTokenChain:0];
  [v9 setEmbeddingTensor:0];
  [v9 setMaxCandidates:candidates];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  dispatchQueue = self->_dispatchQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __83__MRRMultimodalMentionDetector_detectMentionsInUtterance_maximumCandidates_status___block_invoke;
  v18 = &unk_2784B51F8;
  v21 = &v23;
  selfCopy = self;
  v11 = v9;
  v20 = v11;
  statusCopy = status;
  dispatch_sync(dispatchQueue, &v15);
  v12 = v24[5];
  if (v12)
  {
    mentions = [v12 mentions];
  }

  else
  {
    mentions = 0;
  }

  _Block_object_dispose(&v23, 8);

  return mentions;
}

uint64_t __83__MRRMultimodalMentionDetector_detectMentionsInUtterance_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detectMentionsInUtteranceImpl:*(a1 + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)detectMentionsInUtterance:(id)utterance status:(id *)status completionBlock:(id)block
{
  utteranceCopy = utterance;
  blockCopy = block;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy_;
  v31[4] = __Block_byref_object_dispose_;
  v32 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__MRRMultimodalMentionDetector_detectMentionsInUtterance_status_completionBlock___block_invoke;
  v15[3] = &unk_2784B5220;
  v18 = v31;
  v15[4] = self;
  v11 = utteranceCopy;
  v16 = v11;
  v19 = &v21;
  v20 = &v27;
  v12 = blockCopy;
  v17 = v12;
  dispatch_async(dispatchQueue, v15);
  if (status)
  {
    *status = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);

  return v13;
}

uint64_t __81__MRRMultimodalMentionDetector_detectMentionsInUtterance_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 detectMentionsInUtteranceImpl:v3 status:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[8] + 8) + 40))
  {
    *(*(a1[9] + 8) + 24) = 1;
  }

  v8 = *(*(a1[7] + 8) + 40);
  return (*(a1[6] + 16))();
}

- (id)detectMentionsInUtteranceRequest:(id)request status:(id *)status
{
  requestCopy = request;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MRRMultimodalMentionDetector_detectMentionsInUtteranceRequest_status___block_invoke;
  v11[3] = &unk_2784B51F8;
  v11[4] = self;
  v12 = requestCopy;
  v13 = &v15;
  statusCopy = status;
  v8 = requestCopy;
  dispatch_sync(dispatchQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __72__MRRMultimodalMentionDetector_detectMentionsInUtteranceRequest_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detectMentionsInUtteranceImpl:*(a1 + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)detectMentionsInUtterance:(id)utterance status:(id *)status
{
  utteranceCopy = utterance;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__MRRMultimodalMentionDetector_detectMentionsInUtterance_status___block_invoke;
  v11[3] = &unk_2784B51F8;
  v11[4] = self;
  v12 = utteranceCopy;
  v13 = &v15;
  statusCopy = status;
  v8 = utteranceCopy;
  dispatch_sync(dispatchQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __65__MRRMultimodalMentionDetector_detectMentionsInUtterance_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detectMentionsInUtteranceImpl:*(a1 + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)detectMentionsInUtteranceImpl:(id)impl status:(id *)status
{
  implCopy = impl;
  v5 = MRRLoggerForCategory(3);
  v6 = os_signpost_id_generate(v5);

  v7 = MRRLoggerForCategory(3);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MDExecuteRequest", "", buf, 2u);
  }

  v9 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v9, OS_LOG_TYPE_INFO, "BEGIN MDExecuteRequest", buf, 2u);
  }

  requestId = [implCopy requestId];

  if (!requestId)
  {
    v11 = objc_alloc_init(MEMORY[0x277D5DDD0]);
    [implCopy setRequestId:v11];
  }

  nluRequestId = [implCopy nluRequestId];

  if (!nluRequestId)
  {
    v13 = objc_alloc_init(MEMORY[0x277D5DDD0]);
    [implCopy setNluRequestId:v13];
  }

  resultCandidateId = [implCopy resultCandidateId];

  if (!resultCandidateId)
  {
    [implCopy setResultCandidateId:&stru_2835DF758];
  }

  tokenChain = [implCopy tokenChain];
  if (tokenChain)
  {
    tokenChain2 = [implCopy tokenChain];
    [tokenChain2 tokens];
  }

  [implCopy embeddingTensor];
  if (![implCopy maxCandidates])
  {
    [implCopy setMaxCandidates:0x7FFFFFFFLL];
  }

  if (!self->_locale)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v18 = [preferredLanguages objectAtIndex:0];
    locale = self->_locale;
    self->_locale = v18;
  }

  [ConverterUtils convertMentionDetectorRequestFromObjCToCpp:implCopy];
  ptr = self->_mentionDetector.__ptr_;
  if (ptr)
  {
    (**ptr)(buf, self->_mentionDetector.__ptr_, v31);
    operator new();
  }

  v21 = +[MRRMultimodalMentionDetector name];
  *status = [PredictorUtils getPredictStatusWithPredictorName:v21 domain:@"com.apple.siri.marrs.rr" code:137];

  v22 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v22, OS_LOG_TYPE_DEBUG, "Mention detector not loaded succesfully, likely issue related to asset. Skipped emitting MentionDetectorEvaluated events", buf, 2u);
  }

  v23 = MRRLoggerForCategory(3);
  v24 = v23;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v24, OS_SIGNPOST_INTERVAL_END, v6, "MDExecuteRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v25 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v25, OS_LOG_TYPE_INFO, "END MDExecuteRequest", buf, 2u);
  }

  v26 = v31;
  v31 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  return 0;
}

- (MRRMultimodalMentionDetector)initWithAssets:(id)assets forLocale:(id)locale status:(id *)status
{
  v42 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  localeCopy = locale;
  v6 = MRRLoggerForCategory(3);
  v7 = os_signpost_id_generate(v6);

  v8 = MRRLoggerForCategory(3);
  v9 = v8;
  spid = v7;
  v31 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MDInitialization", "", &buf, 2u);
  }

  v10 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2227A9000, v10, OS_LOG_TYPE_INFO, "BEGIN MDInitialization", &buf, 2u);
  }

  v11 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    buf = 138412546;
    buf_4 = assetsCopy;
    buf_12 = 2112;
    *buf_14 = localeCopy;
    _os_log_impl(&dword_2227A9000, v11, OS_LOG_TYPE_INFO, "initializing MD with asset path - %@, locale - %@", &buf, 0x16u);
  }

  v37.receiver = self;
  v37.super_class = MRRMultimodalMentionDetector;
  v36 = [(MRRMultimodalMentionDetector *)&v37 init];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:localeCopy];
  locale = v36->_locale;
  v36->_locale = v12;

  v14 = dispatch_queue_create("com.apple.sirinl.marrs", 0);
  dispatchQueue = v36->_dispatchQueue;
  v36->_dispatchQueue = v14;

  v16 = v36->_dispatchQueue;
  v17 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v16, v17);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v17) = [defaultManager fileExistsAtPath:assetsCopy];

  if (v17)
  {
    v19 = assetsCopy;
    [assetsCopy UTF8String];
    operator new();
  }

  ptr = v36->_mentionDetector.__ptr_;
  v36->_mentionDetector.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 16))(ptr);
  }

  v21 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    buf = 138412546;
    buf_4 = assetsCopy;
    buf_12 = 2112;
    *buf_14 = localeCopy;
    _os_log_impl(&dword_2227A9000, v21, OS_LOG_TYPE_INFO, "Failed initializing MD with asset path - %@, locale - %@", &buf, 0x16u);
  }

  v22 = +[MRRMultimodalMentionDetector name];
  [PredictorUtils reportInitStatusWithPredictorName:v22 domain:@"com.apple.siri.marrs.rr" code:0 locale:localeCopy];

  if (status)
  {
    v23 = +[MRRMultimodalMentionDetector name];
    *status = [PredictorUtils getInitStatusWithPredictorName:v23 domain:@"com.apple.siri.marrs.rr" code:0];
  }

  v24 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2227A9000, v24, OS_LOG_TYPE_INFO, "successfully initialized MD", &buf, 2u);
  }

  v25 = MRRLoggerForCategory(3);
  v26 = v25;
  if (v31 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v26, OS_SIGNPOST_INTERVAL_END, spid, "MDInitialization", " enableTelemetry=YES ", &buf, 2u);
  }

  v27 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2227A9000, v27, OS_LOG_TYPE_INFO, "END MDInitialization", &buf, 2u);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (id)sharedManager
{
  if (+[MRRMultimodalMentionDetector sharedManager]::onceToken != -1)
  {
    dispatch_once(&+[MRRMultimodalMentionDetector sharedManager]::onceToken, &__block_literal_global_645);
  }

  v3 = +[MRRMultimodalMentionDetector sharedManager]::singletonMentionDetector;

  return v3;
}

uint64_t __45__MRRMultimodalMentionDetector_sharedManager__block_invoke()
{
  +[MRRMultimodalMentionDetector sharedManager]::singletonMentionDetector = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end