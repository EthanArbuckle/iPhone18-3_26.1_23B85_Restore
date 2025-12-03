@interface CPSClipRequest
+ (void)confirmLocationWithURL:(id)l inRegion:(id)region completion:(id)completion;
+ (void)deleteClipsWithBundleIDs:(id)ds completion:(id)completion;
+ (void)getLocationConfirmationConsentForBundleID:(id)d completion:(id)completion;
+ (void)getUserNotificationConsentForBundleID:(id)d completion:(id)completion;
- (CPSClipRequest)initWithURL:(id)l fallbackClipBundleID:(id)d;
- (id)_errorIgnoringUserCancelledErrorIfNeeded:(id)needed;
- (void)_openClipWithInvocationUI;
- (void)cancel;
- (void)dealloc;
- (void)installClipWithBundleID:(id)d completion:(id)completion;
- (void)proxy:(id)proxy didDetermineAvailability:(BOOL)availability;
- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error;
- (void)proxyAppDidLaunchForTesting:(id)testing;
- (void)proxyDidUpdateMetadata:(id)metadata;
- (void)proxyRemoteServiceDidCrash:(id)crash;
- (void)requestClipWithCompletion:(id)completion;
@end

@implementation CPSClipRequest

- (CPSClipRequest)initWithURL:(id)l fallbackClipBundleID:(id)d
{
  lCopy = l;
  dCopy = d;
  if (lCopy && (v14.receiver = self, v14.super_class = CPSClipRequest, (self = [(CPSClipRequest *)&v14 init]) != 0))
  {
    cps_sanitizedURL = [lCopy cps_sanitizedURL];
    v9 = [[CPSSessionProxy alloc] initWithURL:cps_sanitizedURL];
    sessionProxy = self->_sessionProxy;
    self->_sessionProxy = v9;

    v11 = [CPSSessionConfiguration standardConfigurationWithURL:cps_sanitizedURL fallbackBundleID:dCopy];
    [(CPSSessionProxy *)self->_sessionProxy setConfiguration:v11];

    [(CPSSessionProxy *)self->_sessionProxy setDelegate:self];
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)requestClipWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__CPSClipRequest_requestClipWithCompletion___block_invoke;
  v11 = &unk_278DCEFD8;
  selfCopy = self;
  v13 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x245D3D5F0](&v8);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  [(CPSSessionProxy *)self->_sessionProxy connectToService:v8];
}

void __44__CPSClipRequest_requestClipWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)cancel
{
  [(CPSSessionProxy *)self->_sessionProxy disconnect];
  sessionProxy = self->_sessionProxy;
  self->_sessionProxy = 0;
}

- (void)dealloc
{
  [(CPSSessionProxy *)self->_sessionProxy disconnect];
  sessionProxy = self->_sessionProxy;
  self->_sessionProxy = 0;

  v4.receiver = self;
  v4.super_class = CPSClipRequest;
  [(CPSClipRequest *)&v4 dealloc];
}

+ (void)deleteClipsWithBundleIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = +[CPSDaemonConnection sharedConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke;
  v11[3] = &unk_278DCF000;
  v13 = completionCopy;
  selfCopy = self;
  v12 = dsCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [v8 uninstallClipsWithBundleIDs:v10 completionHandler:v11];
}

void __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke_cold_1(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    *buf = 134218243;
    v15 = v6;
    v16 = 2113;
    v17 = v7;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Deleted clip with bundleIDs %{private}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke_6;
  v11[3] = &unk_278DCE368;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (void)getUserNotificationConsentForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 getUserNotificationConsentForBundleID:dCopy completion:completionCopy];
}

+ (void)getLocationConfirmationConsentForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CPSClipRequest_getLocationConfirmationConsentForBundleID_completion___block_invoke;
  v9[3] = &unk_278DCF028;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 getLastLaunchOptionsWithBundleID:dCopy completion:v9];
}

void __71__CPSClipRequest_getLocationConfirmationConsentForBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 locationConfirmationGranted];
  (*(v2 + 16))(v2, [v3 BOOLValue], 0);
}

+ (void)confirmLocationWithURL:(id)l inRegion:(id)region completion:(id)completion
{
  completionCopy = completion;
  regionCopy = region;
  lCopy = l;
  v10 = +[CPSDaemonConnection sharedConnection];
  [v10 confirmLocationWithURL:lCopy inRegion:regionCopy completion:completionCopy];
}

