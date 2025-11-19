@interface HMDHAPAccessoryServerIPCache
+ (id)logCategory;
- (HMDHAPAccessoryServerIPCache)initWithQueue:(id)a3;
- (HMDHAPAccessoryServerIPCache)initWithQueue:(id)a3 store:(id)a4 timerProvider:(id)a5;
- (id)_readCache;
- (void)_deleteDataForDevice:(id)a3;
- (void)_flushDirtyCache;
- (void)_retrieveCachedData:(id)a3;
- (void)_saveData:(id)a3 forDevice:(id)a4;
- (void)_startFlushTimer;
- (void)_writeCache:(id)a3;
- (void)deleteDataForDevice:(id)a3;
- (void)retrieveCachedData:(id)a3;
- (void)saveData:(id)a3 forDevice:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDHAPAccessoryServerIPCache

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryServerIPCache *)self flushTimer];

  if (v5 == v4)
  {
    v6 = [(HMDHAPAccessoryServerIPCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HMDHAPAccessoryServerIPCache_timerDidFire___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

uint64_t __45__HMDHAPAccessoryServerIPCache_timerDidFire___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _flushDirtyCache];
  v2 = *(a1 + 32);

  return [v2 setFlushTimer:0];
}

- (void)_flushDirtyCache
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(HMDHAPAccessoryServerIPCache *)self dirtyCache];
  [(HMDHAPAccessoryServerIPCache *)self _writeCache:v3];

  [(HMDHAPAccessoryServerIPCache *)self setDirtyCache:0];
}

- (void)_startFlushTimer
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(HMDHAPAccessoryServerIPCache *)self flushTimer];

  if (!v3)
  {
    v4 = [(HMDHAPAccessoryServerIPCache *)self timerProvider];
    v5 = [v4 timerWithTimeInterval:0 options:900.0];
    [(HMDHAPAccessoryServerIPCache *)self setFlushTimer:v5];

    v6 = [(HMDHAPAccessoryServerIPCache *)self flushTimer];
    [v6 setDelegate:self];

    v7 = [(HMDHAPAccessoryServerIPCache *)self flushTimer];
    [v7 resume];
  }
}

- (void)_writeCache:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v9;
      v23 = 2048;
      v24 = [v4 count];
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Write %lu cached ip addresses", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDHAPAccessoryServerIPCache *)v6 store];
    v20 = 0;
    v11 = [v10 writeDictionary:v4 error:&v20];
    v12 = v20;

    if ((v11 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v6;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v4 count];
        *buf = 138543874;
        v22 = v16;
        v23 = 2048;
        v24 = v17;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Error writing cache to storage (%lu addresses): %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    if (v8)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No need to write clean empty cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_readCache
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(HMDHAPAccessoryServerIPCache *)self store];
  v22 = 0;
  v4 = [v3 dictionaryFromStoreWithError:&v22];
  v5 = v22;

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 count];
      *buf = 138543618;
      v24 = v9;
      v25 = 2048;
      v26 = v10;
      v11 = "%{public}@Read %lu entries from cache";
LABEL_12:
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v11, buf, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v12 = [v5 domain];
  v13 = v12;
  if (v12 != *MEMORY[0x277CCA050])
  {

    goto LABEL_10;
  }

  v14 = [v5 code];

  if (v14 != 260)
  {
LABEL_10:
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v9;
      v25 = 2112;
      v26 = v5;
      v11 = "%{public}@No cache retrieved %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v6);
    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Cache file not found, create an empty file", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [MEMORY[0x277CBEAC0] dictionary];
  [(HMDHAPAccessoryServerIPCache *)v16 _writeCache:v19];

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_retrieveCachedData:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [(HMDHAPAccessoryServerIPCache *)self _readCache];
  v5[2](v5, v6);
}

