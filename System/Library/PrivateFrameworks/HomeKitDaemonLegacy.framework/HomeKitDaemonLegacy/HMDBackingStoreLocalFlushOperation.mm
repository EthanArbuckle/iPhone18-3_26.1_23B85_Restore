@interface HMDBackingStoreLocalFlushOperation
- (HMDBackingStoreLocalFlushOperation)initWithStore:(id)store clearCloud:(BOOL)cloud resultHandler:(id)handler;
- (void)main;
@end

@implementation HMDBackingStoreLocalFlushOperation

- (void)main
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@removing all records and transactions", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  store = [(HMDBackingStoreLocalFlushOperation *)selfCopy store];
  v52 = 0;
  v8 = [store _runSQLite3:"DELETE FROM record" bind:0 error:&v52];
  v9 = v52;

  store2 = [(HMDBackingStoreLocalFlushOperation *)selfCopy store];
  v51 = v9;
  v11 = [store2 _runSQLite3:"DELETE FROM xact_block" bind:0 error:&v51];
  v12 = v51;

  store3 = [(HMDBackingStoreLocalFlushOperation *)selfCopy store];
  v50 = v12;
  v14 = [store3 _runSQLite3:"DELETE FROM xact" bind:0 error:&v50];
  v15 = v50;

  store4 = [(HMDBackingStoreLocalFlushOperation *)selfCopy store];
  v49 = v15;
  v17 = [store4 _runSQLite3:"DELETE FROM archive" bind:0 error:&v49];
  _fillZoneCache = v49;

  if ([(HMDBackingStoreLocalFlushOperation *)selfCopy clearCloud])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@removing all zone cache information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    store5 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v48 = _fillZoneCache;
    v24 = [store5 _runSQLite3:"DELETE FROM zone_share" bind:0 error:&v48];
    v25 = v48;

    store6 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v47 = v25;
    v27 = [store6 _runSQLite3:"DELETE FROM zone_group" bind:0 error:&v47];
    v28 = v47;

    store7 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v46 = v28;
    v30 = [store7 _runSQLite3:"DELETE FROM zone" bind:0 error:&v46];
    v31 = v46;

    store8 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v45 = v31;
    v33 = [store8 _runSQLite3:"INSERT INTO zone (id bind:name) VALUES (0 error:{'<NULL>');", 0, &v45}];
    v34 = v45;

    store9 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v44 = v34;
    v36 = [store9 _runSQLite3:"INSERT INTO zone_group (id bind:zone_id error:{root, owner) VALUES (0, 0, '<NULL>', '<NULL>');", 0, &v44}];
    v37 = v44;

    store10 = [(HMDBackingStoreLocalFlushOperation *)v20 store];
    v43 = v37;
    v39 = [store10 _runSQLite3:"INSERT INTO zone_share (id bind:group_id error:{root) VALUES (0, 0, '<NULL>');", 0, &v43}];
    _fillZoneCache = v43;
  }

  if (!_fillZoneCache)
  {
    store11 = [(HMDBackingStoreLocalFlushOperation *)selfCopy store];
    _fillZoneCache = [store11 _fillZoneCache];
  }

  resultHandler = [(HMDBackingStoreLocalFlushOperation *)selfCopy resultHandler];
  (resultHandler)[2](resultHandler, _fillZoneCache);

  v42 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreLocalFlushOperation)initWithStore:(id)store clearCloud:(BOOL)cloud resultHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreLocalFlushOperation;
  v11 = [(HMDBackingStoreLocalFlushOperation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_store, store);
    v13 = _Block_copy(handlerCopy);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v13;

    v12->_clearCloud = cloud;
    v15 = v12;
  }

  return v12;
}

@end