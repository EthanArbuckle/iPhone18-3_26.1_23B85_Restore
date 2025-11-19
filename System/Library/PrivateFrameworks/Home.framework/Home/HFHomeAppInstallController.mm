@interface HFHomeAppInstallController
+ (id)sharedInstance;
- (BOOL)_isHomeAppInstalled;
- (HFHomeAppInstallController)init;
- (LSApplicationProxy)appProxy;
- (id)downloadHomeAppWithUpdateBlock:(id)a3;
- (int64_t)status;
- (void)_cleanup;
- (void)_dispatchStatusUpdate:(int64_t)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)request:(id)a3 didCompleteWithError:(id)a4;
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
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 addObserver:v2];

    v4 = objc_opt_new();
    statusUpdaters = v2->_statusUpdaters;
    v2->_statusUpdaters = v4;

    v2->_lastReportedStatus = [(HFHomeAppInstallController *)v2 _isHomeAppInstalled]- 1;
  }

  return v2;
}

- (BOOL)_isHomeAppInstalled
{
  v2 = [(HFHomeAppInstallController *)self appProxy];
  v3 = [v2 appState];
  v4 = [v3 isInstalled];

  return v4;
}

- (int64_t)status
{
  if ([(HFHomeAppInstallController *)self _isHomeAppInstalled])
  {
    return 0;
  }

  return [(HFHomeAppInstallController *)self lastReportedStatus];
}

- (id)downloadHomeAppWithUpdateBlock:(id)a3
{
  v4 = a3;
  if ([(HFHomeAppInstallController *)self _isHomeAppInstalled])
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v6 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    if (!v6 || (v7 = v6, -[HFHomeAppInstallController activeHomeAppDownloadFuture](self, "activeHomeAppDownloadFuture"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isFinished], v8, v7, (v9 & 1) != 0))
    {
      v10 = [(HFHomeAppInstallController *)self statusUpdaters];
      [v10 removeAllObjects];

      v11 = [(HFHomeAppInstallController *)self statusUpdaters];
      v12 = [v4 copy];
      v13 = _Block_copy(v12);
      [v11 na_safeAddObject:v13];

      v14 = objc_opt_new();
      [(HFHomeAppInstallController *)self setActiveHomeAppDownloadFuture:v14];

      v15 = objc_alloc(MEMORY[0x277CEC4B8]);
      v16 = HFHomeAppBundleID();
      v17 = [v15 initWithBundleID:v16];
      [(HFHomeAppInstallController *)self setRequest:v17];

      v18 = [(HFHomeAppInstallController *)self request];
      [v18 setUserInitiated:1];

      [(HFHomeAppInstallController *)self _dispatchStatusUpdate:1];
      objc_initWeak(&location, self);
      v19 = [(HFHomeAppInstallController *)self request];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke;
      v29[3] = &unk_277DF3860;
      objc_copyWeak(&v30, &location);
      [v19 startWithErrorHandler:v29];

      v20 = [(HFHomeAppInstallController *)self request];
      [v20 setObserver:self];

      v21 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__HFHomeAppInstallController_downloadHomeAppWithUpdateBlock___block_invoke_3;
      v27[3] = &unk_277DFBE68;
      objc_copyWeak(&v28, &location);
      v22 = [v21 addCompletionBlock:v27];
      objc_destroyWeak(&v28);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      goto LABEL_8;
    }

    v23 = [(HFHomeAppInstallController *)self statusUpdaters];
    v24 = [v4 copy];
    v25 = _Block_copy(v24);
    [v23 na_safeAddObject:v25];

    v5 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
  }

  v22 = v5;
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

- (void)applicationsWillInstall:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeAppInstallController *)self appProxy];
  v6 = [v5 bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(v4, v6);

  if (v7)
  {

    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:3];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeAppInstallController *)self appProxy];
  v6 = [v5 bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(v4, v6);

  if (v7)
  {
    v8 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HFHomeAppInstallController_applicationsDidInstall___block_invoke;
    block[3] = &unk_277DF3D38;
    v11 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeAppInstallController *)self appProxy];
  v6 = [v5 bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(v4, v6);

  if (v7)
  {
    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:-1];
    v8 = [(HFHomeAppInstallController *)self activeHomeAppDownloadFuture];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HFHomeAppInstallController_applicationsDidFailToInstall___block_invoke;
    block[3] = &unk_277DF3D38;
    v11 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__HFHomeAppInstallController_applicationsDidFailToInstall___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_genericError];
  [v1 finishWithError:v2];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = [(HFHomeAppInstallController *)self appProxy];
  v6 = [v5 bundleIdentifier];
  v7 = HFAppProxiesContainsAppProxyWithIdentifier(v4, v6);

  if (v7)
  {

    [(HFHomeAppInstallController *)self _dispatchStatusUpdate:-1];
  }
}

- (void)request:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFHomeAppInstallController *)self request];

  if (v8 == v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HFHomeAppInstallController_request_didCompleteWithError___block_invoke;
    v9[3] = &unk_277DF3370;
    v10 = v6;
    v11 = self;
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

- (void)_dispatchStatusUpdate:(int64_t)a3
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HFHomeAppInstallController__dispatchStatusUpdate___block_invoke;
  aBlock[3] = &unk_277DFBF08;
  objc_copyWeak(v6, &location);
  v6[1] = a3;
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
  v3 = [(HFHomeAppInstallController *)self request];
  [v3 setObserver:0];

  [(HFHomeAppInstallController *)self setRequest:0];
  v4 = [(HFHomeAppInstallController *)self statusUpdaters];
  [v4 removeAllObjects];

  v5 = [(HFHomeAppInstallController *)self _isHomeAppInstalled]- 1;

  [(HFHomeAppInstallController *)self setLastReportedStatus:v5];
}

@end