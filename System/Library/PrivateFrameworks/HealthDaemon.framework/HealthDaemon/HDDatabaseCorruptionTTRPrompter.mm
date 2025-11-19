@interface HDDatabaseCorruptionTTRPrompter
- (BOOL)shouldAttemptTTRForProfileIdentier:(id)a3 component:(int64_t)a4;
- (HDDatabaseCorruptionTTRPrompter)init;
- (HDDatabaseCorruptionTTRPrompter)initWithStore:(id)a3 behavior:(id)a4;
- (id)TTRAttemptRecordForProfile:(id)a3;
- (void)_popAlertWithRadarDescription:(id)a3;
- (void)promptForEvent:(id)a3;
@end

@implementation HDDatabaseCorruptionTTRPrompter

- (HDDatabaseCorruptionTTRPrompter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseCorruptionTTRPrompter)initWithStore:(id)a3 behavior:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDDatabaseCorruptionTTRPrompter;
  v9 = [(HDDatabaseCorruptionTTRPrompter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_corruptionStore, a3);
    objc_storeStrong(&v10->_behavior, a4);
  }

  return v10;
}

- (id)TTRAttemptRecordForProfile:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];

  v6 = [(_HKBehavior *)self->_behavior currentOSBuild];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (BOOL)shouldAttemptTTRForProfileIdentier:(id)a3 component:(int64_t)a4
{
  v6 = a3;
  if ([(_HKBehavior *)self->_behavior isAppleInternalInstall]&& ([(_HKBehavior *)self->_behavior isTestingDevice]& 1) == 0)
  {
    v8 = [(HDDatabaseCorruptionTTRPrompter *)self TTRAttemptRecordForProfile:v6];
    v9 = [(HDDatabaseCorruptionEventStore *)self->_corruptionStore mostRecentTTRAttemptForProfileIdentifier:v6 component:a4];
    v10 = v9;
    if (v9 == v8)
    {
      LOBYTE(v7) = 0;
    }

    else if (v8)
    {
      v7 = [v9 isEqualToString:v8] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)promptForEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 profileIdentifier];
  v6 = -[HDDatabaseCorruptionTTRPrompter shouldAttemptTTRForProfileIdentier:component:](self, "shouldAttemptTTRForProfileIdentier:component:", v5, [v4 component]);

  if (v6 && (atomic_exchange(_isPresenting, 1u) & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = HDStringFromDatabaseComponentIdentifier([v4 component]);
    v9 = [v4 error];
    v33 = [v7 initWithFormat:@"Database corruption in %@: %@", v8, v9];

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v32 = [v4 error];
    v10 = [v32 domain];
    v31 = [v4 error];
    v11 = [v31 code];
    v12 = [v4 error];
    v13 = [v12 localizedDescription];
    v14 = [v4 buildDescription];
    v15 = HDStringFromDatabaseComponentIdentifier([v4 component]);
    v16 = [v4 profileIdentifier];
    v17 = [v4 date];
    v29 = v11;
    v18 = v10;
    v19 = [v30 initWithFormat:@"%@\n\nError(%@, %ld):\n%@\n\nBuild:%@\nComponent:%@\nProfile:%@\nDate:%@\n", v33, v10, v29, v13, v14, v15, v16, v17];

    v20 = [v4 failedObliterationReason];

    if (v20)
    {
      v21 = [v4 failedObliterationReason];
      v22 = [v19 stringByAppendingFormat:@"\n\n*** Resulted from failed obliteration attempt for reason <%@>", v21];

      v19 = v22;
    }

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v19;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: present database corruption alert %{public}@", buf, 0x16u);
    }

    [(HDDatabaseCorruptionTTRPrompter *)self _popAlertWithRadarDescription:v19];
    corruptionStore = self->_corruptionStore;
    v25 = [v4 profileIdentifier];
    v26 = [(HDDatabaseCorruptionTTRPrompter *)self TTRAttemptRecordForProfile:v25];
    v27 = [v4 profileIdentifier];
    -[HDDatabaseCorruptionEventStore persistTTRAttempt:forProfileIdentifier:component:](corruptionStore, "persistTTRAttempt:forProfileIdentifier:component:", v26, v27, [v4 component]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_popAlertWithRadarDescription:(id)a3
{
  v4 = a3;
  if (_HDIsUnitTesting)
  {
    v5 = _Block_copy(self->_unitTest_willPresentTTRAlertHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, self, v4);
    }

    atomic_store(0, _isPresenting);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D10BC0]);
    [v6 setTitle:@"Corrupt Health Database"];
    [v6 setMessage:@"Corruption has been detected in your Health database. Please file a radar with Tap-to-Radar against 'Health' and attach your Health database directory. Instructions at https://at.apple.com/CaptureHealthDB"];
    [v6 setDefaultButton:@"Tap-to-Radar"];
    [v6 setCancelButton:@"Not Now"];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__HDDatabaseCorruptionTTRPrompter__popAlertWithRadarDescription___block_invoke;
    v7[3] = &unk_2786188C8;
    v7[4] = self;
    v8 = v4;
    [v6 presentWithResponseHandler:v7];
  }
}

void __65__HDDatabaseCorruptionTTRPrompter__popAlertWithRadarDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a3 == 1)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v17 = v14;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: TTR alert: 'Not Now' button pressed", buf, 0xCu);
    }
  }

  else if (!a3)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: TTR alert: 'Tap-to-Radar' button pressed", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CBEBC0] hk_tapToHealthRadarURLWithTitle:@"Corrupt Health Database" description:*(a1 + 40) classification:2 reproducibility:6 keywords:&unk_283CAE818 autoDiagnostics:2 attachments:0];
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v12 openURL:v11 configuration:0 completionHandler:&__block_literal_global_40];
  }

  atomic_store(0, _isPresenting);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HDDatabaseCorruptionTTRPrompter__popAlertWithRadarDescription___block_invoke_324(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end