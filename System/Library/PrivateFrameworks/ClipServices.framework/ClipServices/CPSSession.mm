@interface CPSSession
- (BOOL)checkAndConsumeShowsAppAttributionBannerLaunchOption;
- (CPSSession)initWithURL:(id)l usingQueue:(id)queue configuration:(id)configuration;
- (NSString)logID;
- (NSURL)applicationIconFileURL;
- (id)_availabilityOptions;
- (id)_retrieveInstalledApplicationIconWithAppIconURL:(id)l clipBundleID:(id)d;
- (void)_didFetchBusinessIconWithURL:(id)l;
- (void)_didFinishLoadingWithError:(id)error;
- (void)_didUpdateMetadata:(id)metadata;
- (void)_evictFromCache;
- (void)_fetchAppMetadataWithBundleID:(id)d url:(id)url accountInvocationPolicy:(id)policy;
- (void)_fetchBusinessIconIfNeeded;
- (void)_fetchBusinessMetadata;
- (void)_fetchParentApplicationMetadataWithBundleID:(id)d;
- (void)_notifyObserversOfMetadataFetchResultUpdates:(id)updates;
- (void)_retrieveApplicationIconWithAppIconURL:(id)l clipBundleID:(id)d;
- (void)_retrieveApplicationIconWithCompletionHandler:(id)handler;
- (void)_retrieveImageWithURL:(id)l didFetchImage:(BOOL *)image fileURL:(id *)rL fetchCompletion:(id)completion proxyCompletion:(id)proxyCompletion;
- (void)_synthesizeFullAppMetadataFromMetadata:(id)metadata patternMatchedBundleID:(id)d URL:(id)l completionHandler:(id)handler;
- (void)_updateEntryPointForWebClip:(id)clip;
- (void)_updateLocationConfirmationForRecord:(id)record permissionGranted:(id)granted;
- (void)_updateWebClipIcon:(id)icon metadata:(id)metadata;
- (void)addRemoteObjectProxy:(id)proxy;
- (void)clearMetadataAndRefetch;
- (void)didCompleteTestSessionAtTime:(double)time;
- (void)fetchHeroImage;
- (void)fetchMetadataWithCompletion:(id)completion;
- (void)installationController:(id)controller didFinishWithError:(id)error;
- (void)installationController:(id)controller didUpdateProgress:(double)progress;
- (void)installationControllerDidInstallPlaceholder:(id)placeholder;
- (void)installationControllerWillStartInstall:(id)install;
- (void)removeRemoteObjectProxy:(id)proxy;
- (void)setPreloadedMetadata:(id)metadata;
- (void)updateClipDataForEntryPointWithWebClip:(id)clip launchOptions:(id)options;
@end

@implementation CPSSession

