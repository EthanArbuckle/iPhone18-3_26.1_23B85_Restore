@interface DMCRFRestoreFlow
+ (id)_intersectionOfSet:(id)a3 set:(id)a4;
+ (id)_set:(id)a3 subtracting:(id)a4;
- (DMCRFRestoreFlow)initWithSnapshotSource:(id)a3 interactionClient:(id)a4 deviceEnvironment:(id)a5 completion:(id)a6;
- (id)_appBundleIdentifiersSetDebugDescription:(id)a3;
- (void)_checkSnapshotForConflictingApps:(id)a3;
- (void)_compareAppsOnDeviceToAppBundleIdentifiers:(id)a3 fromSnapshot:(id)a4;
- (void)_handleSnapshots:(id)a3;
- (void)_restoreSnapshot:(id)a3 skippingApps:(id)a4;
- (void)_startRestoreFromSnapshot:(id)a3 skippingApps:(id)a4;
- (void)startManagedRestoreWorkflow;
@end

@implementation DMCRFRestoreFlow

- (DMCRFRestoreFlow)initWithSnapshotSource:(id)a3 interactionClient:(id)a4 deviceEnvironment:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = DMCRFRestoreFlow;
  v15 = [(DMCRFRestoreFlow *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_snapshotSource, a3);
    objc_storeStrong(&v16->_interactionClient, a4);
    objc_storeStrong(&v16->_deviceEnvironment, a5);
    v17 = [v14 copy];
    completion = v16->_completion;
    v16->_completion = v17;
  }

  return v16;
}

- (void)startManagedRestoreWorkflow
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v3 = dispatch_queue_create("fetch_restorable_snapshots_queue", 0);
  v4 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DMCRFRestoreFlow_startManagedRestoreWorkflow__block_invoke;
  block[3] = &unk_278EE7940;
  block[4] = v12;
  dispatch_after(v4, v3, block);
  v5 = [(DMCRFRestoreFlow *)self snapshotSource];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DMCRFRestoreFlow_startManagedRestoreWorkflow__block_invoke_10;
  v7[3] = &unk_278EE8160;
  v6 = v3;
  v9 = self;
  v10 = v12;
  v8 = v6;
  [v5 fetchRestorableSnapshotsWithCompletion:v7];

  _Block_object_dispose(v12, 8);
}

void __47__DMCRFRestoreFlow_startManagedRestoreWorkflow__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "fetch_restorable_snapshots";
      v7 = 2048;
      v8 = 0x403E000000000000;
      _os_log_impl(&dword_247E7D000, v1, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v5, 0x16u);
    }

    v2 = [@"fetch_restorable_snapshots" stringByAppendingString:@"_stackshot.ips"];
    v3 = MEMORY[0x277D034B8];
    v4 = DMCHangTracerDirectory();
    [v3 dumpStackshotToPath:v4 fileName:v2];
  }
}

void __47__DMCRFRestoreFlow_startManagedRestoreWorkflow__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DMCRFRestoreFlow_startManagedRestoreWorkflow__block_invoke_2;
  block[3] = &unk_278EE7940;
  block[4] = *(a1 + 48);
  dispatch_async(v7, block);
  if (v6)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D03430];
    v10 = DMCErrorArray();
    v11 = [v8 DMCErrorWithDomain:v9 code:59002 descriptionArray:v10 underlyingError:v6 errorType:{*MEMORY[0x277D03310], 0}];

    v12 = [*(a1 + 40) completion];
    (v12)[2](v12, v11);
  }

  else
  {
    [*(a1 + 40) _handleSnapshots:v5];
  }
}

- (void)_handleSnapshots:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [(DMCRFRestoreFlow *)self _checkSnapshotForConflictingApps:v6];
  }

  else
  {
    v7 = *(DMCLogObjects() + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "managed restore skipped because no restorable snapshots are available", v9, 2u);
    }

    v8 = [(DMCRFRestoreFlow *)self completion];
    v8[2](v8, 0);
  }
}

