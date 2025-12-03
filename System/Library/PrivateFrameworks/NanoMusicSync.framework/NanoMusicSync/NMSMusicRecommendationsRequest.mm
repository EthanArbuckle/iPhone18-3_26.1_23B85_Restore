@interface NMSMusicRecommendationsRequest
+ (id)_recentMusicDirectory;
- (BOOL)_isLibraryPinsSupported;
- (id)_heavyRotationCacheURL;
- (id)_starterPackMultiplexCacheURL;
- (id)_starterPackRoomCacheURL;
- (id)_unarchivedCombinedResponsesDictionary;
- (void)_continueToHeavyRotationRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLegacyEditorialRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLegacyForYouRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryImportWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryPinsRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToLibraryRecentMusicRecommedationsWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToProcessResultsWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToRecentMusicRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToStarterPackMultiplexRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_continueToStarterPackRoomRequestWithURL:(id)l context:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_finishWithContext:(id)context queue:(id)queue responseHandler:(id)handler;
- (void)_performEditorialBrowseRequestWithCompletion:(id)completion;
- (void)_performForYouRequestWithCompletion:(id)completion;
- (void)_performHeavyRotationRequestWithCompletion:(id)completion;
- (void)_performLegacyLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion;
- (void)_performLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion;
- (void)_performLibraryPinsRequestWithCompletion:(id)completion;
- (void)_performLibraryRecentMusicRequestWithCompletion:(id)completion;
- (void)_performStarterPackMultiplexRequestWithCompletion:(id)completion;
- (void)_performStarterPackRoomRequestWithURL:(id)l completion:(id)completion;
- (void)_unarchivedCombinedResponsesDictionary;
- (void)_writeData:(id)data toURL:(id)l;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation NMSMusicRecommendationsRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationsRequest", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NMSMusicRecommendationsRequest_performWithResponseHandler___block_invoke;
  block[3] = &unk_27993DE68;
  block[4] = self;
  v9 = v5;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = v5;
  dispatch_async(v7, block);
}

void __61__NMSMusicRecommendationsRequest_performWithResponseHandler___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(NMSMusicRecommendationsRequestContext);
  v2 = +[NMSyncDefaults sharedDefaults];
  v3 = [v2 minimumNumberOfRecentMusicModelObjects];
  -[NMSMusicRecommendationsRequestContext setMinimumNumberOfRecentMusicModelObjects:](v8, "setMinimumNumberOfRecentMusicModelObjects:", [v3 unsignedIntegerValue]);

  v4 = [*(a1 + 32) _isLibraryPinsSupported];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v4)
  {
    [v5 _continueToLibraryPinsRequestWithContext:v8 queue:v6 responseHandler:v7];
  }

  else
  {
    [v5 _continueToRecentMusicRequestWithContext:v8 queue:v6 responseHandler:v7];
  }
}

- (void)_continueToLibraryPinsRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryPinsRequestWithCompletion:v14];
}

void __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __97__NMSMusicRecommendationsRequest__continueToLibraryPinsRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setLibraryPinsResponse:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);

    return [v6 _continueToRecentMusicRequestWithContext:v5 queue:v7 responseHandler:v8];
  }
}

- (void)_continueToRecentMusicRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v10 = +[NMSSubscriptionManager sharedManager];
  v11 = [v10 hasCapability:1];

  if (v11)
  {
    if (self->_useCachedDataOnly && (-[NMSMusicRecommendationsRequest _unarchivedCombinedResponsesDictionary](self, "_unarchivedCombinedResponsesDictionary"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectForKeyedSubscript:@"recommendationsArray"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      [(NMSMusicRecommendationsRequest *)self _continueToLegacyForYouRequestWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
    }

    else
    {
      [(NMSMusicRecommendationsRequest *)self _continueToHeavyRotationRequestWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
    }
  }

  else
  {
    [(NMSMusicRecommendationsRequest *)self _continueToLibraryRecentMusicRecommedationsWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }
}

- (void)_continueToHeavyRotationRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performHeavyRotationRequestWithCompletion:v14];
}

void __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __99__NMSMusicRecommendationsRequest__continueToHeavyRotationRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setHeavyRotationResponse:*(a1 + 48)];
    v5 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    v6 = [*(a1 + 40) minimumNumberOfRecentMusicModelObjects];
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    if (v5 >= v6)
    {

      return [v8 _continueToProcessResultsWithContext:v7 queue:v9 responseHandler:v10];
    }

    else
    {

      return [v8 _continueToLibraryRecentMusicRecommedationsWithContext:v7 queue:v9 responseHandler:v10];
    }
  }
}

- (void)_continueToLibraryRecentMusicRecommedationsWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryRecentMusicRequestWithCompletion:v14];
}

