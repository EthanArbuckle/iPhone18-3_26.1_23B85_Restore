@interface HDPostInstallUpdateManager
- (HDDaemon)daemon;
- (HDPostInstallUpdateManager)initWithDaemon:(id)a3;
- (void)_postInstallUpdateHandlerDidFire:(id)a3 completion:(id)a4;
- (void)_triggerMigrationForProfile:(char)a3 protected:(void *)a4 completion:;
- (void)start;
@end

@implementation HDPostInstallUpdateManager

- (HDPostInstallUpdateManager)initWithDaemon:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDPostInstallUpdateManager;
  v5 = [(HDPostInstallUpdateManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = HKCreateSerialDispatchQueue();
    monitoringQueue = v6->_monitoringQueue;
    v6->_monitoringQueue = v7;

    v9 = objc_alloc(MEMORY[0x277CCD738]);
    v10 = HKLogInfrastructure();
    v11 = [v9 initWithName:@"post-install-update-handlers" loggingCategory:v10];
    observers = v6->_observers;
    v6->_observers = v11;
  }

  return v6;
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  if (_HDIsUnitTesting)
  {
    _HKInitializeLogging();
    v3 = HKLogInfrastructure();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "note: skipping %@ because we're unit testing", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v6 = objc_alloc(MEMORY[0x277D10B00]);
    v7 = HKLogInfrastructure();
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    v9 = [WeakRetained systemScheduler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__HDPostInstallUpdateManager_start__block_invoke;
    v13[3] = &unk_278620518;
    objc_copyWeak(&v14, buf);
    v10 = [v6 initWithName:@"com.apple.healthd.post-install-update.fastpass" loggingCategory:v7 scheduler:v9 handler:v13];
    fastPassTask = self->_fastPassTask;
    self->_fastPassTask = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __35__HDPostInstallUpdateManager_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postInstallUpdateHandlerDidFire:v8 completion:v5];

  objc_autoreleasePoolPop(v6);
}

- (void)_postInstallUpdateHandlerDidFire:(id)a3 completion:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    v8 = [WeakRetained behavior];
    v9 = [v8 currentOSBuild];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Updated to %{public}@; performing post-install update tasks.", &buf, 0xCu);
  }

  v48 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke;
  v69[3] = &unk_278620568;
  v69[4] = self;
  v71 = v72;
  v46 = v5;
  v70 = v46;
  [v48 setDidFinish:v69];
  v10 = objc_loadWeakRetained(&self->_daemon);
  v11 = [v10 behavior];
  v12 = [v11 isDeviceSupported];

  if (v12)
  {
    [v48 beginTask];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_306;
    v66[3] = &unk_278620590;
    v66[4] = self;
    v68 = v72;
    v67 = v46;
    [v47 addExpirationHandler:v66];
    [v48 beginTask];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_3;
    v64[3] = &unk_278613968;
    v13 = v48;
    v65 = v13;
    v14 = v64;
    v15 = v14;
    if (!self)
    {

      goto LABEL_17;
    }

    v16 = objc_loadWeakRetained(&self->_daemon);
    v17 = [v16 primaryProfile];
    v18 = [v17 medicalIDDataManager];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v77 = __76__HDPostInstallUpdateManager__migrateEmergencySOSIfNecessaryWithCompletion___block_invoke;
    v78 = &unk_2786130D8;
    v19 = v15;
    v79 = v19;
    [v18 runEmergencyContactConsolidationWithCompletion:&buf];

    v20 = objc_loadWeakRetained(&self->_daemon);
    v21 = [v20 primaryProfile];
    v22 = [v21 medicalIDDataManager];
    v74 = 0;
    v23 = [v22 fetchMedicalIDWithError:&v74];
    v24 = v74;

    if (!v23)
    {
      if (v24)
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v24;
          _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[database] Failed to fetch MedicalID during database migration with error %{public}@", &buf, 0xCu);
        }
      }
    }

    v26 = objc_loadWeakRetained(&self->_daemon);
    v27 = [v26 behavior];
    if ([v27 isiPad])
    {
      v28 = [MEMORY[0x277D262A0] sharedConnection];
      v29 = [v28 isSafetyDataSubmissionAllowed];

      if (!v29)
      {
LABEL_17:
        v31 = objc_loadWeakRetained(&self->_daemon);
        v32 = [v31 profileManager];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v33 = [v32 allProfileIdentifiers];
        v34 = [v33 countByEnumeratingWithState:&v60 objects:v75 count:16];
        if (v34)
        {
          v35 = *v61;
          do
          {
            v36 = 0;
            do
            {
              if (*v61 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = [v32 profileForIdentifier:*(*(&v60 + 1) + 8 * v36)];
              if (v37)
              {
                [v13 beginTask];
                v58[0] = MEMORY[0x277D85DD0];
                v58[1] = 3221225472;
                v58[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_4;
                v58[3] = &unk_278613968;
                v38 = v13;
                v59 = v38;
                [(HDPostInstallUpdateManager *)self _triggerMigrationForProfile:v37 protected:0 completion:v58];
                [v38 beginTask];
                v56[0] = MEMORY[0x277D85DD0];
                v56[1] = 3221225472;
                v56[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_5;
                v56[3] = &unk_278613968;
                v57 = v38;
                [(HDPostInstallUpdateManager *)self _triggerMigrationForProfile:v37 protected:1 completion:v56];
              }

              ++v36;
            }

            while (v34 != v36);
            v34 = [v33 countByEnumeratingWithState:&v60 objects:v75 count:16];
          }

          while (v34);
        }

        v39 = dispatch_group_create();
        [v13 beginTask];
        observers = self->_observers;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_6;
        v52[3] = &unk_2786205B8;
        v41 = v13;
        v53 = v41;
        v54 = self;
        v42 = v39;
        v55 = v42;
        [(HKObserverSet *)observers notifyObserversInGroup:v42 handler:v52];
        v43 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_310;
        block[3] = &unk_278613968;
        v44 = v41;
        v51 = v44;
        dispatch_group_notify(v42, v43, block);

        [v44 finishTask];
        goto LABEL_27;
      }

      v26 = [MEMORY[0x277D262A0] sharedConnection];
      [v26 setSafetyDataSubmissionAllowed:0];
    }

    else
    {
    }

    goto LABEL_17;
  }

  _HKInitializeLogging();
  v30 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Current device is not supported; skipping post-install update since profiles are not available.", &buf, 2u);
  }

  [v48 beginTask];
  [v48 finishTask];
LABEL_27:

  _Block_object_dispose(v72, 8);
  v45 = *MEMORY[0x277D85DE8];
}