- (void)_checkSnapshotForConflictingApps:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v6 = dispatch_queue_create("fetch_app_bundle_ids_queue", 0);
  v7 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DMCRFRestoreFlow__checkSnapshotForConflictingApps___block_invoke;
  block[3] = &unk_278EE7940;
  block[4] = v17;
  dispatch_after(v7, v6, block);
  v8 = [(DMCRFRestoreFlow *)self snapshotSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__DMCRFRestoreFlow__checkSnapshotForConflictingApps___block_invoke_21;
  v11[3] = &unk_278EE8188;
  v9 = v6;
  v15 = v17;
  v12 = v9;
  v13 = self;
  v10 = v4;
  v14 = v10;
  [v8 fetchAppBundleIDsForSnapshot:v5 completion:v11];

  _Block_object_dispose(v17, 8);
}

void __53__DMCRFRestoreFlow__checkSnapshotForConflictingApps___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "fetch_app_bundle_ids";
      v7 = 2048;
      v8 = 0x403E000000000000;
      _os_log_impl(&dword_247E7D000, v1, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v5, 0x16u);
    }

    v2 = [@"fetch_app_bundle_ids" stringByAppendingString:@"_stackshot.ips"];
    v3 = MEMORY[0x277D034B8];
    v4 = DMCHangTracerDirectory();
    [v3 dumpStackshotToPath:v4 fileName:v2];
  }
}

void __53__DMCRFRestoreFlow__checkSnapshotForConflictingApps___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DMCRFRestoreFlow__checkSnapshotForConflictingApps___block_invoke_2;
  block[3] = &unk_278EE7940;
  block[4] = *(a1 + 56);
  dispatch_async(v7, block);
  if (v6)
  {
    v8 = *(DMCLogObjects() + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v6 DMCVerboseDescription];
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_ERROR, "managed restore failed because list of app bundle identifers in snapshot was not available: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D03430];
    v13 = DMCErrorArray();
    v14 = [v11 DMCErrorWithDomain:v12 code:59003 descriptionArray:v13 underlyingError:v6 errorType:{*MEMORY[0x277D03310], 0}];

    v15 = [*(a1 + 40) completion];
    (v15)[2](v15, v14);
  }

  else
  {
    [*(a1 + 40) _compareAppsOnDeviceToAppBundleIdentifiers:v5 fromSnapshot:*(a1 + 48)];
  }
}

- (void)_compareAppsOnDeviceToAppBundleIdentifiers:(id)a3 fromSnapshot:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [(DMCRFRestoreFlow *)self deviceEnvironment];
  v10 = [v9 installedAppBundleIdentifiers];
  v11 = [v8 _intersectionOfSet:v6 set:v10];

  v12 = [objc_opt_class() _set:v6 subtracting:v11];
  [(DMCRFRestoreFlow *)self setAppsToRestore:v12];

  v13 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v6 debugDescription];
    *buf = 138543362;
    v30 = v15;
    _os_log_impl(&dword_247E7D000, v14, OS_LOG_TYPE_DEFAULT, "managed restore, snapshot app bundle IDs: [%{public}@]", buf, 0xCu);
  }

  v16 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v11 debugDescription];
    *buf = 138543362;
    v30 = v18;
    _os_log_impl(&dword_247E7D000, v17, OS_LOG_TYPE_DEFAULT, "managed restore, conflicting app bundle IDs: [%{public}@]", buf, 0xCu);
  }

  v19 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [(DMCRFRestoreFlow *)self appsToRestore];
    v22 = [v21 debugDescription];
    *buf = 138543362;
    v30 = v22;
    _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_DEFAULT, "managed restore, restoring app bundle IDs: [%{public}@]", buf, 0xCu);
  }

  v23 = [(DMCRFRestoreFlow *)self interactionClient];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__DMCRFRestoreFlow__compareAppsOnDeviceToAppBundleIdentifiers_fromSnapshot___block_invoke;
  v26[3] = &unk_278EE81B0;
  v26[4] = self;
  v27 = v7;
  v28 = v11;
  v24 = v11;
  v25 = v7;
  [v23 doesUserWantToRestoreSnapshot:v25 withConflictingApps:v24 completion:v26];
}