void __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __111__NMSMusicRecommendationsRequest__continueToLibraryRecentMusicRecommedationsWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setLibraryRecentMusicResponse:*(a1 + 48)];
    v5 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    if (v5 < [*(a1 + 40) minimumNumberOfRecentMusicModelObjects] && (+[NMSSubscriptionManager sharedManager](NMSSubscriptionManager, "sharedManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasCapability:", 1), v6, v7))
    {
      v8 = *(a1 + 56);
      if (v8[8] == 1 && ([v8 _unarchivedCombinedResponsesDictionary], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"editorial-cachedLoadedOutput"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8 = *(a1 + 56), v10))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 64);
        v13 = *(a1 + 72);

        return [v8 _continueToLegacyEditorialRequestWithContext:v11 queue:v12 responseHandler:v13];
      }

      else
      {
        v18 = *(a1 + 40);
        v19 = *(a1 + 64);
        v20 = *(a1 + 72);

        return [v8 _continueToStarterPackMultiplexRequestWithContext:v18 queue:v19 responseHandler:v20];
      }
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);

      return [v15 _continueToProcessResultsWithContext:v14 queue:v16 responseHandler:v17];
    }
  }
}

- (void)_continueToStarterPackMultiplexRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993DEB8;
  v15 = queueCopy;
  selfCopy = self;
  v17 = contextCopy;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performStarterPackMultiplexRequestWithCompletion:v14];
}

void __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke_2;
  block[3] = &unk_27993DE90;
  v16 = v6;
  v8 = *(a1 + 56);
  v17 = v5;
  v14 = *(a1 + 40);
  v9 = *(a1 + 48);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = v8;
  *&v11 = v14;
  *(&v11 + 1) = v9;
  v18 = v11;
  v19 = v10;
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void __106__NMSMusicRecommendationsRequest__continueToStarterPackMultiplexRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 40) results];
    v5 = [v4 firstSection];
    v6 = [v5 loadAdditionalContentURL];

    [*(a1 + 48) _continueToStarterPackRoomRequestWithURL:v6 context:*(a1 + 56) queue:*(a1 + 64) responseHandler:*(a1 + 72)];
  }
}

- (void)_continueToStarterPackRoomRequestWithURL:(id)l context:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  lCopy = l;
  dispatch_assert_queue_V2(queueCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke;
  v17[3] = &unk_27993DEB8;
  v18 = queueCopy;
  v19 = contextCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performStarterPackRoomRequestWithURL:lCopy completion:v17];
}

void __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __105__NMSMusicRecommendationsRequest__continueToStarterPackRoomRequestWithURL_context_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setStarterPackResponse:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);

    return [v6 _continueToProcessResultsWithContext:v5 queue:v7 responseHandler:v8];
  }
}

- (void)_continueToProcessResultsWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  dispatch_assert_queue_V2(queueCopy);
  if (self->_useCachedDataOnly)
  {
    [(NMSMusicRecommendationsRequest *)self _finishWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }

  else
  {
    [(NMSMusicRecommendationsRequest *)self _continueToLibraryImportWithContext:contextCopy queue:queueCopy responseHandler:handlerCopy];
  }
}

- (void)_continueToLibraryImportWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  modelObjects = [contextCopy modelObjects];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
  v13 = [modelObjects filteredSetUsingPredicate:v12];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_2;
  v17[3] = &unk_27993DF28;
  v18 = queueCopy;
  selfCopy = self;
  v20 = contextCopy;
  v21 = handlerCopy;
  v14 = contextCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performLibraryImportChangeRequestWithModelObjects:v13 completion:v17];
}

void __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_3;
  block[3] = &unk_27993DF00;
  v12 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v5;
  *&v8 = v10;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v7;
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t __92__NMSMusicRecommendationsRequest__continueToLibraryImportWithContext_queue_responseHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    return [*(a1 + 40) _finishWithContext:*(a1 + 48) queue:*(a1 + 56) responseHandler:*(a1 + 64)];
  }
}

