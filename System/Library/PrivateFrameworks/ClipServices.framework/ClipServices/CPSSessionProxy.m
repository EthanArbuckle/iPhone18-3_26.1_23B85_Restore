@interface CPSSessionProxy
- (BOOL)canRequestLocationConfirmation;
- (BOOL)isEqual:(id)a3;
- (CPSSessionProxy)initWithURL:(id)a3;
- (CPSSessionProxyDelegate)delegate;
- (NSString)launchReason;
- (void)_checkAndConsumeShowsAppAttributionBannerIfNeeded;
- (void)cancel;
- (void)checkAndConsumeShowsAppAttributionBannerWithCompletion:(id)a3;
- (void)connectToService;
- (void)didFinishLoadingWithError:(id)a3;
- (void)didFinishTestingAtTime:(double)a3;
- (void)didInstallApplicationPlaceholder;
- (void)didRetrieveApplicationIcon:(id)a3;
- (void)didRetrieveBusinessIcon:(id)a3;
- (void)didRetrieveHeroImage:(id)a3;
- (void)didUpdateInstallProgress:(id)a3;
- (void)didUpdateMetadata:(id)a3;
- (void)disconnect;
- (void)fetchClipMetadataAndImages;
- (void)getLastLaunchOptionsWithCompletion:(id)a3;
- (void)installClipWithCompletion:(id)a3;
- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4;
- (void)openClipWithLaunchOptions:(id)a3 completion:(id)a4;
- (void)prewarmClipWithCompletionHandler:(id)a3;
- (void)remoteServiceDidCrash;
@end

@implementation CPSSessionProxy

- (CPSSessionProxy)initWithURL:(id)a3
{
  v4 = a3;
  if (v4 && (v9.receiver = self, v9.super_class = CPSSessionProxy, (self = [(CPSSessionProxy *)&v9 init]) != 0))
  {
    v5 = [v4 copy];
    url = self->_url;
    self->_url = v5;

    self->_mutableIvarLock._os_unfair_lock_opaque = 0;
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSURL *)self->_url isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canRequestLocationConfirmation
{
  v2 = [(CPSSessionProxy *)self launchReason];
  if ([v2 isEqualToString:@"QR"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"AppclipCode") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"NFC") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"ClipTester"))
  {
    v3 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v3 = [v6 isEqualToString:@"com.apple.ClipTester"];
  }

  return v3;
}

- (NSString)launchReason
{
  v3 = [(CPSSessionProxy *)self configuration];
  v4 = [v3 launchReason];
  launchReason = v4;
  if (!v4)
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

- (void)prewarmClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  [v5 prewarmClipWithURL:self->_url completionHandler:v4];
}

- (void)fetchClipMetadataAndImages
{
  v3 = +[CPSDaemonConnection sharedConnection];
  [v3 fetchClipMetadataAndImagesWithURL:self->_url completionHandler:0];
}

- (void)installClipWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  [v5 installClipWithURL:self->_url completionHandler:v4];
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
  v8 = self;
  v5 = v3;
  [v5 cancelPrewarmingClipWithURL:url completionHandler:v6];
}

- (void)openClipWithLaunchOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CPSDaemonConnection sharedConnection];
  [v8 openClipWithURL:self->_url launchOptions:v7 completion:v6];
}

- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSDaemonConnection sharedConnection];
  [v7 notifyWebClipActivationWithBundleID:v6 referrerBundleID:v5];
}

- (void)getLastLaunchOptionsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(CPSClipMetadata *)self->_metadata clipBundleID];

  if (v4)
  {
    v5 = +[CPSDaemonConnection sharedConnection];
    v6 = [(CPSClipMetadata *)self->_metadata clipBundleID];
    [v5 getLastLaunchOptionsWithBundleID:v6 completion:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)checkAndConsumeShowsAppAttributionBannerWithCompletion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_mutableIvarLock);
  if (self->_showAppAttributionBannerCallback)
  {
    os_unfair_lock_unlock(&self->_mutableIvarLock);
    v6[2](v6, 0);
  }

  else
  {
    v4 = MEMORY[0x245D3D5F0](v6);
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
    v5 = [(CPSClipMetadata *)self->_metadata webClipID];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__CPSSessionProxy__checkAndConsumeShowsAppAttributionBannerIfNeeded__block_invoke;
    v6[3] = &unk_278DCEFA8;
    objc_copyWeak(&v7, &location);
    [v4 checkAndConsumeShowsAppAttributionBannerForBundleID:v5 completion:v6];

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

- (void)didUpdateMetadata:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_metadata, a3);
  [(CPSSessionProxy *)self _checkAndConsumeShowsAppAttributionBannerIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 proxyDidUpdateMetadata:self];
  }
}

- (void)didFinishLoadingWithError:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 proxy:self didFinishLoadingWithError:v7];
  }
}

- (void)didUpdateInstallProgress:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_estimatedProgress, a3);
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

- (void)didRetrieveApplicationIcon:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_applicationIconFileURL, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxy:self didRetrieveApplicationIcon:v6];
  }
}

- (void)didRetrieveBusinessIcon:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_businessIconURL, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxyDidRetrieveBusinessIcon:self];
  }
}

- (void)didRetrieveHeroImage:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_heroImageFileURL, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained proxy:self didRetrieveHeroImage:v6];
  }
}

- (void)didFinishTestingAtTime:(double)a3
{
  self->_appLaunchTime = a3;
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