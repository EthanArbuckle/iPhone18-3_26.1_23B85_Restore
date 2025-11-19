@interface BCSBusinessQueryController
- (BCSBusinessQueryController)initWithChatSuggestMegashardFetchTrigger:(id)a3 businessLinkMegashardFetchTrigger:(id)a4 businessCallerMegashardFetchTrigger:(id)a5 businessEmailMegashardFetchTrigger:(id)a6 entitlementVerifier:(id)a7 identityService:(id)a8 chatSuggestController:(id)a9 iconController:(id)a10 cacheClearer:(id)a11 shardCache:(id)a12 configCache:(id)a13 configCacheSkip:(id)a14 shardCacheSkip:(id)a15 chatSuggestConfigResolver:(id)a16 linkConfigResolver:(id)a17 businessCallerConfigResolver:(id)a18 businessEmailConfigResolver:(id)a19 chatSuggestShardResolver:(id)a20 linkShardResolver:(id)a21 businessCallerShardResolver:(id)a22 businessEmailShardResolver:(id)a23 chatSuggestItemResolver:(id)a24 linkItemResolver:(id)a25 businessCallerItemResolver:(id)a26 businessEmailItemResolver:(id)a27 webPresentmentItemResolver:(id)a28 queryChopper:(id)a29 patternController:(id)a30 metricFactory:(id)a31 blastDoorHelper:(id)a32 housekeeper:(id)a33;
- (BCSBusinessQueryController)initWithChatSuggestMegashardFetcher:(id)a3 businessLinkMegashardFetcher:(id)a4 businessCallerMegashardFetcher:(id)a5 businessEmailMegashardFetcher:(id)a6 shardCache:(id)a7 cacheManager:(id)a8 chatSuggestRemoteFetcher:(id)a9 businessLinkRemoteFetcher:(id)a10 businessCallerRemoteFetcher:(id)a11 businessEmailRemoteFetcher:(id)a12 webPresentmentRemoteFetcher:(id)a13 userDefaults:(id)a14 metricFactory:(id)a15;
- (char)_itemResolverForType:(uint64_t)a1;
- (id)_shardIdentifierForQuery:(void *)a1 withItemIdentifier:(void *)a2;
- (id)_shardResolverForType:(id)a1;
- (uint64_t)_shardStartIndexForItemIdentifier:(uint64_t)a3 shardType:(uint64_t)a4 shardCount:;
- (unint64_t)_isBloomFilterCachedForType:(id *)a1;
- (void)_deleteInMemoryCache;
- (void)_generateSafeImageURLForItemIdentifier:(void *)a3 imageData:(void *)a4 format:(void *)a5 completion:;
- (void)cachedBusinessMetadataForEmail:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4;
- (void)clearCachesForType:(int64_t)a3 completion:(id)a4;
- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4;
- (void)fetchAreBusinessesRegisteredWithQuery:(id)a3 completion:(id)a4;
- (void)fetchBrandWithIdentifier:(id)a3 forClientBundleID:(id)a4 serviceType:(int64_t)a5 completion:(id)a6;
- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 forClientBundleID:(id)a4 metadataCallback:(id)a5 logoURLCallback:(id)a6 completion:(id)a7;
- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessItemWithPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessLogoForBusinessIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessMetadataForEmail:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessMetadataForEmailIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchBusinessMetadataForEmails:(id)a3 forClientBundleID:(id)a4 requestId:(id)a5 completion:(id)a6;
- (void)fetchConfigForQuery:(id)a3 completion:(id)a4;
- (void)fetchIsBusinessPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchIsBusinessRegisteredWithQuery:(id)a3 completion:(id)a4;
- (void)fetchItemWithQuery:(id)a3 completion:(id)a4;
- (void)fetchItemsWithQuery:(id)a3 perItemCompletion:(id)a4 completion:(id)a5;
- (void)fetchLinkItemModelWithHash:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchShardWithQuery:(id)a3 completion:(id)a4;
- (void)fetchShardsWithQuery:(id)a3 completion:(id)a4;
- (void)fetchSquareIconDataForBusinessItem:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)isBusinessCallerRegisteredForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5;
- (void)lookupBloomFiltersForURL:(int)a3 chopURL:(void *)a4 forClientBundleID:(void *)a5 registeredMetric:(void *)a6 completion:;
- (void)prefetchMegashardsWithCompletion:(id)a3;
- (void)warmCacheIfNecessaryForPhoneNumbers:(id)a3 forClientBundleID:(id)a4;
@end

@implementation BCSBusinessQueryController

- (BCSBusinessQueryController)initWithChatSuggestMegashardFetcher:(id)a3 businessLinkMegashardFetcher:(id)a4 businessCallerMegashardFetcher:(id)a5 businessEmailMegashardFetcher:(id)a6 shardCache:(id)a7 cacheManager:(id)a8 chatSuggestRemoteFetcher:(id)a9 businessLinkRemoteFetcher:(id)a10 businessCallerRemoteFetcher:(id)a11 businessEmailRemoteFetcher:(id)a12 webPresentmentRemoteFetcher:(id)a13 userDefaults:(id)a14 metricFactory:(id)a15
{
  v18 = a15;
  v75 = a14;
  v58 = a13;
  v56 = a12;
  v61 = a11;
  v54 = a10;
  v52 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(BCSManualFetchTrigger);
  [v24 addFetchTrigger:?];

  v26 = objc_alloc_init(BCSManualFetchTrigger);
  [v23 addFetchTrigger:v26];

  v80 = objc_alloc_init(BCSManualFetchTrigger);
  [v22 addFetchTrigger:v80];

  v27 = objc_alloc_init(BCSManualFetchTrigger);
  [v21 addFetchTrigger:?];

  v73 = objc_alloc_init(BCSIconController);
  v28 = [BCSChatSuggestController alloc];
  v29 = +[BCSIdentityService sharedInstance];
  v30 = objc_alloc_init(BCSLocaleHelper);
  v69 = [(BCSChatSuggestController *)&v28->super.isa initWithUserDefaults:v75 identityService:v29 localeHelper:v30];

  v78 = v25;
  v76 = [[BCSConfigResolver alloc] initWithConfigCache:v19 cacheSkipper:v19 megashardFetchTrigger:v25 metricFactory:v18];
  v71 = v26;
  v74 = [[BCSConfigResolver alloc] initWithConfigCache:v19 cacheSkipper:v19 megashardFetchTrigger:v26 metricFactory:v18];
  v70 = [[BCSConfigResolver alloc] initWithConfigCache:v19 cacheSkipper:v19 megashardFetchTrigger:v80 metricFactory:v18];
  v65 = v27;
  v68 = [[BCSConfigResolver alloc] initWithConfigCache:v19 cacheSkipper:v19 megashardFetchTrigger:v27 metricFactory:v18];
  v67 = [[BCSShardResolver alloc] initWithShardCache:v20 cacheSkipper:v19 megashardFetchTrigger:v25 metricFactory:v18];
  v66 = [[BCSShardResolver alloc] initWithShardCache:v20 cacheSkipper:v19 megashardFetchTrigger:v26 metricFactory:v18];
  v64 = [[BCSShardResolver alloc] initWithShardCache:v20 cacheSkipper:v19 megashardFetchTrigger:v80 metricFactory:v18];
  v51 = [[BCSShardResolver alloc] initWithShardCache:v20 cacheSkipper:v19 megashardFetchTrigger:v27 metricFactory:v18];

  v63 = [[BCSItemResolver alloc] initWithItemCache:v19 cacheSkipper:v19 remoteFetcher:v52 metricFactory:v18];
  v53 = [[BCSItemResolver alloc] initWithItemCache:v19 cacheSkipper:v19 remoteFetcher:v54 metricFactory:v18];

  v31 = [v61 environment];

  v55 = [v31 pirEnvironmentForServerType:1];

  v62 = [[BCSCallerIdResolver alloc] initWithEnvironment:v55 itemCache:v19 cacheSkipper:v19 metricFactory:v18];
  v32 = [v56 environment];
  v50 = [v32 pirEnvironmentForServerType:2];

  v33 = [v56 environment];

  v57 = [v33 pirEnvironmentForServerType:3];

  v48 = [[BCSBusinessEmailResolver alloc] initWithMetadataEnvironment:v50 logoEnvironment:v57 itemCache:v19 cacheSkipper:v19 metricFactory:v18];
  v34 = [v58 environment];
  v49 = [v34 pirEnvironmentForServerType:2];

  v35 = [v58 environment];

  v59 = [v35 pirEnvironmentForServerType:4];

  v47 = [[BCSWebPresentmentItemResolver alloc] initWithMetadataEnvironment:v49 permissionsEnvironment:v59 itemCache:v19 cacheSkipper:v19 metricFactory:v18];
  v46 = [[BCSQueryChopper alloc] initWithMetricFactory:v18];
  v36 = [[BCSURLPatternController alloc] initWithCacheManager:v19 metricFactory:v18];
  v37 = +[BCSBlastDoorHelper defaultHelper];
  v38 = [BCSHousekeeper alloc];
  v39 = +[BCSUserDefaults sharedDefaults];
  v40 = [(BCSHousekeeper *)v38 initWithUserDefaults:v39];

  v41 = objc_alloc_init(BCSEntitlementVerifier);
  v42 = +[BCSIdentityService sharedInstance];
  v43 = [(BCSBusinessQueryController *)self initWithChatSuggestMegashardFetchTrigger:v78 businessLinkMegashardFetchTrigger:v26 businessCallerMegashardFetchTrigger:v80 businessEmailMegashardFetchTrigger:v65 entitlementVerifier:v41 identityService:v42 chatSuggestController:v69 iconController:v73 cacheClearer:v19 shardCache:v19 configCache:v19 configCacheSkip:v19 shardCacheSkip:v19 chatSuggestConfigResolver:v76 linkConfigResolver:v74 businessCallerConfigResolver:v70 businessEmailConfigResolver:v68 chatSuggestShardResolver:v67 linkShardResolver:v66 businessCallerShardResolver:v64 businessEmailShardResolver:v51 chatSuggestItemResolver:v63 linkItemResolver:v53 businessCallerItemResolver:v62 businessEmailItemResolver:v48 webPresentmentItemResolver:v47 queryChopper:v46 patternController:v36 metricFactory:v18 blastDoorHelper:v37 housekeeper:v40];

  v44 = v43;
  return v44;
}

- (BCSBusinessQueryController)initWithChatSuggestMegashardFetchTrigger:(id)a3 businessLinkMegashardFetchTrigger:(id)a4 businessCallerMegashardFetchTrigger:(id)a5 businessEmailMegashardFetchTrigger:(id)a6 entitlementVerifier:(id)a7 identityService:(id)a8 chatSuggestController:(id)a9 iconController:(id)a10 cacheClearer:(id)a11 shardCache:(id)a12 configCache:(id)a13 configCacheSkip:(id)a14 shardCacheSkip:(id)a15 chatSuggestConfigResolver:(id)a16 linkConfigResolver:(id)a17 businessCallerConfigResolver:(id)a18 businessEmailConfigResolver:(id)a19 chatSuggestShardResolver:(id)a20 linkShardResolver:(id)a21 businessCallerShardResolver:(id)a22 businessEmailShardResolver:(id)a23 chatSuggestItemResolver:(id)a24 linkItemResolver:(id)a25 businessCallerItemResolver:(id)a26 businessEmailItemResolver:(id)a27 webPresentmentItemResolver:(id)a28 queryChopper:(id)a29 patternController:(id)a30 metricFactory:(id)a31 blastDoorHelper:(id)a32 housekeeper:(id)a33
{
  v85 = *MEMORY[0x277D85DE8];
  v79 = a3;
  v78 = a4;
  v51 = a5;
  v77 = a5;
  v76 = a6;
  v75 = a7;
  v52 = a8;
  v74 = a8;
  v73 = a9;
  v72 = a10;
  v71 = a11;
  v70 = a12;
  v69 = a13;
  v68 = a14;
  v67 = a15;
  v66 = a16;
  v65 = a17;
  v64 = a18;
  v63 = a19;
  v62 = a20;
  v61 = a21;
  v60 = a22;
  v59 = a23;
  v58 = a24;
  v57 = a25;
  v38 = a26;
  v39 = a27;
  v40 = a28;
  v41 = a29;
  v56 = a30;
  v55 = a31;
  v42 = a32;
  v43 = a33;
  v80.receiver = self;
  v80.super_class = BCSBusinessQueryController;
  v44 = [(BCSBusinessQueryController *)&v80 init];
  v45 = v44;
  if (v44)
  {
    v54 = v43;
    objc_storeStrong(&v44->_chatSuggestMegashardFetchTrigger, a3);
    objc_storeStrong(&v45->_businessLinkMegashardFetchTrigger, a4);
    objc_storeStrong(&v45->_businessCallerMegashardFetchTrigger, v51);
    objc_storeStrong(&v45->_businessEmailMegashardFetchTrigger, a6);
    objc_storeStrong(&v45->_entitlementVerifier, a7);
    objc_storeStrong(&v45->_identityService, v52);
    objc_storeStrong(&v45->_chatSuggestController, a9);
    objc_storeStrong(&v45->_iconController, a10);
    objc_storeStrong(&v45->_cacheClearer, a11);
    objc_storeStrong(&v45->_shardCache, a12);
    objc_storeStrong(&v45->_configCache, a13);
    objc_storeStrong(&v45->_configCacheSkip, a14);
    objc_storeStrong(&v45->_shardCacheSkip, a15);
    objc_storeStrong(&v45->_chatSuggestConfigResolver, a16);
    objc_storeStrong(&v45->_linkConfigResolver, a17);
    objc_storeStrong(&v45->_businessCallerConfigResolver, a18);
    objc_storeStrong(&v45->_businessEmailConfigResolver, a19);
    objc_storeStrong(&v45->_chatSuggestShardResolver, a20);
    objc_storeStrong(&v45->_linkShardResolver, a21);
    objc_storeStrong(&v45->_businessCallerShardResolver, a22);
    objc_storeStrong(&v45->_businessEmailShardResolver, a23);
    objc_storeStrong(&v45->_chatSuggestItemResolver, a24);
    objc_storeStrong(&v45->_linkItemResolver, a25);
    objc_storeStrong(&v45->_businessCallerItemResolver, a26);
    objc_storeStrong(&v45->_businessEmailItemResolver, a27);
    objc_storeStrong(&v45->_webPresentmentItemResolver, a28);
    objc_storeStrong(&v45->_queryChopper, a29);
    objc_storeStrong(&v45->_patternController, a30);
    objc_storeStrong(&v45->_metricFactory, a31);
    objc_storeStrong(&v45->_blastDoorHelper, a32);
    objc_storeStrong(&v45->_housekeeper, a33);
    v45->_blastDoorWarmedUp = 0;
    v46 = ABSLogCommon();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[BCSBusinessQueryController startUpTasks]";
      _os_log_impl(&dword_242072000, v46, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
    }

    v47 = dispatch_get_global_queue(0, 0);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v82 = __42__BCSBusinessQueryController_startUpTasks__block_invoke;
    v83 = &unk_278D38CC8;
    v84 = v45;
    dispatch_async(v47, &buf);

    v43 = v54;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v45;
}

void __42__BCSBusinessQueryController_startUpTasks__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = ABSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_242072000, v2, OS_LOG_TYPE_DEFAULT, "BlastDoor already warm", v4, 2u);
    }
  }

  else
  {
    [*(v1 + 264) warmUpBlastDoor];
    *(*(a1 + 32) + 8) = 1;
  }
}

