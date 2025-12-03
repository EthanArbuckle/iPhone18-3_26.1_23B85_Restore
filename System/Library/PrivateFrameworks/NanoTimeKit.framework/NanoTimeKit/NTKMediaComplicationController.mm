@interface NTKMediaComplicationController
- (NTKMediaComplicationController)initWithLabel:(id)label;
- (NTKMediaComplicationControllerDelegate)delegate;
- (id)_refreshPlayerNotificationName;
- (id)launchURLWithScheme:(id)scheme;
- (void)_refreshPlayerRequest;
- (void)_resolveIntentionalRoutingPlayerPathWithQueue:(id)queue completion:(id)completion;
- (void)_resolveLegacyPlayerPathWithQueue:(id)queue completion:(id)completion;
- (void)_resolvePlayerPathWithQueue:(id)queue completion:(id)completion;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)pause;
- (void)resume;
@end

@implementation NTKMediaComplicationController

- (NTKMediaComplicationController)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = NTKMediaComplicationController;
  v5 = [(NTKMediaComplicationController *)&v9 init];
  if (v5)
  {
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"NTKMediaController (%@):", labelCopy];
    loggingPrefix = v5->_loggingPrefix;
    v5->_loggingPrefix = labelCopy;
  }

  return v5;
}

- (void)resume
{
  requestResponseController = self->_requestResponseController;
  if (!requestResponseController)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD6038]);
    v5 = self->_requestResponseController;
    self->_requestResponseController = v4;

    [(MPRequestResponseController *)self->_requestResponseController setDelegate:self];
    requestResponseController = self->_requestResponseController;
  }

  [(MPRequestResponseController *)requestResponseController beginAutomaticResponseLoading];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  _refreshPlayerNotificationName = [(NTKMediaComplicationController *)self _refreshPlayerNotificationName];
  [defaultCenter addObserver:self selector:sel__handlePlayerDidChange_ name:_refreshPlayerNotificationName object:0];

  [(NTKMediaComplicationController *)self _refreshPlayerRequest];
}

- (void)pause
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  _refreshPlayerNotificationName = [(NTKMediaComplicationController *)self _refreshPlayerNotificationName];
  [defaultCenter removeObserver:self name:_refreshPlayerNotificationName object:0];

  requestResponseController = self->_requestResponseController;

  [(MPRequestResponseController *)requestResponseController endAutomaticResponseLoading];
}

- (id)launchURLWithScheme:(id)scheme
{
  v36[3] = *MEMORY[0x277D85DE8];
  schemeCopy = scheme;
  v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v5 setScheme:schemeCopy];
  response = [(MPRequestResponseController *)self->_requestResponseController response];
  tracklist = [response tracklist];
  playingItem = [tracklist playingItem];

  if (playingItem)
  {
    v31 = schemeCopy;
    [v5 setHost:@"now-playing"];
    response2 = [(MPRequestResponseController *)self->_requestResponseController response];
    request = [response2 request];
    playerPath = [request playerPath];

    v12 = MEMORY[0x277CCAD18];
    route = [playerPath route];
    designatedGroupLeaderRouteUID = [route designatedGroupLeaderRouteUID];
    v15 = [v12 queryItemWithName:@"routeUID" value:designatedGroupLeaderRouteUID];
    v36[0] = v15;
    v16 = MEMORY[0x277CCAD18];
    bundleID = [playerPath bundleID];
    v18 = [v16 queryItemWithName:@"bundleID" value:bundleID];
    v36[1] = v18;
    v19 = MEMORY[0x277CCAD18];
    playerID = [playerPath playerID];
    v21 = [v19 queryItemWithName:@"playerID" value:playerID];
    v36[2] = v21;
    [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v22 = v30 = self;
    [v5 setQueryItems:v22];

    v23 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      loggingPrefix = v30->_loggingPrefix;
      v25 = [v5 URL];
      absoluteString = [v25 absoluteString];
      *buf = 138412546;
      v33 = loggingPrefix;
      v34 = 2112;
      v35 = absoluteString;
      _os_log_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_DEFAULT, "%@ launchURL (currently playing item) url=%@", buf, 0x16u);
    }

    schemeCopy = v31;
  }

  else
  {
    playerPath = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(playerPath, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_loggingPrefix;
      *buf = 138412546;
      v33 = v27;
      v34 = 2112;
      v35 = schemeCopy;
      _os_log_impl(&dword_22D9C5000, playerPath, OS_LOG_TYPE_DEFAULT, "%@ launchURL (no currently playing items) scheme=%@", buf, 0x16u);
    }
  }

  v28 = [v5 URL];

  return v28;
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  replacementCopy = replacement;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKMediaComplicationController_controller_defersResponseReplacement___block_invoke;
  v7[3] = &unk_27877E570;
  v7[4] = self;
  v8 = replacementCopy;
  v6 = replacementCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __71__NTKMediaComplicationController_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [*(v2 + 8) response];
  [WeakRetained controller:v2 didReplaceResponse:v3];
}

- (void)_refreshPlayerRequest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__NTKMediaComplicationController__refreshPlayerRequest__block_invoke;
  v2[3] = &unk_278783FD0;
  v2[4] = self;
  [(NTKMediaComplicationController *)self _resolvePlayerPathWithQueue:MEMORY[0x277D85CD0] completion:v2];
}