- (void)installClipWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  sessionProxy = self->_sessionProxy;
  dCopy = d;
  configuration = [(CPSSessionProxy *)sessionProxy configuration];
  usedByPPT = [configuration usedByPPT];

  if (usedByPPT)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __53__CPSClipRequest_installClipWithBundleID_completion___block_invoke;
    v23 = &unk_278DCEFD8;
    selfCopy = self;
    v25 = completionCopy;
    v11 = MEMORY[0x245D3D5F0](&v20);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v11;
  }

  else
  {
    v13 = +[CPSSessionConfiguration localConfiguration];
    [(CPSSessionProxy *)self->_sessionProxy setConfiguration:v13];
  }

  [(CPSSessionProxy *)self->_sessionProxy connectToService:v20];
  v14 = objc_alloc_init(CPSClipLaunchOptions);
  [(CPSClipLaunchOptions *)v14 setPredefinedBundleID:dCopy];

  [(CPSClipLaunchOptions *)v14 setSkipsLaunching:usedByPPT];
  configuration2 = [(CPSSessionProxy *)self->_sessionProxy configuration];
  launchReason = [configuration2 launchReason];
  v17 = [launchReason isEqualToString:@"DeveloperTools"];

  if (v17)
  {
    v18 = MEMORY[0x277CBEC38];
    [(CPSClipLaunchOptions *)v14 setLocationConfirmationGranted:MEMORY[0x277CBEC38]];
    [(CPSClipLaunchOptions *)v14 setUserNotificationGranted:v18];
  }

  if (usedByPPT)
  {
    v19 = 0;
  }

  else
  {
    v19 = completionCopy;
  }

  [(CPSSessionProxy *)self->_sessionProxy openClipWithLaunchOptions:v14 completion:v19];
}

void __53__CPSClipRequest_installClipWithBundleID_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (id)_errorIgnoringUserCancelledErrorIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[CPSClipRequest shouldReturnErrorOnUserCancellation](self, "shouldReturnErrorOnUserCancellation") || ([neededCopy cps_isUserCanceledError] & 1) == 0)
  {
    v5 = neededCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_openClipWithInvocationUI
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sessionProxy = self->_sessionProxy;
    v5 = v3;
    v6 = [(CPSSessionProxy *)sessionProxy url];
    *buf = 134218243;
    selfCopy = self;
    v13 = 2117;
    v14 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Showing invocation UI for %{sensitive}@", buf, 0x16u);
  }

  v7 = +[CPSDaemonConnection sharedConnection];
  v8 = [(CPSSessionProxy *)self->_sessionProxy url];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__CPSClipRequest__openClipWithInvocationUI__block_invoke;
  v10[3] = &unk_278DCDEC0;
  v10[4] = self;
  [v7 openClipWithInvocationUIIfNeededWithURL:v8 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __43__CPSClipRequest__openClipWithInvocationUI__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CPSClipRequest__openClipWithInvocationUI__block_invoke_2;
  v5[3] = &unk_278DCDE58;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __43__CPSClipRequest__openClipWithInvocationUI__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _errorIgnoringUserCancelledErrorIfNeeded:*(a1 + 40)];
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = v3;
    v8 = [v6 url];
    v9 = [v2 cps_privacyPreservingDescription];
    v15 = 134218499;
    v16 = v5;
    v17 = 2117;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Failed to show invocation UI for %{sensitive}@: %{public}@", &v15, 0x20u);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12 = v3;
    v8 = [v11 url];
    v15 = 134218243;
    v16 = v10;
    v17 = 2117;
    v18 = v8;
    _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Finished showing invocation UI for %{sensitive}@", &v15, 0x16u);
  }