- (void)warmCacheIfNecessaryForPhoneNumbers:(id)a3 forClientBundleID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[BCSBusinessQueryController warmCacheIfNecessaryForPhoneNumbers:forClientBundleID:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BCSBusinessQueryController *)self fetchIsBusinessPhoneNumber:*(*(&v15 + 1) + 8 * v13++) forClientBundleID:v7 completion:&__block_literal_global_4, v15];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[BCSBusinessQueryController fetchBusinessItemWithDetailsForPhoneNumber:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__BCSBusinessQueryController_fetchBusinessItemWithDetailsForPhoneNumber_forClientBundleID_completion___block_invoke;
    v13[3] = &unk_278D39380;
    v13[4] = self;
    v14 = v10;
    [(BCSBusinessQueryController *)self fetchBusinessItemWithPhoneNumber:v8 forClientBundleID:v9 completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __102__BCSBusinessQueryController_fetchBusinessItemWithDetailsForPhoneNumber_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = a2;
  [v6 chatSuggestVisibilityForBusinessItem:v8];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchIsBusinessPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[BCSBusinessQueryController fetchIsBusinessPhoneNumber:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v12 = [BCSBusinessItemIdentifier identifierWithPhoneNumber:v8];
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v14 = metricFactory;
    v15 = [(BCSMetricFactoryProtocol *)v14 chatSuggestRegisteredMetricForItemIdentifier:v12];

    if (self)
    {
      v16 = self->_metricFactory;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [(BCSMetricFactoryProtocol *)v17 measurementFactory];
    v19 = [v18 itemIsRegisteredTimingMeasurementForItemIdentifier:v12];
    [v15 setTimingMeasurement:v19];

    v20 = [v15 timingMeasurement];
    [v20 begin];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __86__BCSBusinessQueryController_fetchIsBusinessPhoneNumber_forClientBundleID_completion___block_invoke;
    v23[3] = &unk_278D39380;
    v24 = v15;
    v25 = v10;
    v21 = v15;
    [(BCSBusinessQueryController *)self fetchBusinessItemWithPhoneNumber:v8 forClientBundleID:v9 completion:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __86__BCSBusinessQueryController_fetchIsBusinessPhoneNumber_forClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 timingMeasurement];
  [v5 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchSquareIconDataForBusinessItem:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[BCSBusinessQueryController fetchSquareIconDataForBusinessItem:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    if (self)
    {
      self = self->_iconController;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __94__BCSBusinessQueryController_fetchSquareIconDataForBusinessItem_forClientBundleID_completion___block_invoke;
    v13[3] = &unk_278D39050;
    v14 = v10;
    [(BCSBusinessQueryController *)self fetchSquareIconDataForBusinessItem:v8 forClientBundleID:v9 completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessItemWithPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[BCSBusinessQueryController fetchBusinessItemWithPhoneNumber:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v12 = [BCSBusinessItemIdentifier identifierWithPhoneNumber:v8];
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v14 = metricFactory;
    v15 = [(BCSMetricFactoryProtocol *)v14 chatSuggestFetchMetricForItemIdentifier:v12];

    if (self)
    {
      v16 = self->_metricFactory;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [(BCSMetricFactoryProtocol *)v17 measurementFactory];
    v19 = [v18 itemFetchTimingMeasurementForItemIdentifier:v12];
    [v15 setTimingMeasurement:v19];

    v20 = [v15 timingMeasurement];
    [v20 begin];

    v21 = [[BCSQuery alloc] initWithItemIdentifier:v12 clientBundleId:v9 shardType:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __92__BCSBusinessQueryController_fetchBusinessItemWithPhoneNumber_forClientBundleID_completion___block_invoke;
    v24[3] = &unk_278D393A8;
    v25 = v15;
    v26 = v10;
    v22 = v15;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v21 completion:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __92__BCSBusinessQueryController_fetchBusinessItemWithPhoneNumber_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  (*(*(a1 + 40) + 16))();
}

void __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBOOL();
    *buf = 136315394;
    v31 = "[BCSBusinessQueryController fetchLinkItemModelWithURL:chopURL:forClientBundleID:completion:]_block_invoke";
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Found extracted URL? : %{public}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_28;
  v24[3] = &unk_278D393F8;
  v29 = *(a1 + 80);
  v18 = *(a1 + 32);
  v8 = *(&v18 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v25 = v18;
  v26 = v11;
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v12 = MEMORY[0x245D07100](v24);
  v13 = v12;
  if (v5)
  {
    v14 = [BCSLinkItemIdentifier identifierWithURL:v5];
    v15 = [[BCSQuery alloc] initWithItemIdentifier:v14 clientBundleId:*(a1 + 56) shardType:2 skipRegistrationCheck:1];
    v16 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_31;
    v19[3] = &unk_278D39420;
    v20 = *(a1 + 64);
    v21 = v5;
    v22 = *(a1 + 72);
    v23 = v13;
    [v16 fetchItemWithQuery:v15 completion:v19];
  }

  else
  {
    (*(v12 + 16))(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_28(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(v2 + 192);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = v3;
    v7 = -[BCSBusinessQueryController _isBloomFilterCachedForType:](v2, [v5 type]);
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_2;
    v15[3] = &unk_278D393D0;
    v16 = v8;
    v17 = *(a1 + 72);
    [v6 queryChopperDelegate:v2 fetchLinkItemModelWithURL:v4 isBloomFilterCached:v7 forClientBundleID:v9 metric:v16 completion:v15];

    v10 = v16;
  }

  else
  {
    v10 = [[BCSQuery alloc] initWithItemIdentifier:*(a1 + 48) clientBundleId:*(a1 + 56) shardType:2];
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_30;
    v12[3] = &unk_278D393A8;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    [v11 fetchItemWithQuery:v10 completion:v12];
  }
}

- (unint64_t)_isBloomFilterCachedForType:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = a1[29];
    if ([v4 shouldSkipCacheForConfigItemOfType:a2])
    {
      goto LABEL_3;
    }

    v5 = [*(v2 + 240) shouldSkipCacheForShardItemOfType:a2];

    if ((v5 & 1) == 0)
    {
      v4 = [*(v2 + 224) configItemForType:a2];
      if (v4)
      {
        if ((a2 - 2) > 3)
        {
          v6 = 1;
        }

        else
        {
          v6 = qword_2420E91D0[a2 - 2];
        }

        v7 = [*(v2 + 216) countOfShardsOfType:v6];
        v2 = v7 == [v4 filterShardCount];
        goto LABEL_11;
      }

LABEL_3:
      v2 = 0;
LABEL_11:

      return v2;
    }

    return 0;
  }

  return v2;
}

void __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 model];
    v10 = NSStringFromBOOL();
    v14 = 136315650;
    v15 = "[BCSBusinessQueryController fetchLinkItemModelWithURL:chopURL:forClientBundleID:completion:]_block_invoke_2";
    v16 = 2114;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - found item: %{public}@ - error:%@", &v14, 0x20u);
  }

  v11 = *(a1 + 40);
  v12 = [v5 model];
  (*(v11 + 16))(v11, v12, v6);

  v13 = *MEMORY[0x277D85DE8];
}

void __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 timingMeasurement];
  [v8 end];

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  [*(a1 + 32) setSuccessfulChop:v9];
  [*(a1 + 32) setErrorCode:{objc_msgSend(v5, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromBOOL();
    v15 = 136315650;
    v16 = "[BCSBusinessQueryController fetchLinkItemModelWithURL:chopURL:forClientBundleID:completion:]_block_invoke";
    v17 = 2114;
    v18 = v11;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s - found item: %{public}@ - error:%@", &v15, 0x20u);
  }

  v12 = *(a1 + 40);
  v13 = [v7 model];

  (*(v12 + 16))(v12, v13, v5);
  v14 = *MEMORY[0x277D85DE8];
}

void __93__BCSBusinessQueryController_fetchLinkItemModelWithURL_chopURL_forClientBundleID_completion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    *buf = 136315650;
    v18 = "[BCSBusinessQueryController fetchLinkItemModelWithURL:chopURL:forClientBundleID:completion:]_block_invoke";
    v19 = 2114;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Using extracted URL. Found link item? : %{public}@ - error:%@", buf, 0x20u);
  }

  if (v5)
  {
    v9 = [*(a1 + 32) timingMeasurement];
    [v9 end];

    [*(a1 + 32) setSuccessfulChop:6];
    [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
    [*(a1 + 32) submitForPostProcessing];
    v10 = [*(a1 + 40) absoluteString];
    v16 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v5 setDebugInfo:v11];

    v12 = *(a1 + 48);
    v13 = [v5 model];
    (*(v12 + 16))(v12, v13, v6);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __94__BCSBusinessQueryController_isBusinessRegisteredForURL_chopURL_forClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBOOL();
    *buf = 136315394;
    v31 = "[BCSBusinessQueryController isBusinessRegisteredForURL:chopURL:forClientBundleID:completion:]_block_invoke";
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s Domain shard lookup returned :%@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v5)
  {
    if (v8)
    {
      v8 = v8[31];
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__BCSBusinessQueryController_isBusinessRegisteredForURL_chopURL_forClientBundleID_completion___block_invoke_34;
    v22[3] = &unk_278D39470;
    v11 = &v23;
    v23 = *(a1 + 64);
    v24 = v4;
    v12 = *(a1 + 72);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v28 = v12;
    v25 = v13;
    v26 = v14;
    v29 = *(a1 + 80);
    v27 = *(a1 + 56);
    [v8 matchPatternForURL:v9 forClientBundleID:v10 completion:v22];
  }

  else
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__BCSBusinessQueryController_isBusinessRegisteredForURL_chopURL_forClientBundleID_completion___block_invoke_2;
    v20[3] = &unk_278D39448;
    v11 = &v21;
    v18 = *(a1 + 64);
    v21 = *(a1 + 72);
    [(BCSBusinessQueryController *)v8 lookupBloomFiltersForURL:v16 chopURL:v15 forClientBundleID:v17 registeredMetric:v18 completion:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __94__BCSBusinessQueryController_isBusinessRegisteredForURL_chopURL_forClientBundleID_completion___block_invoke_34(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromBOOL();
    *buf = 136315650;
    v22 = "[BCSBusinessQueryController isBusinessRegisteredForURL:chopURL:forClientBundleID:completion:]_block_invoke";
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Pattern matcher returned matchFound: %@, matchingBundleID: %@", buf, 0x20u);
  }

  if (a2)
  {
    v12 = [*(a1 + 32) timingMeasurement];
    [v12 end];

    [*(a1 + 32) setSuccessfulChop:6];
    [*(a1 + 32) setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
    [*(a1 + 32) submitForPostProcessing];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 80);
    v16 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __94__BCSBusinessQueryController_isBusinessRegisteredForURL_chopURL_forClientBundleID_completion___block_invoke_35;
    v19[3] = &unk_278D39448;
    v17 = *(a1 + 64);
    v20 = *(a1 + 72);
    [(BCSBusinessQueryController *)v13 lookupBloomFiltersForURL:v14 chopURL:v15 forClientBundleID:v17 registeredMetric:v16 completion:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)lookupBloomFiltersForURL:(int)a3 chopURL:(void *)a4 forClientBundleID:(void *)a5 registeredMetric:(void *)a6 completion:
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v15 = [BCSLinkItemIdentifier identifierWithURL:v11];
    if (a3)
    {
      v16 = a1[24];
      v17 = -[BCSBusinessQueryController _isBloomFilterCachedForType:](a1, [v15 type]);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __109__BCSBusinessQueryController_lookupBloomFiltersForURL_chopURL_forClientBundleID_registeredMetric_completion___block_invoke;
      v23[3] = &unk_278D394C0;
      v24 = v13;
      v25 = v14;
      [v16 queryChopperDelegate:a1 isBusinessRegisteredForURL:v11 isBloomFilterCached:v17 forClientBundleID:v12 metric:v24 completion:v23];

      v18 = v24;
    }

    else
    {
      v18 = [[BCSQuery alloc] initWithItemIdentifier:v15 clientBundleId:v12 shardType:2];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __109__BCSBusinessQueryController_lookupBloomFiltersForURL_chopURL_forClientBundleID_registeredMetric_completion___block_invoke_38;
      v19[3] = &unk_278D394E8;
      v20 = v13;
      v22 = 0;
      v21 = v14;
      [a1 fetchIsBusinessRegisteredWithQuery:v18 completion:v19];
    }
  }
}

void __109__BCSBusinessQueryController_lookupBloomFiltersForURL_chopURL_forClientBundleID_registeredMetric_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 timingMeasurement];
  [v9 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromBOOL();
    v13 = 136315650;
    v14 = "[BCSBusinessQueryController lookupBloomFiltersForURL:chopURL:forClientBundleID:registeredMetric:completion:]_block_invoke";
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s - returned %{public}@ - error:%@", &v13, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

void __109__BCSBusinessQueryController_lookupBloomFiltersForURL_chopURL_forClientBundleID_registeredMetric_completion___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  if ([v5 hasBusiness])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  [*(a1 + 32) setSuccessfulChop:v8];
  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [v5 hasBusiness];
    v10 = NSStringFromBOOL();
    v12 = 136315650;
    v13 = "[BCSBusinessQueryController lookupBloomFiltersForURL:chopURL:forClientBundleID:registeredMetric:completion:]_block_invoke";
    v14 = 2114;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s - returned %{public}@ - error:%@", &v12, 0x20u);
  }

  if (([v5 hasBusiness] & 1) != 0 || (*(a1 + 48) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 hasBusiness], 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchLinkItemModelWithHash:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[BCSBusinessQueryController fetchLinkItemModelWithHash:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v12 = [BCSLinkItemIdentifier identifierWithHash:v8];
    if (v12)
    {
      if (self)
      {
        metricFactory = self->_metricFactory;
      }

      else
      {
        metricFactory = 0;
      }

      v14 = metricFactory;
      v15 = [(BCSMetricFactoryProtocol *)v14 businessLinkHashFetchMetricForItemIdentifier:v12];

      if (self)
      {
        v16 = self->_metricFactory;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = [(BCSMetricFactoryProtocol *)v17 measurementFactory];
      v19 = [v18 businessLinkFetchByHashTimingMeasurementForItemIdentifier:v12];
      [v15 setTimingMeasurement:v19];

      v20 = [v15 timingMeasurement];
      [v20 begin];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __86__BCSBusinessQueryController_fetchLinkItemModelWithHash_forClientBundleID_completion___block_invoke;
      v35[3] = &unk_278D393D0;
      v21 = v15;
      v36 = v21;
      v37 = v10;
      v22 = MEMORY[0x245D07100](v35);
      if (self)
      {
        v23 = self->_metricFactory;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(BCSMetricFactoryProtocol *)v23 measurementFactory];
      v25 = [v24 itemCacheHitMeasurementForItemIdentifier:v12];

      v26 = -[BCSBusinessQueryController _itemResolverForType:](self, [v12 type]);
      v27 = [v26 cachedItemMatching:v12];

      if (v27)
      {
        v28 = ABSLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromBCSType([v12 type]);
          *buf = 136315394;
          v39 = "[BCSBusinessQueryController fetchLinkItemModelWithHash:forClientBundleID:completion:]";
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&dword_242072000, v28, OS_LOG_TYPE_DEFAULT, "%s - Returned cached item - type: %@", buf, 0x16u);
        }

        [v25 setFlag:1];
        (v22)[2](v22, v27, 0);
      }

      else
      {
        [v25 setFlag:0];
        v31 = [[BCSQuery alloc] initWithItemIdentifier:v12 clientBundleId:v9 shardType:2 skipRegistrationCheck:1];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __86__BCSBusinessQueryController_fetchLinkItemModelWithHash_forClientBundleID_completion___block_invoke_40;
        v33[3] = &unk_278D39510;
        v34 = v22;
        [(BCSBusinessQueryController *)self fetchItemWithQuery:v31 completion:v33];
      }
    }

    else
    {
      v30 = ABSLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "[BCSBusinessQueryController fetchLinkItemModelWithHash:forClientBundleID:completion:]";
        _os_log_impl(&dword_242072000, v30, OS_LOG_TYPE_DEFAULT, "%s can't generate a BCSLinkItemIdentifier with the given hash", buf, 0xCu);
      }

      (*(v10 + 2))(v10, 0, 0);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __86__BCSBusinessQueryController_fetchLinkItemModelWithHash_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 timingMeasurement];
  [v8 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v9 = *(a1 + 40);
  v10 = [v7 model];

  (*(v9 + 16))(v9, v10, v6);
}

- (char)_itemResolverForType:(uint64_t)a1
{
  if (a1)
  {
    if ((a2 - 1) <= 4)
    {
      a2 = *(a1 + 24 * (a2 - 1) + 48);
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

- (void)fetchConfigForQuery:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[BCSBusinessQueryController fetchConfigForQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [v6 config];

  if (v9)
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v11 = "Returning config cached in query";
LABEL_9:
      _os_log_debug_impl(&dword_242072000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([v6 skipConfigFetch])
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v11 = "Skipping config fetch as specified in query";
      goto LABEL_9;
    }

LABEL_10:

    v12 = [v6 config];
    v7[2](v7, v12, 0);
    goto LABEL_11;
  }

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v15 = metricFactory;
  v16 = [v6 itemIdentifier];
  v17 = -[BCSMetricFactoryProtocol configResolutionMetricForConfigType:](v15, "configResolutionMetricForConfigType:", [v16 type]);

  if (self)
  {
    v18 = self->_metricFactory;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [(BCSMetricFactoryProtocol *)v19 measurementFactory];
  v21 = [v6 itemIdentifier];
  v22 = [v20 configResolutionTimingMeasurementForConfigType:{objc_msgSend(v21, "type")}];
  [v17 setTimingMeasurement:v22];

  v23 = [v17 timingMeasurement];
  [v23 begin];

  v24 = [v6 itemIdentifier];
  v25 = [v24 type];
  if (self)
  {
    if ((v25 - 1) > 3)
    {
      self = 0;
    }

    else
    {
      self = *(&self->_cacheClearer + 3 * v25);
    }
  }

  v26 = [v6 itemIdentifier];
  v27 = [v26 type];
  v28 = [v6 clientBundleId];
  v29 = [v6 cacheOnly];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__BCSBusinessQueryController_fetchConfigForQuery_completion___block_invoke;
  v30[3] = &unk_278D39538;
  v31 = v17;
  v32 = v6;
  v33 = v7;
  v12 = v17;
  [(BCSBusinessQueryController *)self configItemWithType:v27 clientBundleID:v28 cacheOnly:v29 metric:v12 completion:v30];

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

void __61__BCSBusinessQueryController_fetchConfigForQuery_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  if (!v5 || v6)
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) itemIdentifier];
      v10 = NSStringFromBCSType([v9 type]);
      *buf = 136315394;
      v17 = "[BCSBusinessQueryController fetchConfigForQuery:completion:]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - Fetch config failed - type: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v11 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15 = @"Nil configItem & nil fetchConfigError";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v6 = [v11 errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v12];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) updateConfig:v5];
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchShardWithQuery:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[BCSBusinessQueryController fetchShardWithQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__BCSBusinessQueryController_fetchShardWithQuery_completion___block_invoke;
  v12[3] = &unk_278D395D8;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(BCSBusinessQueryController *)self fetchConfigForQuery:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __61__BCSBusinessQueryController_fetchShardWithQuery_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 | a3)
  {
    if ([*(a1 + 32) shardType] == 3)
    {
      v8 = [v5 domainShardCount];
    }

    else
    {
      v8 = [v5 filterShardCount];
    }

    v9 = v8;
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) itemIdentifier];
    v12 = -[BCSBusinessQueryController _shardStartIndexForItemIdentifier:shardType:shardCount:](v10, v11, [*(a1 + 32) shardType], v9);

    v7 = +[BCSShardIdentifier identifierWithType:startIndex:shardCount:](BCSShardIdentifier, [*(a1 + 32) shardType], v12, v9);
    v13 = ABSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) shardType];
      *buf = 136316162;
      v34 = "[BCSBusinessQueryController fetchShardWithQuery:completion:]_block_invoke";
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v5;
      v39 = 2048;
      v40 = v14;
      v41 = 2048;
      v42 = v9;
      _os_log_impl(&dword_242072000, v13, OS_LOG_TYPE_DEFAULT, "%s Shard Identifier: %@ ConfigItem %@ type %ld Shard Count %lld", buf, 0x34u);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[26];
    }

    v16 = v15;
    v17 = [v16 shardResolutionMetricForShardIdentifier:v7];

    v18 = *(a1 + 40);
    if (v18)
    {
      v18 = v18[26];
    }

    v19 = v18;
    v20 = [v19 measurementFactory];
    v21 = [v20 shardResolutionTimingMeasurementForShardIdentifier:v7];
    [v17 setTimingMeasurement:v21];

    v22 = [v17 timingMeasurement];
    [v22 begin];

    v23 = *(a1 + 40);
    v24 = [*(a1 + 32) itemIdentifier];
    v25 = -[BCSBusinessQueryController _shardResolverForType:](v23, [v24 type]);
    v26 = [*(a1 + 32) clientBundleId];
    v27 = [*(a1 + 32) cacheOnly];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61__BCSBusinessQueryController_fetchShardWithQuery_completion___block_invoke_51;
    v30[3] = &unk_278D39560;
    v31 = v17;
    v32 = *(a1 + 48);
    v28 = v17;
    [v25 shardItemMatching:v7 clientBundleID:v26 cacheOnly:v27 metric:v28 completion:v30];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"Config not found"];
    (*(v6 + 16))(v6, 0, v7);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_shardStartIndexForItemIdentifier:(uint64_t)a3 shardType:(uint64_t)a4 shardCount:
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    if (a4)
    {
      if (0x7FFFFFFFFFFFFFFFLL / a4 <= 25000)
      {
        v8 = 25000;
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL / a4;
      }

      if (a3 == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (v7)
        {
          v9 = *(v7 + 3);
          if (!v9)
          {
            v9 = [(BCSLinkItemIdentifier *)v7 _truncatedDomainHashForNormalizedURL:?];
            *(v7 + 3) = v9;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = [v7 truncatedHash];
      }

      v10 = v9 / v8;
    }

    else
    {
      v11 = ABSLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[BCSBusinessQueryController _shardStartIndexForItemIdentifier:shardType:shardCount:]";
        _os_log_error_impl(&dword_242072000, v11, OS_LOG_TYPE_ERROR, "%s - Shard value should not be 0", &v14, 0xCu);
      }

      v10 = -1;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_shardResolverForType:(id)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if ((a2 - 1) <= 3)
  {
    a1 = *(a1 + 3 * a2 + 5);
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

void __61__BCSBusinessQueryController_fetchShardWithQuery_completion___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  if (!v5 || v6)
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[BCSBusinessQueryController fetchShardWithQuery:completion:]_block_invoke";
      v16 = 2112;
      v17 = @"Fetch shard item failed";
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
    }

    if (!v6)
    {
      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      v13 = @"Nil shardItem & nil fetchShardError";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v6 = [v9 errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v10];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchShardsWithQuery:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[BCSBusinessQueryController fetchShardsWithQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BCSBusinessQueryController_fetchShardsWithQuery_completion___block_invoke;
  v12[3] = &unk_278D395D8;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(BCSBusinessQueryController *)self fetchConfigForQuery:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __62__BCSBusinessQueryController_fetchShardsWithQuery_completion___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 | a3)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    v9 = [a1[4] itemIdentifiers];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = [a1[4] itemIdentifiers];
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      while (1)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [BCSBusinessQueryController _shardIdentifierForQuery:a1[4] withItemIdentifier:?];
        [v10 addObject:v15];

        if (!--v13)
        {
          v13 = [v11 countByEnumeratingWithState:&v50 objects:v64 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    v16 = [a1[4] shardType];
    v17 = [a1[4] config];
    v18 = v17;
    if (v16 == 3)
    {
      v19 = [v17 domainShardCount];
    }

    else
    {
      v19 = [v17 filterShardCount];
    }

    v20 = v19;

    v21 = [v10 allObjects];
    v22 = [v21 firstObject];

    v23 = a1[4];
    v24 = [v10 allObjects];
    [v23 setShardIdentifiers:v24];

    v25 = ABSLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v10 count];
      v27 = [a1[4] shardType];
      *buf = 136316162;
      v55 = "[BCSBusinessQueryController fetchShardsWithQuery:completion:]_block_invoke";
      v56 = 2048;
      v57 = v26;
      v58 = 2112;
      v59 = v5;
      v60 = 2048;
      v61 = v27;
      v62 = 2048;
      v63 = v20;
      _os_log_impl(&dword_242072000, v25, OS_LOG_TYPE_DEFAULT, "%s Shard Identifiers: %ld ConfigItem %@ type %ld Shard Count %lld", buf, 0x34u);
    }

    v28 = a1[5];
    if (v28)
    {
      v28 = v28[26];
    }

    v29 = v28;
    v30 = [v29 shardResolutionMetricForShardIdentifier:v22];

    v31 = a1[5];
    if (v31)
    {
      v31 = v31[26];
    }

    v32 = v31;
    v33 = [v32 measurementFactory];
    v34 = [v33 shardResolutionTimingMeasurementForShardIdentifier:v22];
    [v30 setTimingMeasurement:v34];

    v35 = [v30 timingMeasurement];
    [v35 begin];

    v36 = a1[5];
    v37 = [a1[4] itemIdentifiers];
    v38 = [v37 firstObject];
    v39 = -[BCSBusinessQueryController _shardResolverForType:](v36, [v38 type]);
    v40 = a1[4];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __62__BCSBusinessQueryController_fetchShardsWithQuery_completion___block_invoke_60;
    v45[3] = &unk_278D39588;
    v46 = v30;
    v49 = a1[6];
    v41 = a1[4];
    v42 = a1[5];
    v47 = v41;
    v48 = v42;
    v43 = v30;
    [v39 shardItemsMatching:v40 metric:v43 completion:v45];
  }

  else
  {
    v6 = a1[6];
    v7 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"Config not found"];
    v6[2](v6, 0, v7);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)_shardIdentifierForQuery:(void *)a1 withItemIdentifier:(void *)a2
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 shardType];
    v6 = [v4 config];
    v7 = v6;
    if (v5 == 3)
    {
      v8 = [v6 domainShardCount];
    }

    else
    {
      v8 = [v6 filterShardCount];
    }

    v9 = v8;

    v10 = [v4 itemIdentifier];
    v11 = -[BCSBusinessQueryController _shardStartIndexForItemIdentifier:shardType:shardCount:](a1, v10, [v4 shardType], v9);

    a1 = +[BCSShardIdentifier identifierWithType:startIndex:shardCount:](BCSShardIdentifier, [v4 shardType], v11, v9);
  }

  return a1;
}

void __62__BCSBusinessQueryController_fetchShardsWithQuery_completion___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v8 = [v5 count];
  if (v6 || !v8)
  {
    v19 = ABSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[BCSBusinessQueryController fetchShardsWithQuery:completion:]_block_invoke";
      v32 = 2112;
      v33 = @"Fetch shard item failed";
      _os_log_impl(&dword_242072000, v19, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
    }

    if (!v6)
    {
      v20 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"Nil results & nil fetchShardError";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v6 = [v20 errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v21];
    }

    v18 = *(*(a1 + 56) + 16);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [*(a1 + 40) itemIdentifiers];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [BCSBusinessQueryController _shardIdentifierForQuery:*(a1 + 40) withItemIdentifier:?];
          v16 = [v5 objectForKeyedSubscript:v15];
          [v6 setObject:v16 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "Fetched shards: %@", buf, 0xCu);
    }

    v18 = *(*(a1 + 56) + 16);
  }

  v18();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchIsBusinessRegisteredWithQuery:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[BCSBusinessQueryController fetchIsBusinessRegisteredWithQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__BCSBusinessQueryController_fetchIsBusinessRegisteredWithQuery_completion___block_invoke;
  v12[3] = &unk_278D395D8;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [(BCSBusinessQueryController *)self fetchConfigForQuery:v10 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __76__BCSBusinessQueryController_fetchIsBusinessRegisteredWithQuery_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) skipRegistrationCheck])
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "Skipping registration check", buf, 2u);
    }

    v8 = *(a1 + 48);
    v9 = [BCSBusinessLookupResult alloc];
    v10 = [*(a1 + 32) itemIdentifier];
    v11 = -[BCSBusinessLookupResult initWithHasBusiness:matchingTruncatedHash:config:](v9, "initWithHasBusiness:matchingTruncatedHash:config:", 1, [v10 truncatedHash], v5);
    (*(v8 + 16))(v8, v11, 0);
  }

  else
  {
    if (v5 | v6)
    {
      if (!v6)
      {
        [*(a1 + 32) updateConfig:v5];
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __76__BCSBusinessQueryController_fetchIsBusinessRegisteredWithQuery_completion___block_invoke_67;
        v17[3] = &unk_278D395B0;
        v18 = v5;
        v20 = *(a1 + 48);
        v19 = *(a1 + 32);
        [v15 fetchShardWithQuery:v16 completion:v17];

        goto LABEL_10;
      }

      v12 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:v5];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v12 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:0];
      v13 = *(a1 + 48);
      v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"Config not found"];
      (*(v13 + 16))(v13, v12, v14);
    }
  }

