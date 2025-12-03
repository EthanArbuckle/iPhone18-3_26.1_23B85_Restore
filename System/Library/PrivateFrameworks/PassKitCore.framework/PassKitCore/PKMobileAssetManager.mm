@interface PKMobileAssetManager
+ (PKMobileAssetManager)sharedInstance;
- (BOOL)hasCashStickers;
- (PKMobileAssetManager)init;
- (id)_cachedAssetWithQuery:(id)query;
- (id)_cachedAssetsWithQuery:(id)query;
- (id)_compatibleVersionsWithMinimumVersion:(unint64_t)version maximumVersion:(unint64_t)maximumVersion;
- (id)_downloadOptionsWithTimeout:(int64_t)timeout isDiscretionary:(BOOL)discretionary;
- (id)_queryForCashStickers;
- (id)_queryForCityCodeStationProvider:(id)provider;
- (id)_queryForDynamicAssetsWithParameters:(id)parameters;
- (id)_queryForHowToUseWalletAssetType:(id)type identifier:(id)identifier lotIdentifier:(id)lotIdentifier;
- (id)_queryForMarketNotificationIdentifier:(id)identifier;
- (id)_queryForStationCodeData:(id)data;
- (id)_queryForStringsBundleWithIdentifier:(id)identifier;
- (id)cachedCashStickerBundle;
- (id)cachedDynamicAssetWithIdentifier:(id)identifier parameters:(id)parameters;
- (id)cachedDynamicAssetsIndex;
- (id)cachedHowToUseWalletCardAssetForIdentifier:(id)identifier;
- (id)cachedHowToUseWalletCardAssetsForLotIdentifier:(id)identifier;
- (id)cachedHowToUseWalletModelAsset;
- (id)cachedStringsBundleWithIdentifier:(id)identifier;
- (id)sortDescriptorsForLatestContentVersion;
- (id)sortDescriptorsForMarkets;
- (void)_downloadAsset:(id)asset isDiscretionary:(BOOL)discretionary timeout:(int64_t)timeout completion:(id)completion;
- (void)_downloadAssetCatalogIfExpired:(unint64_t)expired completion:(id)completion;
- (void)_downloadPrefetchableAssetsForType:(int64_t)type completion:(id)completion;
- (void)_purgeAssets:(id)assets completion:(id)completion;
- (void)_purgeCashStickers;
- (void)_retrieveAssetWithQuery:(id)query maxCompatibleVersion:(unint64_t)version isDiscretionary:(BOOL)discretionary sortDescriptors:(id)descriptors timeout:(unint64_t)timeout catalogExpirationDays:(unint64_t)days completion:(id)completion;
- (void)dynamicAssetWithIdentifier:(id)identifier mappedIdentifierPrefix:(id)prefix parameters:(id)parameters timeout:(unint64_t)timeout completion:(id)completion;
- (void)dynamicAssetsIndex:(id)index;
- (void)fetchCityStationProviderAssetForBaseProvider:(id)provider completionHandler:(id)handler;
- (void)fetchMarketNotificationAssetsForIdentifier:(id)identifier isDiscretionary:(BOOL)discretionary completionHandler:(id)handler;
- (void)fetchRPIdentifierMappingDiscretionary:(BOOL)discretionary localOnly:(BOOL)only completionHandler:(id)handler;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)schedulePrefetchForType:(int64_t)type interval:(double)interval queue:(id)queue;
- (void)stationCodeDataForStationCodeProvider:(id)provider completionHandler:(id)handler;
- (void)stringsBundleWithIdentifier:(id)identifier timeout:(unint64_t)timeout completion:(id)completion;
- (void)updateCashStickersIfNecessary;
@end

@implementation PKMobileAssetManager

+ (PKMobileAssetManager)sharedInstance
{
  if (_MergedGlobals_283 != -1)
  {
    dispatch_once(&_MergedGlobals_283, &__block_literal_global_233);
  }

  v3 = qword_1ED6D22A0;

  return v3;
}

void __38__PKMobileAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKMobileAssetManager);
  v1 = qword_1ED6D22A0;
  qword_1ED6D22A0 = v0;
}

- (PKMobileAssetManager)init
{
  v9.receiver = self;
  v9.super_class = PKMobileAssetManager;
  v2 = [(PKMobileAssetManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.passkitcore.mobileasset.fetch", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_opt_new();
    cachedStringsBundles = v2->_cachedStringsBundles;
    v2->_cachedStringsBundles = v6;
  }

  return v2;
}

- (id)cachedHowToUseWalletModelAsset
{
  _queryForHowToUseWalletModel = [(PKMobileAssetManager *)self _queryForHowToUseWalletModel];
  v4 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:_queryForHowToUseWalletModel];

  return v4;
}

- (id)sortDescriptorsForLatestContentVersion
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"attributes" ascending:1 comparator:&__block_literal_global_448_0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)fetchMarketNotificationAssetsForIdentifier:(id)identifier isDiscretionary:(BOOL)discretionary completionHandler:(id)handler
{
  discretionaryCopy = discretionary;
  handlerCopy = handler;
  if (discretionaryCopy)
  {
    v9 = 120;
  }

  else
  {
    v9 = 30;
  }

  v10 = [(PKMobileAssetManager *)self _queryForMarketNotificationIdentifier:identifier];
  sortDescriptorsForMarkets = [(PKMobileAssetManager *)self sortDescriptorsForMarkets];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKMobileAssetManager_fetchMarketNotificationAssetsForIdentifier_isDiscretionary_completionHandler___block_invoke;
  v13[3] = &unk_1E79D0188;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v10 maxCompatibleVersion:2 isDiscretionary:discretionaryCopy sortDescriptors:sortDescriptorsForMarkets timeout:v9 catalogExpirationDays:7 completion:v13];
}