- (void)retrieveCachedData:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryServerIPCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDHAPAccessoryServerIPCache_retrieveCachedData___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_deleteDataForDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete data for device %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHAPAccessoryServerIPCache *)v6 dirtyCache];

  if (!v9)
  {
    v10 = [(HMDHAPAccessoryServerIPCache *)v6 _readCache];
    v11 = [v10 mutableCopy];

    v12 = [v11 objectForKeyedSubscript:v4];

    if (!v12)
    {

      goto LABEL_7;
    }

    [(HMDHAPAccessoryServerIPCache *)v6 setDirtyCache:v11];
  }

  v13 = [(HMDHAPAccessoryServerIPCache *)v6 dirtyCache];
  [v13 removeObjectForKey:v4];

  [(HMDHAPAccessoryServerIPCache *)v6 _startFlushTimer];
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deleteDataForDevice:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryServerIPCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDHAPAccessoryServerIPCache_deleteDataForDevice___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_saveData:(id)a3 forDevice:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Save data %@ for device %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHAPAccessoryServerIPCache *)v9 dirtyCache];

  if (!v12)
  {
    v13 = [(HMDHAPAccessoryServerIPCache *)v9 _readCache];
    v14 = [v13 mutableCopy];

    if (v14)
    {
      [(HMDHAPAccessoryServerIPCache *)v9 setDirtyCache:v14];
    }

    else
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
      [(HMDHAPAccessoryServerIPCache *)v9 setDirtyCache:v15];
    }
  }

  v16 = [(HMDHAPAccessoryServerIPCache *)v9 dirtyCache];
  [v16 setObject:v6 forKey:v7];

  [(HMDHAPAccessoryServerIPCache *)v9 _startFlushTimer];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveData:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHAPAccessoryServerIPCache *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDHAPAccessoryServerIPCache_saveData_forDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (HMDHAPAccessoryServerIPCache)initWithQueue:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDHAPAccessoryServerIPStore alloc];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = v6;
  v45 = 0;
  if (storeDirectoryPath)
  {
    if (ipAccessoryCachePath && ([v6 fileExistsAtPath:ipAccessoryCachePath isDirectory:&v45] & 1) != 0)
    {
      goto LABEL_24;
    }

    v52 = *MEMORY[0x277CCA180];
    v53[0] = &unk_283E72740;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v9 = [storeDirectoryPath stringByAppendingString:@"/AccessoryServerIPCache"];
    v10 = ipAccessoryCachePath;
    ipAccessoryCachePath = v9;

    if (ipAccessoryCachePath)
    {
      v44 = 0;
      v11 = [v7 createDirectoryAtPath:ipAccessoryCachePath withIntermediateDirectories:1 attributes:v8 error:&v44];
      v12 = v44;
      v13 = v12;
      v45 = v11;
      if (v11)
      {
        v14 = self;
        v43 = v12;
        v15 = [v7 setAttributes:v8 ofItemAtPath:ipAccessoryCachePath error:&v43];
        v16 = v43;

        v17 = objc_autoreleasePoolPush();
        v18 = HMFGetOSLogHandle();
        v19 = v18;
        if (v15)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v20;
            v48 = 2112;
            v49 = ipAccessoryCachePath;
            v21 = "%{public}@Created path %@";
            v22 = v19;
            v23 = OS_LOG_TYPE_INFO;
            v24 = 22;
LABEL_22:
            _os_log_impl(&dword_229538000, v22, v23, v21, buf, v24);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v47 = v20;
          v48 = 2112;
          v49 = ipAccessoryCachePath;
          v50 = 2112;
          v51 = v16;
          v21 = "%{public}@Error setting attributes of %@: %@";
          v22 = v19;
          v23 = OS_LOG_TYPE_ERROR;
          v24 = 32;
          goto LABEL_22;
        }

        objc_autoreleasePoolPop(v17);
        self = v14;
LABEL_24:
        v37 = ipAccessoryCachePath;
        goto LABEL_25;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v35 = self;
        *buf = 138543874;
        v47 = v36;
        v48 = 2112;
        v49 = ipAccessoryCachePath;
        v50 = 2112;
        v51 = v13;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Could not create IP Cache directory path %@ - error %@", buf, 0x20u);

        self = v35;
      }

      objc_autoreleasePoolPop(v33);
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = v31 = self;
        *buf = 138543874;
        v47 = v32;
        v48 = 2112;
        v49 = storeDirectoryPath;
        v50 = 2112;
        v51 = @"/AccessoryServerIPCache";
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@No path available for getIPAccessoryCachePath %@ %@", buf, 0x20u);

        self = v31;
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v27;
      v48 = 2112;
      v49 = storeDirectoryPath;
      v28 = storeDirectoryPath;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Store Directory not initialized: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v37 = 0;
LABEL_25:

  v38 = [(HMDHAPAccessoryServerIPStore *)v5 initWithPath:v37 andFilename:@"server_ip_cache"];
  v39 = objc_opt_new();
  v40 = [(HMDHAPAccessoryServerIPCache *)self initWithQueue:v4 store:v38 timerProvider:v39];

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (HMDHAPAccessoryServerIPCache)initWithQueue:(id)a3 store:(id)a4 timerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HMDHAPAccessoryServerIPCache;
  v12 = [(HMDHAPAccessoryServerIPCache *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    objc_storeStrong(&v13->_store, a4);
    dirtyCache = v13->_dirtyCache;
    v13->_dirtyCache = 0;

    objc_storeStrong(&v13->_timerProvider, a5);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_118383 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_118383, &__block_literal_global_118384);
  }

  v3 = logCategory__hmf_once_v9_118385;

  return v3;
}

void __43__HMDHAPAccessoryServerIPCache_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_118385;
  logCategory__hmf_once_v9_118385 = v1;
}

@end