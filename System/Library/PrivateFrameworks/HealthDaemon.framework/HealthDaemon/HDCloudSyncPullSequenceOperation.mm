@interface HDCloudSyncPullSequenceOperation
- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6 changes:(id)a7;
- (void)main;
@end

@implementation HDCloudSyncPullSequenceOperation

- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5 sequence:(id)a6 changes:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = HDCloudSyncPullSequenceOperation;
  v16 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:a3 cloudState:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, a5);
    objc_storeStrong(&v17->_sequenceRecord, a6);
    v18 = [v15 copy];
    changeRecords = v17->_changeRecords;
    v17->_changeRecords = v18;
  }

  return v17;
}

- (void)main
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self progress];
  [v3 setTotalUnitCount:0];

  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC328];
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    changeRecords = self->_changeRecords;
    v7 = v5;
    *buf = 138543618;
    *v43 = self;
    *&v43[8] = 2048;
    *&v43[10] = [(NSArray *)changeRecords count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning pull for sequence with %ld required record(s).", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_changeRecords;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        _HKInitializeLogging();
        v14 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          [v13 recordID];
          v17 = v16 = v4;
          v18 = [v13 decodedSyncAnchorRangeMap];
          *buf = 67109634;
          *v43 = v10;
          *&v43[4] = 2114;
          *&v43[6] = v17;
          *&v43[14] = 2114;
          *&v43[16] = v18;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "\t%02d: %{public}@: %{public}@", buf, 0x1Cu);

          v4 = v16;
          ++v10;
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v9);
  }

  v19 = [HDCloudSyncCompoundOperation alloc];
  v20 = [(HDCloudSyncOperation *)self configuration];
  v21 = [(HDCloudSyncCompoundOperation *)v19 initWithConfiguration:v20 cloudState:0 name:@"Pull Changes" continueOnSubOperationError:0];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = self->_changeRecords;
  v22 = [(NSArray *)obja countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        v27 = [HDCloudSyncPullChangeRecordOperation alloc];
        v28 = [(HDCloudSyncOperation *)self configuration];
        v29 = [(HDCloudSyncPullChangeRecordOperation *)v27 initWithConfiguration:v28 cloudState:0 target:self->_target sequenceRecord:self->_sequenceRecord changeRecord:v26];

        [(HDCloudSyncCompoundOperation *)v21 addOperation:v29 transitionHandler:0];
      }

      v23 = [(NSArray *)obja countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v21];
  v30 = *MEMORY[0x277D85DE8];
}

@end