@interface HDMCPostInstallUpdateManager
- (BOOL)_triggerInitialAnalysisWithError:(id *)a3;
- (BOOL)_updateDeviceScopedStorageWithError:(id *)a3;
- (HDMCPostInstallUpdateManager)initWithProfileExtension:(id)a3;
- (void)daemonReady:(id)a3;
- (void)performPostInstallUpdateTaskForManager:(id)a3 completion:(id)a4;
@end

@implementation HDMCPostInstallUpdateManager

- (HDMCPostInstallUpdateManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDMCPostInstallUpdateManager;
  v5 = [(HDMCPostInstallUpdateManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profileExtension, v4);
    v8 = [v4 profile];
    v9 = [v8 daemon];
    [v9 registerDaemonReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)daemonReady:(id)a3
{
  v4 = [a3 postInstallUpdateManager];
  [v4 registerUpdateTaskHandler:self queue:0];
}

- (void)performPostInstallUpdateTaskForManager:(id)a3 completion:(id)a4
{
  v5 = a4;
  v14 = 0;
  v6 = [(HDMCPostInstallUpdateManager *)self _updateDeviceScopedStorageWithError:&v14];
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v13 = v7;
    v9 = [(HDMCPostInstallUpdateManager *)self _triggerInitialAnalysisWithError:&v13];
    v10 = v13;

    if (v9)
    {
      v11 = 1;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v10;
    }

    (v5)[2](v5, v11, v12);
    v8 = v10;
  }

  else
  {
    (v5)[2](v5, 0, v7);
  }
}

- (BOOL)_triggerInitialAnalysisWithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v13 = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing due to post install update task", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained analysisManager];
  v10 = [v9 analyzeWithError:a3];

  v11 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)_updateDeviceScopedStorageWithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v13 = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating Device-Scoped Storage due to post install update task", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained deviceScopedStorageManager];
  v10 = [v9 updateLocalDeviceValuesNowWithError:a3];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end