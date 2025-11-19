@interface MRRMultimodalMentionResolver
+ (id)sharedManager;
- (BOOL)resolveCandidatesForUtterance:(id)a3 entities:(id)a4 maximumCandidates:(unint64_t)a5 status:(id *)a6 completionBlock:(id)a7;
- (BOOL)resolveCandidatesForUtterance:(id)a3 mentions:(id)a4 entities:(id)a5 maximumCandidates:(unint64_t)a6 status:(id *)a7 completionBlock:(id)a8;
- (BOOL)resolveCandidatesForUtterance:(id)a3 status:(id *)a4 completionBlock:(id)a5;
- (BOOL)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 entities:(id)a6 maximumCandidates:(unint64_t)a7 status:(id *)a8 completionBlock:(id)a9;
- (BOOL)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 mentions:(id)a6 entities:(id)a7 maximumCandidates:(unint64_t)a8 status:(id *)a9 completionBlock:(id)a10;
- (MRRMultimodalMentionResolver)initWithAssets:(id)a3 forLocale:(id)a4 status:(id *)a5;
- (id)resolveCandidatesForUtterance:(id)a3 entities:(id)a4 maximumCandidates:(unint64_t)a5 status:(id *)a6;
- (id)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 entities:(id)a6 maximumCandidates:(unint64_t)a7 status:(id *)a8;
- (id)resolveMentionsInUtterance:(id)a3 mentions:(id)a4 entities:(id)a5 maximumCandidates:(unint64_t)a6 status:(id *)a7;
- (id)resolveMentionsInUtterance:(id)a3 status:(id *)a4;
- (id)resolveMentionsInUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 mentions:(id)a6 entities:(id)a7 maximumCandidates:(unint64_t)a8 status:(id *)a9;
- (id)resolveReferencesInUtteranceImpl:(id)a3 status:(id *)a4;
@end

@implementation MRRMultimodalMentionResolver

- (BOOL)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 mentions:(id)a6 entities:(id)a7 maximumCandidates:(unint64_t)a8 status:(id *)a9 completionBlock:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v33 = a10;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy_;
  v56 = __Block_byref_object_dispose_;
  v57 = objc_opt_new();
  [v53[5] setUtterance:v16];
  [v53[5] setRequestId:0];
  [v53[5] setNluRequestId:0];
  [v53[5] setResultCandidateId:0];
  v21 = objc_opt_new();
  [v53[5] setTokenChain:v21];

  locale = self->_locale;
  v23 = [v53[5] tokenChain];
  [v23 setLocale:locale];

  v24 = [v53[5] tokenChain];
  [v24 setStringValue:v16];

  v25 = [MEMORY[0x277CBEB18] arrayWithArray:v17];
  v26 = [v53[5] tokenChain];
  [v26 setTokens:v25];

  [v53[5] setEmbeddingTensor:v18];
  v27 = [MEMORY[0x277CBEB18] arrayWithArray:v19];
  [v53[5] setDetectedMentions:v27];

  v28 = [MEMORY[0x277CBEB18] arrayWithArray:v20];
  [v53[5] setEntityCandidates:v28];

  [v53[5] setMaxCandidates:a8];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy_;
  v50[4] = __Block_byref_object_dispose_;
  v51 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __153__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_mentions_entities_maximumCandidates_status_completionBlock___block_invoke;
  block[3] = &unk_2784B5248;
  v36 = v50;
  block[4] = self;
  v37 = &v52;
  v38 = &v40;
  v39 = &v46;
  v30 = v33;
  v35 = v30;
  dispatch_async(dispatchQueue, block);
  if (a9)
  {
    *a9 = v41[5];
  }

  v31 = *(v47 + 24);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(&v52, 8);
  return v31;
}

void __153__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_mentions_entities_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 resolveReferencesInUtteranceImpl:v3 status:&obj];
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

