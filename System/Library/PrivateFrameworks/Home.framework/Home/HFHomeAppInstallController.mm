@interface HFHomeAppInstallController
+ (id)sharedInstance;
- (BOOL)_isHomeAppInstalled;
- (HFHomeAppInstallController)init;
- (LSApplicationProxy)appProxy;
- (id)downloadHomeAppWithUpdateBlock:(id)block;
- (int64_t)status;
- (void)_cleanup;
- (void)_dispatchStatusUpdate:(int64_t)update;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)request:(id)request didCompleteWithError:(id)error;
@end

@implementation HFHomeAppInstallController

+ (id)sharedInstance
{
  if (_MergedGlobals_263 != -1)
  {
    dispatch_once(&_MergedGlobals_263, &__block_literal_global_3_16);
  }

  v3 = qword_280E03078;

  return v3;
}

void __44__HFHomeAppInstallController_sharedInstance__block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = qword_280E03078;
  qword_280E03078 = v0;
}

- (HFHomeAppInstallController)init
{
  v7.receiver = self;
  v7.super_class = HFHomeAppInstallController;
  v2 = [(HFHomeAppInstallController *)&v7 init];
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    v4 = objc_opt_new();
    statusUpdaters = v2->_statusUpdaters;
    v2->_statusUpdaters = v4;

    v2->_lastReportedStatus = [(HFHomeAppInstallController *)v2 _isHomeAppInstalled]- 1;
  }

  return v2;
}

- (BOOL)_isHomeAppInstalled
{
  appProxy = [(HFHomeAppInstallController *)self appProxy];
  appState = [appProxy appState];
  isInstalled = [appState isInstalled];

  return isInstalled;
}

- (int64_t)status
{
  if ([(HFHomeAppInstallController *)self _isHomeAppInstalled])
  {
    return 0;
  }

  return [(HFHomeAppInstallController *)self lastReportedStatus];
}

- (id)downloadHomeAppWithUpdateBlock:(id)block
{
  blockCopy = block;
  if ([(HFHomeAppInstallController *)self _isHomeAppInstalled])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    activeHomeAppDownloadFuture = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    if (!activeHomeAppDownloadFuture || (v7 = activeHomeAppDownloadFuture, -[HFHomeAppInstallController activeHomeAppDownloadFuture](self, "activeHomeAppDownloadFuture"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isFinished], v8, v7, (v9 & 1) != 0))
    {
      statusUpdaters = [(HFHomeAppInstallController *)self statusUpdaters];
      [statusUpdaters removeAllObjects];

      statusUpdaters2 = [(HFHomeAppInstallController *)self statusUpdaters];
      v12 = [blockCopy copy];
      v13 = _Block_copy(v12);
      [statusUpdaters2 na_safeAddObject:v13];

      v14 = objc_opt_new();
      [(HFHomeAppInstallController *)self setActiveHomeAppDownloadFuture:v14];

      v15 = objc_alloc(MEMORY[0x277CEC4B8]);
      v16 = HFHomeAppBundleID();
      v17 = [v15 initWithBundleID:v16];
      [(HFHomeAppInstallController *)self setRequest:v17];

      request = [(HFHomeAppInstallController *)self request];
      [request setUserInitiated:1];

      [(HFHomeAppInstallController *)self _dispatchStatusUpdate:1];
      objc_initWeak(&location, self);
      request2 = [(HFHomeAppInstallController *)self request];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke;
      v29[3] = &unk_277DF3860;
      objc_copyWeak(&v30, &location);
      [request2 startWithErrorHandler:v29];

      request3 = [(HFHomeAppInstallController *)self request];
      [request3 setObserver:self];

      activeHomeAppDownloadFuture2 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke_3;
      v27[3] = &unk_277DFBE68;
      objc_copyWeak(&v28, &location);
      v22 = [activeHomeAppDownloadFuture2 addCompletionBlock:v27];
      objc_destroyWeak(&v28);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      goto LABEL_8;
    }

    statusUpdaters3 = [(HFHomeAppInstallController *)self statusUpdaters];
    v24 = [blockCopy copy];
    v25 = _Block_copy(v24);
    [statusUpdaters3 na_safeAddObject:v25];

    futureWithNoResult = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
  }

  v22 = futureWithNoResult;
