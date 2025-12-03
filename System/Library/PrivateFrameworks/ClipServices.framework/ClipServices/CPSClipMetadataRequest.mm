@interface CPSClipMetadataRequest
- (BOOL)isLikelyAvailable;
- (CPSClipMetadataRequest)initWithURL:(id)l fallbackClipBundleID:(id)d;
- (CPSClipMetadataRequest)initWithURLHash:(id)hash;
- (id)getClipMetadataSynchronously;
- (id)getDownloadedIconURLSynchronously;
- (void)_setUpSessionProxyAndPromisesWithURL:(id)l fallbackClipBundleID:(id)d;
- (void)dealloc;
- (void)getClipMetadataSynchronously;
- (void)getDownloadedIconURLSynchronously;
- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error;
- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon;
- (void)proxyDidRetrieveBusinessIcon:(id)icon;
- (void)proxyDidUpdateMetadata:(id)metadata;
- (void)proxyRemoteServiceDidCrash:(id)crash;
- (void)requestDownloadedIconWithMetadata:(id)metadata completion:(id)completion;
- (void)requestMetadataWithCompletion:(id)completion;
@end

@implementation CPSClipMetadataRequest

- (CPSClipMetadataRequest)initWithURLHash:(id)hash
{
  hashCopy = hash;
  v10.receiver = self;
  v10.super_class = CPSClipMetadataRequest;
  v5 = [(CPSClipMetadataRequest *)&v10 init];
  if (v5)
  {
    v6 = [hashCopy copy];
    fullHash = v5->_fullHash;
    v5->_fullHash = v6;

    v8 = v5;
  }

  return v5;
}

- (CPSClipMetadataRequest)initWithURL:(id)l fallbackClipBundleID:(id)d
{
  lCopy = l;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CPSClipMetadataRequest;
  v8 = [(CPSClipMetadataRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CPSClipMetadataRequest *)v8 _setUpSessionProxyAndPromisesWithURL:lCopy fallbackClipBundleID:dCopy];
    v10 = v9;
  }

  return v9;
}

- (void)_setUpSessionProxyAndPromisesWithURL:(id)l fallbackClipBundleID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  v8 = +[CPSPromise promise];
  availabilityPromise = self->_availabilityPromise;
  self->_availabilityPromise = v8;

  v10 = +[CPSPromise promise];
  iconPromise = self->_iconPromise;
  self->_iconPromise = v10;

  v12 = +[CPSPromise promise];
  metadataPromise = self->_metadataPromise;
  self->_metadataPromise = v12;

  cps_sanitizedURL = [lCopy cps_sanitizedURL];
  v15 = [[CPSSessionProxy alloc] initWithURL:cps_sanitizedURL];
  sessionProxy = self->_sessionProxy;
  self->_sessionProxy = v15;

  v17 = [CPSSessionConfiguration standardConfigurationWithURL:cps_sanitizedURL fallbackBundleID:dCopy];

  [(CPSSessionProxy *)self->_sessionProxy setConfiguration:v17];
  [(CPSSessionProxy *)self->_sessionProxy setDelegate:self];
  [(CPSSessionProxy *)self->_sessionProxy connectToService];
  v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = objc_opt_class();
    v21 = self->_sessionProxy;
    v23 = 138544131;
    v24 = v20;
    v25 = 2048;
    selfCopy = self;
    v27 = 2048;
    v28 = v21;
    v29 = 2117;
    v30 = lCopy;
    _os_log_impl(&dword_2436ED000, v19, OS_LOG_TYPE_INFO, "%{public}@ (%p): session proxy (%p) set up for URL %{sensitive}@", &v23, 0x2Au);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLikelyAvailable
{
  if (self->_fullHash)
  {
    return 1;
  }

  v3 = [(CPSSessionProxy *)self->_sessionProxy url];
  cps_fallbackBundleIdentifier = [v3 cps_fallbackBundleIdentifier];

  if (cps_fallbackBundleIdentifier)
  {
    return 1;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  availabilityPromise = self->_availabilityPromise;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__CPSClipMetadataRequest_isLikelyAvailable__block_invoke;
  v14 = &unk_278DCEE90;
  v16 = &v17;
  v9 = v7;
  v15 = v9;
  [(CPSPromise *)availabilityPromise addCompletionBlock:&v11];
  v10 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v9, v10);
  bOOLValue = [v18[5] BOOLValue];

  _Block_object_dispose(&v17, 8);
  return bOOLValue;
}