- (BOOL)resolveCandidatesForUtterance:(id)a3 mentions:(id)a4 entities:(id)a5 maximumCandidates:(unint64_t)a6 status:(id *)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = objc_opt_new();
  [v44[5] setUtterance:v14];
  [v44[5] setRequestId:0];
  [v44[5] setNluRequestId:0];
  [v44[5] setResultCandidateId:0];
  [v44[5] setTokenChain:0];
  [v44[5] setEmbeddingTensor:0];
  v18 = [MEMORY[0x277CBEB18] arrayWithArray:v15];
  [v44[5] setDetectedMentions:v18];

  v19 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
  [v44[5] setEntityCandidates:v19];

  [v44[5] setMaxCandidates:a6];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy_;
  v41[4] = __Block_byref_object_dispose_;
  v42 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_mentions_entities_maximumCandidates_status_completionBlock___block_invoke;
  block[3] = &unk_2784B5298;
  v26 = v41;
  block[4] = self;
  v27 = &v43;
  v28 = &v31;
  v29 = &v37;
  v30 = a7;
  v21 = v17;
  v25 = v21;
  dispatch_async(dispatchQueue, block);
  if (a7)
  {
    *a7 = v32[5];
  }

  v22 = *(v38 + 24);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);
  return v22;
}

void __121__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_mentions_entities_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 resolveReferencesInUtteranceImpl:v3 status:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (a1[10])
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

- (BOOL)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 entities:(id)a6 maximumCandidates:(unint64_t)a7 status:(id *)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v30 = a9;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = objc_opt_new();
  [v50[5] setUtterance:v15];
  [v50[5] setRequestId:0];
  [v50[5] setNluRequestId:0];
  [v50[5] setResultCandidateId:0];
  v19 = objc_opt_new();
  [v50[5] setTokenChain:v19];

  locale = self->_locale;
  v21 = [v50[5] tokenChain];
  [v21 setLocale:locale];

  v22 = [v50[5] tokenChain];
  [v22 setStringValue:v15];

  v23 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
  v24 = [v50[5] tokenChain];
  [v24 setTokens:v23];

  [v50[5] setEmbeddingTensor:v17];
  [v50[5] setDetectedMentions:0];
  v25 = [MEMORY[0x277CBEB18] arrayWithArray:v18];
  [v50[5] setEntityCandidates:v25];

  [v50[5] setMaxCandidates:a7];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy_;
  v47[4] = __Block_byref_object_dispose_;
  v48 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __144__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_entities_maximumCandidates_status_completionBlock___block_invoke;
  block[3] = &unk_2784B5248;
  v33 = v47;
  block[4] = self;
  v34 = &v49;
  v35 = &v37;
  v36 = &v43;
  v27 = v30;
  v32 = v27;
  dispatch_async(dispatchQueue, block);
  if (a8)
  {
    *a8 = v38[5];
  }

  v28 = *(v44 + 24);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v47, 8);

  _Block_object_dispose(&v49, 8);
  return v28;
}

void __144__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_entities_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 resolveReferencesInUtteranceImpl:v3 status:&obj];
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

- (BOOL)resolveCandidatesForUtterance:(id)a3 entities:(id)a4 maximumCandidates:(unint64_t)a5 status:(id *)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = objc_opt_new();
  [v39[5] setUtterance:v12];
  [v39[5] setRequestId:0];
  [v39[5] setNluRequestId:0];
  [v39[5] setResultCandidateId:0];
  [v39[5] setTokenChain:0];
  [v39[5] setEmbeddingTensor:0];
  [v39[5] setDetectedMentions:0];
  v15 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
  [v39[5] setEntityCandidates:v15];

  [v39[5] setMaxCandidates:a5];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  dispatchQueue = self->_dispatchQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __112__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_entities_maximumCandidates_status_completionBlock___block_invoke;
  v20[3] = &unk_2784B5248;
  v22 = v36;
  v20[4] = self;
  v23 = &v38;
  v24 = &v26;
  v25 = &v32;
  v17 = v14;
  v21 = v17;
  dispatch_async(dispatchQueue, v20);
  if (a6)
  {
    *a6 = v27[5];
  }

  v18 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(&v38, 8);
  return v18;
}