void __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v4 = [WeakRetained behavior];
    v5 = [v4 currentOSBuild];
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Finished post-install update tasks after updating to %{public}@.", buf, 0xCu);
  }

  v6 = MEMORY[0x277CF07F0];
  v7 = [MEMORY[0x277CBEAA8] date];
  v16 = 0;
  [v6 reportFeatureCheckpoint:50 forFeature:600 atDate:v7 error:&v16];
  v8 = v16;

  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to inform DAS that post-install update tasks were completed due to %{public}@.", buf, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_303;
  block[3] = &unk_278620540;
  v13 = *(a1 + 40);
  v11 = v13;
  v15 = v13;
  dispatch_async(v10, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_303(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_306(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_2;
  block[3] = &unk_278620540;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(v1, block);
}

uint64_t __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_triggerMigrationForProfile:(char)a3 protected:(void *)a4 completion:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [v7 database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__HDPostInstallUpdateManager__triggerMigrationForProfile_protected_completion___block_invoke;
    v10[3] = &unk_2786164B0;
    v13 = a3;
    v11 = v7;
    v12 = v8;
    [v9 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:0 block:v10];
  }
}

void __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) beginTask];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Notifying %{public}@ for post-install update", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_307;
  v8[3] = &unk_278616020;
  v9 = v3;
  v5 = *(a1 + 40);
  v10 = *(a1 + 32);
  v6 = v3;
  [v6 performPostInstallUpdateTaskForManager:v5 completion:v8];
  dispatch_group_leave(*(a1 + 48));

  v7 = *MEMORY[0x277D85DE8];
}

void __74__HDPostInstallUpdateManager__postInstallUpdateHandlerDidFire_completion___block_invoke_307(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2B0];
  v7 = *MEMORY[0x277CCC2B0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Received successful post-install update completion from %{public}@.", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Post install update failed for %{public}@: %{public}@", &v11, 0x16u);
  }

  [*(a1 + 40) finishTask];

  v9 = *MEMORY[0x277D85DE8];
}

void __79__HDPostInstallUpdateManager__triggerMigrationForProfile_protected_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = @"protected";
  }

  else
  {
    v2 = @"unprotected";
  }

  v3 = v2;
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC2B0];
  v5 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 profileIdentifier];
    *buf = 138543618;
    v22 = v3;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Performing %{public}@ Health database migration for %{public}@...", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    +[HDDatabaseTransactionContext contextForWritingProtectedData];
  }

  else
  {
    +[HDDatabaseTransactionContext contextForWriting];
  }
  v9 = ;
  v10 = [*(a1 + 32) database];
  v20 = 0;
  v11 = [v10 performTransactionWithContext:v9 error:&v20 block:&__block_literal_global_95 inaccessibilityHandler:0];
  v12 = v20;

  _HKInitializeLogging();
  v13 = *v4;
  v14 = *v4;
  if (!v11)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = *(a1 + 32);
    v16 = v13;
    v17 = [v19 profileIdentifier];
    *buf = 138543874;
    v22 = v3;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v12;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed %{public}@ Health database migration for %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = v13;
    v17 = [v15 profileIdentifier];
    *buf = 138543618;
    v22 = v3;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Finished %{public}@ Health database migration for %{public}@.", buf, 0x16u);
LABEL_12:
  }

LABEL_14:
  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

void __76__HDPostInstallUpdateManager__migrateEmergencySOSIfNecessaryWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E0];
  v7 = *MEMORY[0x277CCC2E0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Migrated Emergency SOS completed successfully", &v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Migration for Emergency SOS failed: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end