void __43__CPSClipMetadataRequest_isLikelyAvailable__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)getClipMetadataSynchronously
{
  v35 = *MEMORY[0x277D85DE8];
  if (!self->_sessionProxy)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadataRequest *)v12 getClipMetadataSynchronously];
    }

    goto LABEL_8;
  }

  if (![(CPSClipMetadataRequest *)self isLikelyAvailable])
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  metadataPromise = self->_metadataPromise;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __54__CPSClipMetadataRequest_getClipMetadataSynchronously__block_invoke;
  v18 = &unk_278DCEEB8;
  v20 = &v21;
  v5 = v3;
  v19 = v5;
  [(CPSPromise *)metadataPromise addCompletionBlock:&v15];
  v6 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v5, v6);
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v22[5];
    v10 = [(CPSSessionProxy *)self->_sessionProxy url:v15];
    *buf = 138544131;
    v28 = v8;
    v29 = 2048;
    selfCopy = self;
    v31 = 2048;
    v32 = v9;
    v33 = 2117;
    v34 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): requested metadata %p for %{sensitive}@", buf, 0x2Au);
  }

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __54__CPSClipMetadataRequest_getClipMetadataSynchronously__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)getDownloadedIconURLSynchronously
{
  v35 = *MEMORY[0x277D85DE8];
  if (!self->_sessionProxy)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CPSClipMetadataRequest *)v12 getDownloadedIconURLSynchronously];
    }

    goto LABEL_8;
  }

  if (![(CPSClipMetadataRequest *)self isLikelyAvailable])
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  iconPromise = self->_iconPromise;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __59__CPSClipMetadataRequest_getDownloadedIconURLSynchronously__block_invoke;
  v18 = &unk_278DCEEE0;
  v20 = &v21;
  v5 = v3;
  v19 = v5;
  [(CPSPromise *)iconPromise addCompletionBlock:&v15];
  v6 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v5, v6);
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v22[5];
    v10 = [(CPSSessionProxy *)self->_sessionProxy url:v15];
    *buf = 138544131;
    v28 = v8;
    v29 = 2048;
    selfCopy = self;
    v31 = 2048;
    v32 = v9;
    v33 = 2117;
    v34 = v10;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ (%p): requested icon URL %p for %{sensitive}@", buf, 0x2Au);
  }

  v11 = v22[5];
  _Block_object_dispose(&v21, 8);

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __59__CPSClipMetadataRequest_getDownloadedIconURLSynchronously__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    sessionProxy = self->_sessionProxy;
    *buf = 138543874;
    v10 = v5;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = sessionProxy;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "%{public}@ (%p): Disconnecting session proxy (%p)", buf, 0x20u);
  }

  [(CPSSessionProxy *)self->_sessionProxy disconnect];
  v8.receiver = self;
  v8.super_class = CPSClipMetadataRequest;
  [(CPSClipMetadataRequest *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestMetadataWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke;
  v18[3] = &unk_278DCEF30;
  v18[4] = self;
  v5 = completionCopy;
  v19 = v5;
  v6 = MEMORY[0x245D3D5F0](v18);
  v7 = v6;
  if (self->_sessionProxy)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = objc_opt_class();
      fullHash = self->_fullHash;
      *buf = 138543875;
      v21 = v10;
      v22 = 2048;
      selfCopy = self;
      v24 = 2117;
      v25 = fullHash;
      _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting url for %{sensitive}@", buf, 0x20u);
    }

    v12 = +[CPSDaemonConnection sharedConnection];
    v13 = self->_fullHash;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15;
    v15[3] = &unk_278DCEF58;
    v15[4] = self;
    v16 = v5;
    v17 = v7;
    [v12 fetchClipURLWithURLHash:v13 completionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting metadata asynchronously", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = *(a1 + 32);
  v9 = *(*(a1 + 32) + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11;
  v11[3] = &unk_278DCEF08;
  v13 = buf;
  v14 = a2;
  v12 = *(a1 + 40);
  [v9 addCompletionBlock:v11];

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11_cold_1(a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = v8;
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v20 = 138543618;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): got metadata asynchronously", &v20, 0x16u);
  }

  if (*(a1 + 48) == 1)
  {
    v13 = +[CPSAnalyticsLogger sharedLogger];
    v14 = [v5 clipBundleID];
    [v13 recordClientMetadataRequestWithBundleID:v14 launchReason:@"LocationBased"];

    v15 = [v5 invocationPolicy];
    if (![v15 isEligible])
    {
      v16 = [v5 invocationPolicy];
      [v16 isRecoverable];
    }
  }

  (*(*(a1 + 32) + 16))();
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *MEMORY[0x277D85DE8];
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15_cold_1(a1, v8, v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = *(v12 + 8);
      v15 = 138543875;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2117;
      v20 = v13;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): finished requesting url for %{sensitive}@", &v15, 0x20u);
    }

    [*(a1 + 32) _setUpSessionProxyAndPromisesWithURL:v5 fallbackClipBundleID:0];
    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestDownloadedIconWithMetadata:(id)metadata completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  if (!self->_sessionProxy)
  {
    clipURL = [metadataCopy clipURL];

    if (!clipURL)
    {
      completionCopy[2](completionCopy, 0);
      goto LABEL_7;
    }

    clipURL2 = [metadataCopy clipURL];
    [(CPSClipMetadataRequest *)self _setUpSessionProxyAndPromisesWithURL:clipURL2 fallbackClipBundleID:0];
  }

  v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_INFO, "%{public}@ (%p): requesting icon asynchronously", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  selfCopy = self;
  iconPromise = selfCopy->_iconPromise;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke;
  v14[3] = &unk_278DCEF80;
  v16 = buf;
  v15 = completionCopy;
  [(CPSPromise *)iconPromise addCompletionBlock:v14];

  _Block_object_dispose(buf, 8);
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

void __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v8 = v7;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke_cold_1(a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = v8;
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v16 = 138543618;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_INFO, "%{public}@ (%p): got icon asynchronously", &v16, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)proxy:(id)proxy didRetrieveApplicationIcon:(id)icon
{
  proxyCopy = proxy;
  metadata = [proxyCopy metadata];
  isPoweredByThirdParty = [metadata isPoweredByThirdParty];

  if ((isPoweredByThirdParty & 1) == 0)
  {
    iconPromise = self->_iconPromise;
    applicationIconFileURL = [proxyCopy applicationIconFileURL];
    [(CPSPromise *)iconPromise finishWithResult:applicationIconFileURL];
  }
}

- (void)proxyDidUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = [metadataCopy metadata];
  hasAppMetadata = [metadata hasAppMetadata];

  if (hasAppMetadata)
  {
    v6 = +[CPSAnalyticsLogger sharedLogger];
    metadata2 = [metadataCopy metadata];
    clipBundleID = [metadata2 clipBundleID];
    configuration = [(CPSSessionProxy *)self->_sessionProxy configuration];
    launchReason = [configuration launchReason];
    [v6 recordClientMetadataRequestWithBundleID:clipBundleID launchReason:launchReason];

    metadataPromise = self->_metadataPromise;
    metadata3 = [metadataCopy metadata];
    [(CPSPromise *)metadataPromise finishWithResult:metadata3];
  }

  else
  {
    metadata4 = [metadataCopy metadata];
    metadata3 = [metadata4 invocationPolicy];

    if (metadata3 && ([metadata3 isEligible] & 1) == 0 && (objc_msgSend(metadata3, "isRecoverable") & 1) == 0)
    {
      v14 = self->_metadataPromise;
      metadata5 = [metadataCopy metadata];
      [(CPSPromise *)v14 finishWithResult:metadata5];

      [(CPSPromise *)self->_iconPromise finish];
    }
  }
}