- (CPSSession)initWithURL:(id)l usingQueue:(id)queue configuration:(id)configuration
{
  lCopy = l;
  queueCopy = queue;
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = CPSSession;
  v12 = [(CPSSession *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = objc_alloc_init(CPSClipLaunchOptions);
    launchOptions = v13->_launchOptions;
    v13->_launchOptions = v14;

    objc_storeStrong(&v13->_url, l);
    objc_storeStrong(&v13->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    proxyObjects = v13->_proxyObjects;
    v13->_proxyObjects = array;

    v18 = objc_alloc_init(CPSImageLoader);
    imageLoader = v13->_imageLoader;
    v13->_imageLoader = v18;

    objc_storeStrong(&v13->_configuration, configuration);
    configuration = v13->_configuration;
    if (!configuration || ![(CPSSessionConfiguration *)configuration useLocalContent])
    {
      [(CPSSession *)v13 _fetchBusinessMetadata];
    }

    v21 = v13;
  }

  return v13;
}

- (void)addRemoteObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CPSSession_addRemoteObjectProxy___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

void *__35__CPSSession_addRemoteObjectProxy___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 176) isForSwitcherOverlay];
  result = *(a1 + 32);
  if (result[17])
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4 && !result[8])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] cps_errorWithCode:17];
    [v5 didFinishLoadingWithError:v6];

    *(*(a1 + 32) + 64) = 2;
    result = *(a1 + 32);
  }

  v7 = result[7];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = v7 == 1;
    v10 = [result _availabilityOptions];
    [v8 didDetermineAvailability:v9 options:v10];

    v11 = *(a1 + 32);
    if (((v11[8] == 2) & v2) == 1)
    {
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x277CCA9B8] cps_errorWithCode:16];
      [v12 didFinishLoadingWithError:v13];

      v11 = *(a1 + 32);
    }

    v28[0] = *(a1 + 40);
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v11 _notifyObserversOfMetadataFetchResultUpdates:v14];

    v15 = *(a1 + 32);
    if (*(v15 + 144))
    {
      [*(a1 + 40) didUpdateInstallProgress:?];
      v15 = *(a1 + 32);
    }

    v23 = 0;
    result = [*(v15 + 136) hasUpToDateVersionInstalledOnSystemIsPlaceholder:&v23];
    if (result && v23 == 1)
    {
      v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = *(*(a1 + 32) + 136);
        v19 = v16;
        v20 = [v18 clipBundleID];
        *buf = 134218243;
        v25 = v17;
        v26 = 2113;
        v27 = v20;
        _os_log_impl(&dword_2436ED000, v19, OS_LOG_TYPE_DEFAULT, "CPSSession: placeholder already installed when objectProxy (%p) is added for %{private}@", buf, 0x16u);
      }

      result = [*(a1 + 40) didInstallApplicationPlaceholder];
    }

    v21 = *(a1 + 32);
    if (*(v21 + 88) == 1)
    {
      result = [*(a1 + 40) didRetrieveApplicationIcon:*(v21 + 32)];
      v21 = *(a1 + 32);
    }

    if (*(v21 + 40))
    {
      result = [*(a1 + 40) didRetrieveHeroImage:?];
      v21 = *(a1 + 32);
    }

    if (*(v21 + 48))
    {
      result = [*(a1 + 40) didRetrieveBusinessIcon:?];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeRemoteObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CPSSession_removeRemoteObjectProxy___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

- (NSString)logID
{
  sessionID = [(CPSSessionConfiguration *)self->_configuration sessionID];
  uUIDString = [sessionID UUIDString];

  return uUIDString;
}

- (void)_fetchBusinessMetadata
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 160) && *(v1 + 72) != 1)
  {
    *(v1 + 72) = 1;
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_signpost_enabled(v3))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 logID];
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2082;
      *&buf[14] = "[begin] fetching ABR metadata";
      _os_signpost_emit_with_name_impl(&dword_2436ED000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
    }

    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_signpost_enabled(v7))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 logID];
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2082;
      *&buf[14] = "[begin] Marking Placeholder request";
      _os_signpost_emit_with_name_impl(&dword_2436ED000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "OpenButtonBecomeActive", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    v11 = *(a1 + 32);
    v12 = *(v11 + 160);
    v13 = *(v11 + 128);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_11;
    v16[3] = &unk_278DCE5A8;
    v16[4] = v11;
    v16[5] = buf;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_3;
    v15[3] = &unk_278DCE670;
    v15[4] = v11;
    v15[5] = buf;
    [v12 fetchBusinessMetadataForURL:v13 availabilityHandler:v16 completion:v15];
    _Block_object_dispose(buf, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_11(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_2;
  v8[3] = &unk_278DCE2F0;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t __36__CPSSession__fetchBusinessMetadata__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 40) + 128);
      v4 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138740227;
      v13 = v3;
      v14 = 2113;
      v15 = v4;
      _os_log_impl(&dword_2436ED000, v2, OS_LOG_TYPE_INFO, "Found a pattern match for url %{sensitive}@ with matched bundleID %{private}@", buf, 0x16u);
    }
  }

  result = [*(a1 + 40) _didDetermineAvailability:*(a1 + 56)];
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v9 = v6[16];
    v8 = v6[17];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_12;
    v11[3] = &unk_278DCE580;
    v11[4] = v6;
    result = [v6 _synthesizeFullAppMetadataFromMetadata:v8 patternMatchedBundleID:v7 URL:v9 completionHandler:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_12(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_2_13;
    v9[3] = &unk_278DCDE58;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_2_13(uint64_t a1)
{
  [*(a1 + 32) _didUpdateMetadata:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fullAppBundleID];
  [v2 _retrieveApplicationIconWithAppIconURL:0 clipBundleID:v3];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_4;
  v12[3] = &unk_278DCE648;
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_4(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logID];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = "[end] fetching ABR metadata enableTelemetry=YES ";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v6 = (a1 + 40);
  v7 = [*(a1 + 40) domain];
  *&v34 = 0;
  *(&v34 + 1) = &v34;
  v35 = 0x2020000000;
  v8 = getCKErrorDomainSymbolLoc_ptr;
  v36 = getCKErrorDomainSymbolLoc_ptr;
  if (!getCKErrorDomainSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCKErrorDomainSymbolLoc_block_invoke;
    v31 = &unk_278DCDC00;
    v32 = &v34;
    __getCKErrorDomainSymbolLoc_block_invoke(buf);
    v8 = *(*(&v34 + 1) + 24);
  }

  _Block_object_dispose(&v34, 8);
  if (!v8)
  {
    __36__CPSSession__fetchBusinessMetadata__block_invoke_4_cold_2();
  }

  v9 = *v8;
  if ([v7 isEqualToString:v9])
  {
    if ([*v6 code] == 3)
    {

LABEL_16:
      v14 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __36__CPSSession__fetchBusinessMetadata__block_invoke_4_cold_1((a1 + 40), v14);
      }

      v15 = *(a1 + 32);
      v16 = [MEMORY[0x277CCA9B8] cps_errorWithCode:19];
      [v15 _didFinishLoadingWithError:v16];

      goto LABEL_26;
    }

    v13 = [*v6 code] == 4;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = *(a1 + 48);
  v10 = [*(*&buf[8] + 40) clipBundleID];
  if (!v10)
  {
    v10 = [*(*(a1 + 32) + 176) fallbackClipBundleID];
    if (!v10)
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
    }
  }

  if (*v6 || ![v10 length])
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] cps_errorWithCode:2];
    [v11 _didFinishLoadingWithError:v12];
  }

  else
  {
    v17 = [*(*&buf[8] + 40) clipLaunchURL];
    if ([v10 cps_isAMSPlaceholderBundleIdentifier])
    {
      v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(a1 + 32) + 128);
        LODWORD(v34) = 138477827;
        *(&v34 + 4) = v19;
        _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_INFO, "Find a AMS placeholder app clip experience; use ODJ replacement metadata for URL %{private}@", &v34, 0xCu);
      }

      v20 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = 0;
    }

    v21 = [*(*&buf[8] + 40) clipLaunchURL];
    v22 = *(a1 + 32);
    v23 = *(*&buf[8] + 40);
    v24 = *(*(*(a1 + 56) + 8) + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_17;
    v26[3] = &unk_278DCE620;
    v29 = buf;
    v26[4] = v22;
    v27 = v10;
    v12 = v17;
    v28 = v12;
    [v22 _synthesizeFullAppMetadataFromMetadata:v23 patternMatchedBundleID:v24 URL:v21 completionHandler:v26];
  }

  _Block_object_dispose(buf, 8);
LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_17(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  v7 = *(a1 + 56);
  v11 = *(a1 + 32);
  v8 = *(v11 + 8);
  block[1] = 3221225472;
  block[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_2_18;
  block[3] = &unk_278DCE5F8;
  v15 = a2;
  v9 = *(&v11 + 1);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v7;
  v13 = v11;
  v14 = v10;
  dispatch_async(v8, block);
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_2_18(uint64_t a1)
{
  [*(a1 + 32) _didUpdateMetadata:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 32) _fetchBusinessIconIfNeeded];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [*(*(*(a1 + 56) + 8) + 40) fullAppBundleID];
    [v2 _retrieveApplicationIconWithAppIconURL:0 clipBundleID:v3];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v4 = *(a1 + 56);
  v5 = *(*(v4 + 8) + 40);
  v9[1] = 3221225472;
  v9[2] = __36__CPSSession__fetchBusinessMetadata__block_invoke_3_20;
  v9[3] = &unk_278DCE5D0;
  v8 = *(a1 + 32);
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [CPSClipInvocationPolicy requestAccountPolicyForClipMetadata:v5 withCompletion:v9];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_3_20(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 56) + 8) + 40) setInvocationPolicy:v3];
  if ([v3 isEligible] & 1) != 0 || (objc_msgSend(v3, "isRecoverable"))
  {
    [*(a1 + 32) _fetchAppMetadataWithBundleID:*(a1 + 40) url:*(a1 + 48) accountInvocationPolicy:v3];
    [*(a1 + 32) _fetchParentApplicationMetadataWithBundleID:*(a1 + 40)];
  }

  else
  {
    *(*(a1 + 32) + 72) = 2;
    [*(a1 + 32) _didUpdateMetadata:*(*(*(a1 + 56) + 8) + 40)];
  }
}

