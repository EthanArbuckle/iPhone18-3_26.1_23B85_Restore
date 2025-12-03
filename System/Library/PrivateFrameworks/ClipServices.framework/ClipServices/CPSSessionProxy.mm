@interface CPSSessionProxy
- (BOOL)canRequestLocationConfirmation;
- (BOOL)isEqual:(id)equal;
- (CPSSessionProxy)initWithURL:(id)l;
- (CPSSessionProxyDelegate)delegate;
- (NSString)launchReason;
- (void)_checkAndConsumeShowsAppAttributionBannerIfNeeded;
- (void)cancel;
- (void)checkAndConsumeShowsAppAttributionBannerWithCompletion:(id)completion;
- (void)connectToService;
- (void)didFinishLoadingWithError:(id)error;
- (void)didFinishTestingAtTime:(double)time;
- (void)didInstallApplicationPlaceholder;
- (void)didRetrieveApplicationIcon:(id)icon;
- (void)didRetrieveBusinessIcon:(id)icon;
- (void)didRetrieveHeroImage:(id)image;
- (void)didUpdateInstallProgress:(id)progress;
- (void)didUpdateMetadata:(id)metadata;
- (void)disconnect;
- (void)fetchClipMetadataAndImages;
- (void)getLastLaunchOptionsWithCompletion:(id)completion;
- (void)installClipWithCompletion:(id)completion;
- (void)notifyWebClipActivationWithBundleID:(id)d referrerBundleID:(id)iD;
- (void)openClipWithLaunchOptions:(id)options completion:(id)completion;
- (void)prewarmClipWithCompletionHandler:(id)handler;
- (void)remoteServiceDidCrash;
@end

@implementation CPSSessionProxy

- (CPSSessionProxy)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy && (v9.receiver = self, v9.super_class = CPSSessionProxy, (self = [(CPSSessionProxy *)&v9 init]) != 0))
  {
    v5 = [lCopy copy];
    url = self->_url;
    self->_url = v5;

    self->_mutableIvarLock._os_unfair_lock_opaque = 0;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSURL *)self->_url isEqual:equalCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canRequestLocationConfirmation
{
  launchReason = [(CPSSessionProxy *)self launchReason];
  if ([launchReason isEqualToString:@"QR"] & 1) != 0 || (objc_msgSend(launchReason, "isEqualToString:", @"AppclipCode") & 1) != 0 || (objc_msgSend(launchReason, "isEqualToString:", @"NFC") & 1) != 0 || (objc_msgSend(launchReason, "isEqualToString:", @"ClipTester"))
  {
    v3 = 1;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v3 = [bundleIdentifier isEqualToString:@"com.apple.ClipTester"];
  }

  return v3;
}

- (NSString)launchReason
{
  configuration = [(CPSSessionProxy *)self configuration];
  launchReason = [configuration launchReason];
  launchReason = launchReason;
  if (!launchReason)
  {
    launchReason = self->_launchReason;
  }

  v6 = launchReason;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Other";
  }

  v8 = v7;

  return &v7->isa;
}

- (void)connectToService
{
  v3 = +[CPSDaemonConnection sharedConnection];
  [v3 registerSessionProxy:self];
}

- (void)disconnect
{
  v3 = +[CPSDaemonConnection sharedConnection];
  [v3 unregisterSessionProxy:self];
}

- (void)prewarmClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  [v5 prewarmClipWithURL:self->_url completionHandler:handlerCopy];
}

- (void)fetchClipMetadataAndImages
{
  v3 = +[CPSDaemonConnection sharedConnection];
  [v3 fetchClipMetadataAndImagesWithURL:self->_url completionHandler:0];
}

- (void)installClipWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CPSDaemonConnection sharedConnection];
  [v5 installClipWithURL:self->_url completionHandler:completionCopy];
}

- (void)cancel
{
  v3 = +[CPSDaemonConnection sharedConnection];
  url = self->_url;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__CPSSessionProxy_cancel__block_invoke;
  v6[3] = &unk_278DCDD20;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 cancelPrewarmingClipWithURL:url completionHandler:v6];
}

- (void)openClipWithLaunchOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v8 = +[CPSDaemonConnection sharedConnection];
  [v8 openClipWithURL:self->_url launchOptions:optionsCopy completion:completionCopy];
}

