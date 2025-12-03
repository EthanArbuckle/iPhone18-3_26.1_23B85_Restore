@interface HDHRBloodPressureJournalControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDHRBloodPressureJournalControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)journalManager:(id)manager didAddOrModifyJournals:(id)journals;
- (void)remote_closeJournal:(id)journal completion:(id)completion;
- (void)remote_closeJournalWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchActiveJournalWithCompletion:(id)completion;
- (void)remote_fetchAllJournalsWithCompletion:(id)completion;
- (void)remote_observeJournalChanges:(BOOL)changes completion:(id)completion;
- (void)remote_saveJournal:(id)journal completion:(id)completion;
- (void)remote_snoozeJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date completion:(id)completion;
@end

@implementation HDHRBloodPressureJournalControlServer

- (void)remote_closeJournal:(id)journal completion:(id)completion
{
  completionCopy = completion;
  closedJournal = [journal closedJournal];
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  selfCopy = self;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HDHRBloodPressureJournalControlServer_remote_closeJournal_completion___block_invoke;
  v15[3] = &unk_278660440;
  v16 = bloodPressureJournalManager;
  v17 = closedJournal;
  v11 = closedJournal;
  v12 = bloodPressureJournalManager;
  v13 = [v12 insertBloodPressureJournal:v11 isUserInitiated:0 error:&v19 onCommit:v15 onRollback:0];
  v14 = v19;
  completionCopy[2](completionCopy, v13, v14);
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

- (void)remote_closeJournalWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  v14 = 0;
  v11 = [bloodPressureJournalManager bloodPressureJournalWithIdentifier:identifierCopy error:&v14];
  v12 = v14;
  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else if (v11)
  {
    [(HDHRBloodPressureJournalControlServer *)self remote_closeJournal:v11 completion:completionCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No journal exists with identifer %@", identifierCopy}];
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)remote_fetchActiveJournalWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  v10 = 0;
  v8 = [bloodPressureJournalManager latestActiveBloodPressureJournalWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_fetchAllJournalsWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  v10 = 0;
  v8 = [bloodPressureJournalManager bloodPressureJournalsWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_saveJournal:(id)journal completion:(id)completion
{
  completionCopy = completion;
  journalCopy = journal;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HDHRBloodPressureJournalControlServer_remote_saveJournal_completion___block_invoke;
  v16[3] = &unk_278660968;
  v16[4] = self;
  v17 = 0;
  v18 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HDHRBloodPressureJournalControlServer_remote_saveJournal_completion___block_invoke_2;
  v13[3] = &unk_278660990;
  v14 = 0;
  v15 = v18;
  v11 = v18;
  [bloodPressureJournalManager insertBloodPressureJournal:journalCopy isUserInitiated:1 error:&v19 onCommit:v16 onRollback:v13];

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

- (void)remote_snoozeJournalNotificationWithIdentifier:(id)identifier journalType:(int64_t)type userInfo:(id)info onDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  infoCopy = info;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalNotificationManager = [heartHealthProfileExtension bloodPressureJournalNotificationManager];

  v21 = 0;
  v19 = [bloodPressureJournalNotificationManager snoozeBloodPressureJournalNotificationWithIdentifier:identifierCopy journalType:type userInfo:infoCopy onDate:dateCopy error:&v21];

  v20 = v21;
  completionCopy[2](completionCopy, v19, v20);
}

- (void)remote_observeJournalChanges:(BOOL)changes completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = changes;
  profile = [(HDStandardTaskServer *)self profile];
  heartHealthProfileExtension = [profile heartHealthProfileExtension];
  bloodPressureJournalManager = [heartHealthProfileExtension bloodPressureJournalManager];

  if (self->_shouldObserveChanges)
  {
    [bloodPressureJournalManager registerObserver:self queue:0];
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      selfCopy2 = self;
      v11 = "%{public}@: Began observing changes to journal manager.";
LABEL_6:
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    }
  }

  else
  {
    [bloodPressureJournalManager unregisterObserver:self];
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      selfCopy2 = self;
      v11 = "%{public}@: Stopped observing changes to journal manager.";
      goto LABEL_6;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  completionCopy[2](completionCopy, 1, 0);

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  v14 = [[HDHRBloodPressureJournalControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];

  return v14;
}

- (HDHRBloodPressureJournalControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDHRBloodPressureJournalControlServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldObserveChanges = 0;
  }

  return result;
}

- (void)journalManager:(id)manager didAddOrModifyJournals:(id)journals
{
  v18 = *MEMORY[0x277D85DE8];
  journalsCopy = journals;
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
        v11 = [journalsCopy count];
        *buf = 138543618;
        selfCopy2 = self;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didAddOrModifyJournals journal count %ld", buf, 0x16u);
      }
    }

    [v7 client_notifyDidAddOrModifyBloodPressureJournals:journalsCopy];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
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