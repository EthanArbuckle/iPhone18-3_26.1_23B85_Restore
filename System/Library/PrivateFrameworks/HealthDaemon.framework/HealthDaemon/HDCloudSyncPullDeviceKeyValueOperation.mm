@interface HDCloudSyncPullDeviceKeyValueOperation
- (BOOL)performWithError:(id *)error;
- (HDCloudSyncPullDeviceKeyValueOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPullDeviceKeyValueOperation)initWithConfiguration:(id)configuration container:(id)container;
@end

@implementation HDCloudSyncPullDeviceKeyValueOperation

- (HDCloudSyncPullDeviceKeyValueOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullDeviceKeyValueOperation)initWithConfiguration:(id)configuration container:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = HDCloudSyncPullDeviceKeyValueOperation;
  v8 = [(HDCloudSyncOperation *)&v11 initWithConfiguration:configuration cloudState:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_container, container);
  }

  return v9;
}

- (BOOL)performWithError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [(CKContainer *)self->_container containerIdentifier];
  v28 = 0;
  v8 = [cachedCloudState contextSyncZoneForContainerID:containerIdentifier error:&v28];
  v9 = v28;

  if (v8)
  {
    v10 = [HDIngestDeviceKeyValueEntriesOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration2 accessibilityAssertion];
    containerIdentifier2 = [(CKContainer *)self->_container containerIdentifier];
    v14 = [(HDIngestDeviceKeyValueEntriesOperation *)v10 initWithAccessibilityAssertion:accessibilityAssertion containerIdentifier:containerIdentifier2];

    profile = [(HDCloudSyncOperation *)self profile];
    v16 = [(HDJournalableOperation *)v14 performOrJournalWithProfile:profile error:error];

    if (v16)
    {
      if ([(HDJournalableOperation *)v14 didJournal])
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          profile2 = [(HDCloudSyncOperation *)self profile];
          containerIdentifier3 = [(CKContainer *)self->_container containerIdentifier];
          *buf = 138543874;
          selfCopy2 = self;
          v31 = 2114;
          v32 = profile2;
          v33 = 2114;
          v34 = containerIdentifier3;
          _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Journaled device contexts for profile: %{public}@, container identifier: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  else if (v9)
  {
    if (error)
    {
      v23 = v9;
      LOBYTE(v16) = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      container = self->_container;
      v26 = v24;
      containerIdentifier4 = [(CKContainer *)container containerIdentifier];
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2114;
      v32 = containerIdentifier4;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Context sync zone not present for container identifier: %{public}@", buf, 0x16u);
    }

    LOBYTE(v16) = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

@end