- (void)_fetchAppMetadataWithBundleID:(id)d url:(id)url accountInvocationPolicy:(id)policy
{
  v26 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  queue = self->_queue;
  urlCopy = url;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v12))
  {
    v13 = v12;
    logID = [(CPSSession *)self logID];
    *buf = 138543618;
    v23 = logID;
    v24 = 2082;
    v25 = "[begin] Fetching App metadata";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  appInfoFetcher = self->_appInfoFetcher;
  sourceBundleID = [(CPSSessionConfiguration *)self->_configuration sourceBundleID];
  registeredForTest = [(CPSSession *)self registeredForTest];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke;
  v20[3] = &unk_278DCE698;
  v20[4] = self;
  v21 = policyCopy;
  v18 = policyCopy;
  [(CPSAppInfoFetching *)appInfoFetcher lookUpClipMetadataByBundleID:dCopy sourceBundleID:sourceBundleID URL:urlCopy downloadIconIfNeeded:0 skipCaching:registeredForTest completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2;
  v12[3] = &unk_278DCE1B0;
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logID];
    *v32 = 138543618;
    *&v32[4] = v5;
    v33 = 2082;
    v34 = "[end] Fetching App metadata enableTelemetry=YES ";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AppMetaData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", v32, 0x16u);
  }

  if (*(a1 + 40) || (v10 = (a1 + 48), !*(a1 + 48)))
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2_cold_2(a1, v6, (a1 + 40));
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] cps_errorWithCode:10];
    [v7 _didFinishLoadingWithError:v8];

    [*(a1 + 32) _retrieveApplicationIconWithAppIconURL:0 clipBundleID:0];
  }

  else
  {
    v11 = (a1 + 32);
    v12 = *(*(a1 + 32) + 136);
    if (v12)
    {
      v13 = [v12 clipBundleID];
      v14 = [*v10 clipBundleID];
      v15 = [v13 isEqualToString:v14];

      if ((v15 & 1) == 0)
      {
        v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2_cold_1(v11, v16, v10);
        }
      }
    }

    else
    {
      v17 = objc_alloc_init(CPSClipMetadata);
      v18 = *(a1 + 32);
      v19 = *(v18 + 136);
      *(v18 + 136) = v17;

      [*(*(a1 + 32) + 136) setInvocationPolicy:*(a1 + 56)];
      v20 = [*(a1 + 48) clipBundleID];
      [*(*(a1 + 32) + 136) setClipBundleID:v20];

      [*(*(a1 + 32) + 136) setClipRequestURL:*(*(a1 + 32) + 128)];
    }

    [*(*v11 + 17) _updateWithAMSMetadata:*v10];
    *(*v11 + 9) = 2;
    [*v11 _didUpdateMetadata:*(*v11 + 17)];
    v21 = [*(*v11 + 17) invocationPolicy];
    v22 = [v21 isEligible];

    if (v22)
    {
      v32[0] = 0;
      v23 = +[CPSAnalyticsLogger sharedLogger];
      v24 = [*(*v11 + 17) clipBundleID];
      v25 = [*(*v11 + 22) launchReason];
      [v23 didDiscoverClip:v24 event:v25 alreadyInstalled:{objc_msgSend(*(*v11 + 17), "hasUpToDateVersionInstalledOnSystemIsPlaceholder:", v32)}];
    }

    v26 = [*(*v11 + 17) invocationPolicy];
    if ([v26 isEligible])
    {

LABEL_19:
      v29 = *v11;
      v30 = [*(*v11 + 17) fullAppIconURL];
      v31 = [*(*v11 + 17) clipBundleID];
      [v29 _retrieveApplicationIconWithAppIconURL:v30 clipBundleID:v31];

      goto LABEL_7;
    }

    v27 = [*(*v11 + 17) invocationPolicy];
    v28 = [v27 isRecoverable];

    if (v28)
    {
      goto LABEL_19;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchBusinessIconIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  clipBusinessIconURL = [(CPSClipMetadata *)self->_metadata clipBusinessIconURL];
  clipMapItemMUID = [(CPSClipMetadata *)self->_metadata clipMapItemMUID];
  clipBusinessIconStyleAttributes = [(CPSClipMetadata *)self->_metadata clipBusinessIconStyleAttributes];
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v6))
  {
    v7 = v6;
    logID = [(CPSSession *)self logID];
    *buf = 138543618;
    v20 = logID;
    v21 = 2082;
    v22 = "[begin] Fetching business icon data";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BusinessIconData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke;
  v18[3] = &unk_278DCE6C0;
  v18[4] = self;
  v9 = MEMORY[0x245D3D5F0](v18);
  if (clipBusinessIconURL)
  {
    v10 = +[CPSPromise promise];
    businessIconFetchingPromise = self->_businessIconFetchingPromise;
    self->_businessIconFetchingPromise = v10;

    [(CPSImageLoader *)self->_imageLoader loadImageWithURL:clipBusinessIconURL completionHandler:v9];
  }

  else if (clipMapItemMUID)
  {
    v12 = +[CPSPromise promise];
    v13 = self->_businessIconFetchingPromise;
    self->_businessIconFetchingPromise = v12;

    -[CPSImageLoader loadImageForMapItemMUID:completionHandler:](self->_imageLoader, "loadImageForMapItemMUID:completionHandler:", [clipMapItemMUID unsignedLongLongValue], v9);
  }

  else if (clipBusinessIconStyleAttributes)
  {
    v14 = +[CPSPromise promise];
    v15 = self->_businessIconFetchingPromise;
    self->_businessIconFetchingPromise = v14;

    v16 = [objc_alloc(MEMORY[0x277D0ED90]) initWithDictionary:clipBusinessIconStyleAttributes];
    [(CPSImageLoader *)self->_imageLoader loadImageForGEOStyleAttributes:v16 completionHandler:v9];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 logID];
    *buf = 138543618;
    v21 = v10;
    v22 = 2082;
    v23 = "[end] Fetching business icon data";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BusinessIconData", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke_29;
  block[3] = &unk_278DCE110;
  v17 = v6;
  v18 = v11;
  v19 = v5;
  v13 = v5;
  v14 = v6;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke_29(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke_29_cold_1(v2, v3);
    }

    [*(*(a1 + 40) + 112) finishWithError:*(a1 + 32)];
  }

  else
  {
    [*(*(a1 + 40) + 112) finishWithResult:*(a1 + 48)];
  }

  return [*(a1 + 40) _didFetchBusinessIconWithURL:*(a1 + 48)];
}