LABEL_10:
}

void __76__BCSBusinessQueryController_fetchIsBusinessRegisteredWithQuery_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
LABEL_9:

    goto LABEL_10;
  }

  if (([v5 conformsToProtocol:&unk_285464920] & 1) == 0)
  {
    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[BCSBusinessQueryController fetchIsBusinessRegisteredWithQuery:completion:]_block_invoke";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "%s Expected shardItem that confirms to BCSFilterShardItemProtocol protocol but got %@", buf, 0x16u);
    }

    v11 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:*(a1 + 32)];
    v13 = *(a1 + 48);
    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Unexpected shard item";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v15];
    (*(v13 + 16))(v13, v11, v16);

    goto LABEL_9;
  }

  v8 = [*(a1 + 40) itemIdentifier];
  v9 = [v5 containsItemMatching:v8];

  v10 = -[BCSBusinessLookupResult initWithHasBusiness:matchingTruncatedHash:config:]([BCSBusinessLookupResult alloc], "initWithHasBusiness:matchingTruncatedHash:config:", [v9 hasMatch], objc_msgSend(v9, "matchingTruncatedHash"), *(a1 + 32));
  (*(*(a1 + 48) + 16))();

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)fetchAreBusinessesRegisteredWithQuery:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[BCSBusinessQueryController fetchAreBusinessesRegisteredWithQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__BCSBusinessQueryController_fetchAreBusinessesRegisteredWithQuery_completion___block_invoke;
  v12[3] = &unk_278D395D8;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(BCSBusinessQueryController *)self fetchConfigForQuery:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __79__BCSBusinessQueryController_fetchAreBusinessesRegisteredWithQuery_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:0];
    v9 = *(a1 + 48);
    v37[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v11 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"Config not found"];
    (*(v9 + 16))(v9, v10, v11);

