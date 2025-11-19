@interface HMDBackingStoreLocalFlushOperation
- (HMDBackingStoreLocalFlushOperation)initWithStore:(id)a3 clearCloud:(BOOL)a4 resultHandler:(id)a5;
- (void)main;
@end

@implementation HMDBackingStoreLocalFlushOperation

- (void)main
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@removing all records and transactions", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDBackingStoreLocalFlushOperation *)v4 store];
  v52 = 0;
  v8 = [v7 _runSQLite3:"DELETE FROM record" bind:0 error:&v52];
  v9 = v52;

  v10 = [(HMDBackingStoreLocalFlushOperation *)v4 store];
  v51 = v9;
  v11 = [v10 _runSQLite3:"DELETE FROM xact_block" bind:0 error:&v51];
  v12 = v51;

  v13 = [(HMDBackingStoreLocalFlushOperation *)v4 store];
  v50 = v12;
  v14 = [v13 _runSQLite3:"DELETE FROM xact" bind:0 error:&v50];
  v15 = v50;

  v16 = [(HMDBackingStoreLocalFlushOperation *)v4 store];
  v49 = v15;
  v17 = [v16 _runSQLite3:"DELETE FROM archive" bind:0 error:&v49];
  v18 = v49;

  if ([(HMDBackingStoreLocalFlushOperation *)v4 clearCloud])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v4;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@removing all zone cache information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v48 = v18;
    v24 = [v23 _runSQLite3:"DELETE FROM zone_share" bind:0 error:&v48];
    v25 = v48;

    v26 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v47 = v25;
    v27 = [v26 _runSQLite3:"DELETE FROM zone_group" bind:0 error:&v47];
    v28 = v47;

    v29 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v46 = v28;
    v30 = [v29 _runSQLite3:"DELETE FROM zone" bind:0 error:&v46];
    v31 = v46;

    v32 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v45 = v31;
    v33 = [v32 _runSQLite3:"INSERT INTO zone (id bind:name) VALUES (0 error:{'<NULL>');", 0, &v45}];
    v34 = v45;

    v35 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v44 = v34;
    v36 = [v35 _runSQLite3:"INSERT INTO zone_group (id bind:zone_id error:{root, owner) VALUES (0, 0, '<NULL>', '<NULL>');", 0, &v44}];
    v37 = v44;

    v38 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v43 = v37;
    v39 = [v38 _runSQLite3:"INSERT INTO zone_share (id bind:group_id error:{root) VALUES (0, 0, '<NULL>');", 0, &v43}];
    v18 = v43;
  }

  if (!v18)
  {
    v40 = [(HMDBackingStoreLocalFlushOperation *)v4 store];
    v18 = [v40 _fillZoneCache];
  }

  v41 = [(HMDBackingStoreLocalFlushOperation *)v4 resultHandler];
  (v41)[2](v41, v18);

  v42 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreLocalFlushOperation)initWithStore:(id)a3 clearCloud:(BOOL)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreLocalFlushOperation;
  v11 = [(HMDBackingStoreLocalFlushOperation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_store, a3);
    v13 = _Block_copy(v10);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v13;

    v12->_clearCloud = a4;
    v15 = v12;
  }

  return v12;
}

@end