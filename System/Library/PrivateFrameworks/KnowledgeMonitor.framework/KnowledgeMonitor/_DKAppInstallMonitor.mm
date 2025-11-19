@interface _DKAppInstallMonitor
- (_DKAppInstallMonitor)init;
- (void)_applicationsDidChange:(id)a3 didInstall:(BOOL)a4;
@end

@implementation _DKAppInstallMonitor

- (_DKAppInstallMonitor)init
{
  v12.receiver = self;
  v12.super_class = _DKAppInstallMonitor;
  v2 = [(_DKMonitor *)&v12 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 App];
    v5 = [v4 Install];
    v6 = [v5 source];
    source = v2->_source;
    v2->_source = v6;

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    appWorkspace = v2->_appWorkspace;
    v2->_appWorkspace = v8;

    [(LSApplicationWorkspace *)v2->_appWorkspace addObserver:v2];
    v10 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(_DKAppInstallMonitor *)v10 init];
    }
  }

  return v2;
}

- (void)_applicationsDidChange:(id)a3 didInstall:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(_DKMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58___DKAppInstallMonitor__applicationsDidChange_didInstall___block_invoke;
  v13[3] = &unk_27856F678;
  v8 = v6;
  v14 = v8;
  objc_copyWeak(&v15, &location);
  v16 = a4;
  v9 = v13;
  v10 = v7;
  v11 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_27856F178;
  v19 = v11;
  v20 = v9;
  v12 = v11;
  dispatch_async(v10, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end