- (void)_finishWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  v10 = self->_cachedData;
  if (!self->_useCachedDataOnly)
  {
    v11 = objc_opt_new();
    if ([contextCopy minimumNumberOfRecentMusicModelObjects])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contextCopy, "minimumNumberOfRecentMusicModelObjects")}];
      [v11 setObject:v12 forKey:@"minimumNumberOfRecentMusicModelObjects"];
    }

    forYouResponse = [contextCopy forYouResponse];
    nms_cachedRecommendationsArray = [forYouResponse nms_cachedRecommendationsArray];

    if (nms_cachedRecommendationsArray)
    {
      forYouResponse2 = [contextCopy forYouResponse];
      nms_cachedRecommendationsArray2 = [forYouResponse2 nms_cachedRecommendationsArray];
      [v11 setObject:nms_cachedRecommendationsArray2 forKey:@"recommendationsArray"];
    }

    forYouResponse3 = [contextCopy forYouResponse];
    nms_cachedStoreItemMetadataResults = [forYouResponse3 nms_cachedStoreItemMetadataResults];

    if (nms_cachedStoreItemMetadataResults)
    {
      forYouResponse4 = [contextCopy forYouResponse];
      nms_cachedStoreItemMetadataResults2 = [forYouResponse4 nms_cachedStoreItemMetadataResults];
      [v11 setObject:nms_cachedStoreItemMetadataResults2 forKey:@"storeItemMetadataResults"];
    }

    editorialBrowseResponse = [contextCopy editorialBrowseResponse];
    nms_cachedLoadedOutput = [editorialBrowseResponse nms_cachedLoadedOutput];

    if (nms_cachedLoadedOutput)
    {
      editorialBrowseResponse2 = [contextCopy editorialBrowseResponse];
      nms_cachedLoadedOutput2 = [editorialBrowseResponse2 nms_cachedLoadedOutput];
      [v11 setObject:nms_cachedLoadedOutput2 forKey:@"editorial-cachedLoadedOutput"];
    }

    v25 = MEMORY[0x277CCAAB0];
    v26 = [v11 copy];
    v33 = 0;
    v27 = [v25 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v33];
    v28 = v33;

    if (v28)
    {
      v29 = NMLogForCategory(5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [NMSMusicRecommendationsRequest _finishWithContext:queue:responseHandler:];
      }
    }

    v10 = v27;
  }

  v30 = [NMSMusicRecommendationsResponse alloc];
  recommendations = [contextCopy recommendations];
  v32 = [(NMSMusicRecommendationsResponse *)v30 initWithCachedData:v10 recommendations:recommendations];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v32, 0);
  }
}

- (void)_performLibraryPinsRequestWithCompletion:(id)completion
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD5ED8];
  completionCopy = completion;
  v4 = objc_alloc_init(v3);
  [v4 setLabel:@"Library Pins Recommendations"];
  identityKind = [MEMORY[0x277CD5EC8] identityKind];
  [v4 setItemKind:identityKind];

  v23 = objc_alloc(MEMORY[0x277CD6018]);
  v31[0] = *MEMORY[0x277CD5BC8];
  v6 = MEMORY[0x277CD6018];
  v7 = *MEMORY[0x277CD59C0];
  v30[0] = *MEMORY[0x277CD59A0];
  v30[1] = v7;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v8 = [v6 propertySetWithProperties:v24];
  v32[0] = v8;
  v31[1] = *MEMORY[0x277CD5BC0];
  v9 = MEMORY[0x277CD6018];
  v29 = *MEMORY[0x277CD5970];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v11 = [v9 propertySetWithProperties:v10];
  v32[1] = v11;
  v31[2] = *MEMORY[0x277CD5BD0];
  v12 = MEMORY[0x277CD6018];
  v28 = *MEMORY[0x277CD5AF8];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v14 = [v12 propertySetWithProperties:v13];
  v32[2] = v14;
  v31[3] = *MEMORY[0x277CD5BB8];
  v15 = MEMORY[0x277CD6018];
  v27 = *MEMORY[0x277CD5948];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v17 = [v15 propertySetWithProperties:v16];
  v32[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v19 = [v23 initWithProperties:MEMORY[0x277CBEBF8] relationships:v18];
  [v4 setItemProperties:v19];

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CD5998] ascending:1];
  v26 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [v4 setItemSortDescriptors:v21];

  [v4 setFilteringOptions:{objc_msgSend(v4, "filteringOptions") | 0x10000}];
  [v4 performWithResponseHandler:completionCopy];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_performHeavyRotationRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277D2B998]);
  [v5 setDefaultMusicRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v5 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v5 setItemProperties:allSupportedItemProperties];

  _heavyRotationCacheURL = [(NMSMusicRecommendationsRequest *)self _heavyRotationCacheURL];
  [v5 setCacheURL:_heavyRotationCacheURL];

  [v5 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v5 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v10 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"HeavyRotationResponse"];

    _heavyRotationCacheURL2 = [(NMSMusicRecommendationsRequest *)self _heavyRotationCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v10 toURL:_heavyRotationCacheURL2];

    v12 = @"Defaults";
  }

  else
  {
    v12 = @"Store";
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke;
  v15[3] = &unk_27993DF50;
  v16 = v12;
  v17 = v5;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = v5;
  [v14 performWithResponseHandler:v15];
}