void __101__PKMobileAssetManager_fetchMarketNotificationAssetsForIdentifier_isDiscretionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (!v8 || v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else
    {
      v7 = [v8 bundleURL];
      (*(v6 + 16))(v6, v7, 0);
    }
  }
}

- (void)fetchCityStationProviderAssetForBaseProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PKMobileAssetManager *)self _queryForCityCodeStationProvider:provider];
  sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PKMobileAssetManager_fetchCityStationProviderAssetForBaseProvider_completionHandler___block_invoke;
  v10[3] = &unk_1E79D0188;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v7 maxCompatibleVersion:2 isDiscretionary:0 sortDescriptors:sortDescriptorsForLatestContentVersion timeout:120 catalogExpirationDays:1 completion:v10];
}

void __87__PKMobileAssetManager_fetchCityStationProviderAssetForBaseProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (!v8 || v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else
    {
      v7 = [v8 URLForResource:@"BaseProvider" withExtension:@"plist"];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)stationCodeDataForStationCodeProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PKMobileAssetManager *)self _queryForStationCodeData:provider];
  sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKMobileAssetManager_stationCodeDataForStationCodeProvider_completionHandler___block_invoke;
  v10[3] = &unk_1E79D0188;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v7 maxCompatibleVersion:1 isDiscretionary:0 sortDescriptors:sortDescriptorsForLatestContentVersion timeout:120 catalogExpirationDays:7 completion:v10];
}

void __80__PKMobileAssetManager_stationCodeDataForStationCodeProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (!v8 || v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else
    {
      v7 = [v8 bundleURL];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)fetchRPIdentifierMappingDiscretionary:(BOOL)discretionary localOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  discretionaryCopy = discretionary;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKMobileAssetManager_fetchRPIdentifierMappingDiscretionary_localOnly_completionHandler___block_invoke;
  aBlock[3] = &unk_1E79D0188;
  v9 = handlerCopy;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:1 maximumVersion:1];
  v12 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v12 returnTypes:2];
  [v12 addKeyValuePair:@"Feature" with:@"RPIdentifierMapping"];
  [v12 addKeyValueArray:*MEMORY[0x1E69B1840] with:v11];
  if (onlyCopy)
  {
    v13 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:v12];
    v10[2](v10, v13, 0);
  }

  else
  {
    sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PKMobileAssetManager_fetchRPIdentifierMappingDiscretionary_localOnly_completionHandler___block_invoke_2;
    v15[3] = &unk_1E79D0188;
    v16 = v10;
    [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v12 maxCompatibleVersion:1 isDiscretionary:discretionaryCopy sortDescriptors:sortDescriptorsForLatestContentVersion timeout:120 catalogExpirationDays:7 completion:v15];

    v13 = v16;
  }
}

void __90__PKMobileAssetManager_fetchRPIdentifierMappingDiscretionary_localOnly_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      v7 = [v8 URLForResource:@"RPIdentifierMapping" withExtension:@"json"];
      v6 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 16))(v6, v7, v5);
  }
}

- (id)sortDescriptorsForMarkets
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"attributes" ascending:1 comparator:&__block_literal_global_399];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

uint64_t __49__PKMobileAssetManager_sortDescriptorsForMarkets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E69B1848];
  v5 = a3;
  v6 = [a2 objectForKey:v4];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:v4];

  v9 = [v8 integerValue];
  if (v7 > v9)
  {
    return -1;
  }

  else
  {
    return v7 < v9;
  }
}

- (id)cachedDynamicAssetWithIdentifier:(id)identifier parameters:(id)parameters
{
  v6 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithDictionary:parametersCopy];

  cachedDynamicAssetsIndex = [(PKMobileAssetManager *)self cachedDynamicAssetsIndex];
  v11 = [cachedDynamicAssetsIndex mappedAssetIdentifier:identifierCopy];

  [v9 setValue:v11 forKey:@"Identifier"];
  v12 = [(PKMobileAssetManager *)self _queryForDynamicAssetsWithParameters:v9];
  v13 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:v12];

  return v13;
}

- (void)dynamicAssetWithIdentifier:(id)identifier mappedIdentifierPrefix:(id)prefix parameters:(id)parameters timeout:(unint64_t)timeout completion:(id)completion
{
  identifierCopy = identifier;
  prefixCopy = prefix;
  parametersCopy = parameters;
  completionCopy = completion;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__84;
  v42 = __Block_byref_object_dispose__84;
  v43 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  v16 = v39[5];
  v17 = dispatch_time(0, 1000000000 * timeout);
  dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v18 = v39[5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke;
  handler[3] = &unk_1E79E40B0;
  v36 = &v38;
  v19 = completionCopy;
  v35 = v19;
  v20 = identifierCopy;
  v34 = v20;
  timeoutCopy = timeout;
  dispatch_source_set_event_handler(v18, handler);
  dispatch_resume(v39[5]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_402;
  v25[3] = &unk_1E79E4128;
  v31 = &v38;
  v21 = parametersCopy;
  v26 = v21;
  v22 = v20;
  v27 = v22;
  v23 = prefixCopy;
  v28 = v23;
  selfCopy = self;
  timeoutCopy2 = timeout;
  v24 = v19;
  v30 = v24;
  [(PKMobileAssetManager *)self dynamicAssetsIndex:v25];

  _Block_object_dispose(&v38, 8);
}

void __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(a1[6] + 8) + 40))
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:4 userInfo:0];
    (*(a1[5] + 16))();
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[7];
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error: fetching dynamic asset with identifier %@ timed out after %lu seconds", &v8, 0x16u);
  }
}