- (void)_fetchParentApplicationMetadataWithBundleID:(id)d
{
  dCopy = d;
  v5 = +[CPSClipDataSQLiteStore defaultStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CPSSession__fetchParentApplicationMetadataWithBundleID___block_invoke;
  v6[3] = &unk_278DCE6E8;
  v6[4] = self;
  [v5 getAppClipRecordWithBundleID:dCopy completion:v6];
}

void __58__CPSSession__fetchParentApplicationMetadataWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fullApplicationName];
  if (v4)
  {

LABEL_4:
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__CPSSession__fetchParentApplicationMetadataWithBundleID___block_invoke_2;
    v8[3] = &unk_278DCDE58;
    v8[4] = v6;
    v9 = v3;
    dispatch_async(v7, v8);

    goto LABEL_5;
  }

  v5 = [v3 fullApplicationCaption];

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __58__CPSSession__fetchParentApplicationMetadataWithBundleID___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) fullAppName];
  v3 = [v2 length];

  if (!v3)
  {
    v4 = [*(a1 + 40) fullApplicationName];
    [*(*(a1 + 32) + 136) setFullAppName:v4];
  }

  v5 = [*(*(a1 + 32) + 136) fullAppCaption];

  if (v5)
  {
    if (v3)
    {
      return;
    }
  }

  else
  {
    v6 = [*(a1 + 40) fullApplicationCaption];
    [*(*(a1 + 32) + 136) setFullAppCaption:v6];
  }

  v7 = *(a1 + 32);
  v8 = v7[17];

  [v7 _didUpdateMetadata:v8];
}

- (NSURL)applicationIconFileURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CPSSession_applicationIconFileURL__block_invoke;
  v5[3] = &unk_278DCE2C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_synthesizeFullAppMetadataFromMetadata:(id)metadata patternMatchedBundleID:(id)d URL:(id)l completionHandler:(id)handler
{
  metadataCopy = metadata;
  dCopy = d;
  lCopy = l;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (lCopy)
  {
    v14 = MEMORY[0x277CC1E48];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__CPSSession__synthesizeFullAppMetadataFromMetadata_patternMatchedBundleID_URL_completionHandler___block_invoke;
    v15[3] = &unk_278DCE710;
    v16 = lCopy;
    v20 = handlerCopy;
    v17 = metadataCopy;
    selfCopy = self;
    v19 = dCopy;
    [v14 getAppLinkWithURL:v16 completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, metadataCopy);
  }
}

void __98__CPSSession__synthesizeFullAppMetadataFromMetadata_patternMatchedBundleID_URL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 targetApplicationRecord];
    v7 = [v6 bundleIdentifier];
    if ([v7 length])
    {
      if (!*(a1 + 56) || ([v7 cps_looksLikeParentAppOfAppClipBundleIdentifier:?] & 1) != 0)
      {
        v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(a1 + 48);
          v10 = v8;
          v11 = objc_opt_class();
          v12 = *(a1 + 48);
          *buf = 138543618;
          v51 = v11;
          v52 = 2048;
          v53 = v12;
          _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): Full app already installed, synthesizing metadata to allow early open", buf, 0x16u);
        }

        v13 = *(a1 + 40);
        if (!v13)
        {
          v13 = objc_alloc_init(CPSClipMetadata);
        }

        v14 = [(CPSClipMetadata *)v13 clipRequestURL];

        if (!v14)
        {
          [(CPSClipMetadata *)v13 setClipRequestURL:*(a1 + 32)];
        }

        v15 = [(CPSClipMetadata *)v13 fullAppBundleID];

        if (!v15)
        {
          [(CPSClipMetadata *)v13 setFullAppBundleID:v7];
        }

        v16 = [(CPSClipMetadata *)v13 fullAppName];

        if (!v16)
        {
          v17 = [v6 iTunesMetadata];
          v18 = [v17 itemName];
          if (v18)
          {
            [(CPSClipMetadata *)v13 setFullAppName:v18];
          }

          else
          {
            v35 = [v6 localizedName];
            [(CPSClipMetadata *)v13 setFullAppName:v35];
          }
        }

        v36 = [(CPSClipMetadata *)v13 fullAppContentRating];

        if (!v36)
        {
          v37 = [v6 iTunesMetadata];
          v38 = [v37 ratingLabel];
          [(CPSClipMetadata *)v13 setFullAppContentRating:v38];
        }

        v39 = [(CPSClipMetadata *)v13 fullAppStoreURL];

        if (!v39)
        {
          v40 = [v6 iTunesMetadata];
          v41 = [v40 storeItemIdentifier];

          if (v41)
          {
            v42 = MEMORY[0x277CBEBC0];
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://apps.apple.com/app/id%llu", v41];
            v44 = [v42 URLWithString:v43];
            [(CPSClipMetadata *)v13 setFullAppStoreURL:v44];
          }
        }

        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __98__CPSSession__synthesizeFullAppMetadataFromMetadata_patternMatchedBundleID_URL_completionHandler___block_invoke_41;
        v47[3] = &unk_278DCE4F8;
        v48 = v13;
        v49 = *(a1 + 64);
        v45 = v13;
        [CPSClipInvocationPolicy requestAccountPolicyForClipMetadata:v45 withCompletion:v47];

        goto LABEL_33;
      }

      v30 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 48);
        v26 = v30;
        v32 = objc_opt_class();
        v33 = *(a1 + 48);
        *buf = 138543618;
        v51 = v32;
        v52 = 2048;
        v53 = v33;
        v29 = "%{public}@ (%p): Failed to synthesize full app metadata: full app bundle identifier isn't prefix of app clip bundle identifier";
        goto LABEL_23;
      }
    }

    else
    {
      v24 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 48);
        v26 = v24;
        v27 = objc_opt_class();
        v28 = *(a1 + 48);
        *buf = 138543618;
        v51 = v27;
        v52 = 2048;
        v53 = v28;
        v29 = "%{public}@ (%p): Failed to synthesize full app metadata: full app bundle ID is invalid";
LABEL_23:
        _os_log_impl(&dword_2436ED000, v26, OS_LOG_TYPE_INFO, v29, buf, 0x16u);
      }
    }

    v34 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
LABEL_33:

    goto LABEL_34;
  }

  v19 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = v19;
    v22 = [v5 cps_privacyPreservingDescription];
    *buf = 138740227;
    v51 = v20;
    v52 = 2114;
    v53 = v22;
    _os_log_impl(&dword_2436ED000, v21, OS_LOG_TYPE_INFO, "Failed to resolve App Link for URL %{sensitive}@ with error %{public}@", buf, 0x16u);
  }

  v23 = *(a1 + 40);
  (*(*(a1 + 64) + 16))();
LABEL_34:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __98__CPSSession__synthesizeFullAppMetadataFromMetadata_patternMatchedBundleID_URL_completionHandler___block_invoke_41(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setInvocationPolicy:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)_availabilityOptions
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPSSession registeredForTest](self, "registeredForTest")}];
  [dictionary setObject:v4 forKeyedSubscript:@"RegisteredForTest"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPSSessionConfiguration originIsControlCenter](self->_configuration, "originIsControlCenter")}];
  [dictionary setObject:v5 forKeyedSubscript:@"OriginIsControlCenter"];

  launchReason = [(CPSSessionConfiguration *)self->_configuration launchReason];
  [dictionary setObject:launchReason forKeyedSubscript:@"LaunchReason"];

  sourceBundleID = [(CPSSessionConfiguration *)self->_configuration sourceBundleID];
  [dictionary setObject:sourceBundleID forKeyedSubscript:@"SourceBundleID"];

  referrerBundleID = [(CPSSessionConfiguration *)self->_configuration referrerBundleID];
  [dictionary setObject:referrerBundleID forKeyedSubscript:@"ReferrerBundleID"];

  return dictionary;
}