void __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Heavy Rotation) Got heavy rotation response: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performLibraryRecentMusicRequestWithCompletion:(id)completion
{
  v111 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = __Block_byref_object_copy__2;
  v101[4] = __Block_byref_object_dispose__2;
  v102 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x3032000000;
  v99[3] = __Block_byref_object_copy__2;
  v99[4] = __Block_byref_object_dispose__2;
  v100 = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x3032000000;
  v97[3] = __Block_byref_object_copy__2;
  v97[4] = __Block_byref_object_dispose__2;
  v98 = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x3032000000;
  v95[3] = __Block_byref_object_copy__2;
  v95[4] = __Block_byref_object_dispose__2;
  v96 = 0;
  queue = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationsRequest.LibraryCompletion", 0);
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke;
  v89[3] = &unk_27993DF78;
  v91 = v101;
  v92 = v97;
  v93 = v99;
  v94 = v95;
  v52 = completionCopy;
  v90 = v52;
  v56 = MEMORY[0x25F865990](v89);
  v4 = +[NMSyncDefaults sharedDefaults];
  libraryRecommendationPlaylists = [v4 libraryRecommendationPlaylists];

  if ([libraryRecommendationPlaylists count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = libraryRecommendationPlaylists;
    v6 = [obj countByEnumeratingWithState:&v85 objects:v110 count:16];
    v59 = v5;
    if (v6)
    {
      v7 = *v86;
      do
      {
        v8 = 0;
        do
        {
          if (*v86 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v85 + 1) + 8 * v8);
          v10 = objc_alloc(MEMORY[0x277CD5DA0]);
          identityKind = [MEMORY[0x277CD5F08] identityKind];
          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2;
          v84[3] = &unk_27993DFA0;
          v84[4] = v9;
          v12 = [v10 initWithModelKind:identityKind block:v84];

          [v59 addObject:v12];
          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v85 objects:v110 count:16];
      }

      while (v6);
    }

    v13 = objc_alloc_init(MEMORY[0x277CD5ED8]);
    [v13 setLabel:@"Library Recommendation Playlists"];
    v14 = MEMORY[0x277CD5EF0];
    v15 = NMSMPModelPlaylistVariantsNonFolder;
    v16 = MEMORY[0x277CD5EF8];
    v17 = [MEMORY[0x277CD5F58] kindWithVariants:1];
    v109 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
    v19 = [v16 kindWithKinds:v18];
    v20 = [v14 kindWithVariants:v15 & 0xFFFFFFFFFFFFFFFDLL playlistEntryKind:v19 options:4];
    [v13 setItemKind:v20];

    v21 = MEMORY[0x277CD6018];
    v22 = *MEMORY[0x277CD59A0];
    v108[0] = *MEMORY[0x277CD59B8];
    v108[1] = v22;
    v23 = *MEMORY[0x277CD59B0];
    v108[2] = *MEMORY[0x277CD59C0];
    v108[3] = v23;
    v108[4] = *MEMORY[0x277CD59C8];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:5];
    v25 = [v21 propertySetWithProperties:v24];
    [v13 setItemProperties:v25];

    [v13 setAllowedItemIdentifiers:v59];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3;
    v78[3] = &unk_27993DFF0;
    v26 = v13;
    v79 = v26;
    v80 = queue;
    v82 = v97;
    v83 = v101;
    v81 = v56;
    [v26 performWithResponseHandler:v78];

    v27 = v59;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_88;
    block[3] = &unk_27993E018;
    v77 = v101;
    v76 = v56;
    dispatch_async(queue, block);
    v27 = v76;
  }

  v28 = +[NMSyncDefaults sharedDefaults];
  libraryRecommendationAlbums = [v28 libraryRecommendationAlbums];

  if ([libraryRecommendationAlbums count])
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obja = libraryRecommendationAlbums;
    v30 = [obja countByEnumeratingWithState:&v71 objects:v107 count:16];
    v60 = v29;
    if (v30)
    {
      v31 = *v72;
      do
      {
        v32 = 0;
        do
        {
          if (*v72 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v71 + 1) + 8 * v32);
          v34 = objc_alloc(MEMORY[0x277CD5DA0]);
          identityKind2 = [MEMORY[0x277CD5E48] identityKind];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_90;
          v70[3] = &unk_27993DFA0;
          v70[4] = v33;
          v36 = [v34 initWithModelKind:identityKind2 block:v70];

          [v60 addObject:v36];
          ++v32;
        }

        while (v30 != v32);
        v30 = [obja countByEnumeratingWithState:&v71 objects:v107 count:16];
      }

      while (v30);
    }

    v37 = objc_alloc_init(MEMORY[0x277CD5ED8]);
    [v37 setLabel:@"Library Recommendation Albums"];
    v38 = MEMORY[0x277CD5E40];
    v39 = [MEMORY[0x277CD5F58] kindWithVariants:1];
    v40 = [v38 kindWithSongKind:v39];
    [v37 setItemKind:v40];

    v41 = objc_alloc(MEMORY[0x277CD6018]);
    v42 = *MEMORY[0x277CD5948];
    v106[0] = *MEMORY[0x277CD5960];
    v106[1] = v42;
    v106[2] = *MEMORY[0x277CD5958];
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:3];
    v104 = *MEMORY[0x277CD5B68];
    v44 = MEMORY[0x277CD6018];
    v103 = *MEMORY[0x277CD5980];
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
    v46 = [v44 propertySetWithProperties:v45];
    v105 = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    v48 = [v41 initWithProperties:v43 relationships:v47];
    [v37 setItemProperties:v48];

    [v37 setAllowedItemIdentifiers:v60];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_4;
    v64[3] = &unk_27993DFF0;
    v49 = v37;
    v65 = v49;
    v66 = queue;
    v68 = v95;
    v69 = v99;
    v67 = v56;
    [v49 performWithResponseHandler:v64];

    v50 = v60;
  }

  else
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_96;
    v61[3] = &unk_27993E018;
    v63 = v99;
    v62 = v56;
    dispatch_async(queue, v61);
    v50 = v62;
  }

  _Block_object_dispose(v95, 8);
  _Block_object_dispose(v97, 8);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);

  v51 = *MEMORY[0x277D85DE8];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1[6] + 8) + 40) == 0;
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1[8] + 8) + 40) == 0;
  }

  if (v2 || v3)
  {
    v4 = 0;
    v15 = 0;
  }

  else
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5 || (v5 = *(*(a1[8] + 8) + 40)) != 0)
    {
      v6 = v5;
      v4 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CD5F40]);
      v9 = objc_alloc_init(MEMORY[0x277CD5F38]);
      v4 = [v8 initWithRequest:v9];

      v10 = objc_alloc_init(MEMORY[0x277CD5FD0]);
      [v10 appendSection:@"Playlists"];
      v11 = [*(*(a1[5] + 8) + 40) results];
      v12 = [v11 allItems];
      [v10 appendItems:v12];

      [v10 appendSection:@"Albums"];
      v13 = [*(*(a1[7] + 8) + 40) results];
      v14 = [v13 allItems];
      [v10 appendItems:v14];

      [v4 setResults:v10];
      v6 = 0;
    }

    v7 = a1[4];
    v15 = v6;
    if (v7)
    {
      (*(v7 + 16))(v7, v4);
    }
  }
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1(a1);
    }
  }

  v8 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_86;
  block[3] = &unk_27993DFC8;
  v17 = *(a1 + 64);
  v14 = v6;
  v15 = v5;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_86(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_88(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD5F40]);
  v3 = objc_alloc_init(MEMORY[0x277CD5F38]);
  v4 = [v2 initWithRequest:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1(a1);
    }
  }

  v8 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_95;
  block[3] = &unk_27993DFC8;
  v17 = *(a1 + 64);
  v14 = v6;
  v15 = v5;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_95(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_2_96(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD5F40]);
  v3 = objc_alloc_init(MEMORY[0x277CD5F38]);
  v4 = [v2 initWithRequest:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

- (void)_performStarterPackMultiplexRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  v7 = [mEMORY[0x277CF0130] userUnderAgeForAccount:primaryAuthKitAccount];

  v8 = [objc_alloc(MEMORY[0x277D2B9A8]) initWithUnderageUser:v7];
  [v8 setDefaultMusicRequestProperties];
  [v8 setEditorialRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v8 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v8 setItemProperties:allSupportedItemProperties];

  _starterPackMultiplexCacheURL = [(NMSMusicRecommendationsRequest *)self _starterPackMultiplexCacheURL];
  [v8 setCacheURL:_starterPackMultiplexCacheURL];

  [v8 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v8 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v13 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"StarterPackMultiplexResponse"];

    _starterPackMultiplexCacheURL2 = [(NMSMusicRecommendationsRequest *)self _starterPackMultiplexCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v13 toURL:_starterPackMultiplexCacheURL2];

    v15 = @"Defaults";
  }

  else
  {
    v15 = @"Store";
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke;
  v18[3] = &unk_27993DF50;
  v19 = v15;
  v20 = v8;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = v8;
  [v17 performWithResponseHandler:v18];
}