- (void)proxyDidRetrieveBusinessIcon:(id)icon
{
  iconPromise = self->_iconPromise;
  businessIconURL = [icon businessIconURL];
  [(CPSPromise *)iconPromise finishWithResult:businessIconURL];
}

- (void)proxyRemoteServiceDidCrash:(id)crash
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CPSErrorDomain" code:3 userInfo:0];
  [(CPSPromise *)self->_metadataPromise finishWithError:v4];
  [(CPSPromise *)self->_iconPromise finishWithError:v4];
}

- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error
{
  metadataPromise = self->_metadataPromise;
  errorCopy = error;
  [(CPSPromise *)metadataPromise finishWithError:errorCopy];
  [(CPSPromise *)self->_iconPromise finishWithError:errorCopy];
}

- (void)getClipMetadataSynchronously
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_opt_class();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v2, v3, "%{public}@ (%p): synchronous metadata fetching only works with URL based request, please use initWithURL:", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDownloadedIconURLSynchronously
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_opt_class();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v2, v3, "%{public}@ (%p): synchronous metadata fetching only works with URL based request, please use initWithURL:", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_11_cold_1(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_5_1(a1, a2);
  objc_opt_class();
  v4 = [OUTLINED_FUNCTION_2_3() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __56__CPSClipMetadataRequest_requestMetadataWithCompletion___block_invoke_15_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  objc_opt_class();
  v7 = *(*(a1 + 32) + 8);
  v8 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x2Au);

  v14 = *MEMORY[0x277D85DE8];
}

void __71__CPSClipMetadataRequest_requestDownloadedIconWithMetadata_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_5_1(a1, a2);
  objc_opt_class();
  v4 = [OUTLINED_FUNCTION_2_3() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end