void __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_402(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 32)];
    v8 = [v5 mappedAssetIdentifier:*(a1 + 40)];
    v9 = v8;
    if (!v8)
    {
      v9 = *(a1 + 40);
    }

    v10 = v9;

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [v11 stringByAppendingString:v10];

      v10 = v12;
    }

    [v7 setValue:v10 forKey:@"Identifier"];
    v13 = [*(a1 + 56) _queryForDynamicAssetsWithParameters:v7];
    v14 = *(a1 + 56);
    v15 = [v14 sortDescriptorsForLatestContentVersion];
    v16 = *(a1 + 80);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_403;
    v19[3] = &unk_1E79E4100;
    v19[4] = *(a1 + 56);
    v18 = *(a1 + 64);
    v17 = v18;
    v20 = v18;
    [v14 _retrieveAssetWithQuery:v13 maxCompatibleVersion:1 isDiscretionary:0 sortDescriptors:v15 timeout:v16 catalogExpirationDays:7 completion:v19];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Skipping asset query because asset index timed out", buf, 2u);
    }
  }
}

void __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_403(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_2;
  block[3] = &unk_1E79E40D8;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

NSObject *__104__PKMobileAssetManager_dynamicAssetWithIdentifier_mappedIdentifierPrefix_parameters_timeout_completion___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 56) + 8) + 40);
  if (result)
  {
    dispatch_source_cancel(result);
    result = *(a1 + 48);
    if (result)
    {
      isa = result[2].isa;

      return isa();
    }
  }

  return result;
}

- (id)cachedDynamicAssetsIndex
{
  v11[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dynamicAssetsIndex;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v10 = @"Type";
    v11[0] = @"Index";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [(PKMobileAssetManager *)self _queryForDynamicAssetsWithParameters:v5];

    v7 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:v6];
    v8 = [v7 URLForResource:@"Index" withExtension:@"plist"];
    v4 = [[PKDynamicAssetIndex alloc] initWithContentsOfURL:v8];
  }

  return v4;
}

- (void)dynamicAssetsIndex:(id)index
{
  v12[1] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v11 = @"Type";
  v12[0] = @"Index";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [(PKMobileAssetManager *)self _queryForDynamicAssetsWithParameters:v5];

  os_unfair_lock_lock(&self->_lock);
  v7 = self->_dynamicAssetsIndex;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    if (indexCopy)
    {
      indexCopy[2](indexCopy, v7, 0);
    }
  }

  else
  {
    sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__PKMobileAssetManager_dynamicAssetsIndex___block_invoke;
    v9[3] = &unk_1E79C84E0;
    v9[4] = self;
    v10 = indexCopy;
    [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v6 maxCompatibleVersion:1 isDiscretionary:0 sortDescriptors:sortDescriptorsForLatestContentVersion timeout:30 catalogExpirationDays:7 completion:v9];
  }
}

void __43__PKMobileAssetManager_dynamicAssetsIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10 || v5)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v5);
    }
  }

  else
  {
    v6 = [v10 URLForResource:@"Index" withExtension:@"plist"];
    v7 = [[PKDynamicAssetIndex alloc] initWithContentsOfURL:v6];
    os_unfair_lock_lock((*(a1 + 32) + 32));
    objc_storeStrong((*(a1 + 32) + 16), v7);
    os_unfair_lock_unlock((*(a1 + 32) + 32));
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v7, 0);
    }
  }
}

- (id)cachedStringsBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cachedStringsBundles objectForKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    v8 = 0;
  }

  else
  {
    if (!v5)
    {
      v7 = [(PKMobileAssetManager *)self _queryForStringsBundleWithIdentifier:identifierCopy];
      v5 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:v7];
      os_unfair_lock_lock(&self->_lock);
      if (v5)
      {
        [(NSMutableDictionary *)self->_cachedStringsBundles setObject:v5 forKeyedSubscript:identifierCopy];
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableDictionary *)self->_cachedStringsBundles setObject:null2 forKeyedSubscript:identifierCopy];
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    v5 = v5;
    v8 = v5;
  }

  return v8;
}

- (void)stringsBundleWithIdentifier:(id)identifier timeout:(unint64_t)timeout completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [(PKMobileAssetManager *)self _queryForStringsBundleWithIdentifier:identifierCopy];
  sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PKMobileAssetManager_stringsBundleWithIdentifier_timeout_completion___block_invoke;
  v14[3] = &unk_1E79E4150;
  v15 = identifierCopy;
  v16 = completionCopy;
  v14[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  [(PKMobileAssetManager *)self _retrieveAssetWithQuery:v10 maxCompatibleVersion:1 isDiscretionary:0 sortDescriptors:sortDescriptorsForLatestContentVersion timeout:timeout catalogExpirationDays:7 completion:v14];
}