- (void)_didUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  objc_storeStrong(&self->_metadata, metadata);
  if (self->_metadataFetchState == 2)
  {
    metadataCompletion = self->_metadataCompletion;
    if (metadataCompletion)
    {
      if (self->_metadataFetchError)
      {
        metadata = 0;
      }

      else
      {
        metadata = self->_metadata;
      }

      metadataCompletion[2](metadataCompletion, metadata);
      v7 = self->_metadataCompletion;
      self->_metadataCompletion = 0;
    }
  }

  [(CPSSession *)self _notifyObserversOfMetadataFetchResultUpdates:self->_proxyObjects];
}

- (void)_notifyObserversOfMetadataFetchResultUpdates:(id)updates
{
  v26 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = updatesCopy;
  if (self->_metadataFetchError)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [updatesCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v20 + 1) + 8 * i) didFinishLoadingWithError:self->_metadataFetchError];
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    metadataFetchState = self->_metadataFetchState;
    if (metadataFetchState == 2 || metadataFetchState == 1 && self->_metadata)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = [updatesCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v16 + 1) + 8 * j) didUpdateMetadata:self->_metadata];
          }

          v12 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v12);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_didFinishLoadingWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  self->_metadataFetchState = 2;
  objc_storeStrong(&self->_metadataFetchError, error);
  if (self->_metadataFetchState == 2)
  {
    metadataCompletion = self->_metadataCompletion;
    if (metadataCompletion)
    {
      if (self->_metadataFetchError)
      {
        metadata = 0;
      }

      else
      {
        metadata = self->_metadata;
      }

      metadataCompletion[2](metadataCompletion, metadata);
      v7 = self->_metadataCompletion;
      self->_metadataCompletion = 0;
    }
  }

  [(CPSSession *)self _notifyObserversOfMetadataFetchResultUpdates:self->_proxyObjects];
  if (errorCopy)
  {
    [(CPSSession *)self _evictFromCache];
  }
}

- (void)_didFetchBusinessIconWithURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  objc_storeStrong(&self->_businessIconFileURL, l);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_proxyObjects;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) didRetrieveBusinessIcon:{lCopy, v12}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_evictFromCache
{
  v3 = +[CPSSessionManager sharedManager];
  [v3 clearSessionWithURL:self->_url];
}

- (void)setPreloadedMetadata:(id)metadata
{
  metadataCopy = metadata;
  self->_clipAvailabilityState = 1;
  self->_metadataFetchState = 2;
  objc_storeStrong(&self->_metadata, metadata);
  v5 = +[CPSClipInvocationPolicy eligiblePolicy];
  [(CPSClipMetadata *)self->_metadata setInvocationPolicy:v5];

  if ([(CPSClipMetadata *)self->_metadata isDeveloperOverride])
  {
    fullAppIconURL = [(CPSClipMetadata *)self->_metadata fullAppIconURL];
    clipBundleID = [(CPSClipMetadata *)self->_metadata clipBundleID];
    [(CPSSession *)self _retrieveApplicationIconWithAppIconURL:fullAppIconURL clipBundleID:clipBundleID];

    [(CPSSession *)self fetchHeroImage];
  }
}

- (void)clearMetadataAndRefetch
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CPSSession_clearMetadataAndRefetch__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__CPSSession_clearMetadataAndRefetch__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 72) != 1)
  {
    v3 = result;
    *(v2 + 56) = 0;
    *(*(result + 32) + 72) = 0;
    v4 = *(result + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;

    v6 = *(v3 + 32);

    return [v6 _fetchBusinessMetadata];
  }

  return result;
}

- (void)didCompleteTestSessionAtTime:(double)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CPSSession_didCompleteTestSessionAtTime___block_invoke;
  v4[3] = &unk_278DCE278;
  v4[4] = self;
  *&v4[5] = time;
  dispatch_async(queue, v4);
}

void __43__CPSSession_didCompleteTestSessionAtTime___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) registeredForTest])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(*(a1 + 32) + 16);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) didFinishTestingAtTime:{*(a1 + 40), v8}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkAndConsumeShowsAppAttributionBannerLaunchOption
{
  showsAppAttributionBanner = [(CPSClipLaunchOptions *)self->_launchOptions showsAppAttributionBanner];
  [(CPSClipLaunchOptions *)self->_launchOptions setShowsAppAttributionBanner:0];
  return showsAppAttributionBanner;
}

- (void)fetchMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CPSSession_fetchMetadataWithCompletion___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __42__CPSSession_fetchMetadataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (!v3)
  {
    [v2 _fetchBusinessMetadata];
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
  }

  if (v3 == 2)
  {
    v4 = [*(v2 + 136) invocationPolicy];
    if ([v4 isEligible])
    {

LABEL_7:
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(v8 + 136);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__CPSSession_fetchMetadataWithCompletion___block_invoke_2;
      v18[3] = &unk_278DCE4F8;
      v18[4] = v8;
      v19 = v7;
      [CPSClipInvocationPolicy requestAccountPolicyForClipMetadata:v9 withCompletion:v18];

      return;
    }

    v5 = [*(*(a1 + 32) + 136) invocationPolicy];
    v6 = [v5 isRecoverable];

    if (v6)
    {
      goto LABEL_7;
    }

    [*(a1 + 32) clearMetadataAndRefetch];
    v2 = *(a1 + 32);
  }

  v10 = MEMORY[0x245D3D5F0](*(v2 + 96));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__CPSSession_fetchMetadataWithCompletion___block_invoke_3;
  v15[3] = &unk_278DCE738;
  v16 = *(a1 + 40);
  v17 = v10;
  v11 = v10;
  v12 = MEMORY[0x245D3D5F0](v15);
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = v12;
}

uint64_t __42__CPSSession_fetchMetadataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  [*(*(a1 + 32) + 136) setInvocationPolicy:v4];
  LODWORD(v3) = [v4 isEligible];

  if (v3)
  {
    v5 = [*(*(a1 + 32) + 136) amsDictionary];
    v6 = [CPSClipInvocationPolicy invocationPolicyWithAMSDict:v5];

    [*(*(a1 + 32) + 136) setInvocationPolicy:v6];
  }

  [*(a1 + 32) _didUpdateMetadata:*(*(a1 + 32) + 136)];
  v7 = *(a1 + 32);
  if (!*(v7 + 80))
  {
    v8 = *(v7 + 136);
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

void __42__CPSSession_fetchMetadataWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)fetchHeroImage
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CPSSession_fetchHeroImage__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __28__CPSSession_fetchHeroImage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 40))
  {
    v2 = [*(v1 + 136) clipHeroImageURL];
    [v1 _retrieveHeroImageWithHeroImageURL:v2];
  }
}