LABEL_7:
  v13 = *(*(a1 + 32) + 16);
  if (v13)
  {
    (*(v13 + 16))(v13, [v2 code] != 11, v2);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)proxy:(id)proxy didDetermineAvailability:(BOOL)availability
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (availability)
  {
    self->_shouldOpenClipWhenMetadataIsUpdated = 0;
    configuration = [(CPSSessionProxy *)self->_sessionProxy configuration];
    useLocalContent = [configuration useLocalContent];

    if ((useLocalContent & 1) == 0)
    {
      [(CPSClipRequest *)self _openClipWithInvocationUI];
    }
  }

  else
  {
    configuration2 = [(CPSSessionProxy *)self->_sessionProxy configuration];
    fallbackClipBundleID = [configuration2 fallbackClipBundleID];

    if (fallbackClipBundleID)
    {
      self->_shouldOpenClipWhenMetadataIsUpdated = 1;
    }

    else
    {
      self->_shouldOpenClipWhenMetadataIsUpdated = 0;
      v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        sessionProxy = self->_sessionProxy;
        v13 = v11;
        v14 = [(CPSSessionProxy *)sessionProxy url];
        v21 = 134218243;
        selfCopy = self;
        v23 = 2117;
        v24 = v14;
        _os_log_impl(&dword_2436ED000, v13, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Clip is not available for %{sensitive}@", &v21, 0x16u);
      }

      v15 = +[CPSAnalyticsLogger sharedLogger];
      configuration3 = [(CPSSessionProxy *)self->_sessionProxy configuration];
      launchReason = [configuration3 launchReason];
      [v15 recordClientClipRequestWithBundleID:0 launchReason:launchReason];

      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        v19 = [MEMORY[0x277CCA9B8] cps_errorWithCode:2];
        completionHandler[2](completionHandler, 0, v19);
      }

      [(CPSSessionProxy *)self->_sessionProxy disconnect];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
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
    [v6 recordClientClipRequestWithBundleID:clipBundleID launchReason:launchReason];
  }

  if (self->_shouldOpenClipWhenMetadataIsUpdated)
  {
    self->_shouldOpenClipWhenMetadataIsUpdated = 0;
    [(CPSClipRequest *)self _openClipWithInvocationUI];
  }
}

- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_completionHandler)
  {
    v9 = [(CPSClipRequest *)self _errorIgnoringUserCancelledErrorIfNeeded:errorCopy];

    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sessionProxy = self->_sessionProxy;
        v13 = v11;
        v14 = [(CPSSessionProxy *)sessionProxy url];
        cps_privacyPreservingDescription = [v9 cps_privacyPreservingDescription];
        v19 = 134218755;
        selfCopy2 = self;
        v21 = 2117;
        v22 = v14;
        v23 = 2114;
        v24 = cps_privacyPreservingDescription;
        v25 = 2048;
        v26 = proxyCopy;
        _os_log_error_impl(&dword_2436ED000, v13, OS_LOG_TYPE_ERROR, "CPSClipRequest (%p): Failed to show invocation UI for %{sensitive}@: %{public}@, proxy: %p", &v19, 0x2Au);

LABEL_8:
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = self->_sessionProxy;
      v17 = v11;
      v14 = [(CPSSessionProxy *)v16 url];
      v19 = 134218499;
      selfCopy2 = self;
      v21 = 2117;
      v22 = v14;
      v23 = 2048;
      v24 = proxyCopy;
      _os_log_impl(&dword_2436ED000, v17, OS_LOG_TYPE_INFO, "CPSClipRequest (%p): Finished showing invocation UI for %{sensitive}@, proxy: %p", &v19, 0x20u);

      goto LABEL_8;
    }

    (*(self->_completionHandler + 2))();
    goto LABEL_10;
  }

  v9 = errorCopy;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)proxyRemoteServiceDidCrash:(id)crash
{
  crashCopy = crash;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CPSClipRequest *)self proxyRemoteServiceDidCrash:crashCopy, v5];
  }
}

- (void)proxyAppDidLaunchForTesting:(id)testing
{
  if ([testing usedByPPT])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.ClipServices.Notification.TestComplete" object:0];
  }
}

void __54__CPSClipRequest_deleteClipsWithBundleIDs_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 cps_privacyPreservingDescription];
  v9 = 134218499;
  v10 = v4;
  v11 = 2113;
  v12 = v5;
  v13 = 2114;
  v14 = v7;
  _os_log_error_impl(&dword_2436ED000, v6, OS_LOG_TYPE_ERROR, "CPSClipRequest (%p): Failed to delete clip with bundleIDs %{private}@: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)proxyRemoteServiceDidCrash:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_2436ED000, log, OS_LOG_TYPE_ERROR, "CPSClipRequest (%p): Remote service crashed for proxy: %p", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end