void __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Starter Pack) Got multiplex response: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performStarterPackRoomRequestWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D2B9B0];
  lCopy = l;
  v9 = [[v7 alloc] initWithURL:lCopy];

  [v9 setDefaultMusicRequestProperties];
  allSupportedSectionProperties = [MEMORY[0x277D2B9A0] allSupportedSectionProperties];
  [v9 setSectionProperties:allSupportedSectionProperties];

  allSupportedItemProperties = [MEMORY[0x277D2B9A0] allSupportedItemProperties];
  [v9 setItemProperties:allSupportedItemProperties];

  _starterPackRoomCacheURL = [(NMSMusicRecommendationsRequest *)self _starterPackRoomCacheURL];
  [v9 setCacheURL:_starterPackRoomCacheURL];

  [v9 setCachePolicy:3];
  if (self->_useCachedDataOnly)
  {
    [v9 setCachePolicy:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v14 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"StarterPackRoomResponse"];

    _starterPackRoomCacheURL2 = [(NMSMusicRecommendationsRequest *)self _starterPackRoomCacheURL];
    [(NMSMusicRecommendationsRequest *)self _writeData:v14 toURL:_starterPackRoomCacheURL2];

    v16 = @"Defaults";
  }

  else
  {
    v16 = @"Store";
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke;
  v19[3] = &unk_27993DF50;
  v20 = v16;
  v21 = v9;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = v9;
  [v18 performWithResponseHandler:v19];
}