void __112__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_entities_maximumCandidates_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 resolveReferencesInUtteranceImpl:v3 status:&obj];
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

- (id)resolveMentionsInUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 mentions:(id)a6 entities:(id)a7 maximumCandidates:(unint64_t)a8 status:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = objc_opt_new();
  [v40[5] setUtterance:v15];
  [v40[5] setRequestId:0];
  [v40[5] setNluRequestId:0];
  [v40[5] setResultCandidateId:0];
  v20 = objc_opt_new();
  [v40[5] setTokenChain:v20];

  locale = self->_locale;
  v22 = [v40[5] tokenChain];
  [v22 setLocale:locale];

  v23 = [v40[5] tokenChain];
  [v23 setStringValue:v15];

  v24 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
  v25 = [v40[5] tokenChain];
  [v25 setTokens:v24];

  [v40[5] setEmbeddingTensor:v17];
  v26 = [MEMORY[0x277CBEB18] arrayWithArray:v18];
  [v40[5] setDetectedMentions:v26];

  v27 = [MEMORY[0x277CBEB18] arrayWithArray:v19];
  [v40[5] setEntityCandidates:v27];

  [v40[5] setMaxCandidates:a8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __134__MRRMultimodalMentionResolver_resolveMentionsInUtterance_utteranceTokens_tokenEmbeddings_mentions_entities_maximumCandidates_status___block_invoke;
  block[3] = &unk_2784B5270;
  block[4] = self;
  block[5] = &v33;
  block[6] = &v39;
  block[7] = a9;
  dispatch_sync(dispatchQueue, block);
  v29 = v34[5];
  if (v29)
  {
    v30 = [v29 mentions];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return v30;
}

uint64_t __134__MRRMultimodalMentionResolver_resolveMentionsInUtterance_utteranceTokens_tokenEmbeddings_mentions_entities_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveReferencesInUtteranceImpl:*(*(*(a1 + 48) + 8) + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)resolveMentionsInUtterance:(id)a3 mentions:(id)a4 entities:(id)a5 maximumCandidates:(unint64_t)a6 status:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = objc_opt_new();
  [v29[5] setUtterance:v12];
  [v29[5] setRequestId:0];
  [v29[5] setNluRequestId:0];
  [v29[5] setResultCandidateId:0];
  [v29[5] setTokenChain:0];
  [v29[5] setEmbeddingTensor:0];
  v15 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
  [v29[5] setDetectedMentions:v15];

  v16 = [MEMORY[0x277CBEB18] arrayWithArray:v14];
  [v29[5] setEntityCandidates:v16];

  [v29[5] setMaxCandidates:a6];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  dispatchQueue = self->_dispatchQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__MRRMultimodalMentionResolver_resolveMentionsInUtterance_mentions_entities_maximumCandidates_status___block_invoke;
  v21[3] = &unk_2784B5270;
  v21[4] = self;
  v21[5] = &v22;
  v21[6] = &v28;
  v21[7] = a7;
  dispatch_sync(dispatchQueue, v21);
  v18 = v23[5];
  if (v18)
  {
    v19 = [v18 mentions];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v19;
}

uint64_t __102__MRRMultimodalMentionResolver_resolveMentionsInUtterance_mentions_entities_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveReferencesInUtteranceImpl:*(*(*(a1 + 48) + 8) + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)resolveCandidatesForUtterance:(id)a3 utteranceTokens:(id)a4 tokenEmbeddings:(id)a5 entities:(id)a6 maximumCandidates:(unint64_t)a7 status:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = objc_opt_new();
  [v37[5] setUtterance:v14];
  [v37[5] setRequestId:0];
  [v37[5] setNluRequestId:0];
  [v37[5] setResultCandidateId:0];
  v18 = objc_opt_new();
  [v37[5] setTokenChain:v18];

  locale = self->_locale;
  v20 = [v37[5] tokenChain];
  [v20 setLocale:locale];

  v21 = [v37[5] tokenChain];
  [v21 setStringValue:v14];

  v22 = [MEMORY[0x277CBEB18] arrayWithArray:v15];
  v23 = [v37[5] tokenChain];
  [v23 setTokens:v22];

  [v37[5] setEmbeddingTensor:v16];
  [v37[5] setDetectedMentions:0];
  v24 = [MEMORY[0x277CBEB18] arrayWithArray:v17];
  [v37[5] setEntityCandidates:v24];

  [v37[5] setMaxCandidates:a7];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_entities_maximumCandidates_status___block_invoke;
  block[3] = &unk_2784B5270;
  block[4] = self;
  block[5] = &v30;
  block[6] = &v36;
  block[7] = a8;
  dispatch_sync(dispatchQueue, block);
  v26 = v31[5];
  if (v26)
  {
    v27 = [v26 mentions];
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v27;
}

uint64_t __128__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_utteranceTokens_tokenEmbeddings_entities_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveReferencesInUtteranceImpl:*(*(*(a1 + 48) + 8) + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)resolveCandidatesForUtterance:(id)a3 entities:(id)a4 maximumCandidates:(unint64_t)a5 status:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = objc_opt_new();
  [v25[5] setUtterance:v10];
  [v25[5] setRequestId:0];
  [v25[5] setNluRequestId:0];
  [v25[5] setResultCandidateId:0];
  [v25[5] setTokenChain:0];
  [v25[5] setEmbeddingTensor:0];
  [v25[5] setDetectedMentions:0];
  v12 = [MEMORY[0x277CBEB18] arrayWithArray:v11];
  [v25[5] setEntityCandidates:v12];

  [v25[5] setMaxCandidates:a5];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  dispatchQueue = self->_dispatchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_entities_maximumCandidates_status___block_invoke;
  v17[3] = &unk_2784B5270;
  v17[4] = self;
  v17[5] = &v18;
  v17[6] = &v24;
  v17[7] = a6;
  dispatch_sync(dispatchQueue, v17);
  v14 = v19[5];
  if (v14)
  {
    v15 = [v14 mentions];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v15;
}

uint64_t __96__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_entities_maximumCandidates_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveReferencesInUtteranceImpl:*(*(*(a1 + 48) + 8) + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)resolveCandidatesForUtterance:(id)a3 status:(id *)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v15[2] = __85__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_status_completionBlock___block_invoke;
  v15[3] = &unk_2784B5220;
  v18 = v31;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v19 = &v21;
  v20 = &v27;
  v12 = v9;
  v17 = v12;
  dispatch_async(dispatchQueue, v15);
  if (a4)
  {
    *a4 = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);

  return v13;
}

