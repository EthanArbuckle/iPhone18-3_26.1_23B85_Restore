@interface CPSAppInfoFetcher
+ (id)_cachedIconFileURLForItemID:(id)d;
+ (id)_sharedAMSBag;
- (CPSAppInfoFetcher)init;
- (void)_downloadIconIfNeeded:(id)needed completionHandler:(id)handler;
- (void)_lookUpClipDemoAMSMetadataWithBundleID:(id)d completion:(id)completion;
- (void)evictCachedMetadataForClipBundleID:(id)d;
- (void)lookUpClipMetadataByBundleID:(id)d sourceBundleID:(id)iD URL:(id)l downloadIconIfNeeded:(BOOL)needed skipCaching:(BOOL)caching completionHandler:(id)handler;
@end

@implementation CPSAppInfoFetcher

- (CPSAppInfoFetcher)init
{
  v7.receiver = self;
  v7.super_class = CPSAppInfoFetcher;
  v2 = [(CPSAppInfoFetcher *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    appMetadataByBundleID = v2->_appMetadataByBundleID;
    v2->_appMetadataByBundleID = v3;

    [(NSCache *)v2->_appMetadataByBundleID setCountLimit:10];
    v5 = v2;
  }

  return v2;
}

- (void)lookUpClipMetadataByBundleID:(id)d sourceBundleID:(id)iD URL:(id)l downloadIconIfNeeded:(BOOL)needed skipCaching:(BOOL)caching completionHandler:(id)handler
{
  cachingCopy = caching;
  neededCopy = needed;
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  handlerCopy = handler;
  if (dCopy)
  {
    if ([dCopy cps_looksLikeUUIDOrWebClipIdentifier])
    {
      v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CPSAppInfoFetcher lookUpClipMetadataByBundleID:iDCopy sourceBundleID:dCopy URL:v18 downloadIconIfNeeded:? skipCaching:? completionHandler:?];
      }
    }

    v19 = [(NSCache *)self->_appMetadataByBundleID objectForKey:dCopy];
    if ([dCopy cps_isAMSPlaceholderBundleIdentifier])
    {
      v20 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v39 = dCopy;
        v40 = 2113;
        v41 = lCopy;
        _os_log_impl(&dword_2436ED000, v20, OS_LOG_TYPE_INFO, "Look up metadata for AMS placeholder bundleID: %{private}@, URL: %{private}@", buf, 0x16u);
      }

      v19 = 0;
    }

    else if (v19)
    {
      amsDictionary = [v19 amsDictionary];
      if (amsDictionary)
      {
        isExpired = [v19 isExpired];

        if (((isExpired | cachingCopy) & 1) == 0)
        {
          amsDictionary2 = [v19 amsDictionary];
          v32 = [CPSClipInvocationPolicy invocationPolicyWithAMSDict:amsDictionary2];
          [v19 setInvocationPolicy:v32];

          if (neededCopy)
          {
            [(CPSAppInfoFetcher *)self _downloadIconIfNeeded:v19 completionHandler:handlerCopy];
          }

          else
          {
            handlerCopy[2](handlerCopy, v19, 0);
          }

LABEL_20:

          goto LABEL_21;
        }
      }
    }

    if (+[CPSClipURL usesDemoMetadata])
    {
      [(CPSAppInfoFetcher *)self _lookUpClipDemoAMSMetadataWithBundleID:dCopy completion:handlerCopy];
    }

    else
    {
      v24 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2436ED000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "lookUpClipMetadataAction", "start looking up clip metadata", buf, 2u);
      }

      v25 = objc_alloc(MEMORY[0x277CEE458]);
      v26 = +[CPSAppInfoFetcher _sharedAMSBag];
      v27 = [v25 initWithClientID:@"com.apple.ClipServices.clipserviced" bundleID:dCopy URL:lCopy bag:v26];

      if ([iDCopy length])
      {
        v28 = [objc_alloc(MEMORY[0x277CEE620]) initWithBundleIdentifier:iDCopy];
        [v27 setClientInfo:v28];
      }

      perform = [v27 perform];
      objc_initWeak(buf, self);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke;
      v33[3] = &unk_278DCF288;
      v35 = handlerCopy;
      objc_copyWeak(&v36, buf);
      v34 = dCopy;
      v37 = neededCopy;
      [perform addFinishBlock:v33];

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    goto LABEL_20;
  }

  v21 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
  (handlerCopy)[2](handlerCopy, 0, v21);

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
}