void __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Starter Pack) Got starter pack room response: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  completionCopy = completion;
  v7 = objectsCopy;
  v8 = completionCopy;
  v32 = v7;
  if (![v7 count])
  {
    v8[2](v8, 0);
    goto LABEL_25;
  }

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__2;
  v50[4] = __Block_byref_object_dispose__2;
  v51 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke;
  v45[3] = &unk_27993E040;
  v48 = v52;
  v49 = v50;
  v9 = v7;
  v46 = v9;
  v31 = v8;
  v47 = v8;
  v34 = MEMORY[0x25F865990](v45);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *v42;
  do
  {
    v12 = 0;
    do
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v41 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        identifiers = [v14 identifiers];
        universalStore = [identifiers universalStore];
        globalPlaylistID = [universalStore globalPlaylistID];

        if ([globalPlaylistID length])
        {
          v18 = NMLogForCategory(5);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v14;
            _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Importing playlist: %{public}@", buf, 0xCu);
          }

          defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
          identifiers2 = [v14 identifiers];
          universalStore2 = [identifiers2 universalStore];
          globalPlaylistID2 = [universalStore2 globalPlaylistID];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107;
          v38[3] = &unk_27993E068;
          v39 = v14;
          v40 = v34;
          [defaultMediaLibrary addGlobalPlaylistWithID:globalPlaylistID2 andAddToCloudLibrary:0 completion:v38];

          v23 = v39;
        }

        else
        {
          v23 = NMLogForCategory(5);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v54 = v14;
            _os_log_fault_impl(&dword_25B27B000, v23, OS_LOG_TYPE_FAULT, "[Recommendation] (Import) Skipping import for playlist without a globalPlaylistID: %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v34[2](v34, 0);
          goto LABEL_21;
        }

        v24 = v13;
        v25 = NMLogForCategory(5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v54 = v24;
          _os_log_impl(&dword_25B27B000, v25, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Importing album: %{public}@", buf, 0xCu);
        }

        defaultMediaLibrary2 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        identifiers3 = [v24 identifiers];
        universalStore3 = [identifiers3 universalStore];
        adamID = [universalStore3 adamID];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110;
        v35[3] = &unk_27993E090;
        v36 = v24;
        v37 = v34;
        [defaultMediaLibrary2 addStoreItem:adamID andAddTracksToCloudLibrary:0 withCompletion:v35];

        globalPlaylistID = v36;
      }

LABEL_21:
      ++v12;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  }

  while (v10);
LABEL_23:

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);
  v8 = v31;
LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v4 = *(*(a1 + 56) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v10 = v3;
  if (v7)
  {
    v3 = v6;
  }

  objc_storeStrong(v5, v3);
  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v8 == [*(a1 + 32) count])
  {
    v9 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107_cold_1(v3, a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Successfully imported playlist: %{public}@", &v15, 0xCu);
    }

    v5 = [MEMORY[0x277CD5E38] playlistsQuery];
    v7 = MEMORY[0x277CD5E30];
    v8 = [*(a1 + 32) identifiers];
    v9 = [v8 universalStore];
    v10 = [v9 globalPlaylistID];
    v11 = [v7 predicateWithValue:v10 forProperty:*MEMORY[0x277CD58F0] comparisonType:0];
    [v5 addFilterPredicate:v11];

    v12 = [v5 collections];
    v13 = [v12 firstObject];

    [v13 setValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5920]];
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(5);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110_cold_1(v4, a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Successfully imported album: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_unarchivedCombinedResponsesDictionary
{
  unarchivedCombinedResponsesDictionary = self->_unarchivedCombinedResponsesDictionary;
  if (!unarchivedCombinedResponsesDictionary)
  {
    if ([(NSData *)self->_cachedData length])
    {
      v4 = MEMORY[0x277CCAAC8];
      v5 = MEMORY[0x277CBEB98];
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
      cachedData = self->_cachedData;
      v19 = 0;
      v13 = [v4 unarchivedObjectOfClasses:v11 fromData:cachedData error:&v19];
      v14 = v19;
      v15 = self->_unarchivedCombinedResponsesDictionary;
      self->_unarchivedCombinedResponsesDictionary = v13;

      if (v14)
      {
        v16 = NMLogForCategory(5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NMSMusicRecommendationsRequest _unarchivedCombinedResponsesDictionary];
        }
      }
    }

    else
    {
      v17 = self->_unarchivedCombinedResponsesDictionary;
      self->_unarchivedCombinedResponsesDictionary = 0;
    }

    unarchivedCombinedResponsesDictionary = self->_unarchivedCombinedResponsesDictionary;
  }

  return unarchivedCombinedResponsesDictionary;
}

