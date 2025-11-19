@interface HDDatabasePruningCoordinator
+ (void)registerDisabledPeriodicActivitiesForUnsupportedDaemon:(id)a3;
- (HDDatabasePruningCoordinator)initWithDaemon:(id)a3;
- (id)diagnosticDescription;
- (void)dealloc;
- (void)performPeriodicActivity:(id)a3 completion:(id)a4;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDDatabasePruningCoordinator

- (HDDatabasePruningCoordinator)initWithDaemon:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDDatabasePruningCoordinator;
  v5 = [(HDDatabasePruningCoordinator *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_daemon, v4);
    v8 = [v4 primaryProfile];
    [v8 registerProfileReadyObserver:v6 queue:0];

    v9 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v9 addObject:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [v3 removeObject:self];

  v4.receiver = self;
  v4.super_class = HDDatabasePruningCoordinator;
  [(HDDatabasePruningCoordinator *)&v4 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [HDPeriodicActivity alloc];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v5 = [WeakRetained primaryProfile];
  v6 = HKLogInfrastructure();
  v7 = [(HDPeriodicActivity *)v4 initWithProfile:v5 name:@"com.apple.healthd.prune-database" interval:self delegate:v6 loggingCategory:28800.0];
  activity = self->_activity;
  self->_activity = v7;
}

+ (void)registerDisabledPeriodicActivitiesForUnsupportedDaemon:(id)a3
{
  v3 = HKLogInfrastructure();
  [HDPeriodicActivity registerDisabledPeriodicActivityWithName:@"com.apple.healthd.prune-database" loggingCategory:v3];
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  v5 = *MEMORY[0x277D86230];
  xdict = a4;
  xpc_dictionary_set_BOOL(xdict, v5, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v7 = [WeakRetained behavior];
  v8 = [v7 isAppleWatch];

  v9 = MEMORY[0x277D86370];
  if (!v8)
  {
    v9 = MEMORY[0x277D86378];
  }

  xpc_dictionary_set_BOOL(xdict, *v9, 1);
}

- (void)performPeriodicActivity:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v8 BOOLForKey:@"HDPPTTestRunning"])
  {
    (*(v7 + 2))(v7, 0, 0, 0.0);
  }

  else
  {
    v33 = v8;
    v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"pruneDatabase"];
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    v31 = [WeakRetained profileManager];
    v10 = [v31 allProfileIdentifiers];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __67__HDDatabasePruningCoordinator_performPeriodicActivity_completion___block_invoke;
    v44[3] = &unk_27862BE28;
    v35 = v6;
    v45 = v6;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __67__HDDatabasePruningCoordinator_performPeriodicActivity_completion___block_invoke_2;
    v41[3] = &unk_27862BE50;
    v42 = v9;
    v34 = v7;
    v43 = v7;
    v11 = v9;
    v12 = v10;
    v38 = v44;
    v13 = v41;
    if (self)
    {
      v30 = v11;
      v14 = objc_alloc_init(MEMORY[0x277D10BB0]);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __112__HDDatabasePruningCoordinator__pruneProfilesWithIdentifiers_takeAccessibilityAssertion_shouldDefer_completion___block_invoke;
      v52[3] = &unk_278619568;
      v52[4] = self;
      v28 = v13;
      v53 = v13;
      [v14 setDidFinish:v52];
      v37 = v14;
      [v14 beginTask];
      v15 = objc_loadWeakRetained(&self->_daemon);
      v40 = [v15 profileManager];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v29 = v12;
      obj = v12;
      v16 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v39 = *v49;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v49 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v48 + 1) + 8 * i);
            v20 = [v40 profileForIdentifier:{v19, v28}];
            if (v20)
            {
              _HKInitializeLogging();
              v21 = *MEMORY[0x277CCC2B0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v55 = v19;
                _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Pruning database for profile %{public}@", buf, 0xCu);
              }

              v22 = [v20 attachmentManager];
              [v22 runMaintenanceOperationIfNeeded];

              [v37 beginTask];
              v23 = [[HDDatabasePruningTask alloc] initWithProfile:v20];
              v24 = objc_loadWeakRetained(&self->_daemon);
              v25 = [v24 maintenanceWorkCoordinator];
              v26 = [MEMORY[0x277CBEAA8] date];
              v46[0] = MEMORY[0x277D85DD0];
              v46[1] = 3221225472;
              v46[2] = __112__HDDatabasePruningCoordinator__pruneProfilesWithIdentifiers_takeAccessibilityAssertion_shouldDefer_completion___block_invoke_316;
              v46[3] = &unk_27862BE98;
              v46[4] = v19;
              v47 = v37;
              [(HDDatabasePruningTask *)v23 enqueueMaintenanceOperationOnCoordinator:v25 takeAccessibilityAssertion:1 nowDate:v26 shouldDefer:v38 completion:v46];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v17);
      }

      [v37 finishTask];
      v12 = v29;
      v11 = v30;
      v13 = v28;
    }

    v7 = v34;
    v6 = v35;
    v8 = v33;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __67__HDDatabasePruningCoordinator_performPeriodicActivity_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) invalidate];
  if (a2 == 2)
  {
    v6 = *(*(a1 + 40) + 16);
    v5.n128_u64[0] = 0;
  }

  else
  {
    if (a2 == 1)
    {
      v5.n128_u64[0] = 0;
      (*(*(a1 + 40) + 16))(v5);
      goto LABEL_8;
    }

    if (a2)
    {
      goto LABEL_8;
    }

    v6 = *(*(a1 + 40) + 16);
    v5.n128_u64[0] = 0;
  }

  v6(v5);
LABEL_8:
}

void __112__HDDatabasePruningCoordinator__pruneProfilesWithIdentifiers_takeAccessibilityAssertion_shouldDefer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a4;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CBEBD0];
    v10 = v7;
    v11 = [v9 standardUserDefaults];
    [v11 setObject:v10 forKey:@"HDDatabasePruningLastAttemptDateKey"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    [v11 setObject:v12 forKey:@"HDDatabasePruningCompletedKey"];
  }

  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = [v17 hk_map:&__block_literal_global_215];
    v14 = [v13 count];
    v15 = *(a1 + 40);
    if (v14)
    {
      v16 = [v13 firstObject];
      (*(v15 + 16))(v15, 1, v16);
    }

    else
    {
      (*(v15 + 16))(v15, 2, 0);
    }
  }
}

void *__112__HDDatabasePruningCoordinator__pruneProfilesWithIdentifiers_takeAccessibilityAssertion_shouldDefer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 code] == 708)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

void __112__HDDatabasePruningCoordinator__pruneProfilesWithIdentifiers_takeAccessibilityAssertion_shouldDefer_completion___block_invoke_316(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Finished pruning database for profile %{public}@", &v11, 0xCu);
  }

  switch(a2)
  {
    case 2:
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CCA9B8] hk_error:708 description:0];
      [v8 failTaskWithError:v9];

      break;
    case 1:
      [*(a1 + 40) failTaskWithError:v5];
      break;
    case 0:
      [*(a1 + 40) finishTask];
      break;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v2 = "in";
  if (self)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 objectForKey:@"HDDatabasePruningLastAttemptDateKey"];
    v5 = [v3 objectForKey:@"HDDatabasePruningCompletedKey"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v2 = "";
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = HKDiagnosticStringFromDate();
  [v7 appendFormat:@"Last attempt: %@ (%scomplete)", v8, v2];

  return v7;
}

@end