void __71__PKMobileAssetManager_stringsBundleWithIdentifier_timeout_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = a1[6];
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    os_unfair_lock_lock((a1[4] + 32));
    [*(a1[4] + 24) setObject:v9 forKeyedSubscript:a1[5]];
    os_unfair_lock_unlock((a1[4] + 32));
    v8 = a1[6];
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

- (id)cachedHowToUseWalletCardAssetForIdentifier:(id)identifier
{
  v4 = [(PKMobileAssetManager *)self _queryForHowToUseWalletCardWithIdentifier:identifier];
  v5 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:v4];

  return v5;
}

- (id)cachedHowToUseWalletCardAssetsForLotIdentifier:(id)identifier
{
  v4 = [(PKMobileAssetManager *)self _queryForHowToUseWalletCardWithLotIdentifier:identifier];
  v5 = [(PKMobileAssetManager *)self _cachedAssetsWithQuery:v4];

  return v5;
}

- (BOOL)hasCashStickers
{
  v16 = *MEMORY[0x1E69E9840];
  cachedCashStickerBundle = [(PKMobileAssetManager *)self cachedCashStickerBundle];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_1F23B48E0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_1F23B48E0);
        }

        v7 = [cachedCashStickerBundle URLsForResourcesWithExtension:*(*(&v11 + 1) + 8 * i) subdirectory:@"Stickers"];
        v8 = [v7 count];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F23B48E0 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)cachedCashStickerBundle
{
  _queryForCashStickers = [(PKMobileAssetManager *)self _queryForCashStickers];
  v4 = [(PKMobileAssetManager *)self _cachedAssetWithQuery:_queryForCashStickers];

  return v4;
}

- (void)updateCashStickersIfNecessary
{
  hasCashStickers = [(PKMobileAssetManager *)self hasCashStickers];
  if (PKAppleCashStickerPackIsEligibleForDownload())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PKMobileAssetManager_updateCashStickersIfNecessary__block_invoke;
    v7[3] = &unk_1E79E4178;
    v7[4] = self;
    v8 = hasCashStickers;
    [(PKMobileAssetManager *)self prefetchAssetsForType:3 completion:v7];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0xBuLL);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (hasCashStickers)
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Purging apple cash sticker assets because they are not eligible for download", v6, 2u);
      }

      [(PKMobileAssetManager *)self _purgeCashStickers];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Skipping update of apple cash sticker assets because none are on device or eligible for download", v6, 2u);
      }
    }
  }
}

void __53__PKMobileAssetManager_updateCashStickersIfNecessary__block_invoke(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Finished prefetch of apple cash sticker assets with success %ld", &v5, 0xCu);
  }

  if (a2)
  {
    if (*(a1 + 40) != [*(a1 + 32) hasCashStickers])
    {
      PKAppleCashReportMessagesStickerExtensionVisibilityChanged();
    }
  }
}

- (void)_purgeCashStickers
{
  v10 = *MEMORY[0x1E69E9840];
  _queryForCashStickers = [(PKMobileAssetManager *)self _queryForCashStickers];
  queryMetaDataSync = [_queryForCashStickers queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v5 = queryMetaDataSync;
    v6 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Purge of cash stickers failed with result %lu", &v8, 0xCu);
    }
  }

  results = [_queryForCashStickers results];
  if ([results count])
  {
    [(PKMobileAssetManager *)self _purgeAssets:results completion:&__block_literal_global_425_0];
  }
}

- (void)_downloadPrefetchableAssetsForType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke;
  v8[3] = &unk_1E79C8EB8;
  v9 = completionCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = completionCopy;
  [(PKMobileAssetManager *)self _downloadAssetCatalogIfExpired:0 completion:v8];
}

void __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Continuing prefetch with expired catalog", buf, 2u);
    }
  }

  v4 = a1[6] - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79E43A0[v4];
  }

  v6 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v6 returnTypes:2];
  [v6 addKeyValuePair:@"Prefetch" with:@"YES"];
  if ([(__CFString *)v5 length])
  {
    [v6 addKeyValuePair:@"Feature" with:v5];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Fetching all prefetchable assets", buf, 2u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_429;
  v11[3] = &unk_1E79C55D0;
  v8 = a1[4];
  v9 = a1[5];
  v12 = v6;
  v13 = v8;
  v14 = v9;
  v10 = v6;
  [v10 queryMetaData:v11];
}

void __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_429(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = a2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Failed to query prefetch assets result %lu", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(a1 + 32) results];
    v6 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = [v5 count];
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Found %lu prefetchable assets in Mobile Assets", buf, 0xCu);
    }

    v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v5;
    v8 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v3);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_431;
          v17[3] = &unk_1E79D6768;
          v17[4] = *(a1 + 40);
          v17[5] = v12;
          [(PKAsyncUnaryOperationComposer *)v7 addOperation:v17];
        }

        v9 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x1E695DFB0] null];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_434;
    v15[3] = &unk_1E79D04A0;
    v16 = *(a1 + 48);
    v14 = [(PKAsyncUnaryOperationComposer *)v7 evaluateWithInput:v13 completion:v15];
  }
}

void __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_431(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_2;
  v12[3] = &unk_1E79E41A0;
  v13 = v6;
  v14 = v7;
  v12[4] = v8;
  v10 = v6;
  v11 = v7;
  [v9 _downloadAsset:v8 isDiscretionary:1 timeout:120 completion:v12];
}