LABEL_5:
    goto LABEL_6;
  }

  if (v6)
  {
    v8 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:v5];
    v12 = *(a1 + 48);
    v36 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    (*(v12 + 16))(v12, v10, v7);
    goto LABEL_5;
  }

  if ([*(a1 + 32) skipRegistrationCheck])
  {
    v14 = ABSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "Skipping registration check", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = [*(a1 + 32) itemIdentifiers];
    v8 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = a1;
    v17 = [*(a1 + 32) itemIdentifiers];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = -[BCSBusinessLookupResult initWithHasBusiness:matchingTruncatedHash:config:]([BCSBusinessLookupResult alloc], "initWithHasBusiness:matchingTruncatedHash:config:", 1, [*(*(&v30 + 1) + 8 * i) truncatedHash], v5);
          [(BCSBusinessLookupResult *)v8 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v19);
    }

    (*(*(v25 + 48) + 16))();
  }

  else
  {
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__BCSBusinessQueryController_fetchAreBusinessesRegisteredWithQuery_completion___block_invoke_139;
    v26[3] = &unk_278D39600;
    v27 = v5;
    v29 = *(a1 + 48);
    v28 = *(a1 + 32);
    [v23 fetchShardsWithQuery:v24 completion:v26];

    v8 = v27;
  }

LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
}

void __79__BCSBusinessQueryController_fetchAreBusinessesRegisteredWithQuery_completion___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:*(a1 + 32)];
    v19 = *(a1 + 48);
    v43[0] = v10;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    (*(v19 + 16))(v19, v20, v7);
  }

  else
  {
    v29 = 0;
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [*(a1 + 40) itemIdentifiers];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [*(a1 + 40) itemIdentifiers];
    v11 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v5 objectForKeyedSubscript:{v15, v29}];
          if (([v16 conformsToProtocol:&unk_285464920] & 1) == 0)
          {
            v21 = ABSLogCommon();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v39 = "[BCSBusinessQueryController fetchAreBusinessesRegisteredWithQuery:completion:]_block_invoke";
              v40 = 2112;
              v41 = v16;
              _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s Expected shardItem that confirms to BCSFilterShardItemProtocol protocol but got %@", buf, 0x16u);
            }

            v22 = [[BCSBusinessLookupResult alloc] initWithHasBusiness:0 matchingTruncatedHash:0 config:*(a1 + 32)];
            v23 = *(a1 + 48);
            v37 = v22;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
            v25 = MEMORY[0x277CCA9B8];
            v35 = *MEMORY[0x277CCA450];
            v36 = @"Unexpected shard item";
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            v27 = [v25 errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v26];
            (*(v23 + 16))(v23, v24, v27);

            goto LABEL_16;
          }

          v17 = [v16 containsItemMatching:v15];
          v18 = [[BCSBusinessLookupResult alloc] initWithFilterMatchResult:v17 config:*(a1 + 32)];
          [(BCSBusinessLookupResult *)v10 addObject:v18];
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_16:
    v7 = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)fetchItemWithQuery:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v10 = metricFactory;
  v11 = [(BCSMetricFactoryProtocol *)v10 measurementFactory];
  v12 = [v6 itemIdentifier];

  v13 = [v11 itemCacheHitMeasurementForItemIdentifier:v12];

  v14 = [v6 itemIdentifier];
  v15 = -[BCSBusinessQueryController _itemResolverForType:](self, [v14 type]);
  v16 = [v6 itemIdentifier];
  v17 = [v15 cachedItemMatching:v16];

  if (v17)
  {
    v18 = ABSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 itemIdentifier];
      v20 = NSStringFromBCSType([v19 type]);
      *buf = 136315394;
      v27 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]";
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "%s - Returned cached item - type: %@", buf, 0x16u);
    }

    [v13 setFlag:1];
    v7[2](v7, v17, 0);
  }

  else
  {
    [v13 setFlag:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__BCSBusinessQueryController_fetchItemWithQuery_completion___block_invoke;
    v22[3] = &unk_278D39628;
    v25 = v7;
    v23 = v6;
    v24 = self;
    [(BCSBusinessQueryController *)self fetchIsBusinessRegisteredWithQuery:v23 completion:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__BCSBusinessQueryController_fetchItemWithQuery_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (([v5 hasBusiness] & 1) == 0)
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 32) itemIdentifier];
      v36 = NSStringFromBCSType([v35 type]);
      *buf = 136315394;
      v43 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke";
      v44 = 2112;
      v45 = v36;
      _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "%s - Hash is not in bloom filter - type: %@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = @"Item not found";
    v11 = 42;
    goto LABEL_9;
  }

  v7 = [v6 config];
  if (!v7)
  {
    if ([*(a1 + 32) skipConfigFetch])
    {
      goto LABEL_11;
    }

    v34 = ABSLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v37 = [*(a1 + 32) itemIdentifier];
      v38 = NSStringFromBCSType([v37 type]);
      *buf = 136315394;
      v43 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke";
      v44 = 2112;
      v45 = v38;
      _os_log_error_impl(&dword_242072000, v34, OS_LOG_TYPE_ERROR, "%s - Failed fetching config of type: %@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = @"Config not found";
    v11 = 100;
LABEL_9:
    v12 = [BCSError errorWithDomain:@"com.apple.businessservices" code:v11 errorDescription:v10];
    (*(v9 + 16))(v9, 0, v12);

    goto LABEL_18;
  }

LABEL_11:
  v13 = *(a1 + 32);
  v14 = [v6 config];
  [v13 updateConfig:v14];

  v15 = [*(a1 + 32) itemIdentifier];
  LODWORD(v14) = [v15 conformsToProtocol:&unk_285466448];

  if (v14)
  {
    v16 = [*(a1 + 32) itemIdentifier];
    [v16 setMatchingTruncatedHash:{objc_msgSend(v6, "matchingTruncatedHash")}];
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v17 = v17[26];
  }

  v18 = *(a1 + 32);
  v19 = v17;
  v20 = [v18 itemIdentifier];
  v21 = [v19 itemResolutionMetricForItemIdentifier:v20];

  v22 = *(a1 + 40);
  if (v22)
  {
    v22 = v22[26];
  }

  v23 = v22;
  v24 = [v23 measurementFactory];
  v25 = [*(a1 + 32) itemIdentifier];
  v26 = [v24 itemResolutionTimingMeasurementForItemIdentifier:v25];
  [v21 setTimingMeasurement:v26];

  v27 = [v21 timingMeasurement];
  [v27 begin];

  v28 = *(a1 + 40);
  v29 = [*(a1 + 32) itemIdentifier];
  v30 = -[BCSBusinessQueryController _itemResolverForType:](v28, [v29 type]);
  v31 = *(a1 + 32);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __60__BCSBusinessQueryController_fetchItemWithQuery_completion___block_invoke_162;
  v39[3] = &unk_278D393A8;
  v40 = v21;
  v41 = *(a1 + 48);
  v32 = v21;
  [v30 itemMatching:v31 metric:v32 completion:v39];

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
}