- (BOOL)_isLibraryPinsSupported
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C5092DE9-70B8-41DB-B2AB-80DD86ED41C7"];
  v7 = [firstObject supportsCapability:v6];

  if (!v7)
  {
    return 0;
  }

  mEMORY[0x277CD5D78] = [MEMORY[0x277CD5D78] sharedCloudController];
  isCloudLibraryEnabled = [mEMORY[0x277CD5D78] isCloudLibraryEnabled];

  return isCloudLibraryEnabled;
}

+ (id)_recentMusicDirectory
{
  if (_recentMusicDirectory_onceToken != -1)
  {
    +[NMSMusicRecommendationsRequest _recentMusicDirectory];
  }

  v3 = MEMORY[0x277CBEBC0];
  v4 = _recentMusicDirectory_path;

  return [v3 fileURLWithPath:v4 isDirectory:1];
}

void __55__NMSMusicRecommendationsRequest__recentMusicDirectory__block_invoke()
{
  v0 = +[NMSPathUtil recentMusicDirectory];
  v1 = _recentMusicDirectory_path;
  _recentMusicDirectory_path = v0;

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 createDirectoryAtPath:_recentMusicDirectory_path withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_heavyRotationCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"HeavyRotationResponse"];

  return v3;
}

- (id)_starterPackMultiplexCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"StarterPackMultiplexResponse"];

  return v3;
}

- (id)_starterPackRoomCacheURL
{
  _recentMusicDirectory = [objc_opt_class() _recentMusicDirectory];
  v3 = [_recentMusicDirectory URLByAppendingPathComponent:@"StarterPackRoomResponse"];

  return v3;
}

- (void)_writeData:(id)data toURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  if (dataCopy)
  {
    v12 = 0;
    v7 = [dataCopy writeToURL:lCopy options:1 error:&v12];
    v8 = v12;
    v9 = NMLogForCategory(5);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = dataCopy;
        v15 = 2112;
        v16 = lCopy;
        _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[Recommendations] Cached data %@ at url %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NMSMusicRecommendationsRequest _writeData:toURL:];
    }
  }

  else
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NMSMusicRecommendationsRequest _writeData:toURL:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_continueToLegacyForYouRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993E0B8;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performForYouRequestWithCompletion:v14];
}

void __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __98__NMSMusicRecommendationsRequest__continueToLegacyForYouRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setForYouResponse:*(a1 + 48)];
    v5 = [*(a1 + 40) numberOfRecentMusicModelObjects];
    v6 = [*(a1 + 40) minimumNumberOfRecentMusicModelObjects];
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    if (v5 >= v6)
    {

      return [v8 _continueToProcessResultsWithContext:v7 queue:v9 responseHandler:v10];
    }

    else
    {

      return [v8 _continueToLibraryRecentMusicRecommedationsWithContext:v7 queue:v9 responseHandler:v10];
    }
  }
}

- (void)_continueToLegacyEditorialRequestWithContext:(id)context queue:(id)queue responseHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queueCopy);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke;
  v14[3] = &unk_27993E0E0;
  v15 = queueCopy;
  v16 = contextCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = contextCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [(NMSMusicRecommendationsRequest *)self _performEditorialBrowseRequestWithCompletion:v14];
}

void __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke_2;
  v10[3] = &unk_27993DE90;
  v11 = v6;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __101__NMSMusicRecommendationsRequest__continueToLegacyEditorialRequestWithContext_queue_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    [*(a1 + 40) setEditorialBrowseResponse:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);

    return [v6 _continueToProcessResultsWithContext:v5 queue:v7 responseHandler:v8];
  }
}