uint64_t __70__PKMobileAssetManager__downloadPrefetchableAssetsForType_completion___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 0x1D || ((1 << a2) & 0x2000C001) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) assetId];
      v7 = 138412546;
      v8 = v6;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Unable to prefetch asset %@: %lu", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)schedulePrefetchForType:(int64_t)type interval:(double)interval queue:(id)queue
{
  v29 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (type > 1)
  {
    v10 = @"PrefetchAppleCashStickersAssets";
    if (type != 3)
    {
      v10 = 0;
    }

    if (type == 2)
    {
      v9 = @"PrefetchHowToUseWalletAssets";
    }

    else
    {
      v9 = v10;
    }

LABEL_11:
    if ([(__CFString *)v9 length])
    {
      v11 = PDScheduledActivityGetCriteria(@"PKMobileAssetManager", v9);
      v12 = v11;
      if (v11)
      {
        [v11 repeatInterval];
        v14 = v13;
        v15 = PKLogFacilityTypeGetObject(0xBuLL);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14 == interval)
        {
          if (v16)
          {
            *buf = 134217984;
            intervalCopy2 = interval;
            _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Skipping scheduling prefetch. Activity already exists with interval %f.", buf, 0xCu);
          }

LABEL_31:

          goto LABEL_32;
        }

        if (v16)
        {
          *buf = 134217984;
          intervalCopy2 = interval;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Removing prefetch activity with interval %f.", buf, 0xCu);
        }

        PDScheduledActivityRemove(@"PKMobileAssetManager", v9);
      }

      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
      v20 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v15];
      [v20 setRequireNetworkConnectivity:1];
      [v20 setRequireScreenSleep:1];
      [v20 setRequireMainsPower:1];
      [v20 setRepeating:1];
      intervalCopy3 = 86400.0;
      if (interval > 0.0)
      {
        intervalCopy3 = interval;
      }

      [v20 setRepeatInterval:intervalCopy3];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prefetch mobile asset assets for %@", v9];
      [v20 setReason:v22];

      v23 = PKLogFacilityTypeGetObject(0xBuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v20 debugDescription];
        *buf = 138412290;
        intervalCopy2 = *&v24;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Scheduling prefetch mobile assets: %@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__PKMobileAssetManager_schedulePrefetchForType_interval_queue___block_invoke;
      block[3] = &unk_1E79C4DD8;
      block[4] = self;
      v26 = queueCopy;
      if (schedulePrefetchForType_interval_queue__onceToken != -1)
      {
        dispatch_once(&schedulePrefetchForType_interval_queue__onceToken, block);
      }

      _PDScheduledActivityRegister(@"PKMobileAssetManager", v9, v20, 0);

      goto LABEL_31;
    }

    v12 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      intervalCopy2 = *&type;
      v17 = "Unknown prefetchable asset type %ld. Unable to schedule prefetch";
      v18 = v12;
      v19 = 12;
LABEL_20:
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (type)
  {
    if (type == 1)
    {
      v9 = @"PrefetchDynamicAssets";
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_11;
  }

  v12 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v17 = "Scheduling a mobile asset prefetch for all prefetchable assets is not allowed.";
    v18 = v12;
    v19 = 2;
    goto LABEL_20;
  }

LABEL_32:
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v8 = identifierCopy;
  v9 = v8;
  if (v8 == @"PrefetchDynamicAssets")
  {
    goto LABEL_4;
  }

  if (v8)
  {
    v10 = [(__CFString *)v8 isEqualToString:@"PrefetchDynamicAssets"];

    if (v10)
    {
LABEL_4:
      v11 = &__block_literal_global_443;
      selfCopy2 = self;
      v13 = 1;
LABEL_5:
      [(PKMobileAssetManager *)selfCopy2 prefetchAssetsForType:v13 completion:v11];
      goto LABEL_15;
    }

    v14 = v9;
    if (v14 == @"PrefetchHowToUseWalletAssets" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"PrefetchHowToUseWalletAssets"], v15, v16))
    {
      v11 = &__block_literal_global_446_0;
      selfCopy2 = self;
      v13 = 2;
      goto LABEL_5;
    }

    v17 = v15;
    if (v17 == @"PrefetchAppleCashStickersAssets" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"PrefetchAppleCashStickersAssets"], v18, v19))
    {
      [(PKMobileAssetManager *)self updateCashStickersIfNecessary];
      goto LABEL_15;
    }
  }

  v20 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v9;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Unknown scheduled activity: %@", &v21, 0xCu);
  }

LABEL_15:
}

void __80__PKMobileAssetManager_performScheduledActivityWithIdentifier_activityCriteria___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "Finished prefetch of dynamic assets", v1, 2u);
  }
}

void __80__PKMobileAssetManager_performScheduledActivityWithIdentifier_activityCriteria___block_invoke_444()
{
  v0 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "Finished prefetch of how to use wallet assets", v1, 2u);
  }
}

- (id)_queryForMarketNotificationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:2 maximumVersion:2];
  v6 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v6 returnTypes:2];
  [v6 addKeyValuePair:@"Market" with:identifierCopy];

  [v6 addKeyValueArray:*MEMORY[0x1E69B1840] with:v5];

  return v6;
}