void __60__BCSBusinessQueryController_fetchItemWithQuery_completion___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  if (!v5 || v6)
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke";
      v17 = 2112;
      v18 = @"Fetch item failed";
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
    }

    if (!v6)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[BCSBusinessQueryController fetchItemWithQuery:completion:]_block_invoke";
        v17 = 2112;
        v18 = @"No item and no error - interpreting as item not found";
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
      }

      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"Item not found";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = [v10 errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v11];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchItemsWithQuery:(id)a3 perItemCompletion:(id)a4 completion:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v40 = a4;
  v37 = a5;
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]";
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CBEB58]);
  v11 = [v8 itemIdentifiers];
  v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v8;
  v13 = v8;
  v14 = v12;
  v15 = [v13 itemIdentifiers];
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
  v39 = v12;
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        v21 = -[BCSBusinessQueryController _itemResolverForType:](self, [v20 type]);
        v22 = [v21 cachedItemMatching:v20];

        if (v22)
        {
          v23 = ABSLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = NSStringFromBCSType([v20 type]);
            *buf = 136315394;
            v52 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]";
            v53 = 2112;
            v54 = v24;
            _os_log_impl(&dword_242072000, v23, OS_LOG_TYPE_DEFAULT, "%s - Found cached item - type: %@", buf, 0x16u);

            v14 = v39;
          }

          v40[2](v40, v20, v22, 0);
        }

        else
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    v25 = [BCSBatchQuery alloc];
    v26 = [v14 allObjects];
    v27 = v38;
    v28 = [v38 config];
    v29 = [v38 clientBundleId];
    v30 = -[BCSBatchQuery initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:](v25, "initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:", v26, v28, v29, [v38 shardType], objc_msgSend(v38, "skipRegistrationCheck"));

    v14 = v39;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke;
    v41[3] = &unk_278D396F0;
    v42 = v38;
    v31 = v37;
    v45 = v37;
    v32 = v40;
    v46 = v40;
    v43 = v39;
    v44 = self;
    [(BCSBusinessQueryController *)self fetchAreBusinessesRegisteredWithQuery:v30 completion:v41];
  }

  else
  {
    v33 = ABSLogCommon();
    v27 = v38;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v38 itemIdentifier];
      v35 = NSStringFromBCSType([v34 type]);
      *buf = 136315394;
      v52 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]";
      v53 = 2112;
      v54 = v35;
      _os_log_impl(&dword_242072000, v33, OS_LOG_TYPE_DEFAULT, "%s - No more items to fetch - type: %@", buf, 0x16u);

      v14 = v39;
    }

    v31 = v37;
    (*(v37 + 2))(v37, 0);
    v32 = v40;
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v72 = [*(a1 + 32) itemIdentifier];
      v73 = NSStringFromBCSType([v72 type]);
      *buf = 136315394;
      v101 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]_block_invoke";
      v102 = 2112;
      v103 = v73;
      _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "%s - Error fetching business registration - type: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v94 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v95;
      do
      {
        v11 = v5;
        for (i = 0; i != v9; ++i)
        {
          if (*v95 != v10)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v94 + 1) + 8 * i);
          if (([v13 hasBusiness] & 1) == 0)
          {
            v14 = ABSLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v23 = [v13 itemIdentifier];
              v24 = NSStringFromBCSType([v23 type]);
              *buf = 136315394;
              v101 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]_block_invoke";
              v102 = 2112;
              v103 = v24;
              _os_log_error_impl(&dword_242072000, v14, OS_LOG_TYPE_ERROR, "%s - Hash is not in bloom filter - type: %@", buf, 0x16u);
            }

            v15 = *(a1 + 64);
            v16 = [v13 itemIdentifier];
            v17 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"Item not found"];
            (*(v15 + 16))(v15, v16, 0, v17);

            v18 = *(a1 + 40);
            v19 = [v13 itemIdentifier];
            [v18 removeObject:v19];
          }

          v20 = [v13 itemIdentifier];
          v21 = [v20 conformsToProtocol:&unk_285466448];

          if (v21)
          {
            v22 = [v13 itemIdentifier];
            [v22 setMatchingTruncatedHash:{objc_msgSend(v13, "matchingTruncatedHash")}];
          }
        }

        v5 = v11;
        v9 = [v11 countByEnumeratingWithState:&v94 objects:v99 count:16];
      }

      while (v9);
    }

    if ([*(a1 + 40) count])
    {
      v25 = *(a1 + 48);
      v26 = [*(a1 + 32) itemIdentifier];
      v27 = -[BCSBusinessQueryController _itemResolverForType:](v25, [v26 type]);

      v77 = v27;
      if (([v27 conformsToProtocol:&unk_2854669F8] & 1) == 0)
      {
        v74 = v5;
        v28 = dispatch_group_create();
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        obj = *(a1 + 40);
        v29 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
        if (v29)
        {
          v30 = v29;
          v76 = *v91;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v91 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v90 + 1) + 8 * j);
              dispatch_group_enter(v28);
              v33 = *(a1 + 48);
              if (v33)
              {
                v33 = v33[26];
              }

              v34 = *(a1 + 32);
              v35 = v33;
              v36 = [v34 itemIdentifier];
              v37 = [v35 itemResolutionMetricForItemIdentifier:v36];

              v38 = *(a1 + 48);
              if (v38)
              {
                v38 = v38[26];
              }

              v39 = v38;
              v40 = [v39 measurementFactory];
              v41 = [*(a1 + 32) itemIdentifier];
              v42 = [v40 itemResolutionTimingMeasurementForItemIdentifier:v41];
              [v37 setTimingMeasurement:v42];

              v43 = [v37 timingMeasurement];
              [v43 begin];

              v44 = [BCSQuery alloc];
              v45 = [*(a1 + 32) config];
              v46 = [*(a1 + 32) clientBundleId];
              v47 = -[BCSQuery initWithItemIdentifier:config:clientBundleId:shardType:skipRegistrationCheck:](v44, "initWithItemIdentifier:config:clientBundleId:shardType:skipRegistrationCheck:", v32, v45, v46, [*(a1 + 32) shardType], objc_msgSend(*(a1 + 32), "skipRegistrationCheck"));

              v85[0] = MEMORY[0x277D85DD0];
              v85[1] = 3221225472;
              v85[2] = __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_174;
              v85[3] = &unk_278D39650;
              v86 = v37;
              v89 = *(a1 + 64);
              v87 = v32;
              v88 = v28;
              v48 = v37;
              [v77 itemMatching:v47 metric:v48 completion:v85];
            }

            v30 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
          }

          while (v30);
        }

        v49 = *(a1 + 48);
        if (v49)
        {
          v50 = *(v49 + 200);
        }

        else
        {
          v50 = 0;
        }

        v5 = v74;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_2;
        block[3] = &unk_278D39678;
        v84 = *(a1 + 56);
        dispatch_group_notify(v28, v50, block);
      }

      v51 = *(a1 + 48);
      if (v51)
      {
        v51 = v51[26];
      }

      v52 = *(a1 + 32);
      v53 = v51;
      v54 = [v52 itemIdentifier];
      v55 = [v53 itemResolutionMetricForItemIdentifier:v54];

      v56 = *(a1 + 48);
      if (v56)
      {
        v56 = v56[26];
      }

      v57 = v56;
      v58 = [v57 measurementFactory];
      v59 = [*(a1 + 32) itemIdentifier];
      v60 = [v58 itemResolutionTimingMeasurementForItemIdentifier:v59];
      [v55 setTimingMeasurement:v60];

      v61 = [v55 timingMeasurement];
      [v61 begin];

      v62 = [BCSBatchQuery alloc];
      v63 = [*(a1 + 40) allObjects];
      v64 = [*(a1 + 32) config];
      v65 = [*(a1 + 32) clientBundleId];
      v66 = -[BCSBatchQuery initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:](v62, "initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:", v63, v64, v65, [*(a1 + 32) shardType], objc_msgSend(*(a1 + 32), "skipRegistrationCheck"));

      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_3;
      v81[3] = &unk_278D396A0;
      v82 = *(a1 + 64);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_4;
      v78[3] = &unk_278D396C8;
      v79 = v55;
      v80 = *(a1 + 56);
      v67 = v55;
      [v77 itemsMatching:v66 metric:v67 perItemBlock:v81 completion:v78];
    }

    else
    {
      v68 = ABSLogCommon();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [*(a1 + 32) itemIdentifier];
        v70 = NSStringFromBCSType([v69 type]);
        *buf = 136315394;
        v101 = "[BCSBusinessQueryController fetchItemsWithQuery:perItemCompletion:completion:]_block_invoke";
        v102 = 2112;
        v103 = v70;
        _os_log_impl(&dword_242072000, v68, OS_LOG_TYPE_DEFAULT, "%s - No more items to fetch - type: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    v6 = 0;
  }

  v71 = *MEMORY[0x277D85DE8];
}

void __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 timingMeasurement];
  [v8 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  v9 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();

  v10 = *(a1 + 48);

  dispatch_group_leave(v10);
}

void __79__BCSBusinessQueryController_fetchItemsWithQuery_perItemCompletion_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 timingMeasurement];
  [v4 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v5, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  (*(*(a1 + 40) + 16))();
}

- (void)isBusinessCallerRegisteredForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController isBusinessCallerRegisteredForPhoneNumber:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    *buf = 0u;
    v27 = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      *buf = 0u;
      v27 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v25, 2u);
      }
    }

    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController isBusinessCallerRegisteredForPhoneNumber:forClientBundleID:completion:]"))
    {
      v16 = +[BCSUserDefaults sharedDefaults];
      v17 = [(BCSBusinessCallerItemIdentifier *)v16 dictionaryForKey:@"BCSBusinessCallerStubEntry"];
      v18 = v17;
      if (v17)
      {
        v19 = [(BCSQuery *)v17 objectForKeyedSubscript:@"phone"];
        v20 = [v8 isEqualToString:v19];

        if (v20)
        {
          v21 = ABSLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "BusinessCaller: Returning YES for business caller matching STUB DATA", v25, 2u);
          }

          v10[2](v10, 1, 0);
          goto LABEL_21;
        }
      }
    }

    v16 = [[BCSBusinessCallerItemIdentifier alloc] initWithPhoneNumber:v8];
    v18 = [[BCSQuery alloc] initWithItemIdentifier:v16 clientBundleId:v9 shardType:4];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __100__BCSBusinessQueryController_isBusinessCallerRegisteredForPhoneNumber_forClientBundleID_completion___block_invoke;
    v23[3] = &unk_278D39718;
    v24 = v10;
    [(BCSBusinessQueryController *)self fetchIsBusinessRegisteredWithQuery:v18 completion:v23];

LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __100__BCSBusinessQueryController_isBusinessCallerRegisteredForPhoneNumber_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 hasBusiness], v5);
}

- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSBusinessQueryController fetchBusinessCallerMetadataForPhoneNumber:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (v10)
  {
    v22 = 0u;
    v23 = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:&v22 hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", &buf, 2u);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__3;
    v27 = __Block_byref_object_dispose__3;
    v28 = 0;
    v20[4] = &buf;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __101__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_completion___block_invoke;
    v21[3] = &unk_278D39740;
    v21[4] = &buf;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __101__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_completion___block_invoke_2;
    v20[3] = &unk_278D39768;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_completion___block_invoke_3;
    v17[3] = &unk_278D39790;
    v18 = v10;
    p_buf = &buf;
    [(BCSBusinessQueryController *)self fetchBusinessCallerMetadataForPhoneNumber:v8 forClientBundleID:v9 metadataCallback:v21 logoURLCallback:v20 completion:v17];

    _Block_object_dispose(&buf, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 forClientBundleID:(id)a4 metadataCallback:(id)a5 logoURLCallback:(id)a6 completion:(id)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = ABSLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSBusinessQueryController fetchBusinessCallerMetadataForPhoneNumber:forClientBundleID:metadataCallback:logoURLCallback:completion:]";
    _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (v16)
  {
    buf = 0u;
    v70 = 0u;
    v18 = [MEMORY[0x277CCAE80] currentConnection];
    v19 = v18;
    if (v18)
    {
      [v18 auditToken];
    }

    else
    {
      buf = 0u;
      v70 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:&buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v21 = ABSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v68 = 0;
        _os_log_error_impl(&dword_242072000, v21, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v68, 2u);
      }
    }

    v22 = [[BCSBusinessCallerItemIdentifier alloc] initWithPhoneNumber:v12];
    v56 = v13;
    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBusinessCallerMetadataForPhoneNumber:forClientBundleID:metadataCallback:logoURLCallback:completion:]"))
    {
      v23 = v16;
      v24 = +[BCSUserDefaults sharedDefaults];
      v25 = [(BCSQuery *)v24 dictionaryForKey:@"BCSBusinessCallerStubEntry"];
      v26 = v25;
      if (v25)
      {
        v27 = [(BCSBusinessCallerItem *)v25 objectForKeyedSubscript:@"phone"];
        v28 = [v12 isEqualToString:v27];

        v13 = v56;
        if (v28)
        {
          v53 = v24;
          v54 = v12;
          v29 = v15;
          v30 = v14;
          v31 = ABSLogCommon();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v68 = 0;
            _os_log_impl(&dword_242072000, v31, OS_LOG_TYPE_DEFAULT, "BusinessCaller: Returning metadata for business caller matching STUB DATA", v68, 2u);
          }

          v32 = [BCSBusinessCallerItem alloc];
          v33 = [(BCSBusinessCallerItem *)v26 objectForKeyedSubscript:@"phone"];
          v34 = [(BCSBusinessCallerItem *)v26 objectForKeyedSubscript:@"name"];
          v35 = [(BCSBusinessCallerItem *)v26 objectForKeyedSubscript:@"department"];
          LOBYTE(v52) = 1;
          v36 = [(BCSBusinessCallerItem *)v32 initWithPhoneNumber:v33 name:v34 department:v35 logoURL:0 logo:0 logoFormat:0 verified:v52];

          v14 = v30;
          if (v30)
          {
            v30[2](v30, v36);
          }

          v37 = [(BCSBusinessCallerItem *)v26 objectForKeyedSubscript:@"logo"];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke;
          v65[3] = &unk_278D397B8;
          v15 = v29;
          v66 = v29;
          v67 = v23;
          [(BCSBusinessQueryController *)self _generateSafeImageURLForItemIdentifier:v22 imageData:v37 format:@"heic" completion:v65];

          v16 = v23;
          v38 = v53;
          v12 = v54;
          goto LABEL_27;
        }
      }

      v16 = v23;
    }

    v55 = v16;
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v40 = v12;
    v41 = metricFactory;
    v42 = [(BCSMetricFactoryProtocol *)v41 businessCallerFetchMetricForItemIdentifier:v22];

    v43 = v15;
    v44 = v14;
    if (self)
    {
      v45 = self->_metricFactory;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    v47 = [(BCSMetricFactoryProtocol *)v46 measurementFactory];
    v48 = [v47 itemFetchTimingMeasurementForItemIdentifier:v22];
    [(BCSBusinessCallerItem *)v42 setTimingMeasurement:v48];

    v49 = [(BCSBusinessCallerItem *)v42 timingMeasurement];
    [v49 begin];

    v50 = [[BCSQuery alloc] initWithItemIdentifier:v22 clientBundleId:v13 shardType:4];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke_2;
    v57[3] = &unk_278D39808;
    v58 = v42;
    v16 = v55;
    v62 = v55;
    v59 = v40;
    v14 = v44;
    v12 = v40;
    v38 = v50;
    v63 = v14;
    v60 = self;
    v61 = v22;
    v15 = v43;
    v64 = v43;
    v26 = v42;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v38 completion:v57];

    v36 = v58;
LABEL_27:

    v13 = v56;
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_generateSafeImageURLForItemIdentifier:(void *)a3 imageData:(void *)a4 format:(void *)a5 completion:
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (a1)
  {
    v10 = *(a1 + 208);
    v11 = a4;
    v12 = a3;
    v13 = a2;
    v14 = [v10 measurementFactory];
    v15 = [v14 blastDoorTimingMeasurementForItemIdentifier:v13];

    [v15 begin];
    v16 = *(a1 + 264);
    v24 = 0;
    v17 = v16;
    v18 = [v17 safeImageURLFromImage:v12 imageFormat:v11 error:&v24];

    v19 = v24;
    [v15 end];
    if (v18)
    {
      v9[2](v9, v18, 0);
    }

    else
    {
      v20 = ABSLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "Error getting safe image from BlastDoor: %@", buf, 0xCu);
      }

      if (!v19)
      {
        v21 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277CCA450];
        v26 = @"Unexpected BlastDoor failure";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v19 = [v21 errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v22];
      }

      (v9)[2](v9, 0, v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) timingMeasurement];
  [v7 end];

  [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
  [*(a1 + 32) submitForPostProcessing];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    [v8 setPhoneNumber:*(a1 + 40)];
    v9 = [v8 logo];
    v10 = [v9 copy];

    v11 = [v8 logoFormat];
    v12 = [v11 copy];

    v13 = *(a1 + 72);
    if (v13)
    {
      (*(v13 + 16))(v13, v8);
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke_202;
    v18[3] = &unk_278D397E0;
    v20 = *(a1 + 80);
    v21 = *(a1 + 64);
    v19 = v6;
    [(BCSBusinessQueryController *)v14 _generateSafeImageURLForItemIdentifier:v15 imageData:v10 format:v12 completion:v18];
  }

  else
  {
    v16 = ABSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessCallerItem): %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __134__BCSBusinessQueryController_fetchBusinessCallerMetadataForPhoneNumber_forClientBundleID_metadataCallback_logoURLCallback_completion___block_invoke_202(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  v4 = a1[4];
  v5 = *(a1[6] + 16);

  return v5();
}

- (void)fetchBusinessMetadataForEmail:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController fetchBusinessMetadataForEmail:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    *buf = 0u;
    v39 = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      *buf = 0u;
      v39 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v37, 2u);
      }
    }

    if (!v8)
    {
      v16 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"nil email key"];
      v10[2](v10, 0, v16);
LABEL_24:

      goto LABEL_25;
    }

    v16 = [[BCSBusinessEmailItemIdentifier alloc] initWithEmail:v8];
    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBusinessMetadataForEmail:forClientBundleID:completion:]"))
    {
      v17 = +[BCSUserDefaults sharedDefaults];
      v18 = [(BCSQuery *)v17 dictionaryForKey:@"BCSBusinessEmailStubEntry"];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 objectForKeyedSubscript:@"email"];
        v21 = [v8 isEqualToString:v20];

        if (v21)
        {
          v22 = ABSLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 0;
            _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning metadata for business email matching STUB DATA", v37, 2u);
          }

          v23 = objc_alloc_init(BCSEmailLocalizedString);
          [(BCSEmailLocalizedString *)v23 setLocale:@"en-US"];
          v24 = [v19 objectForKeyedSubscript:@"name"];
          [(BCSEmailLocalizedString *)v23 setText:v24];

          [(BCSEmailLocalizedString *)v23 setIsDefault:1];
          v25 = [v19 objectForKeyedSubscript:@"logo"];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __89__BCSBusinessQueryController_fetchBusinessMetadataForEmail_forClientBundleID_completion___block_invoke;
          v31[3] = &unk_278D39830;
          v36 = v10;
          v32 = v8;
          v33 = v23;
          v34 = v19;
          v35 = v16;
          v28 = v19;
          v26 = v23;
          [(BCSBusinessQueryController *)self _generateSafeImageURLForItemIdentifier:v35 imageData:v25 format:@"heic" completion:v31];

          goto LABEL_23;
        }
      }
    }

    v17 = [[BCSQuery alloc] initWithItemIdentifier:v16 clientBundleId:v9 shardType:5];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__BCSBusinessQueryController_fetchBusinessMetadataForEmail_forClientBundleID_completion___block_invoke_224;
    v29[3] = &unk_278D39510;
    v30 = v10;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v17 completion:v29];
    v26 = v30;
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
}

void __89__BCSBusinessQueryController_fetchBusinessMetadataForEmail_forClientBundleID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a3;
    v5 = [BCSBusinessEmailItem alloc];
    v6 = *(a1 + 32);
    v24[0] = *(a1 + 40);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v23 = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v9 = [*(a1 + 48) objectForKeyedSubscript:@"businessId"];
    v10 = [*(a1 + 48) objectForKeyedSubscript:@"companyId"];
    v11 = [(BCSBusinessEmailItem *)v5 initWithEmail:v6 localizedNames:v7 localizedDisplayNames:v8 businessId:v9 companyId:v10];

    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 56);
      if (v13)
      {
        v13 = v13[3];
      }

      v14 = v13;
      v15 = [(BCSBusinessEmailItem *)v11 name];
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning item { Email: %@, Name: %@ }", &v19, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v16 = *(a1 + 64);
    v17 = *(v16 + 16);
    v11 = a3;
    v17(v16, 0, v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __89__BCSBusinessQueryController_fetchBusinessMetadataForEmail_forClientBundleID_completion___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessEmailItem): %@", &v11, 0xCu);
      }

      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
  }

  else
  {
    v8 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessMetadataForEmailIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController fetchBusinessMetadataForEmailIdentifier:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    *buf = 0u;
    v37 = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      *buf = 0u;
      v37 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v32, 2u);
      }
    }

    v16 = [v8 email];

    if (!v16)
    {
      v17 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"nil email key"];
      v10[2](v10, 0, v17);
LABEL_27:

      goto LABEL_28;
    }

    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBusinessMetadataForEmailIdentifier:forClientBundleID:completion:]"))
    {
      v17 = +[BCSUserDefaults sharedDefaults];
      v18 = [v17 dictionaryForKey:@"BCSBusinessEmailStubEntry"];
      if (v18)
      {
        v19 = [[BCSBusinessEmailIdentifier alloc] initWithDefaultsDictionary:v18];
        if ([v8 matchesIdentifier:v19])
        {
          v20 = ABSLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning metadata for business email matching STUB DATA", v32, 2u);
          }

          v21 = [[BCSBusinessEmailItem alloc] initWithIdentifier:v8 defaultsDictionary:v18];
          v22 = ABSLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(BCSBusinessEmailItem *)v21 email];
            v24 = [(BCSBusinessEmailItem *)v21 name];
            *v32 = 138412546;
            v33 = v23;
            v34 = 2112;
            v35 = v24;
            _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning item { Email: %@, Name: %@ }", v32, 0x16u);
          }

          (v10)[2](v10, v21, 0);
          goto LABEL_26;
        }
      }
    }

    v25 = [BCSBusinessEmailItemIdentifier alloc];
    v26 = [v8 email];
    v27 = [v8 fullDomain];
    v28 = [v8 topLevelDomain];
    v17 = [(BCSBusinessEmailItemIdentifier *)v25 initWithEmail:v26 fullDomain:v27 topLevelDomain:v28];

    v18 = [[BCSQuery alloc] initWithItemIdentifier:v17 clientBundleId:v9 shardType:5];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __99__BCSBusinessQueryController_fetchBusinessMetadataForEmailIdentifier_forClientBundleID_completion___block_invoke;
    v30[3] = &unk_278D39510;
    v31 = v10;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v18 completion:v30];

LABEL_26:
    goto LABEL_27;
  }

LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
}

void __99__BCSBusinessQueryController_fetchBusinessMetadataForEmailIdentifier_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessEmailItem): %@", &v11, 0xCu);
      }

      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
  }

  else
  {
    v8 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessLogoForBusinessIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController fetchBusinessLogoForBusinessIdentifier:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v38 = 0u;
    *buf = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      v38 = 0u;
      *buf = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v36, 2u);
      }
    }

    v16 = [v8 businessId];

    if (v16)
    {
      v17 = [BCSBusinessLogoItemIdentifier alloc];
      v18 = [v8 businessId];
      v19 = [(BCSBusinessLogoItemIdentifier *)v17 initWithBusinessId:v18];

      if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBusinessLogoForBusinessIdentifier:forClientBundleID:completion:]"))
      {
        v20 = +[BCSUserDefaults sharedDefaults];
        v21 = [(BCSQuery *)v20 dictionaryForKey:@"BCSBusinessLogoStubEntry"];
        if (v21)
        {
          v22 = [v8 businessId];
          v23 = [v21 objectForKeyedSubscript:@"businessId"];
          v24 = [v22 isEqualToString:v23];

          if (v24)
          {
            v25 = ABSLogCommon();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 0;
              _os_log_impl(&dword_242072000, v25, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning logo for business email matching STUB DATA", v36, 2u);
            }

            v26 = [v21 objectForKeyedSubscript:@"logo"];
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke;
            v33[3] = &unk_278D39948;
            v34 = v19;
            v35 = v10;
            v27 = v19;
            [(BCSBusinessQueryController *)self _generateSafeImageURLForItemIdentifier:v27 imageData:v26 format:@"heic" completion:v33];

            goto LABEL_23;
          }
        }
      }

      v20 = [[BCSQuery alloc] initWithItemIdentifier:v19 clientBundleId:v9 shardType:5 skipRegistrationCheck:1];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke_237;
      v30[3] = &unk_278D39858;
      v31 = v19;
      v32 = v10;
      v30[4] = self;
      v28 = v19;
      [(BCSBusinessQueryController *)self fetchItemWithQuery:v20 completion:v30];
    }

    else
    {
      v20 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"Invalid email identifier - missing businessId"];
      (*(v10 + 2))(v10, 0, v20);
    }

LABEL_23:
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [BCSBusinessLogo alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v9 = v8;
  v10 = [(BCSBusinessLogo *)v7 initWithBusinessId:v9 logoURL:v5 logoFormat:@"heic"];

  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[1];
    }

    v13 = v12;
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning logo { BusinessId: %@, LogoURL: %@ }", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