- (void)_updateLocationConfirmationForRecord:(id)record permissionGranted:(id)granted
{
  recordCopy = record;
  grantedCopy = granted;
  if ([(CPSClipMetadata *)self->_metadata clipRequestsLocationConfirmationPermission])
  {
    [recordCopy setLocationConfirmationGranted:grantedCopy];
    if ([grantedCopy BOOLValue])
    {
      launchReason = [(CPSSessionConfiguration *)self->_configuration launchReason];
      if ([launchReason isEqualToString:@"NFC"])
      {
        v8 = 2;
      }

      else if ([launchReason isEqualToString:@"QR"])
      {
        v8 = 1;
      }

      else if ([launchReason isEqualToString:@"DeveloperTools"])
      {
        v8 = 4;
      }

      else if ([launchReason isEqualToString:@"AppclipCode"])
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }

      [recordCopy setLocationConfirmationState:v8];
    }

    else
    {
      [recordCopy setLocationConfirmationState:0];
    }
  }

  else
  {
    [recordCopy setLocationConfirmationGranted:0];
  }
}

- (void)updateClipDataForEntryPointWithWebClip:(id)clip launchOptions:(id)options
{
  clipCopy = clip;
  optionsCopy = options;
  v8 = os_transaction_create();
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(CPSClipLaunchOptions);
  }

  skipsLaunching = [(CPSClipLaunchOptions *)optionsCopy skipsLaunching];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke;
  block[3] = &unk_278DCE7D8;
  v19 = !skipsLaunching;
  v15 = v8;
  selfCopy = self;
  v17 = optionsCopy;
  v18 = clipCopy;
  v11 = clipCopy;
  v12 = optionsCopy;
  v13 = v8;
  dispatch_async(queue, block);
}

void __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) copy];
    v3 = *(a1 + 40);
    v4 = *(v3 + 168);
    *(v3 + 168) = v2;
  }

  v5 = +[CPSClipDataSQLiteStore defaultStore];
  v6 = [*(*(a1 + 40) + 136) clipBundleID];
  v7 = [*(*(a1 + 40) + 136) clipRequestsNotificationPermission];
  v8 = [*(*(a1 + 40) + 136) fullAppName];
  v9 = [*(*(a1 + 40) + 136) fullAppCaption];
  v10 = [*(*(a1 + 40) + 136) fullAppStoreURL];
  v11 = [*(*(a1 + 40) + 136) clipVersionIdentifier];
  v12 = [*(a1 + 56) bundleIdentifier];
  [*(*(a1 + 40) + 136) setWebClipID:v12];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke_2;
  v20[3] = &unk_278DCE7B0;
  v21 = *(a1 + 32);
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v30 = v11;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v25 = v10;
  v26 = v13;
  v31 = *(a1 + 64);
  v32 = v7;
  v27 = v14;
  v28 = v5;
  v29 = *(a1 + 56);
  v15 = v5;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = v6;
  [v15 getAppClipRecordWithBundleID:v19 completion:v20];
}

void __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [[CPSAppClipRecord alloc] initWithBundleID:*(a1 + 40)];
  }

  [(CPSAppClipRecord *)v3 setFullApplicationName:*(a1 + 48)];
  [(CPSAppClipRecord *)v3 setFullApplicationCaption:*(a1 + 56)];
  if (*(a1 + 104))
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:*(a1 + 64) resolvingAgainstBaseURL:0];
    v5 = MEMORY[0x277CCAD18];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", *(a1 + 104)];
    v7 = [v5 queryItemWithName:@"minExternalVersionId" value:v6];
    [v4 cps_addQueryItem:v7];

    v8 = [v4 URL];
    [(CPSAppClipRecord *)v3 setFullApplicationStoreURL:v8];
  }

  else
  {
    [(CPSAppClipRecord *)v3 setFullApplicationStoreURL:*(a1 + 64)];
  }

  v9 = *(*(a1 + 72) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke_3;
  block[3] = &unk_278DCE788;
  v20 = *(a1 + 112);
  v14 = v3;
  v10 = *(a1 + 80);
  v11 = *(a1 + 72);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 88);
  v18 = *(a1 + 32);
  v19 = *(a1 + 96);
  v12 = v3;
  dispatch_async(v9, block);
}

void __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 81) == 1)
    {
      v2 = [*(a1 + 40) userNotificationGranted];
      [*(a1 + 32) setUserNotificationGranted:v2];
    }

    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceReferenceDate];
    [*(a1 + 32) setLastProxCardLaunchTime:?];

    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) locationConfirmationGranted];
    [v4 _updateLocationConfirmationForRecord:v5 permissionGranted:v6];
  }

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CPSSession_updateClipDataForEntryPointWithWebClip_launchOptions___block_invoke_4;
  v9[3] = &unk_278DCE760;
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  [v8 saveAppClipRecord:v7 completion:v9];
  [*(a1 + 48) _updateEntryPointForWebClip:*(a1 + 72)];
}

- (void)_retrieveApplicationIconWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_didFetchApplicationIcon)
  {
    (*(handlerCopy + 2))(handlerCopy, self->_applicationIconFileURL);
  }

  else
  {
    v6 = MEMORY[0x245D3D5F0](self->_applicationIconFetchCompletion);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__CPSSession__retrieveApplicationIconWithCompletionHandler___block_invoke;
    v10[3] = &unk_278DCE800;
    v11 = v5;
    v12 = v6;
    v7 = v6;
    v8 = MEMORY[0x245D3D5F0](v10);
    applicationIconFetchCompletion = self->_applicationIconFetchCompletion;
    self->_applicationIconFetchCompletion = v8;
  }
}