void __55__NTKMediaComplicationController__refreshPlayerRequest__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __55__NTKMediaComplicationController__refreshPlayerRequest__block_invoke_cold_1(a1, v3, v5);
    }

    v5 = objc_alloc_init(MEMORY[0x277D278F0]);
    [v5 setPlayerPath:v3];
    v27 = objc_alloc(MEMORY[0x277CD6018]);
    v37 = *MEMORY[0x277CD5BB0];
    v6 = objc_alloc(MEMORY[0x277CD6018]);
    v36 = *MEMORY[0x277CD5B60];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v34[0] = *MEMORY[0x277CD5C08];
    v8 = MEMORY[0x277CD6018];
    v33 = *MEMORY[0x277CD5980];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v10 = [v8 propertySetWithProperties:v9];
    v35[0] = v10;
    v34[1] = *MEMORY[0x277CD5BF0];
    v11 = MEMORY[0x277CD6018];
    v32 = *MEMORY[0x277CD5960];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v13 = [v11 propertySetWithProperties:v12];
    v35[1] = v13;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v14 = v26 = a1;
    v15 = [v6 initWithProperties:v7 relationships:v14];
    v38 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v17 = [v27 initWithProperties:0 relationships:v16];
    v28 = v3;
    v18 = v17;
    [v5 setPlayingItemProperties:v17];

    v19 = objc_alloc(MEMORY[0x277CD6018]);
    v30 = *MEMORY[0x277CD5B90];
    v20 = MEMORY[0x277CD6018];
    v29 = *MEMORY[0x277CD5A78];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v22 = [v20 propertySetWithProperties:v21];
    v31 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v24 = [v19 initWithProperties:0 relationships:v23];
    [v5 setQueueSectionProperties:v24];

    v3 = v28;
    [*(*(v26 + 32) + 8) setRequest:v5];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v40 = v25;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ Got nil playerPath", buf, 0xCu);
  }
}

- (id)_refreshPlayerNotificationName
{
  v2 = _os_feature_enabled_impl();
  v3 = MEMORY[0x277D27920];
  if (!v2)
  {
    v3 = MEMORY[0x277CD5648];
  }

  v4 = *v3;

  return v4;
}

- (void)_resolvePlayerPathWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  if (_os_feature_enabled_impl())
  {
    [(NTKMediaComplicationController *)self _resolveIntentionalRoutingPlayerPathWithQueue:queueCopy completion:completionCopy];
  }

  else
  {
    [(NTKMediaComplicationController *)self _resolveLegacyPlayerPathWithQueue:queueCopy completion:completionCopy];
  }
}

- (void)_resolveIntentionalRoutingPlayerPathWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v6 = queueCopy;
  v7 = completionCopy;
  MRMediaRemoteGetProactiveRecommendedPlayer();
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || ([v5 isResolved] & 1) == 0)
  {
    v14 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_3(a1, v14);
    }

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8 = [WeakRetained controller:*(a1 + 32) complicationSupportsPlayer:v5];

  v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if ((v8 & 1) == 0)
  {
    if (v10)
    {
      __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_1(a1 + 32, v5);
    }

LABEL_10:
    v15 = *(a1 + 48);
    v13 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CD5D48] systemRoute];
    v18 = [v13 controller:v16 requestPlayerPathWithRoute:v17];
    (*(v15 + 16))(v15, v18);

    goto LABEL_11;
  }

  if (v10)
  {
    __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_2(a1 + 32, v5);
  }

  v11 = MEMORY[0x277CD5D48];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_29;
  v19[3] = &unk_278783FF8;
  v20 = *(a1 + 40);
  v12 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v12;
  [v11 getProactiveRecommendedRouteWithCompletion:v19];

  v13 = v20;
LABEL_11:
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_2;
  block[3] = &unk_27877FF88;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  block[4] = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = [WeakRetained controller:a1[4] requestPlayerPathWithRoute:a1[5]];
  (*(v2 + 16))(v2, v3);
}

- (void)_resolveLegacyPlayerPathWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277CD5D48];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NTKMediaComplicationController__resolveLegacyPlayerPathWithQueue_completion___block_invoke;
  v8[3] = &unk_278784048;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 getProactiveRouteWithCompletion:v8];
}

void __79__NTKMediaComplicationController__resolveLegacyPlayerPathWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NTKMediaComplicationController__resolveLegacyPlayerPathWithQueue_completion___block_invoke_2;
  block[3] = &unk_27877FF88;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__NTKMediaComplicationController__resolveLegacyPlayerPathWithQueue_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = [WeakRetained controller:a1[4] requestPlayerPathWithRoute:a1[5]];
  (*(v2 + 16))(v2, v3);
}

- (NTKMediaComplicationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__NTKMediaComplicationController__refreshPlayerRequest__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 16);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_22D9C5000, log, OS_LOG_TYPE_DEBUG, "%@ Setting player path to %@", &v4, 0x16u);
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_11(a1 a2)];
  v3 = [v2 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3(&dword_22D9C5000, v4, v5, "%@ Complication does not support current proactiveRecommended '%@', falling back to local", v6, v7, v8, v9, v10);
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_1_11(a1 a2)];
  v3 = [v2 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3(&dword_22D9C5000, v4, v5, "%@ Complication supports proactiveRecommended '%@'", v6, v7, v8, v9, v10);
}

void __91__NTKMediaComplicationController__resolveIntentionalRoutingPlayerPathWithQueue_completion___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "%@ proactiveRecommendedPlayerPath nil or unresolved, defaulting to system route", &v3, 0xCu);
}

@end