void __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [v7 logo];
      v11 = [v7 logoFormat];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke_238;
      v16[3] = &unk_278D39920;
      v17 = *(a1 + 40);
      v18 = v7;
      v19 = *(a1 + 48);
      v12 = v7;
      [(BCSBusinessQueryController *)v8 _generateSafeImageURLForItemIdentifier:v9 imageData:v10 format:v11 completion:v16];
    }

    else
    {
      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessLogo): %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v13 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __98__BCSBusinessQueryController_fetchBusinessLogoForBusinessIdentifier_forClientBundleID_completion___block_invoke_238(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [BCSBusinessLogo alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v9 = v8;
  v10 = [*(a1 + 40) logoFormat];
  v11 = [(BCSBusinessLogo *)v7 initWithBusinessId:v9 logoURL:v6 logoFormat:v10];

  (*(*(a1 + 48) + 16))();
}

- (void)fetchBusinessMetadataForEmails:(id)a3 forClientBundleID:(id)a4 requestId:(id)a5 completion:(id)a6
{
  v100 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v47 = a4;
  v50 = a5;
  v51 = a6;
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSBusinessQueryController fetchBusinessMetadataForEmails:forClientBundleID:requestId:completion:]";
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (v51)
  {
    v46 = [MEMORY[0x277CCAE80] currentConnection];
    v48 = [v46 remoteObjectProxy];
    if ([v49 count])
    {
      v88 = 0u;
      v89 = 0u;
      v10 = [MEMORY[0x277CCAE80] currentConnection];
      v11 = v10;
      if (v10)
      {
        [v10 auditToken];
      }

      else
      {
        v88 = 0u;
        v89 = 0u;
      }

      if (self)
      {
        entitlementVerifier = self->_entitlementVerifier;
      }

      else
      {
        entitlementVerifier = 0;
      }

      if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:&v88 hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) != 0)
      {
        v52 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v49];
        if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBusinessMetadataForEmails:forClientBundleID:requestId:completion:]"))
        {
          v15 = +[BCSUserDefaults sharedDefaults];
          v16 = [v15 dictionaryForKey:@"BCSBusinessEmailStubEntry"];
          if (v16)
          {
            v17 = [[BCSBusinessEmailIdentifier alloc] initWithDefaultsDictionary:v16];
            *&buf = 0;
            *(&buf + 1) = &buf;
            v94 = 0x2020000000;
            LOBYTE(v95) = 1;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            obj = v49;
            v18 = [obj countByEnumeratingWithState:&v78 objects:v99 count:16];
            if (v18)
            {
              v19 = *v79;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v79 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if ((*(*(&buf + 1) + 24) & 1) == 0)
                  {
                    v42 = [BCSError errorWithDomain:@"com.apple.businessservices" code:45 errorDescription:@"Client cancelled request"];
                    v75[0] = MEMORY[0x277D85DD0];
                    v75[1] = 3221225472;
                    v75[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_3;
                    v75[3] = &unk_278D39880;
                    v77 = v51;
                    v43 = v42;
                    v76 = v43;
                    [v48 didFetchBusinessMetadataForEmailsForRequestId:v50 error:v43 reply:v75];

                    _Block_object_dispose(&buf, 8);
                    goto LABEL_37;
                  }

                  v21 = *(*(&v78 + 1) + 8 * i);
                  if ([v21 matchesIdentifier:v17])
                  {
                    v22 = ABSLogCommon();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      *v66 = 0;
                      _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning metadata for business email matching STUB DATA", v66, 2u);
                    }

                    v23 = [[BCSBusinessEmailItem alloc] initWithIdentifier:v21 defaultsDictionary:v16];
                    v74[0] = MEMORY[0x277D85DD0];
                    v74[1] = 3221225472;
                    v74[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_248;
                    v74[3] = &unk_278D398A8;
                    v74[4] = &buf;
                    [v48 didFetchBusinessMetadata:v23 forEmailIdentifier:v21 requestId:v50 error:0 reply:v74];
                    [v52 removeObject:v21];
                    v24 = *(*(&buf + 1) + 24);

                    if ((v24 & 1) == 0)
                    {
                      goto LABEL_26;
                    }
                  }
                }

                v18 = [obj countByEnumeratingWithState:&v78 objects:v99 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

LABEL_26:

            _Block_object_dispose(&buf, 8);
          }
        }

        v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v52, "count")}];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v52 = v52;
        v26 = [v52 countByEnumeratingWithState:&v70 objects:v98 count:16];
        if (v26)
        {
          v27 = *v71;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v71 != v27)
              {
                objc_enumerationMutation(v52);
              }

              v29 = *(*(&v70 + 1) + 8 * j);
              v30 = [BCSBusinessEmailItemIdentifier alloc];
              v31 = [v29 email];
              v32 = [v29 fullDomain];
              v33 = [v29 topLevelDomain];
              v34 = [(BCSBusinessEmailItemIdentifier *)v30 initWithEmail:v31 fullDomain:v32 topLevelDomain:v33];

              [v25 setObject:v29 forKeyedSubscript:v34];
            }

            v26 = [v52 countByEnumeratingWithState:&v70 objects:v98 count:16];
          }

          while (v26);
        }

        *v66 = 0;
        v67 = v66;
        v68 = 0x2020000000;
        v69 = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v94 = 0x3032000000;
        v95 = __Block_byref_object_copy__3;
        v96 = __Block_byref_object_dispose__3;
        v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v35 = objc_alloc_init(MEMORY[0x277CCAAF8]);
        v36 = [BCSBatchQuery alloc];
        v37 = [v25 allKeys];
        v38 = [(BCSBatchQuery *)v36 initWithItemIdentifiers:v37 config:0 clientBundleId:v47 shardType:5 skipRegistrationCheck:0];

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_251;
        v59[3] = &unk_278D398D0;
        v64 = v66;
        v60 = v35;
        p_buf = &buf;
        v15 = v25;
        v61 = v15;
        v62 = v48;
        v63 = v50;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_260;
        v53[3] = &unk_278D398F8;
        v58 = &buf;
        v39 = v60;
        v54 = v39;
        v55 = v62;
        v56 = v63;
        v57 = v51;
        [(BCSBusinessQueryController *)self fetchItemsWithQuery:v38 perItemCompletion:v59 completion:v53];

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(v66, 8);
      }

      else
      {
        v40 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"Missing business metadata entitlement"];
        v82 = MEMORY[0x277D85DD0];
        v83 = 3221225472;
        v84 = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_2;
        v85 = &unk_278D39880;
        v87 = v51;
        v86 = v40;
        v52 = v40;
        [v48 didFetchBusinessMetadataForEmailsForRequestId:v50 error:? reply:?];

        v15 = v87;
      }

LABEL_37:
    }

    else
    {
      v12 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"Must request at least one identifier"];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke;
      v90[3] = &unk_278D39880;
      v92 = v51;
      v91 = v12;
      v13 = v12;
      [v48 didFetchBusinessMetadataForEmailsForRequestId:v50 error:v13 reply:v90];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_248(uint64_t a1, char a2)
{
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "BusinessEmail (Client): Received response to didFetchBusinessMetadata:forEmailIdentifier:withError:reply:", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

uint64_t __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_251(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v15 = ABSLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v8;
          _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessEmailItem): %@", buf, 0xCu);
        }

        v16 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 errorDescription:@"Unexpected item"];
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_258;
        v22[3] = &unk_278D398A8;
        v22[4] = *(a1 + 64);
        [v17 didFetchBusinessMetadata:0 forEmailIdentifier:v10 requestId:v18 error:v16 reply:v22];
        v13 = *(*(*(a1 + 64) + 8) + 24);
      }

      else
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_2_259;
        v21[3] = &unk_278D398A8;
        v21[4] = *(a1 + 64);
        [v11 didFetchBusinessMetadata:v8 forEmailIdentifier:v10 requestId:v12 error:v9 reply:v21];
        v13 = *(*(*(a1 + 64) + 8) + 24);
      }
    }

    else
    {
      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v24 = v7;
        _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "Unexpected item identifier (should be BCSBusinessEmailItemIdentifier, got %{private}@)", buf, 0xCu);
      }

      v10 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 errorDescription:@"Unexpected item identifier (wrong class)"];
      [*(a1 + 32) lock];
      [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
      [*(a1 + 32) unlock];
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_2_259(uint64_t a1, char a2)
{
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "BusinessEmail (Client): Received response to didFetchBusinessMetadata:forEmailIdentifier:withError:reply:", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

void __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_260(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    [*(a1 + 32) lock];
    if (v3)
    {
      v4 = [v3 code];
      v20[0] = *MEMORY[0x277CCA450];
      v5 = [v3 localizedDescription];
      v20[1] = @"subErrors";
      v6 = *(*(*(a1 + 64) + 8) + 40);
      v21[0] = v5;
      v21[1] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v8 = [BCSError errorWithDomain:@"com.apple.businessservices" code:v4 userInfo:v7];

      v3 = v8;
    }

    else
    {
      v18[0] = *MEMORY[0x277CCA450];
      v18[1] = @"subErrors";
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v19[0] = @"Failed to fetch some items";
      v19[1] = v9;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v5];
    }

    [*(a1 + 32) unlock];
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__BCSBusinessQueryController_fetchBusinessMetadataForEmails_forClientBundleID_requestId_completion___block_invoke_2_267;
  v15[3] = &unk_278D39880;
  v12 = *(a1 + 56);
  v16 = v3;
  v17 = v12;
  v13 = v3;
  [v10 didFetchBusinessMetadataForEmailsForRequestId:v11 error:v13 reply:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cachedBusinessMetadataForEmail:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController cachedBusinessMetadataForEmail:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    v12 = [v8 email];

    if (v12)
    {
      *buf = 0u;
      v31 = 0u;
      v13 = [MEMORY[0x277CCAE80] currentConnection];
      v14 = v13;
      if (v13)
      {
        [v13 auditToken];
      }

      else
      {
        *buf = 0u;
        v31 = 0u;
      }

      if (self)
      {
        entitlementVerifier = self->_entitlementVerifier;
      }

      else
      {
        entitlementVerifier = 0;
      }

      if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
      {
        v17 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"Missing business metadata entitlement"];
        v10[2](v10, 0, v17);
LABEL_23:

        goto LABEL_24;
      }

      if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController cachedBusinessMetadataForEmail:forClientBundleID:completion:]"))
      {
        v17 = +[BCSUserDefaults sharedDefaults];
        v18 = [v17 dictionaryForKey:@"BCSBusinessEmailStubEntry"];
        if (v18)
        {
          v19 = [[BCSBusinessEmailIdentifier alloc] initWithDefaultsDictionary:v18];
          if ([v8 matchesIdentifier:v19])
          {
            v20 = ABSLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *v29 = 0;
              _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "BusinessEmail: Returning metadata for business email matching STUB DATA", v29, 2u);
            }

            v21 = [[BCSBusinessEmailItem alloc] initWithIdentifier:v8 defaultsDictionary:v18];
            (v10)[2](v10, v21, 0);

            goto LABEL_22;
          }
        }
      }

      v22 = [BCSBusinessEmailItemIdentifier alloc];
      v23 = [v8 email];
      v24 = [v8 fullDomain];
      v25 = [v8 topLevelDomain];
      v17 = [(BCSBusinessEmailItemIdentifier *)v22 initWithEmail:v23 fullDomain:v24 topLevelDomain:v25];

      v18 = [[BCSQuery alloc] initWithItemIdentifier:v17 clientBundleId:v9 shardType:5 cacheOnly:1 skipRegistrationCheck:0 skipConfigFetch:0];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __90__BCSBusinessQueryController_cachedBusinessMetadataForEmail_forClientBundleID_completion___block_invoke;
      v27[3] = &unk_278D39510;
      v28 = v10;
      [(BCSBusinessQueryController *)self fetchItemWithQuery:v18 completion:v27];

LABEL_22:
      goto LABEL_23;
    }

    v15 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"nil email key"];
    v10[2](v10, 0, v15);
  }

LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
}

