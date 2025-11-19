@interface HDHRBloodPressureJournalControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDHRBloodPressureJournalControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)journalManager:(id)a3 didAddOrModifyJournals:(id)a4;
- (void)remote_closeJournal:(id)a3 completion:(id)a4;
- (void)remote_closeJournalWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchActiveJournalWithCompletion:(id)a3;
- (void)remote_fetchAllJournalsWithCompletion:(id)a3;
- (void)remote_observeJournalChanges:(BOOL)a3 completion:(id)a4;
- (void)remote_saveJournal:(id)a3 completion:(id)a4;
- (void)remote_snoozeJournalNotificationWithIdentifier:(id)a3 journalType:(int64_t)a4 userInfo:(id)a5 onDate:(id)a6 completion:(id)a7;
@end

@implementation HDHRBloodPressureJournalControlServer

- (void)remote_closeJournal:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 closedJournal];
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 heartHealthProfileExtension];
  v10 = [v9 bloodPressureJournalManager];

  v18 = self;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HDHRBloodPressureJournalControlServer_remote_closeJournal_completion___block_invoke;
  v15[3] = &unk_278660440;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v10;
  v13 = [v12 insertBloodPressureJournal:v11 isUserInitiated:0 error:&v19 onCommit:v15 onRollback:0];
  v14 = v19;
  v6[2](v6, v13, v14);
}

void __72__HDHRBloodPressureJournalControlServer_remote_closeJournal_completion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v2 updateNotificationSyncManagerWithClosedJournals:v3];

  v4 = [*(a1 + 48) profile];
  v5 = [v4 heartHealthProfileExtension];
  v6 = [v5 bloodPressureJournalSyncRequester];
  [v6 requestStateSyncWithReason:@"Blood Pressure journal is closed"];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)remote_closeJournalWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 heartHealthProfileExtension];
  v10 = [v9 bloodPressureJournalManager];

  v14 = 0;
  v11 = [v10 bloodPressureJournalWithIdentifier:v6 error:&v14];
  v12 = v14;
  if (v12)
  {
    v7[2](v7, 0, v12);
  }

  else if (v11)
  {
    [(HDHRBloodPressureJournalControlServer *)self remote_closeJournal:v11 completion:v7];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No journal exists with identifer %@", v6}];
    v7[2](v7, 0, v13);
  }
}

- (void)remote_fetchActiveJournalWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 heartHealthProfileExtension];
  v7 = [v6 bloodPressureJournalManager];

  v10 = 0;
  v8 = [v7 latestActiveBloodPressureJournalWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_fetchAllJournalsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 heartHealthProfileExtension];
  v7 = [v6 bloodPressureJournalManager];

  v10 = 0;
  v8 = [v7 bloodPressureJournalsWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_saveJournal:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 heartHealthProfileExtension];
  v10 = [v9 bloodPressureJournalManager];

  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HDHRBloodPressureJournalControlServer_remote_saveJournal_completion___block_invoke;
  v16[3] = &unk_278660968;
  v16[4] = self;
  v17 = 0;
  v18 = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HDHRBloodPressureJournalControlServer_remote_saveJournal_completion___block_invoke_2;
  v13[3] = &unk_278660990;
  v14 = 0;
  v15 = v18;
  v11 = v18;
  [v10 insertBloodPressureJournal:v7 isUserInitiated:1 error:&v19 onCommit:v16 onRollback:v13];

  v12 = v19;
}

uint64_t __71__HDHRBloodPressureJournalControlServer_remote_saveJournal_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 heartHealthProfileExtension];
  v4 = [v3 bloodPressureJournalSyncRequester];
  [v4 requestStateSyncWithReason:@"Blood Pressure journal is saved"];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

- (void)remote_snoozeJournalNotificationWithIdentifier:(id)a3 journalType:(int64_t)a4 userInfo:(id)a5 onDate:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(HDStandardTaskServer *)self profile];
  v17 = [v16 heartHealthProfileExtension];
  v18 = [v17 bloodPressureJournalNotificationManager];

  v21 = 0;
  v19 = [v18 snoozeBloodPressureJournalNotificationWithIdentifier:v15 journalType:a4 userInfo:v14 onDate:v13 error:&v21];

  v20 = v21;
  v12[2](v12, v19, v20);
}

- (void)remote_observeJournalChanges:(BOOL)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 heartHealthProfileExtension];
  v9 = [v8 bloodPressureJournalManager];

  if (self->_shouldObserveChanges)
  {
    [v9 registerObserver:self queue:0];
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = self;
      v11 = "%{public}@: Began observing changes to journal manager.";
LABEL_6:
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    }
  }

  else
  {
    [v9 unregisterObserver:self];
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = self;
      v11 = "%{public}@: Stopped observing changes to journal manager.";
      goto LABEL_6;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v6[2](v6, 1, 0);

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HDHRBloodPressureJournalControlServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10];

  return v14;
}

- (HDHRBloodPressureJournalControlServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v7.receiver = self;
  v7.super_class = HDHRBloodPressureJournalControlServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldObserveChanges = 0;
  }

  return result;
}

- (void)journalManager:(id)a3 didAddOrModifyJournals:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HDHRBloodPressureJournalControlServer_journalManager_didAddOrModifyJournals___block_invoke;
    v13[3] = &unk_2786609B8;
    v13[4] = self;
    v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v13];
    _HKInitializeLogging();
    v8 = HKLogBloodPressureJournal();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 count];
        *buf = 138543618;
        v15 = self;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didAddOrModifyJournals journal count %ld", buf, 0x16u);
      }
    }

    [v7 client_notifyDidAddOrModifyBloodPressureJournals:v5];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: ignoring changes from didAddOrModifyJournals", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __79__HDHRBloodPressureJournalControlServer_journalManager_didAddOrModifyJournals___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HDHRBloodPressureJournalControlServer_journalManager_didAddOrModifyJournals___block_invoke_cold_1(a1, v3, v4);
  }
}

void __79__HDHRBloodPressureJournalControlServer_journalManager_didAddOrModifyJournals___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to notify client for didAddOrModifyJournals: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end