- (id)_queryForCityCodeStationProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:2 maximumVersion:2];
  v6 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v6 returnTypes:2];
  [v6 addKeyValuePair:@"CityStationProvider" with:providerCopy];

  [v6 addKeyValueArray:*MEMORY[0x1E69B1840] with:v5];

  return v6;
}

- (id)_queryForStationCodeData:(id)data
{
  dataCopy = data;
  v5 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:1 maximumVersion:1];
  v6 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v6 returnTypes:2];
  [v6 addKeyValuePair:@"StationCodeDataKey" with:dataCopy];

  [v6 addKeyValueArray:*MEMORY[0x1E69B1840] with:v5];

  return v6;
}

- (id)_queryForDynamicAssetsWithParameters:(id)parameters
{
  v18 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v4 returnTypes:2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = parametersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v13}];
        [v4 addKeyValuePair:v10 with:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 addKeyValuePair:@"Feature" with:@"DynamicAssets"];

  return v4;
}

- (id)_queryForStringsBundleWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69B18E8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v5 returnTypes:2];
  [v5 addKeyValuePair:@"Identifier" with:identifierCopy];

  [v5 addKeyValuePair:@"Feature" with:@"Strings"];

  return v5;
}

- (id)_queryForHowToUseWalletAssetType:(id)type identifier:(id)identifier lotIdentifier:(id)lotIdentifier
{
  identifierCopy = identifier;
  lotIdentifierCopy = lotIdentifier;
  typeCopy = type;
  v11 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:1 maximumVersion:1];
  v12 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v12 returnTypes:2];
  [v12 addKeyValueArray:*MEMORY[0x1E69B1840] with:v11];
  [v12 addKeyValuePair:@"Feature" with:@"HowToUseWallet"];
  [v12 addKeyValuePair:@"Type" with:typeCopy];

  if ([identifierCopy length])
  {
    [v12 addKeyValuePair:@"Identifier" with:identifierCopy];
  }

  if ([lotIdentifierCopy length])
  {
    [v12 addKeyValuePair:@"LotIdentifier" with:lotIdentifierCopy];
  }

  return v12;
}

- (id)_queryForCashStickers
{
  v2 = [(PKMobileAssetManager *)self _compatibleVersionsWithMinimumVersion:1 maximumVersion:1];
  v3 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  [v3 returnTypes:2];
  [v3 addKeyValueArray:*MEMORY[0x1E69B1840] with:v2];
  [v3 addKeyValuePair:@"Feature" with:@"AppleCashStickers"];

  return v3;
}

uint64_t __62__PKMobileAssetManager_sortDescriptorsForLatestContentVersion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E69B1848];
  v5 = a3;
  v6 = [a2 objectForKey:v4];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:v4];

  v9 = [v8 integerValue];
  if (v7 > v9)
  {
    return -1;
  }

  else
  {
    return v7 < v9;
  }
}

- (id)_compatibleVersionsWithMinimumVersion:(unint64_t)version maximumVersion:(unint64_t)maximumVersion
{
  for (i = objc_alloc_init(MEMORY[0x1E695DF70]); version <= maximumVersion; ++version)
  {
    version = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", version];
    [i addObject:version];
  }

  return i;
}

- (id)_cachedAssetWithQuery:(id)query
{
  v18 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  queryMetaDataSync = [queryCopy queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v6 = queryMetaDataSync;
    v7 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Query failed with result %lu", &v16, 0xCu);
    }
  }

  sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
  results = [queryCopy results];

  v10 = [results sortedArrayUsingDescriptors:sortDescriptorsForLatestContentVersion];
  firstObject = [v10 firstObject];

  getLocalFileUrl = [firstObject getLocalFileUrl];
  if (getLocalFileUrl)
  {
    v13 = [results pk_arrayByRemovingObject:firstObject];
    [(PKMobileAssetManager *)self _purgeAssets:v13];

    v14 = [MEMORY[0x1E696AAE8] bundleWithURL:getLocalFileUrl];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_cachedAssetsWithQuery:(id)query
{
  v50 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  queryMetaDataSync = [queryCopy queryMetaDataSync];
  if (queryMetaDataSync && (v5 = queryMetaDataSync, queryMetaDataSync != 14))
  {
    v8 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = v5;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Query failed with result %lu", buf, 0xCu);
    }

    v35 = 0;
  }

  else
  {
    v33 = queryCopy;
    results = [queryCopy results];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = results;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    obj = v8;
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          attributes = [v13 attributes];
          v15 = [attributes objectForKey:@"Identifier"];

          if ([v15 length])
          {
            v16 = [v7 objectForKey:v15];
            v17 = v16;
            if (v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v19 = v18;

            [v19 addObject:v13];
            [v7 setObject:v19 forKey:v15];
          }
        }

        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    sortDescriptorsForLatestContentVersion = [(PKMobileAssetManager *)self sortDescriptorsForLatestContentVersion];
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    allKeys = [v7 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v38 + 1) + 8 * j);
          v26 = [v7 objectForKey:v25];
          v27 = [v26 sortedArrayUsingDescriptors:sortDescriptorsForLatestContentVersion];
          firstObject = [v27 firstObject];

          v29 = [v8 pk_arrayByRemovingObject:firstObject];
          [(PKMobileAssetManager *)self _purgeAssets:v29];

          getLocalFileUrl = [firstObject getLocalFileUrl];
          if (getLocalFileUrl)
          {
            v31 = [MEMORY[0x1E696AAE8] bundleWithURL:getLocalFileUrl];
            [v35 addObject:v31];
          }

          else
          {
            v31 = PKLogFacilityTypeGetObject(0xBuLL);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v25;
              _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Missing mobile asset bundle for identifier '%@'", buf, 0xCu);
            }
          }

          v8 = obj;
        }

        v22 = [allKeys countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v22);
    }

    queryCopy = v33;
  }

  return v35;
}