uint64_t __85__MRRMultimodalMentionResolver_resolveCandidatesForUtterance_status_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v2 resolveReferencesInUtteranceImpl:v3 status:&obj];
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

- (id)resolveMentionsInUtterance:(id)a3 status:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__MRRMultimodalMentionResolver_resolveMentionsInUtterance_status___block_invoke;
  v11[3] = &unk_2784B51F8;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(dispatchQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __66__MRRMultimodalMentionResolver_resolveMentionsInUtterance_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resolveReferencesInUtteranceImpl:*(a1 + 40) status:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)resolveReferencesInUtteranceImpl:(id)a3 status:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MRRLoggerForCategory(3);
  v7 = os_signpost_id_generate(v6);

  v8 = MRRLoggerForCategory(3);
  v9 = v8;
  spid = v7;
  v58 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MRExecuteRequest", "", buf, 2u);
  }

  v10 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v10, OS_LOG_TYPE_INFO, "BEGIN MRExecuteRequest", buf, 2u);
  }

  v11 = [v5 requestId];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D5DDD0]);
    [v5 setRequestId:v13];
  }

  v14 = [v5 nluRequestId];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277D5DDD0]);
    [v5 setNluRequestId:v16];
  }

  v17 = [v5 resultCandidateId];
  v18 = v17 == 0;

  if (v18)
  {
    [v5 setResultCandidateId:&stru_2835DF758];
  }

  v19 = [v5 tokenChain];
  if (v19)
  {
    v20 = [v5 tokenChain];
    [v20 tokens];
  }

  [v5 embeddingTensor];
  [v5 detectedMentions];

  v21 = [v5 detectedMentions];
  if ([v21 count])
  {
    goto LABEL_17;
  }

  v22 = [v5 matchingSpans];
  if ([v22 count])
  {

LABEL_17:
    goto LABEL_18;
  }

  v43 = [v5 contextualSpans];
  v44 = [v43 count] == 0;

  if (!v44)
  {
LABEL_18:
    v23 = [v5 entityCandidates];
    if ([v23 count])
    {

LABEL_21:
      if (![v5 maxCandidates])
      {
        [v5 setMaxCandidates:0x7FFFFFFFLL];
      }

      if (!self->_locale)
      {
        v26 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v27 = [v26 objectAtIndex:0];
        locale = self->_locale;
        self->_locale = v27;
      }

      v29 = MRRLoggerForCategory(3);
      v30 = os_signpost_id_generate(v29);

      v31 = MRRLoggerForCategory(3);
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MRObjCToCPPRequest", "", buf, 2u);
      }

      v33 = MRRLoggerForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2227A9000, v33, OS_LOG_TYPE_INFO, "BEGIN MRObjCToCPPRequest", buf, 2u);
      }

      [ConverterUtils convertMentionResolverRequestFromObjCToCpp:v5];
      v34 = MRRLoggerForCategory(3);
      v35 = v34;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v35, OS_SIGNPOST_INTERVAL_END, v30, "MRObjCToCPPRequest", " enableTelemetry=YES ", buf, 2u);
      }

      v36 = MRRLoggerForCategory(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2227A9000, v36, OS_LOG_TYPE_INFO, "END MRObjCToCPPRequest", buf, 2u);
      }

      v37 = self;
      objc_sync_enter(v37);
      ptr = v37->_mrOrchestrator.__ptr_;
      if (ptr)
      {
        (**ptr)(buf, v37->_mrOrchestrator.__ptr_);
        operator new();
      }

      v39 = MRRLoggerForCategory(3);
      v40 = v39;
      if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v40, OS_SIGNPOST_INTERVAL_END, spid, "MRExecuteRequest", " enableTelemetry=YES ", buf, 2u);
      }

      v41 = MRRLoggerForCategory(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2227A9000, v41, OS_LOG_TYPE_INFO, "END MRExecuteRequest", buf, 2u);
      }

      objc_sync_exit(v37);
      v42 = 0;

      if (v60)
      {
        (*(*v60 + 8))();
      }

      goto LABEL_65;
    }

    v24 = [v5 contextualSpans];
    v25 = [v24 count] == 0;

    if (!v25)
    {
      goto LABEL_21;
    }

    v50 = +[MRRMultimodalMentionResolver name];
    [PredictorUtils reportPredictStatusWithPredictorName:v50 domain:@"com.apple.siri.marrs.rr" code:0 locale:self->_locale];

    if (a4)
    {
      v51 = +[MRRMultimodalMentionResolver name];
      *a4 = [PredictorUtils getPredictStatusWithPredictorName:v51 domain:@"com.apple.siri.marrs.rr" code:0];
    }

    v52 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2227A9000, v52, OS_LOG_TYPE_INFO, "there are no entities in entity pool and no contextual spans, there is nothing to resolve. Return early", buf, 2u);
    }

    v53 = MRRLoggerForCategory(3);
    v54 = v53;
    if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v54, OS_SIGNPOST_INTERVAL_END, spid, "MRExecuteRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v42 = MRRLoggerForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      goto LABEL_62;
    }

    goto LABEL_65;
  }

  v45 = +[MRRMultimodalMentionResolver name];
  [PredictorUtils reportPredictStatusWithPredictorName:v45 domain:@"com.apple.siri.marrs.rr" code:0 locale:self->_locale];

  if (a4)
  {
    v46 = +[MRRMultimodalMentionResolver name];
    *a4 = [PredictorUtils getPredictStatusWithPredictorName:v46 domain:@"com.apple.siri.marrs.rr" code:0];
  }

  v47 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v47, OS_LOG_TYPE_INFO, "there is no mention, matching span, nor contextual span detected in the utterance, so there is nothing to resolve. Return early", buf, 2u);
  }

  v48 = MRRLoggerForCategory(3);
  v49 = v48;
  if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v49, OS_SIGNPOST_INTERVAL_END, spid, "MRExecuteRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v42 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