void __60__CPSSession__retrieveApplicationIconWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)_retrieveInstalledApplicationIconWithAppIconURL:(id)l clipBundleID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  v26 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v26];
  v8 = v26;
  if (!v7)
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      cps_privacyPreservingDescription = [v8 cps_privacyPreservingDescription];
      *buf = 138478083;
      v28 = dCopy;
      v29 = 2114;
      v30 = cps_privacyPreservingDescription;
      _os_log_impl(&dword_2436ED000, v16, OS_LOG_TYPE_INFO, "Unable to find local application record, clip %{private}@ not installed: %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v9 = _CPSCreateUnmaskedIconDataForBundle(dCopy);
  if (!v9)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = v9;
  v25 = 0;
  v11 = [CPSImageStore keyForImageURL:lCopy error:&v25];
  v12 = v25;
  if (v12)
  {
    v13 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CPSSession _retrieveInstalledApplicationIconWithAppIconURL:v13 clipBundleID:v12];
    }

    v14 = 0;
  }

  else
  {
    v18 = objc_alloc_init(CPSImageStore);
    v24 = 0;
    v19 = [(CPSImageStore *)v18 storeImageData:v10 forKey:v11 error:&v24];
    v20 = v24;

    if (v20)
    {
      v21 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CPSSession _retrieveInstalledApplicationIconWithAppIconURL:v21 clipBundleID:v20];
      }

      v14 = 0;
    }

    else
    {
      v14 = v19;
    }
  }

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_retrieveApplicationIconWithAppIconURL:(id)l clipBundleID:(id)d
{
  lCopy = l;
  v7 = [(CPSSession *)self _retrieveInstalledApplicationIconWithAppIconURL:lCopy clipBundleID:d];
  v9 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = lCopy;
  }

  [(CPSSession *)self _retrieveImageWithURL:v8 didFetchImage:&self->_didFetchApplicationIcon fileURL:&self->_applicationIconFileURL fetchCompletion:self->_applicationIconFetchCompletion proxyCompletion:&__block_literal_global_5];
}

- (void)_retrieveImageWithURL:(id)l didFetchImage:(BOOL *)image fileURL:(id *)rL fetchCompletion:(id)completion proxyCompletion:(id)proxyCompletion
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  proxyCompletionCopy = proxyCompletion;
  if (image)
  {
    *image = 0;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke;
  v33[3] = &unk_278DCE848;
  v33[4] = self;
  rLCopy = rL;
  imageCopy = image;
  v15 = completionCopy;
  v34 = v15;
  v16 = proxyCompletionCopy;
  v35 = v16;
  v17 = MEMORY[0x245D3D5F0](v33);
  if ([lCopy cps_isFileURL] && !-[CPSClipMetadata isDeveloperOverride](self->_metadata, "isDeveloperOverride"))
  {
    (v17)[2](v17, lCopy);
    goto LABEL_16;
  }

  if (lCopy)
  {
    v18 = os_transaction_create();
    clipHeroImageURL = [(CPSClipMetadata *)self->_metadata clipHeroImageURL];
    v20 = [lCopy isEqual:clipHeroImageURL];

    v21 = CPS_LOG_CHANNEL_PREFIXClipServices();
    v22 = os_signpost_enabled(v21);
    if (v20)
    {
      if (v22)
      {
        v23 = v21;
        logID = [(CPSSession *)self logID];
        *buf = 138543618;
        v39 = logID;
        v40 = 2082;
        v41 = "[begin] Fetching header image data";
        v25 = "HeaderImage";
LABEL_14:
        _os_signpost_emit_with_name_impl(&dword_2436ED000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v25, " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = v21;
      logID = [(CPSSession *)self logID];
      *buf = 138543618;
      v39 = logID;
      v40 = 2082;
      v41 = "[begin] Fetching application icon data";
      v25 = "AppIcon";
      goto LABEL_14;
    }

    imageLoader = self->_imageLoader;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_67;
    v29[3] = &unk_278DCE898;
    v29[4] = self;
    v30 = v18;
    v31 = v17;
    v32 = v20;
    v27 = v18;
    [(CPSImageLoader *)imageLoader loadImageWithURL:lCopy completionHandler:v29];

    goto LABEL_16;
  }

  v17[2](v17, 0);
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

void __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a1[7];
  if (v5)
  {
    objc_storeStrong(v5, a2);
  }

  v6 = a1[8];
  if (v6)
  {
    *v6 = 1;
  }

  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(a1[4] + 16);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          (*(a1[6] + 16))(a1[6]);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_2;
  v12[3] = &unk_278DCE870;
  v17 = *(a1 + 48);
  v13 = v5;
  v8 = *(a1 + 40);
  v18 = *(a1 + 56);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  (*(*(a1 + 64) + 16))();
  v3 = *(a1 + 72);
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = os_signpost_enabled(v4);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = v4;
      v8 = [v6 logID];
      v13 = 138543618;
      v14 = v8;
      v15 = 2082;
      v16 = "[end] Fetching header image data enableTelemetry=YES ";
      v9 = "HeaderImage";
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_2436ED000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v9, " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", &v13, 0x16u);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 48);
    v7 = v4;
    v8 = [v10 logID];
    v13 = 138543618;
    v14 = v8;
    v15 = 2082;
    v16 = "[end] Fetching application icon data enableTelemetry=YES ";
    v9 = "AppIcon";
    goto LABEL_6;
  }

  if (*(a1 + 56))
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_2_cold_1(a1, v11, (a1 + 56));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateEntryPointForWebClip:(id)clip
{
  clipCopy = clip;
  v5 = os_transaction_create();
  v6 = +[CPSClipDataSQLiteStore defaultStore];
  bundleIdentifier = [clipCopy bundleIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CPSSession__updateEntryPointForWebClip___block_invoke;
  v11[3] = &unk_278DCE910;
  v12 = clipCopy;
  v13 = v6;
  v14 = v5;
  selfCopy = self;
  v8 = v5;
  v9 = v6;
  v10 = clipCopy;
  [v9 getEntryPointRecordWithWebClipIdentifier:bundleIdentifier completion:v11];
}

void __42__CPSSession__updateEntryPointForWebClip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = objc_alloc_init(CPSClipEntryPointRecord);
    v4 = [*(a1 + 32) bundleIdentifier];
    [(CPSClipEntryPointRecord *)v3 setWebClipIdentifier:v4];
  }

  v5 = [*(a1 + 32) applicationBundleIdentifier];
  v6 = [(CPSClipEntryPointRecord *)v3 appClipBundleID];
  v7 = [v6 isEqualToString:v5];

  [(CPSClipEntryPointRecord *)v3 setAppClipBundleID:v5];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  [(CPSClipEntryPointRecord *)v3 lastABRFetchTime];
  if (v9 - v10 >= 604800.0)
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    [(CPSClipEntryPointRecord *)v3 setLastABRFetchTime:v9];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__CPSSession__updateEntryPointForWebClip___block_invoke_2;
  v18[3] = &unk_278DCE760;
  v11 = *(a1 + 40);
  v19 = *(a1 + 48);
  [v11 saveClipEntryPointRecord:v3 completion:v18];
  if ((v7 & 1) == 0 && ([*(a1 + 56) registeredForTest] & 1) == 0)
  {
    v12 = [*(a1 + 56) configuration];
    v13 = [v12 useLocalContent];

    if ((v13 & 1) == 0)
    {
      v14 = *(a1 + 56);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__CPSSession__updateEntryPointForWebClip___block_invoke_3;
      v15[3] = &unk_278DCE8E8;
      v15[4] = v14;
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      [v14 fetchMetadataWithCompletion:v15];
    }
  }
}