- (void)_performForYouRequestWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(NMSModelForYouRecommendationsRequest);
  [(NMSModelForYouRecommendationsRequest *)v5 setLabel:@"ForYou Music Recommendations"];
  v6 = +[(MPModelForYouRecommendationsRequest *)NMSModelForYouRecommendationsRequest];
  [(NMSModelForYouRecommendationsRequest *)v5 setSectionProperties:v6];

  v7 = +[(MPModelForYouRecommendationsRequest *)NMSModelForYouRecommendationsRequest];
  [(NMSModelForYouRecommendationsRequest *)v5 setItemProperties:v7];

  [(MPStoreModelRequest *)v5 setClientIdentifier:@"NanoMusic"];
  [(MPStoreModelRequest *)v5 setClientVersion:@"2.0"];
  if (self->_useCachedDataOnly)
  {
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_useCachedDataOnly:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v9 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"recommendationsArray"];
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_cachedRecommendationsArray:v9];

    _unarchivedCombinedResponsesDictionary2 = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v11 = [_unarchivedCombinedResponsesDictionary2 objectForKeyedSubscript:@"storeItemMetadataResults"];
    [(NMSModelForYouRecommendationsRequest *)v5 setNms_cachedStoreItemMetadataResults:v11];

    v12 = @"Defaults";
  }

  else
  {
    v12 = @"Store";
  }

  v13 = NMLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v12;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (ForYou) Performing request: %{public}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke;
  v17[3] = &unk_27993E108;
  v18 = v12;
  v19 = v5;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v5;
  [(NMSModelForYouRecommendationsRequest *)v15 performWithResponseHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (ForYou) Got response: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performEditorialBrowseRequestWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(NMSModelEditorialRecommendationsRequest);
  [(NMSModelEditorialRecommendationsRequest *)v5 setLabel:@"Editorial Recommendations"];
  v6 = +[(MPModelStoreBrowseRequest *)NMSModelEditorialRecommendationsRequest];
  [(NMSModelEditorialRecommendationsRequest *)v5 setSectionProperties:v6];

  v7 = +[(MPModelStoreBrowseRequest *)NMSModelEditorialRecommendationsRequest];
  [(NMSModelEditorialRecommendationsRequest *)v5 setItemProperties:v7];

  [(MPStoreModelRequest *)v5 setClientIdentifier:@"NanoMusic"];
  [(MPStoreModelRequest *)v5 setClientVersion:@"2.0"];
  if (self->_useCachedDataOnly)
  {
    [(NMSModelEditorialRecommendationsRequest *)v5 setNms_useCachedDataOnly:1];
    _unarchivedCombinedResponsesDictionary = [(NMSMusicRecommendationsRequest *)self _unarchivedCombinedResponsesDictionary];
    v9 = [_unarchivedCombinedResponsesDictionary objectForKeyedSubscript:@"editorial-cachedLoadedOutput"];
    [(NMSModelEditorialRecommendationsRequest *)v5 setNms_cachedLoadedOutput:v9];

    v10 = @"Defaults";
  }

  else
  {
    v10 = @"Store";
  }

  v11 = NMLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Editorial) Performing request: %{public}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke;
  v15[3] = &unk_27993E130;
  v16 = v10;
  v17 = v5;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v5;
  [(NMSModelEditorialRecommendationsRequest *)v13 performWithResponseHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (%{public}@) (Editorial) Got response: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performLegacyLibraryImportChangeRequestWithModelObjects:(id)objects completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = MEMORY[0x277CD5EB8];
  objectsCopy = objects;
  v8 = objc_alloc_init(v6);
  [v8 setShouldLibraryAdd:0];
  [v8 setModelObjects:objectsCopy];

  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Performing request: %{public}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke;
  v13[3] = &unk_27993E090;
  v14 = v8;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [v11 performWithResponseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NMLogForCategory(5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Import) Got response: %@", &v11, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_finishWithContext:queue:responseHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "[Recommendation] Failed to archive combinedResponsesDictionary due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__NMSMusicRecommendationsRequest__performHeavyRotationRequestWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__NMSMusicRecommendationsRequest__performLibraryRecentMusicRequestWithCompletion___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__NMSMusicRecommendationsRequest__performStarterPackMultiplexRequestWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__NMSMusicRecommendationsRequest__performStarterPackRoomRequestWithURL_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_107_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __96__NMSMusicRecommendationsRequest__performLibraryImportChangeRequestWithModelObjects_completion___block_invoke_110_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unarchivedCombinedResponsesDictionary
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "Failed to unarchive combinedResponsesDictionary due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:toURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:toURL:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "[Recommendation] failed to write null data to disk for URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__NMSMusicRecommendationsRequest__performForYouRequestWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__NMSMusicRecommendationsRequest__performEditorialBrowseRequestWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__NMSMusicRecommendationsRequest__performLegacyLibraryImportChangeRequestWithModelObjects_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end