@interface HDAppAnalyticsUpdateManager
- (HDAppAnalyticsUpdateManager)init;
- (HDAppAnalyticsUpdateManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (int64_t)currentVersionForAgreement:(id)agreement;
- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion;
@end

@implementation HDAppAnalyticsUpdateManager

- (HDAppAnalyticsUpdateManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppAnalyticsUpdateManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDAppAnalyticsUpdateManager;
  v5 = [(HDAppAnalyticsUpdateManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    daemon = [profileCopy daemon];
    postInstallUpdateManager = [daemon postInstallUpdateManager];
    [postInstallUpdateManager registerUpdateTaskHandler:v6 queue:0];
  }

  return v6;
}

- (int64_t)currentVersionForAgreement:(id)agreement
{
  agreementCopy = agreement;
  if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD30]])
  {
    currentVersionImproveHealthAgreement = [(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthAgreement];
LABEL_5:
    v6 = currentVersionImproveHealthAgreement;
    goto LABEL_9;
  }

  if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD38]])
  {
    currentVersionImproveHealthAgreement = [(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthRecords];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(HDAppAnalyticsUpdateManager *)agreementCopy currentVersionForAgreement:v7];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  profile = [(HDAppAnalyticsUpdateManager *)self profile];
  database = [profile database];
  contextForReading = [MEMORY[0x277D106B8] contextForReading];
  v11[4] = self;
  v12 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDAppAnalyticsUpdateManager_performPostInstallUpdateTaskForManager_completion___block_invoke;
  v11[3] = &unk_278658408;
  v9 = [database performTransactionWithContext:contextForReading error:&v12 block:v11 inaccessibilityHandler:0];
  v10 = v12;

  completionCopy[2](completionCopy, v9, v10);
}

uint64_t __81__HDAppAnalyticsUpdateManager_performPostInstallUpdateTaskForManager_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = AllHealthAppAnalyticsAgreements();
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138543362;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [*(a1 + 32) currentVersionForAgreement:{v9, v17}];
        v19 = 0;
        v11 = [HDAppAnalyticsAcceptanceEntity acceptanceForAgreement:v9 version:v10 transaction:v3 error:&v19];
        v12 = v19;
        v13 = v12;
        if (v11)
        {
          [*(a1 + 32) updateExternalStorageForAgreement:v9 version:v10 accepted:{objc_msgSend(v11, "accepted")}];
        }

        else if (v12)
        {
          _HKInitializeLogging();
          v14 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = v17;
            v25 = v9;
            _os_log_fault_impl(&dword_22939E000, v14, OS_LOG_TYPE_FAULT, "Failed to retrieve stored version for %{public}@; not updating local state.", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)updateExternalStorageForAgreement:(uint64_t)a1 version:(NSObject *)a2 accepted:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "No external storage known for analytics agreement %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)currentVersionForAgreement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Unknown analytics agreement %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end