void __42__CPSSession__updateEntryPointForWebClip___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CPSSession__updateEntryPointForWebClip___block_invoke_4;
  block[3] = &unk_278DCE8C0;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

uint64_t __42__CPSSession__updateEntryPointForWebClip___block_invoke_4(uint64_t result)
{
  if (!*(result + 32))
  {
    return [*(result + 40) _updateWebClipIcon:*(result + 48) metadata:*(result + 56)];
  }

  return result;
}

- (void)_updateWebClipIcon:(id)icon metadata:(id)metadata
{
  iconCopy = icon;
  metadataCopy = metadata;
  v8 = dispatch_group_create();
  iconImagePath = [iconCopy iconImagePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:iconImagePath];

  if ((v11 & 1) == 0)
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__5;
    v34[4] = __Block_byref_object_dispose__5;
    v35 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke;
    v31[3] = &unk_278DCE960;
    v31[4] = self;
    v12 = v8;
    v32 = v12;
    v33 = v34;
    v13 = MEMORY[0x245D3D5F0](v31);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__5;
    v29[4] = __Block_byref_object_dispose__5;
    v30 = 0;
    if ([metadataCopy isPoweredByThirdParty])
    {
      if (!self->_businessIconFetchingPromise)
      {
        [(CPSSession *)self _fetchBusinessIconIfNeeded];
      }

      dispatch_group_enter(v12);
      objc_initWeak(&location, self);
      businessIconFetchingPromise = self->_businessIconFetchingPromise;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke_3;
      v23[3] = &unk_278DCE9B0;
      objc_copyWeak(&v27, &location);
      v26 = v29;
      v25 = v13;
      v24 = v12;
      [(CPSPromise *)businessIconFetchingPromise addCompletionBlock:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v13[2](v13);
    }

    v15 = os_transaction_create();
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke_5;
    v18[3] = &unk_278DCE9D8;
    v19 = v15;
    v21 = v29;
    v22 = v34;
    v20 = iconCopy;
    v17 = v15;
    dispatch_group_notify(v12, queue, v18);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v34, 8);
  }
}

void __42__CPSSession__updateWebClipIcon_metadata___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 40));
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke_2;
  v5[3] = &unk_278DCE938;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 _retrieveApplicationIconWithCompletionHandler:v5];
}

void __42__CPSSession__updateWebClipIcon_metadata___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __42__CPSSession__updateWebClipIcon_metadata___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke_4;
    v7[3] = &unk_278DCE988;
    v11 = *(a1 + 48);
    v8 = v3;
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void __42__CPSSession__updateWebClipIcon_metadata___block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    (*(*(a1 + 48) + 16))();
  }

  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __42__CPSSession__updateWebClipIcon_metadata___block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(*(*(a1 + 56) + 8) + 40);
    if (!v3)
    {
      return;
    }
  }

  v4 = +[CPSWebClipStore sharedStore];
  v5 = [*(a1 + 40) identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CPSSession__updateWebClipIcon_metadata___block_invoke_6;
  v6[3] = &unk_278DCDEC0;
  v7 = *(a1 + 32);
  [v4 updateAppClipIcon:v3 forWebClipWithIdentifier:v5 completionHandler:v6];
}

- (void)installationControllerWillStartInstall:(id)install
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CPSSession_installationControllerWillStartInstall___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__CPSSession_installationControllerWillStartInstall___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  *(v1 + 144) = &unk_285684118;
}

- (void)installationControllerDidInstallPlaceholder:(id)placeholder
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPSSession_installationControllerDidInstallPlaceholder___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__CPSSession_installationControllerDidInstallPlaceholder___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = 1;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) didInstallApplicationPlaceholder];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v4);
  }

  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_signpost_enabled(v7))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 logID];
    *buf = 138543618;
    v17 = v10;
    v18 = 2082;
    v19 = "[end] Marking Placeholder request enableTelemetry=YES ";
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "OpenButtonBecomeActive", " ID=[%{public, signpost.description:logID}@]  Message=%{public}s ", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)installationController:(id)controller didUpdateProgress:(double)progress
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__CPSSession_installationController_didUpdateProgress___block_invoke;
  v5[3] = &unk_278DCE278;
  v5[4] = self;
  *&v5[5] = progress;
  dispatch_async(queue, v5);
}

void __55__CPSSession_installationController_didUpdateProgress___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 16);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) didUpdateInstallProgress:{*(*(a1 + 32) + 144), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installationController:(id)controller didFinishWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CPSSession_installationController_didFinishWithError___block_invoke;
  v8[3] = &unk_278DCDE58;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __56__CPSSession_installationController_didFinishWithError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 cps_isUserCanceledError];
    v4 = 2;
    if (v3)
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 3;
  }

  *(*(a1 + 32) + 64) = v4;
  v5 = +[CPSAnalyticsLogger sharedLogger];
  v6 = [*(*(a1 + 32) + 136) clipBundleID];
  [v5 recordDidInstallWithBundleID:v6 succeeded:*(*(a1 + 32) + 64) == 3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(a1 + 32) + 16);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) didFinishLoadingWithError:{*(a1 + 40), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_4_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "-_fetchBusinessMetadata: Calling _didFinishLoadingWithError with CPSErrorNetworkUnavailable. Original error is: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __36__CPSSession__fetchBusinessMetadata__block_invoke_4_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCKErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSSession.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2_cold_1(uint64_t a1, void *a2, id *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 136);
  v5 = a2;
  v6 = [v4 clipBundleID];
  v14 = [*a3 clipBundleID];
  OUTLINED_FUNCTION_0_2(&dword_2436ED000, v7, v8, "ABR BundleID: %{private}@ and AMP BundleID: %{private}@ do not match.", v9, v10, v11, v12, 3u);

  v13 = *MEMORY[0x277D85DE8];
}

void __72__CPSSession__fetchAppMetadataWithBundleID_url_accountInvocationPolicy___block_invoke_2_cold_2(uint64_t a1, void *a2, id *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 logID];
  v14 = [*a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_2(&dword_2436ED000, v7, v8, "Fail to fetch AppMetadata. ID = [%@] Error: %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __40__CPSSession__fetchBusinessIconIfNeeded__block_invoke_29_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138477827;
  v5 = v2;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "Business icon fetching failed: %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveInstalledApplicationIconWithAppIconURL:(void *)a1 clipBundleID:(void *)a2 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Unable to get image store key for app icon url: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveInstalledApplicationIconWithAppIconURL:(void *)a1 clipBundleID:(void *)a2 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Unable to write app icon to disk: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __90__CPSSession__retrieveImageWithURL_didFetchImage_fileURL_fetchCompletion_proxyCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2, id *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v4 logID];
  v14 = [*a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_2(&dword_2436ED000, v7, v8, "Fail to fetch image or icon data. ID = [%{public}@] Error: %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

@end