- (void)_retrieveAssetWithQuery:(id)query maxCompatibleVersion:(unint64_t)version isDiscretionary:(BOOL)discretionary sortDescriptors:(id)descriptors timeout:(unint64_t)timeout catalogExpirationDays:(unint64_t)days completion:(id)completion
{
  queryCopy = query;
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v17 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__84;
  v59[4] = __Block_byref_object_dispose__84;
  v60 = 0;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke;
  v58[3] = &unk_1E79E41C8;
  v58[4] = self;
  v58[5] = days;
  [(PKAsyncUnaryOperationComposer *)v17 addOperation:v58];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__84;
  v56[4] = __Block_byref_object_dispose__84;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__84;
  v54[4] = __Block_byref_object_dispose__84;
  v55 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_454;
  v48[3] = &unk_1E79E4218;
  v18 = queryCopy;
  v49 = v18;
  selfCopy = self;
  v51 = v59;
  v52 = v56;
  v53 = v54;
  [(PKAsyncUnaryOperationComposer *)v17 addOperation:v48];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_456;
  v47[3] = &unk_1E79E4240;
  v47[4] = self;
  v47[5] = v56;
  v47[6] = v54;
  [(PKAsyncUnaryOperationComposer *)v17 addOperation:v47];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__84;
  v45[4] = __Block_byref_object_dispose__84;
  v46 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2_457;
  v43[3] = &unk_1E79E4290;
  v43[4] = self;
  v43[5] = v54;
  discretionaryCopy = discretionary;
  v43[6] = v59;
  v43[7] = v45;
  [(PKAsyncUnaryOperationComposer *)v17 addOperation:v43];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [(PKAsyncUnaryOperationComposer *)v17 evaluatorWithInput:null];

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__84;
  v41 = __Block_byref_object_dispose__84;
  v42 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  v21 = v38[5];
  v22 = dispatch_time(0, 1000000000 * timeout);
  dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v23 = v38[5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_458;
  handler[3] = &unk_1E79E42B8;
  v36 = &v37;
  v24 = v20;
  v34 = v24;
  v25 = completionCopy;
  v35 = v25;
  dispatch_source_set_event_handler(v23, handler);
  dispatch_resume(v38[5]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_459;
  v28[3] = &unk_1E79E42E0;
  v30 = &v37;
  v26 = v25;
  v29 = v26;
  v31 = v45;
  v32 = v59;
  v27 = [v24 evaluateWithCompletion:v28];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(v59, 8);
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 _downloadAssetCatalogIfExpired:v8 completion:v12];
}

uint64_t __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Continuing with expired catalog", v5, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_454(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2_455;
  v14[3] = &unk_1E79E41F0;
  v9 = *(a1 + 48);
  v18 = v7;
  v19 = v9;
  v15 = v6;
  v10 = v8;
  v11 = *(a1 + 40);
  v16 = v10;
  v17 = v11;
  v20 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  [v10 queryMetaData:v14];
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2_455(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = a2;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Query failed with result %lu", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:0 userInfo:0];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

LABEL_5:
    (*(*(a1 + 56) + 16))();
    return;
  }

  v8 = [*(a1 + 40) results];
  v9 = [v8 count];

  if (!v9)
  {
    v17 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) queryParams];
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Asset not present in catalog: %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v19 = [*(a1 + 48) sortDescriptorsForLatestContentVersion];
  v10 = [*(a1 + 40) results];
  v11 = [v10 sortedArrayUsingDescriptors:v19];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 72) + 8) + 40) firstObject];
  v15 = *(*(a1 + 80) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  (*(*(a1 + 56) + 16))();
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_456(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1[4];
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(*(a1[6] + 8) + 40);
  v8 = a4;
  v10 = a3;
  v9 = [v6 pk_arrayByRemovingObject:v7];
  [v5 _purgeAssets:v9];

  v8[2](v8, v10, 0);
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_2_457(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v10 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v11 = *(*(*(a1 + 40) + 8) + 40);
  v14[1] = 3221225472;
  v14[2] = __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_3;
  v14[3] = &unk_1E79E4268;
  v15 = v6;
  v16 = v7;
  v17 = v10;
  v18 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  [v8 _downloadAsset:v11 isDiscretionary:v9 timeout:30 completion:v14];
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_3(void *a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x1D && ((1 << a2) & 0x2000C001) != 0)
  {
    v4 = [*(*(a1[7] + 8) + 40) getLocalFileUrl];
    v13 = v4;
    if (v4)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v4];
      v6 = 8;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
      v6 = 6;
    }

    v7 = *(a1[v6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    (*(a1[5] + 16))();
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a2;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unable to download asset: %lu", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:2 userInfo:0];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    (*(a1[5] + 16))();
  }
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_458(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:4 userInfo:0];
    [*(a1 + 32) cancel];
    (*(*(a1 + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Failed to download mobile asset", v6, 2u);
  }
}

void __142__PKMobileAssetManager__retrieveAssetWithQuery_maxCompatibleVersion_isDiscretionary_sortDescriptors_timeout_catalogExpirationDays_completion___block_invoke_459(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = *(*(a1[5] + 8) + 40);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = a1[4];
    if (v8)
    {
      (*(v8 + 16))(v8, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
    }
  }
}

- (void)_purgeAssets:(id)assets completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  completionCopy = completion;
  v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __48__PKMobileAssetManager__purgeAssets_completion___block_invoke;
        v19[3] = &unk_1E79D5CF0;
        v19[4] = v13;
        [(PKAsyncUnaryOperationComposer *)v7 addOperation:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  null = [MEMORY[0x1E695DFB0] null];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__PKMobileAssetManager__purgeAssets_completion___block_invoke_461;
  v17[3] = &unk_1E79E4308;
  v18 = completionCopy;
  v15 = completionCopy;
  v16 = [(PKAsyncUnaryOperationComposer *)v7 evaluateWithInput:null completion:v17];
}

void __48__PKMobileAssetManager__purgeAssets_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) state];
  if (v8 > 6 || ((1 << v8) & 0x4C) == 0)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__PKMobileAssetManager__purgeAssets_completion___block_invoke_2;
    v11[3] = &unk_1E79E41A0;
    v11[4] = v10;
    v13 = v7;
    v12 = v6;
    [v10 purge:v11];
  }
}

