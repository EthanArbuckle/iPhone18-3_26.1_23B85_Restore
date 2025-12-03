@interface HDDatabaseCorruptionTTRPrompter
- (BOOL)shouldAttemptTTRForProfileIdentier:(id)identier component:(int64_t)component;
- (HDDatabaseCorruptionTTRPrompter)init;
- (HDDatabaseCorruptionTTRPrompter)initWithStore:(id)store behavior:(id)behavior;
- (id)TTRAttemptRecordForProfile:(id)profile;
- (void)_popAlertWithRadarDescription:(id)description;
- (void)promptForEvent:(id)event;
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

- (HDDatabaseCorruptionTTRPrompter)initWithStore:(id)store behavior:(id)behavior
{
  storeCopy = store;
  behaviorCopy = behavior;
  v12.receiver = self;
  v12.super_class = HDDatabaseCorruptionTTRPrompter;
  v9 = [(HDDatabaseCorruptionTTRPrompter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_corruptionStore, store);
    objc_storeStrong(&v10->_behavior, behavior);
  }

  return v10;
}

- (id)TTRAttemptRecordForProfile:(id)profile
{
  identifier = [profile identifier];
  uUIDString = [identifier UUIDString];

  currentOSBuild = [(_HKBehavior *)self->_behavior currentOSBuild];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", uUIDString, currentOSBuild];

  return v7;
}

- (BOOL)shouldAttemptTTRForProfileIdentier:(id)identier component:(int64_t)component
{
  identierCopy = identier;
  if ([(_HKBehavior *)self->_behavior isAppleInternalInstall]&& ([(_HKBehavior *)self->_behavior isTestingDevice]& 1) == 0)
  {
    v8 = [(HDDatabaseCorruptionTTRPrompter *)self TTRAttemptRecordForProfile:identierCopy];
    v9 = [(HDDatabaseCorruptionEventStore *)self->_corruptionStore mostRecentTTRAttemptForProfileIdentifier:identierCopy component:component];
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

- (void)promptForEvent:(id)event
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  profileIdentifier = [eventCopy profileIdentifier];
  v6 = -[HDDatabaseCorruptionTTRPrompter shouldAttemptTTRForProfileIdentier:component:](self, "shouldAttemptTTRForProfileIdentier:component:", profileIdentifier, [eventCopy component]);

  if (v6 && (atomic_exchange(_isPresenting, 1u) & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = HDStringFromDatabaseComponentIdentifier([eventCopy component]);
    error = [eventCopy error];
    v33 = [v7 initWithFormat:@"Database corruption in %@: %@", v8, error];

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    error2 = [eventCopy error];
    domain = [error2 domain];
    error3 = [eventCopy error];
    code = [error3 code];
    error4 = [eventCopy error];
    localizedDescription = [error4 localizedDescription];
    buildDescription = [eventCopy buildDescription];
    v15 = HDStringFromDatabaseComponentIdentifier([eventCopy component]);
    profileIdentifier2 = [eventCopy profileIdentifier];
    date = [eventCopy date];
    v29 = code;
    v18 = domain;
    v19 = [v30 initWithFormat:@"%@\n\nError(%@, %ld):\n%@\n\nBuild:%@\nComponent:%@\nProfile:%@\nDate:%@\n", v33, domain, v29, localizedDescription, buildDescription, v15, profileIdentifier2, date];

    failedObliterationReason = [eventCopy failedObliterationReason];

    if (failedObliterationReason)
    {
      failedObliterationReason2 = [eventCopy failedObliterationReason];
      v22 = [v19 stringByAppendingFormat:@"\n\n*** Resulted from failed obliteration attempt for reason <%@>", failedObliterationReason2];

      v19 = v22;
    }

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v36 = 2114;
      v37 = v19;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: present database corruption alert %{public}@", buf, 0x16u);
    }

    [(HDDatabaseCorruptionTTRPrompter *)self _popAlertWithRadarDescription:v19];
    corruptionStore = self->_corruptionStore;
    profileIdentifier3 = [eventCopy profileIdentifier];
    v26 = [(HDDatabaseCorruptionTTRPrompter *)self TTRAttemptRecordForProfile:profileIdentifier3];
    profileIdentifier4 = [eventCopy profileIdentifier];
    -[HDDatabaseCorruptionEventStore persistTTRAttempt:forProfileIdentifier:component:](corruptionStore, "persistTTRAttempt:forProfileIdentifier:component:", v26, profileIdentifier4, [eventCopy component]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_popAlertWithRadarDescription:(id)description
{
  descriptionCopy = description;
  if (_HDIsUnitTesting)
  {
    v5 = _Block_copy(self->_unitTest_willPresentTTRAlertHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, self, descriptionCopy);
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
    v8 = descriptionCopy;
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