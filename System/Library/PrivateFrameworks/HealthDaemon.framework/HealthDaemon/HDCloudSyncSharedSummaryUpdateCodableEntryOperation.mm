@interface HDCloudSyncSharedSummaryUpdateCodableEntryOperation
- (HDCloudSyncSharedSummaryUpdateCodableEntryOperation)initWithConfiguration:(id)configuration updatedLocalEntries:(id)entries isActive:(BOOL)active shouldResolveCNContact:(BOOL)contact;
- (id)_filterEntries:(id)entries active:(BOOL)active;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryUpdateCodableEntryOperation

- (HDCloudSyncSharedSummaryUpdateCodableEntryOperation)initWithConfiguration:(id)configuration updatedLocalEntries:(id)entries isActive:(BOOL)active shouldResolveCNContact:(BOOL)contact
{
  entriesCopy = entries;
  v17.receiver = self;
  v17.super_class = HDCloudSyncSharedSummaryUpdateCodableEntryOperation;
  v11 = [(HDCloudSyncOperation *)&v17 initWithConfiguration:configuration cloudState:0];
  if (v11)
  {
    v12 = [entriesCopy copy];
    updatedLocalEntries = v11->_updatedLocalEntries;
    v11->_updatedLocalEntries = v12;

    v11->_isActive = active;
    v11->_shouldResolve = contact;
    v14 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v11->_taskGroup;
    v11->_taskGroup = v14;

    [(HDSynchronousTaskGroup *)v11->_taskGroup setDelegate:v11];
  }

  return v11;
}

- (void)main
{
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  cloudSyncShimProvider = [repository cloudSyncShimProvider];
  summarySharingEntryShim = [cloudSyncShimProvider summarySharingEntryShim];

  v7 = [(HDCloudSyncSharedSummaryUpdateCodableEntryOperation *)self _filterEntries:self->_updatedLocalEntries active:self->_isActive];
  if ([v7 count])
  {
    shouldResolve = self->_shouldResolve;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HDCloudSyncSharedSummaryUpdateCodableEntryOperation_main__block_invoke;
    v9[3] = &unk_2786130B0;
    v9[4] = self;
    [summarySharingEntryShim insertOrReplaceCodableSharingEntries:v7 shouldResolveCNContact:shouldResolve completion:v9];
  }

  else
  {
    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }
}

void __59__HDCloudSyncSharedSummaryUpdateCodableEntryOperation_main__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 112) finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Unable to insert inactive entries %{public}@", &v9, 0x16u);
    }

    [*(*(a1 + 32) + 112) failTaskWithError:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_filterEntries:(id)entries active:(BOOL)active
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HDCloudSyncSharedSummaryUpdateCodableEntryOperation__filterEntries_active___block_invoke;
  v6[3] = &__block_descriptor_33_e38_B16__0__HDCodableSummarySharingEntry_8l;
  activeCopy = active;
  v4 = [entries hk_filter:v6];

  return v4;
}

uint64_t __77__HDCloudSyncSharedSummaryUpdateCodableEntryOperation__filterEntries_active___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 status];
  if (v3 - 2 < 3 || v3 > 1)
  {
    v4 = *(a1 + 32) ^ 1;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return v4 & 1;
}

@end