LABEL_62:
    _os_log_impl(&dword_2227A9000, v42, OS_LOG_TYPE_INFO, "END MRExecuteRequest", buf, 2u);
  }

LABEL_65:

  v55 = *MEMORY[0x277D85DE8];

  return 0;
}

- (MRRMultimodalMentionResolver)initWithAssets:(id)a3 forLocale:(id)a4 status:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v36 = a4;
  v6 = MRRLoggerForCategory(3);
  v7 = os_signpost_id_generate(v6);

  v8 = MRRLoggerForCategory(3);
  v9 = v8;
  spid = v7;
  v32 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MRInitialization", "", buf, 2u);
  }

  v10 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v10, OS_LOG_TYPE_INFO, "BEGIN MRInitialization", buf, 2u);
  }

  v39.receiver = self;
  v39.super_class = MRRMultimodalMentionResolver;
  v38 = [(MRRMultimodalMentionResolver *)&v39 init];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v36];
  locale = v38->_locale;
  v38->_locale = v11;

  v13 = dispatch_queue_create("com.apple.sirinl.marrs", 0);
  dispatchQueue = v38->_dispatchQueue;
  v38->_dispatchQueue = v13;

  v15 = v38->_dispatchQueue;
  v16 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v15, v16);

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v16) = [v17 fileExistsAtPath:v35];

  v18 = v38;
  objc_sync_enter(v18);
  v33 = v18;
  if (v16)
  {
    v19 = v35;
    [v35 UTF8String];
    v20 = v36;
    [v36 UTF8String];
    operator new();
  }

  ptr = v18->_mrOrchestrator.__ptr_;
  v18->_mrOrchestrator.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 16))(ptr);
  }

  v22 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v35;
    *&buf[12] = 2112;
    *&buf[14] = v36;
    _os_log_impl(&dword_2227A9000, v22, OS_LOG_TYPE_INFO, "Failed initializing MR with asset path - %@, locale - %@", buf, 0x16u);
  }

  objc_sync_exit(v33);
  v23 = +[MRRMultimodalMentionResolver name];
  [PredictorUtils reportInitStatusWithPredictorName:v23 domain:@"com.apple.siri.marrs.rr" code:0 locale:v36];

  if (a5)
  {
    v24 = +[MRRMultimodalMentionResolver name];
    *a5 = [PredictorUtils getInitStatusWithPredictorName:v24 domain:@"com.apple.siri.marrs.rr" code:0];
  }

  v25 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *v40 = 0;
    _os_log_impl(&dword_2227A9000, v25, OS_LOG_TYPE_INFO, "successfully initialized Marrs MR", v40, 2u);
  }

  v26 = MRRLoggerForCategory(3);
  v27 = v26;
  if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v40 = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v27, OS_SIGNPOST_INTERVAL_END, spid, "MRInitialization", " enableTelemetry=YES ", v40, 2u);
  }

  v28 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v40 = 0;
    _os_log_impl(&dword_2227A9000, v28, OS_LOG_TYPE_INFO, "END MRInitialization", v40, 2u);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)sharedManager
{
  if (+[MRRMultimodalMentionResolver sharedManager]::onceToken != -1)
  {
    dispatch_once(&+[MRRMultimodalMentionResolver sharedManager]::onceToken, &__block_literal_global_56);
  }

  v3 = +[MRRMultimodalMentionResolver sharedManager]::singletonMentionResolver;

  return v3;
}

uint64_t __45__MRRMultimodalMentionResolver_sharedManager__block_invoke()
{
  +[MRRMultimodalMentionResolver sharedManager]::singletonMentionResolver = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end