void __90__BCSBusinessQueryController_cachedBusinessMetadataForEmail_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSBusinessEmailItem): %@", &v11, 0xCu);
      }

      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
  }

  else
  {
    v8 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchBrandWithIdentifier:(id)a3 forClientBundleID:(id)a4 serviceType:(int64_t)a5 completion:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = ABSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController fetchBrandWithIdentifier:forClientBundleID:serviceType:completion:]";
    _os_log_impl(&dword_242072000, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v12)
  {
    *buf = 0u;
    v45 = 0u;
    v14 = [MEMORY[0x277CCAE80] currentConnection];
    v15 = v14;
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      *buf = 0u;
      v45 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v17 = ABSLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v40, 2u);
      }
    }

    if (a5 != 5)
    {
      v29 = ABSLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromBCSType(a5);
        *v40 = 136315394;
        v41 = "[BCSBusinessQueryController fetchBrandWithIdentifier:forClientBundleID:serviceType:completion:]";
        v42 = 2112;
        v43 = v32;
        _os_log_error_impl(&dword_242072000, v29, OS_LOG_TYPE_ERROR, "%s - Unsupported type: %@", v40, 0x16u);
      }

      v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"Unsupported service type"];
      v12[2](v12, 0, v18);
      goto LABEL_31;
    }

    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchBrandWithIdentifier:forClientBundleID:serviceType:completion:]"))
    {
      v18 = +[BCSUserDefaults sharedDefaults];
      v19 = [(BCSQuery *)v18 dictionaryForKey:@"BCSBusinessWebPresentmentStubEntry"];
      v20 = v19;
      if (v19)
      {
        v21 = [(BCSWebPresentmentItemIdentifier *)v19 objectForKeyedSubscript:@"identifier"];
        if ([v10 isEqualToString:v21])
        {
          v22 = ABSLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 0;
            _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "WebPresentment: Returning metadata for web presentment matching STUB DATA", v40, 2u);
          }

          v23 = [[BCSWebPresentmentItemIdentifier alloc] initWithBrandID:v10 serverType:2];
          v24 = [(BCSWebPresentmentItemIdentifier *)v20 objectForKeyedSubscript:@"logo"];
          v25 = ABSLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 138412290;
            v41 = v24;
            _os_log_impl(&dword_242072000, v25, OS_LOG_TYPE_DEFAULT, "WebPresentment: Stub logo data: %@", v40, 0xCu);
          }

          if (v24 && ([(BCSWebPresentmentItemIdentifier *)v20 objectForKeyedSubscript:@"logoFormat"], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            v27 = [(BCSWebPresentmentItemIdentifier *)v20 objectForKeyedSubscript:@"logoFormat"];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke;
            v36[3] = &unk_278D39920;
            v39 = v12;
            v37 = v10;
            v38 = v20;
            [(BCSBusinessQueryController *)self _generateSafeImageURLForItemIdentifier:v23 imageData:v24 format:v27 completion:v36];

            v28 = v39;
          }

          else
          {
            v28 = [[BCSWebPresentmentItem alloc] initWithBrandID:v10 defaultsDictionary:v20];
            (v12)[2](v12, v28, 0);
          }

          goto LABEL_30;
        }
      }
    }

    v30 = [[BCSWebPresentmentItemIdentifier alloc] initWithBrandID:v10 serverType:2];
    v18 = [[BCSQuery alloc] initWithItemIdentifier:v30 clientBundleId:v11 shardType:6 cacheOnly:0 skipRegistrationCheck:1 skipConfigFetch:1];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke_2;
    v33[3] = &unk_278D39858;
    v34 = v30;
    v35 = v12;
    v33[4] = self;
    v20 = v30;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v18 completion:v33];

LABEL_30:
LABEL_31:
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v5 = [[BCSWebPresentmentItem alloc] initWithBrandID:a1[4] defaultsDictionary:a1[5]];
    [(BCSWebPresentmentItem *)v5 setLogoURL:v6];
    (*(a1[6] + 16))();
  }
}

void __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[BCSBusinessQueryController fetchBrandWithIdentifier:forClientBundleID:serviceType:completion:]_block_invoke_2";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Fetch completed with error: %@", buf, 0x16u);
  }

  if (!(v5 | v6))
  {
    v8 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    v14 = *(*(a1 + 48) + 16);
LABEL_9:
    v14();
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_14:
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = ABSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSWebPresentmentItem): %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v8 = v5;
  v9 = [v8 logoData];

  if (!v9)
  {
    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[BCSBusinessQueryController fetchBrandWithIdentifier:forClientBundleID:serviceType:completion:]_block_invoke";
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "%s - No logo found", buf, 0xCu);
    }

    v14 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = [v8 logoData];
  v13 = [v8 logoFormat];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke_283;
  v18[3] = &unk_278D39948;
  v20 = *(a1 + 48);
  v19 = v8;
  [(BCSBusinessQueryController *)v10 _generateSafeImageURLForItemIdentifier:v11 imageData:v12 format:v13 completion:v18];

LABEL_10:
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __96__BCSBusinessQueryController_fetchBrandWithIdentifier_forClientBundleID_serviceType_completion___block_invoke_283(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 32) setLogoURL:a2];
    v6 = *(a1 + 32);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)a3 forClientBundleID:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController fetchWebPresentmentPermissionsWithIdentifier:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v10)
  {
    *buf = 0u;
    v29 = 0u;
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v13 = v12;
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      *buf = 0u;
      v29 = 0u;
    }

    if (self)
    {
      entitlementVerifier = self->_entitlementVerifier;
    }

    else
    {
      entitlementVerifier = 0;
    }

    if (([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.businessmetadata"]& 1) == 0)
    {
      v15 = ABSLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Required entitlement missing; please add 'com.apple.businessservicesd.businessmetadata' to your process entitlement. This will be a fatal error in the future.", v27, 2u);
      }
    }

    if (MEMORY[0x245D06CC0]("[BCSBusinessQueryController fetchWebPresentmentPermissionsWithIdentifier:forClientBundleID:completion:]"))
    {
      v16 = +[BCSUserDefaults sharedDefaults];
      v17 = [(BCSWebPresentmentItemIdentifier *)v16 dictionaryForKey:@"BCSBusinessWebPresentmentStubEntry"];
      v18 = v17;
      if (v17)
      {
        v19 = [(BCSQuery *)v17 objectForKeyedSubscript:@"identifier"];
        if ([v8 isEqualToString:v19])
        {
          v20 = ABSLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "WebPresentment: Returning permissions for web presentment matching STUB DATA", v27, 2u);
          }

          v21 = [(BCSQuery *)v18 objectForKeyedSubscript:@"permissions"];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 dataUsingEncoding:4];
            v10[2](v10, v23, 0);
          }

          else
          {
            v23 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
            (v10)[2](v10, 0, v23);
          }

          goto LABEL_23;
        }
      }
    }

    v16 = [[BCSWebPresentmentItemIdentifier alloc] initWithBrandID:v8 serverType:4];
    v18 = [[BCSQuery alloc] initWithItemIdentifier:v16 clientBundleId:v9 shardType:6 cacheOnly:0 skipRegistrationCheck:1 skipConfigFetch:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104__BCSBusinessQueryController_fetchWebPresentmentPermissionsWithIdentifier_forClientBundleID_completion___block_invoke;
    v25[3] = &unk_278D39510;
    v26 = v10;
    [(BCSBusinessQueryController *)self fetchItemWithQuery:v18 completion:v25];
    v19 = v26;
LABEL_23:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __104__BCSBusinessQueryController_fetchWebPresentmentPermissionsWithIdentifier_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[BCSBusinessQueryController fetchWebPresentmentPermissionsWithIdentifier:forClientBundleID:completion:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Fetch completed with error: %@", &v14, 0x16u);
  }

  if (!(v5 | v6))
  {
    v11 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No match found"];
    (*(*(a1 + 32) + 16))();

    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_11:
    (*(*(a1 + 32) + 16))();
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "Invalid item (expected BCSWebPresentmentPermissionsItem): %@", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = *(a1 + 32);
  v9 = v5;
  v10 = [v9 data];
  (*(v8 + 16))(v8, v10, 0);

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)prefetchMegashardsWithCompletion:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCAE80] currentConnection];
    *buf = 136315394;
    *&buf[4] = "[BCSBusinessQueryController prefetchMegashardsWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = [v6 processIdentifier];
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s Called by process with PID %ld", buf, 0x16u);
  }

  v7 = dispatch_group_create();
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = 0;
  v35 = 0u;
  v36 = 0u;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  if (self)
  {
    entitlementVerifier = self->_entitlementVerifier;
  }

  else
  {
    entitlementVerifier = 0;
  }

  v11 = entitlementVerifier;
  v12 = [(BCSEntitlementVerifying *)v11 auditToken:&v35 hasEntitlement:@"com.apple.businessservicesd.prefetch"];

  if (v12)
  {
    dispatch_group_enter(v7);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke;
    v31[3] = &unk_278D39970;
    v33 = v37;
    v34 = buf;
    v13 = v7;
    v32 = v13;
    if (self)
    {
      [(BCSFetchTrigger *)self->_businessLinkMegashardFetchTrigger triggerFetchForReason:1 completion:v31];
    }

    dispatch_group_enter(v13);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_2;
    v29[3] = &unk_278D39998;
    v14 = v13;
    v30 = v14;
    if (self)
    {
      [(BCSFetchTrigger *)self->_chatSuggestMegashardFetchTrigger triggerFetchForReason:1 completion:v29];
    }

    dispatch_group_enter(v14);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_291;
    v27[3] = &unk_278D39998;
    v15 = v14;
    v28 = v15;
    if (self)
    {
      [(BCSFetchTrigger *)self->_businessCallerMegashardFetchTrigger triggerFetchForReason:1 completion:v27];
    }

    dispatch_group_enter(v15);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_292;
    v25[3] = &unk_278D39998;
    v16 = v15;
    v26 = v16;
    if (self)
    {
      [(BCSFetchTrigger *)self->_businessEmailMegashardFetchTrigger triggerFetchForReason:1 completion:v25];
    }

    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_293;
    block[3] = &unk_278D399C0;
    v22 = v4;
    v23 = v37;
    v24 = buf;
    dispatch_group_notify(v16, v17, block);

    v18 = v32;
  }

  else
  {
    v19 = ABSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      v40 = "[BCSBusinessQueryController prefetchMegashardsWithCompletion:]";
      v41 = 2112;
      v42 = @"com.apple.businessservicesd.prefetch";
      _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "%s: The entitlement %@ is required to trigger a prefetch of Megashards", v39, 0x16u);
    }

    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"This call requires an entitlement"];
    (*(v4 + 2))(v4, 0, v18);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v37, 8);

  v20 = *MEMORY[0x277D85DE8];
}

void __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_group_leave(*(a1 + 32));
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v8 = 136315650;
    v9 = "[BCSBusinessQueryController prefetchMegashardsWithCompletion:]_block_invoke_2";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s: Prefetch of Chat Suggest megashard completed with result: %@ and error: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_291(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_group_leave(*(a1 + 32));
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v8 = 136315650;
    v9 = "[BCSBusinessQueryController prefetchMegashardsWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s: Prefetch of Business Caller megashard completed with result: %@ and error: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_292(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_group_leave(*(a1 + 32));
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v8 = 136315650;
    v9 = "[BCSBusinessQueryController prefetchMegashardsWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s: Prefetch of Business Email megashard completed with result: %@ and error: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __63__BCSBusinessQueryController_prefetchMegashardsWithCompletion___block_invoke_293(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)clearCachesForType:(int64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController clearCachesForType:completion:]";
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = 0u;
  v20 = 0u;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    *buf = 0u;
    v20 = 0u;
  }

  if (self)
  {
    entitlementVerifier = self->_entitlementVerifier;
  }

  else
  {
    entitlementVerifier = 0;
  }

  if ([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.cache"])
  {
    if (self)
    {
      cacheClearer = self->_cacheClearer;
    }

    else
    {
      cacheClearer = 0;
    }

    [(BCSCacheClearing *)cacheClearer clearCachesForType:a3 completion:v6];
  }

  else
  {
    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[BCSBusinessQueryController clearCachesForType:completion:]";
      v17 = 2112;
      v18 = @"com.apple.businessservicesd.cache";
      _os_log_error_impl(&dword_242072000, v12, OS_LOG_TYPE_ERROR, "%s: The entitlement %@ is required to clear caches", &v15, 0x16u);
    }

    v13 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"This call requires an entitlement"];
    v6[2](v6, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController clearExpiredCachesForType:completion:]";
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = 0u;
  v20 = 0u;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    *buf = 0u;
    v20 = 0u;
  }

  if (self)
  {
    entitlementVerifier = self->_entitlementVerifier;
  }

  else
  {
    entitlementVerifier = 0;
  }

  if ([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.cache"])
  {
    if (self)
    {
      cacheClearer = self->_cacheClearer;
    }

    else
    {
      cacheClearer = 0;
    }

    [(BCSCacheClearing *)cacheClearer clearExpiredCachesForType:a3 completion:v6];
  }

  else
  {
    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[BCSBusinessQueryController clearExpiredCachesForType:completion:]";
      v17 = 2112;
      v18 = @"com.apple.businessservicesd.cache";
      _os_log_error_impl(&dword_242072000, v12, OS_LOG_TYPE_ERROR, "%s: The entitlement %@ is required to clear caches", &v15, 0x16u);
    }

    v13 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"This call requires an entitlement"];
    v6[2](v6, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessQueryController clearCachesForLinkItemsAssociatedWithBundleID:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = 0u;
  v21 = 0u;
  v9 = [MEMORY[0x277CCAE80] currentConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  else
  {
    *buf = 0u;
    v21 = 0u;
  }

  if (self)
  {
    entitlementVerifier = self->_entitlementVerifier;
  }

  else
  {
    entitlementVerifier = 0;
  }

  if ([(BCSEntitlementVerifying *)entitlementVerifier auditToken:buf hasEntitlement:@"com.apple.businessservicesd.cache"])
  {
    if (self)
    {
      cacheClearer = self->_cacheClearer;
    }

    else
    {
      cacheClearer = 0;
    }

    [(BCSCacheClearing *)cacheClearer clearCachesForLinkItemsAssociatedWithBundleID:v6 completion:v7];
  }

  else
  {
    v13 = ABSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[BCSBusinessQueryController clearCachesForLinkItemsAssociatedWithBundleID:completion:]";
      v18 = 2112;
      v19 = @"com.apple.businessservicesd.cache";
      _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "%s: The entitlement %@ is required to clear caches", &v16, 0x16u);
    }

    v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:99 errorDescription:@"This call requires an entitlement"];
    v7[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deleteInMemoryCache
{
  v2 = +[BCSBusinessItemMemoryCache sharedCache];
  [(BCSBusinessItemMemoryCache *)v2 deleteCache];
}

@end