LABEL_8:

  return v22;
}

void __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke_2;
    v6[3] = &unk_277DF3A68;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }

  else
  {
    [WeakRetained _dispatchStatusUpdate:2];
  }
}

void __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeHomeAppDownloadFuture];
  [v2 finishWithError:*(a1 + 32)];
}

void __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isHomeAppInstalled])
  {
    [WeakRetained _dispatchStatusUpdate:0];
  }

  [WeakRetained _cleanup];
}

- (LSApplicationProxy)appProxy
{
  v2 = MEMORY[0x277CC1E60];
  v3 = HFHomeAppBundleID();
  v4 = [v2 applicationProxyForIdentifier:v3];

  return v4;
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  appProxy = [(HFHomeAppInstallController *)self appProxy];
  bundleIdentifier = [appProxy bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(installCopy, bundleIdentifier);

  if (v7)
  {

    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:3];
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  appProxy = [(HFHomeAppInstallController *)self appProxy];
  bundleIdentifier = [appProxy bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(installCopy, bundleIdentifier);

  if (v7)
  {
    activeHomeAppDownloadFuture = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HFHomeAppInstallController_applicationsDidInstall___block_invoke;
    block[3] = &unk_277DF3D38;
    v11 = activeHomeAppDownloadFuture;
    v9 = activeHomeAppDownloadFuture;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)applicationsDidFailToInstall:(id)install
{
  installCopy = install;
  appProxy = [(HFHomeAppInstallController *)self appProxy];
  bundleIdentifier = [appProxy bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(installCopy, bundleIdentifier);

  if (v7)
  {
    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:-1];
    activeHomeAppDownloadFuture = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HFHomeAppInstallController_applicationsDidFailToInstall___block_invoke;
    block[3] = &unk_277DF3D38;
    v11 = activeHomeAppDownloadFuture;
    v9 = activeHomeAppDownloadFuture;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__HFHomeAppInstallController_applicationsDidFailToInstall___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_genericError];
  [v1 finishWithError:v2];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  appProxy = [(HFHomeAppInstallController *)self appProxy];
  bundleIdentifier = [appProxy bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(uninstallCopy, bundleIdentifier);

  if (v7)
  {

    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:-1];
  }
}

- (void)request:(id)request didCompleteWithError:(id)error
{
  errorCopy = error;
  requestCopy = request;
  request = [(HFHomeAppInstallController *)self request];

  if (request == requestCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HFHomeAppInstallController_request_didCompleteWithError___block_invoke;
    v9[3] = &unk_277DF3370;
    v10 = errorCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __59__HFHomeAppInstallController_request_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeHomeAppDownloadFuture];
  v4 = v3;
  if (v2)
  {
    [v3 finishWithError:*(a1 + 32)];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

- (void)_dispatchStatusUpdate:(int64_t)update
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HFHomeAppInstallController__dispatchStatusUpdate___block_invoke;
  aBlock[3] = &unk_277DFBF08;
  objc_copyWeak(v6, &location);
  v6[1] = update;
  v4 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __52__HFHomeAppInstallController__dispatchStatusUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained lastReportedStatus] != *(a1 + 40))
  {
    [WeakRetained setLastReportedStatus:?];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [WeakRetained statusUpdaters];
    v4 = [v3 copy];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 40);
          (*(*(*(&v11 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cleanup
{
  [(HFHomeAppInstallController *)self setActiveHomeAppDownloadFuture:0];
  request = [(HFHomeAppInstallController *)self request];
  [request setObserver:0];

  [(HFHomeAppInstallController *)self setRequest:0];
  statusUpdaters = [(HFHomeAppInstallController *)self statusUpdaters];
  [statusUpdaters removeAllObjects];

  v5 = [(HFHomeAppInstallController *)self _isHomeAppInstalled]- 1;

  [(HFHomeAppInstallController *)self setLastReportedStatus:v5];
}

@end