uint64_t __48__PKMobileAssetManager__purgeAssets_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Purged asset (%@) with result: %lu", &v7, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __48__PKMobileAssetManager__purgeAssets_completion___block_invoke_461(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_downloadAssetCatalogIfExpired:(unint64_t)expired completion:(id)completion
{
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:@"com.apple.MobileAsset.WalletMobileAssets"];
  if ([v7 isCatalogFetchedWithinThePastFewDays:expired] && !PKMobileAssetEagerCatalogFetching())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69B18D8];
    v9 = [(PKMobileAssetManager *)self _downloadOptionsWithTimeout:20 isDiscretionary:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PKMobileAssetManager__downloadAssetCatalogIfExpired_completion___block_invoke;
    v10[3] = &unk_1E79DBDA0;
    v11 = completionCopy;
    [v8 startCatalogDownload:@"com.apple.MobileAsset.WalletMobileAssets" options:v9 then:v10];
  }
}

uint64_t __66__PKMobileAssetManager__downloadAssetCatalogIfExpired_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xBuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v8 = 134217984;
      v9 = a2;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to fetch asset catalog: %li", &v8, 0xCu);
    }

    result = *(a1 + 32);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Fetched asset catalog successfully", &v8, 2u);
    }

    result = *(a1 + 32);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  return result;
}

- (void)_downloadAsset:(id)asset isDiscretionary:(BOOL)discretionary timeout:(int64_t)timeout completion:(id)completion
{
  discretionaryCopy = discretionary;
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  state = [assetCopy state];
  if ([assetCopy wasLocal])
  {
    v13 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = state;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Asset is already on device with an asset state (%ld)", &buf, 0xCu);
    }

    if (completionCopy)
    {
      v14 = 14;
      if (state == 6)
      {
        v14 = 29;
      }

      if (state == 5)
      {
        v15 = 15;
      }

      else
      {
        v15 = v14;
      }

      completionCopy[2](completionCopy, v15);
    }
  }

  else
  {
    if (state == 4)
    {
      v16 = PKLogFacilityTypeGetObject(0xBuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Asset is already downloading", &buf, 2u);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__84;
    v35 = __Block_byref_object_dispose__84;
    v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v17 = *(*(&buf + 1) + 40);
    v18 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v19 = *(*(&buf + 1) + 40);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke;
    handler[3] = &unk_1E79C8870;
    p_buf = &buf;
    v20 = completionCopy;
    v28 = v20;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(*(*(&buf + 1) + 40));
    v21 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"NO";
      if (discretionaryCopy)
      {
        v22 = @"YES";
      }

      *v30 = 138412290;
      v31 = v22;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Beginning download of asset, isDiscretionary: %@", v30, 0xCu);
    }

    v23 = [(PKMobileAssetManager *)self _downloadOptionsWithTimeout:timeout isDiscretionary:discretionaryCopy];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke_466;
    v24[3] = &unk_1E79E4358;
    v24[4] = self;
    v26 = &buf;
    v25 = v20;
    [assetCopy startDownload:v23 then:v24];

    _Block_object_dispose(&buf, 8);
  }
}

void __74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    (*(*(a1 + 32) + 16))();
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  v4 = PKLogFacilityTypeGetObject(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to download mobile asset", v5, 2u);
  }
}

void __74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke_466(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke_2;
  block[3] = &unk_1E79E4330;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v8 = a2;
  dispatch_async(v3, block);
}

NSObject *__74__PKMobileAssetManager__downloadAsset_isDiscretionary_timeout_completion___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    dispatch_source_cancel(result);
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

- (id)_downloadOptionsWithTimeout:(int64_t)timeout isDiscretionary:(BOOL)discretionary
{
  discretionaryCopy = discretionary;
  v6 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v6 setAllowsCellularAccess:1];
  [v6 setDiscretionary:discretionaryCopy];
  [v6 setCanUseLocalCacheServer:1];
  if (timeout >= 1)
  {
    [v6 setTimeoutIntervalForResource:timeout];
  }

  return v6;
}

@end