void __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "lookUpClipMetadataAction", "end looking up clip metadata", &v31, 2u);
  }

  v8 = objc_alloc_init(CPSClipMetadata);
  if (v6)
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CEE188]])
    {
      v10 = [v6 code];

      if (v10 == 405)
      {
        v11 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:8];
        [(CPSClipMetadata *)v8 setInvocationPolicy:v11];

        v12 = *(*(a1 + 40) + 16);
LABEL_20:
        v12();
        goto LABEL_24;
      }
    }

    else
    {
    }

    v12 = *(*(a1 + 40) + 16);
    goto LABEL_20;
  }

  v13 = [v5 responseDataItems];
  v14 = [v13 firstObject];

  if (v14)
  {
    [(CPSClipMetadata *)v8 updateWithStoreClipMetadata:v14];
    v15 = [v5 responseHeaders];
    [v15 maxAge];
    v17 = v16;

    if (v17 < 10.0)
    {
      v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke_cold_1();
      }
    }

    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = [v19 dateByAddingTimeInterval:v17];
    [(CPSClipMetadata *)v8 setExpirationDate:v20];

    v21 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [(CPSClipMetadata *)v8 expirationDate];
      v31 = 134218242;
      v32 = v8;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_2436ED000, v22, OS_LOG_TYPE_INFO, "Set expiration date for metadata: (%p) to: %{public}@", &v31, 0x16u);
    }

    v24 = [CPSClipInvocationPolicy invocationPolicyWithAMSDict:v14];
    [(CPSClipMetadata *)v8 setInvocationPolicy:v24];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained && ([*(a1 + 32) cps_isAMSPlaceholderBundleIdentifier] & 1) == 0)
    {
      v26 = WeakRetained[1];
      v27 = [(CPSClipMetadata *)v8 clipBundleID];
      [v26 setObject:v8 forKey:v27];
    }

    v28 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _downloadIconIfNeeded:v8 completionHandler:v28];
    }

    else
    {
      (*(v28 + 16))(*(a1 + 40), v8, 0);
    }
  }

  else
  {
    v29 = *(a1 + 40);
    WeakRetained = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
    (*(v29 + 16))(v29, 0, WeakRetained);
  }

LABEL_24:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)evictCachedMetadataForClipBundleID:(id)d
{
  if (d)
  {
    [(NSCache *)self->_appMetadataByBundleID removeObjectForKey:?];
  }
}

+ (id)_sharedAMSBag
{
  if (_sharedAMSBag_onceToken != -1)
  {
    +[CPSAppInfoFetcher _sharedAMSBag];
  }

  v3 = _sharedAMSBag_bag;

  return v3;
}

uint64_t __34__CPSAppInfoFetcher__sharedAMSBag__block_invoke()
{
  v0 = MEMORY[0x277CEE408];
  v1 = [MEMORY[0x277CEE458] bagKeySet];
  [v0 registerBagKeySet:v1 forProfile:@"clipserviced" profileVersion:@"1"];

  _sharedAMSBag_bag = [MEMORY[0x277CEE3F8] bagForProfile:@"clipserviced" profileVersion:@"1"];

  return MEMORY[0x2821F96F8]();
}

+ (id)_cachedIconFileURLForItemID:(id)d
{
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v15];
  v6 = v15;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[CPSAppInfoFetcher _cachedIconFileURLForItemID:];
    }

    v7 = 0;
  }

  else
  {
    v8 = [v5 URLByAppendingPathComponent:@"com.apple.ClipServices/Icons" isDirectory:1];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    [defaultManager2 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
    v6 = v14;

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[CPSAppInfoFetcher _cachedIconFileURLForItemID:];
      }

      v7 = 0;
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      stringValue = [dCopy stringValue];
      v12 = [v10 stringWithFormat:@"%@.png", stringValue];

      v7 = [v8 URLByAppendingPathComponent:v12 isDirectory:0];
    }
  }

  return v7;
}