- (void)notifyWebClipActivationWithBundleID:(id)d referrerBundleID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 notifyWebClipActivationWithBundleID:dCopy referrerBundleID:iDCopy];
}

- (void)getLastLaunchOptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  clipBundleID = [(CPSClipMetadata *)self->_metadata clipBundleID];

  if (clipBundleID)
  {
    v5 = +[CPSDaemonConnection sharedConnection];
    clipBundleID2 = [(CPSClipMetadata *)self->_metadata clipBundleID];
    [v5 getLastLaunchOptionsWithBundleID:clipBundleID2 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)checkAndConsumeShowsAppAttributionBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_mutableIvarLock);
  if (self->_showAppAttributionBannerCallback)
  {
    os_unfair_lock_unlock(&self->_mutableIvarLock);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v4 = MEMORY[0x245D3D5F0](completionCopy);
    showAppAttributionBannerCallback = self->_showAppAttributionBannerCallback;
    self->_showAppAttributionBannerCallback = v4;

    os_unfair_lock_unlock(&self->_mutableIvarLock);
    [(CPSSessionProxy *)self _checkAndConsumeShowsAppAttributionBannerIfNeeded];
  }
}

- (void)_checkAndConsumeShowsAppAttributionBannerIfNeeded
{
  os_unfair_lock_lock(&self->_mutableIvarLock);
  if (self->_showAppAttributionBannerCallback && !self->_isCheckingAppAttributionBannerCanShow && ([(CPSClipMetadata *)self->_metadata clipBundleID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    self->_isCheckingAppAttributionBannerCanShow = 1;
    os_unfair_lock_unlock(&self->_mutableIvarLock);
    objc_initWeak(&location, self);
    v4 = +[CPSDaemonConnection sharedConnection];
    webClipID = [(CPSClipMetadata *)self->_metadata webClipID];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__CPSSessionProxy__checkAndConsumeShowsAppAttributionBannerIfNeeded__block_invoke;
    v6[3] = &unk_278DCEFA8;
    objc_copyWeak(&v7, &location);
    [v4 checkAndConsumeShowsAppAttributionBannerForBundleID:webClipID completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {

    os_unfair_lock_unlock(&self->_mutableIvarLock);
  }
}

void __68__CPSSessionProxy__checkAndConsumeShowsAppAttributionBannerIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    LOBYTE(v6[3]._os_unfair_lock_opaque) = 0;
    v4 = MEMORY[0x245D3D5F0](*&v6[4]._os_unfair_lock_opaque);
    v5 = *&v6[4]._os_unfair_lock_opaque;
    *&v6[4]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v6 + 2);
    v4[2](v4, a2);

    WeakRetained = v6;
  }
}

- (void)didUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_metadata, metadata);
  [(CPSSessionProxy *)self _checkAndConsumeShowsAppAttributionBannerIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 proxyDidUpdateMetadata:self];
  }
}

- (void)didFinishLoadingWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 proxy:self didFinishLoadingWithError:errorCopy];
  }
}

- (void)didUpdateInstallProgress:(id)progress
{
  progressCopy = progress;
  objc_storeStrong(&self->_estimatedProgress, progress);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 proxyDidChangeProgress:self];
  }
}

- (void)didInstallApplicationPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 proxyDidInstallApplicationPlaceholder:self];
  }
}

- (void)didRetrieveApplicationIcon:(id)icon
{
  iconCopy = icon;
  objc_storeStrong(&self->_applicationIconFileURL, icon);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxy:self didRetrieveApplicationIcon:iconCopy];
  }
}

- (void)didRetrieveBusinessIcon:(id)icon
{
  iconCopy = icon;
  objc_storeStrong(&self->_businessIconURL, icon);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxyDidRetrieveBusinessIcon:self];
  }
}

- (void)didRetrieveHeroImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_heroImageFileURL, image);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxy:self didRetrieveHeroImage:imageCopy];
  }
}

- (void)didFinishTestingAtTime:(double)time
{
  self->_appLaunchTime = time;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxyAppDidLaunchForTesting:self];
  }
}

- (void)remoteServiceDidCrash
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxyRemoteServiceDidCrash:self];
  }
}

- (CPSSessionProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end