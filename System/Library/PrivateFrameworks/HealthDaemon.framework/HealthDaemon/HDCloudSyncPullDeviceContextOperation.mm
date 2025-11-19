@interface HDCloudSyncPullDeviceContextOperation
- (BOOL)performWithError:(id *)a3;
- (HDCloudSyncPullDeviceContextOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPullDeviceContextOperation)initWithConfiguration:(id)a3 container:(id)a4;
@end

@implementation HDCloudSyncPullDeviceContextOperation

- (HDCloudSyncPullDeviceContextOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullDeviceContextOperation)initWithConfiguration:(id)a3 container:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDCloudSyncPullDeviceContextOperation;
  v8 = [(HDCloudSyncOperation *)&v11 initWithConfiguration:a3 cloudState:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_container, a4);
  }

  return v9;
}

- (BOOL)performWithError:(id *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 cachedCloudState];
  v7 = [(CKContainer *)self->_container containerIdentifier];
  v28 = 0;
  v8 = [v6 contextSyncZoneForContainerID:v7 error:&v28];
  v9 = v28;

  if (v8)
  {
    v10 = [HDIngestDeviceContextsOperation alloc];
    v11 = [(HDCloudSyncOperation *)self configuration];
    v12 = [v11 accessibilityAssertion];
    v13 = [(CKContainer *)self->_container containerIdentifier];
    v14 = [(HDIngestDeviceContextsOperation *)v10 initWithAccessibilityAssertion:v12 containerIdentifier:v13];

    v15 = [(HDCloudSyncOperation *)self profile];
    v16 = [(HDJournalableOperation *)v14 performOrJournalWithProfile:v15 error:a3];

    if (v16)
    {
      if ([(HDJournalableOperation *)v14 didJournal])
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [(HDCloudSyncOperation *)self profile];
          v20 = [(CKContainer *)self->_container containerIdentifier];
          *buf = 138543874;
          v30 = self;
          v31 = 2114;
          v32 = v19;
          v33 = 2114;
          v34 = v20;
          _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Journaled key value entries for profile: %{public}@, container identifier: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  else if (v9)
  {
    if (a3)
    {
      v23 = v9;
      LOBYTE(v16) = 0;
      *a3 = v9;
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
      v27 = [(CKContainer *)container containerIdentifier];
      *buf = 138412290;
      v30 = v27;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Context sync zone not present for container identifier: %@", buf, 0xCu);
    }

    LOBYTE(v16) = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

@end