void __76__DMCRFRestoreFlow__compareAppsOnDeviceToAppBundleIdentifiers_fromSnapshot___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(DMCLogObjects() + 32);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 DMCVerboseDescription];
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "managed restore failed, user could not choose conflict action: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03430];
    v11 = DMCErrorArray();
    v12 = [v9 DMCErrorWithDomain:v10 code:59006 descriptionArray:v11 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

    v13 = [*(a1 + 32) completion];
    v13[2](v13, v12);
  }

  else
  {
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "managed restore, user wants to restore and skip conflicting apps (if any)", buf, 2u);
      }

      v15 = *(a1 + 32);
      v12 = [*(a1 + 40) identifier];
      [v15 _restoreSnapshot:v12 skippingApps:*(a1 + 48)];
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "managed restore, user does not want to restore", buf, 2u);
      }

      v12 = [*(a1 + 32) completion];
      v12[2](v12, 0);
    }
  }
}

+ (id)_set:(id)a3 subtracting:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 minusSet:v5];

  v7 = [v6 copy];

  return v7;
}

+ (id)_intersectionOfSet:(id)a3 set:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 intersectSet:v5];

  v7 = [v6 copy];

  return v7;
}

- (void)_restoreSnapshot:(id)a3 skippingApps:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(DMCRFRestoreFlow *)self appsToRestore];
    v11 = [(DMCRFRestoreFlow *)self _appBundleIdentifiersSetDebugDescription:v10];
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "managed restore, marking apps as managed [%{public}@]", buf, 0xCu);
  }

  v12 = [(DMCRFRestoreFlow *)self appsToRestore];
  v13 = [v12 allObjects];

  v14 = [MDMClientCoreRestoreAppHelper alloc];
  v15 = [(DMCRFRestoreFlow *)self snapshotSource];
  v16 = [v15 personaIdentifier];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __50__DMCRFRestoreFlow__restoreSnapshot_skippingApps___block_invoke;
  v24 = &unk_278EE81D8;
  v25 = self;
  v26 = v13;
  v27 = v6;
  v28 = v7;
  v17 = v7;
  v18 = v6;
  v19 = v13;
  v20 = [(MDMClientCoreRestoreAppHelper *)v14 initWithApps:v19 persona:v16 operation:0 originator:@"MobileBackup" completion:&v21];

  [(MDMClientCoreRestoreAppHelper *)v20 start:v21];
}

void __50__DMCRFRestoreFlow__restoreSnapshot_skippingApps___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(DMCLogObjects() + 32);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_ERROR, "managed restore, could not mark apps as managed: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D03430];
    v9 = DMCErrorArray();
    v10 = [v7 DMCErrorWithDomain:v8 code:59007 descriptionArray:v9 underlyingError:v3 errorType:{*MEMORY[0x277D032F8], 0}];

    v11 = [*(a1 + 32) completion];
    (v11)[2](v11, v10);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138543362;
      v14 = v12;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "managed restore, marked these apps as managed: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _startRestoreFromSnapshot:*(a1 + 48) skippingApps:*(a1 + 56)];
  }
}

- (void)_startRestoreFromSnapshot:(id)a3 skippingApps:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(DMCRFRestoreFlow *)self _appBundleIdentifiersSetDebugDescription:v6];
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "managed restore, starting restore, skipping apps [%{public}@]", buf, 0xCu);
  }

  v11 = [(DMCRFRestoreFlow *)self snapshotSource];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__DMCRFRestoreFlow__startRestoreFromSnapshot_skippingApps___block_invoke;
  v12[3] = &unk_278EE7AF8;
  v12[4] = self;
  [v11 startRestoreForSnapshot:v7 excludingAppBundleIdentifiers:v6 completion:v12];
}

void __59__DMCRFRestoreFlow__startRestoreFromSnapshot_skippingApps___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277D03430];
    v5 = a2;
    v6 = DMCErrorArray();
    v8 = [v3 DMCErrorWithDomain:v4 code:59004 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D03310], 0}];
  }

  else
  {
    v8 = 0;
  }

  v7 = [*(a1 + 32) completion];
  (v7)[2](v7, v8);
}

- (id)_appBundleIdentifiersSetDebugDescription:(id)a3
{
  if (a3)
  {
    v4 = [a3 debugDescription];
  }

  else
  {
    v4 = &stru_2859FB650;
  }

  return v4;
}

@end