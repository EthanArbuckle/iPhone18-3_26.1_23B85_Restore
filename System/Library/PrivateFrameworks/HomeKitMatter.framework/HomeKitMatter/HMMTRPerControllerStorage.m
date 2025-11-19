@interface HMMTRPerControllerStorage
+ (id)logCategory;
- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7;
- (BOOL)controller:(id)a3 storeValues:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (HMMTRPerControllerStorage)initWithQueue:(id)a3 fabric:(id)a4;
- (HMMTRPerControllerStorage)initWithQueue:(id)a3 privateDataSource:(id)a4;
- (id)attributeDescriptions;
- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (id)logIdentifier;
- (id)valuesForController:(id)a3 securityLevel:(unint64_t)a4 sharingType:(unint64_t)a5;
@end

@implementation HMMTRPerControllerStorage

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRPerControllerStorage *)self fabricID];
  v6 = [v4 initWithName:@"FabricID" value:v5];
  [v3 addObject:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMMTRPerControllerStorage *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)controller:(id)a3 storeValues:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v33 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = *v39;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v37 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v37];
        v15 = v37;
        if (!v14)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            *&buf[22] = 2112;
            v43 = v15;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          v23 = 0;
          goto LABEL_15;
        }

        [v33 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
    *buf = 138543618;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating %@ key-value pairs in local storage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v43) = 0;
  v22 = [(HMMTRPerControllerStorage *)v17 privateDataSource];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __78__HMMTRPerControllerStorage_controller_storeValues_securityLevel_sharingType___block_invoke;
  v34[3] = &unk_2786F0D18;
  v36 = buf;
  v8 = v21;
  v35 = v8;
  [v22 setKeyValuePairs:v33 completion:v34];

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v23 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_15:

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

- (id)valuesForController:(id)a3 securityLevel:(unint64_t)a4 sharingType:(unint64_t)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v33 = a3;
  context = objc_autoreleasePoolPush();
  v35 = self;
  v6 = [(HMMTRPerControllerStorage *)self privateDataSource];
  v7 = [v6 allKeyValuePairs];

  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  v34 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = 0;
      v36 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = *(v11 + 2760);
        v16 = MTRDeviceControllerStorageClasses();
        v39 = 0;
        v17 = [v15 unarchivedObjectOfClasses:v16 fromData:v14 error:&v39];
        v18 = v39;

        if (v17)
        {
          [v38 setObject:v17 forKeyedSubscript:v13];
        }

        else
        {
          v19 = v10;
          v20 = objc_autoreleasePoolPush();
          v21 = v35;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v45 = v23;
            v46 = 2112;
            v47 = v13;
            v48 = 2112;
            v49 = v18;
            _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive value for key %@ with error %@", buf, 0x20u);

            v7 = v34;
          }

          objc_autoreleasePoolPop(v20);
          v10 = v19;
          v11 = 0x277CCA000;
          v9 = v36;
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v9);
  }

  v24 = objc_autoreleasePoolPush();
  v25 = v35;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
    *buf = 138543618;
    v45 = v27;
    v46 = 2112;
    v47 = v28;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched %@ key-value pairs from local storage", buf, 0x16u);

    v7 = v34;
  }

  objc_autoreleasePoolPop(v24);
  objc_autoreleasePoolPop(context);
  v29 = [v38 copy];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMMTRPerControllerStorage *)self privateDataSource];
  v11 = [v10 valueForKey:v9];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = MTRDeviceControllerStorageClasses();
    v22 = 0;
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v22];
    v15 = v22;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v24 = v19;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive value for key %@ with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v28];
  v14 = v28;
  if (v13)
  {
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v30) = 0;
    v16 = [(HMMTRPerControllerStorage *)self privateDataSource];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__HMMTRPerControllerStorage_controller_storeValue_forKey_securityLevel_sharingType___block_invoke;
    v25[3] = &unk_2786F0D18;
    v27 = buf;
    v17 = v15;
    v26 = v17;
    [v16 setValue:v13 forKey:v12 completion:v25];

    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v30 = v14;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v8 = a3;
  v9 = a4;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [(HMMTRPerControllerStorage *)self privateDataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRPerControllerStorage_controller_removeValueForKey_securityLevel_sharingType___block_invoke;
  v14[3] = &unk_2786F0D18;
  v16 = &v17;
  v12 = v10;
  v15 = v12;
  [v11 removeValueForKey:v9 completion:v14];

  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v11) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (HMMTRPerControllerStorage)initWithQueue:(id)a3 privateDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRPerControllerStorage;
  v9 = [(HMMTRPerControllerStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_privateDataSource, a4);
  }

  return v10;
}

- (HMMTRPerControllerStorage)initWithQueue:(id)a3 fabric:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMMTRPerControllerStorage;
  v9 = [(HMMTRPerControllerStorage *)&v16 init];
  if (v9)
  {
    v10 = [v8 fabricID];
    fabricID = v9->_fabricID;
    v9->_fabricID = v10;

    objc_storeStrong(&v9->_queue, a3);
    v12 = [v8 currentDeviceNodeData];
    v13 = [v12 privateDataSource];
    privateDataSource = v9->_privateDataSource;
    v9->_privateDataSource = v13;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_2119 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_2119, &__block_literal_global_2120);
  }

  v3 = logCategory__hmf_once_v7_2121;

  return v3;
}

uint64_t __40__HMMTRPerControllerStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7_2121 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end