- (void)_downloadIconIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  fullAppIconURL = [neededCopy fullAppIconURL];
  if (fullAppIconURL)
  {
    fullAppCachedIconFilePath = [neededCopy fullAppCachedIconFilePath];
    if (![fullAppCachedIconFilePath length] || (objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", fullAppCachedIconFilePath), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      itemID = [neededCopy itemID];
      v9 = [objc_opt_class() _cachedIconFileURLForItemID:itemID];
    }

    path = [v9 path];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:path];

    if (v13)
    {
      [neededCopy setFullAppCachedIconFilePath:path];
      handlerCopy[2](handlerCopy, neededCopy, 0);
    }

    else
    {
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke;
      v17[3] = &unk_278DCF2B0;
      v20 = handlerCopy;
      v18 = neededCopy;
      v19 = path;
      v16 = [mEMORY[0x277CCAD30] dataTaskWithURL:fullAppIconURL completionHandler:v17];

      [v16 resume];
    }
  }

  else
  {
    v14 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CPSAppInfoFetcher _downloadIconIfNeeded:completionHandler:];
    }

    path = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (handlerCopy)[2](handlerCopy, neededCopy, path);
  }
}

void __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v7)
    {
      if ([v7 writeToFile:*(a1 + 40) atomically:1])
      {
        [*(a1 + 32) setFullAppCachedIconFilePath:*(a1 + 40)];
        v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 40);
          v20 = 138739971;
          v21 = v13;
          _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_INFO, "Successful in writing icon data to disk at path: %{sensitive}@", &v20, 0xCu);
        }

        v14 = *(a1 + 32);
        v11 = *(*(a1 + 48) + 16);
        goto LABEL_3;
      }

      v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke_cold_1((a1 + 40));
      }
    }

    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (*(v16 + 16))(v16, v17, v18);

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 16);
LABEL_3:
  v11();
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_lookUpClipDemoAMSMetadataWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (+[CPSClipURL usesDemoMetadata])
  {
    v7 = MEMORY[0x277CBEBC0];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"https://test-safari.apple.com/amp/%@/", dCopy];
    v9 = [v7 URLWithString:dCopy];

    v10 = [v9 URLByAppendingPathComponent:@"/Info.json"];
    v11 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v10 cachePolicy:1 timeoutInterval:5.0];
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke;
    v16[3] = &unk_278DCF2D8;
    v17 = v10;
    v18 = completionCopy;
    v13 = v10;
    v14 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v11 completionHandler:v16];

    [v14 resume];
  }

  else
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CPSAppInfoFetcher _lookUpClipDemoAMSMetadataWithBundleID:completion:];
    }

    v9 = [MEMORY[0x277CCA9B8] cps_errorWithCode:10];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

void __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || ![v7 length])
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = 0;
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v16];
    v12 = v16;
    if (v12)
    {
      v13 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = objc_alloc_init(CPSClipMetadata);
      [(CPSClipMetadata *)v14 updateWithStoreClipMetadata:v11];
      v15 = +[CPSClipInvocationPolicy eligiblePolicy];
      [(CPSClipMetadata *)v14 setInvocationPolicy:v15];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)lookUpClipMetadataByBundleID:(NSObject *)a3 sourceBundleID:URL:downloadIconIfNeeded:skipCaching:completionHandler:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543619;
  *&v4[4] = a1;
  *&v4[12] = 2117;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, a2, a3, "%{public}@ is attempting to look up app clip metadata with web clip identifier %{sensitive}@. This is not supported.", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __120__CPSAppInfoFetcher_lookUpClipMetadataByBundleID_sourceBundleID_URL_downloadIconIfNeeded_skipCaching_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cachedIconFileURLForItemID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CPSAppInfoFetcher__downloadIconIfNeeded_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __71__CPSAppInfoFetcher__lookUpClipDemoAMSMetadataWithBundleID_completion___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v2, v3, "An error occurred when looking up demo metadata from %@, Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end