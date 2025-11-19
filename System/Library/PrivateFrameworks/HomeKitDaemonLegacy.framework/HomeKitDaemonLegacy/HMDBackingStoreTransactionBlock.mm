@interface HMDBackingStoreTransactionBlock
+ (id)logCategory;
+ (void)sort:(id)a3;
- (HMDBackingStore)backingStore;
- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)a3 options:(id)a4 label:(id)a5;
- (NSString)description;
- (void)add:(id)a3 withMessage:(id)a4;
- (void)addObjects:(id)a3;
- (void)run:(id)a3;
- (void)runWithoutSave:(id)a3;
- (void)save:(id)a3;
@end

@implementation HMDBackingStoreTransactionBlock

- (HMDBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBackingStoreTransactionBlock *)self options];
  v5 = [(HMDBackingStoreTransactionBlock *)self objects];
  v6 = [v3 stringWithFormat:@"<HMDBackingStoreTransaction options:%@ objects:%lu>", v4, objc_msgSend(v5, "count")];

  return v6;
}

- (void)save:(id)a3
{
  v4 = a3;
  v6 = [(HMDBackingStoreTransactionBlock *)self backingStore];
  v5 = [(HMDBackingStoreTransactionBlock *)self options];
  [v6 commit:self run:0 save:1 archiveInline:objc_msgSend(v5 completionHandler:{"mustSaveArchiveAtomically"), v4}];
}

- (void)runWithoutSave:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [v5 commit:self run:1 save:0 archiveInline:1 completionHandler:v4];
}

- (void)run:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [v5 commit:self run:1 save:1 completionHandler:v4];
}

- (void)addObjects:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HMDBackingStoreTransactionBlock *)self add:*(*(&v10 + 1) + 8 * v8++) withMessage:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)add:(id)a3 withMessage:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];

  if (!v8)
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = *MEMORY[0x277CBE658];
    v42 = MEMORY[0x277CCACA8];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v6 bsoType];
    v46 = [v42 stringWithFormat:@"UUID for a transaction object (%@ / %@) must be set before adding to a transaction.", v44, v45];
    v47 = [v40 exceptionWithName:v41 reason:v46 userInfo:0];
    v48 = v47;

    objc_exception_throw(v47);
  }

  if ([(HMDBackingStoreTransactionBlock *)self committed])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@adding to a committed transaction block probably indicates a bad state.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v49 = v7;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v13 = [(HMDBackingStoreTransactionBlock *)self objects];
    v52 = [v13 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v52)
    {
      v14 = *v54;
      v50 = v6;
      v51 = *v54;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v53 + 1) + 8 * i);
          v17 = [v16 change];
          v18 = [v17 uuid];
          v19 = [v6 uuid];
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              [(HMDBackingStoreTransactionBlock *)v22 options];
              v25 = v13;
              v27 = v26 = self;
              v28 = [v27 label];
              *buf = 138543618;
              v58 = v24;
              v59 = 2112;
              v60 = v28;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Just got request to add duplicate model object to transaction %@! (Both will be processed):", buf, 0x16u);

              self = v26;
              v13 = v25;
              v6 = v50;
            }

            objc_autoreleasePoolPop(v21);
            v29 = [v16 change];
            v30 = MEMORY[0x277CCACA8];
            v31 = [v16 change];
            v32 = changeTypeAsNSString([v31 objectChangeType]);
            v33 = [v30 stringWithFormat:@"previous (%@)", v32];
            [v29 dumpWithVerbosity:1 prefix:v33 logType:16];

            v34 = MEMORY[0x277CCACA8];
            v35 = changeTypeAsNSString([v6 objectChangeType]);
            v36 = [v34 stringWithFormat:@"new (%@)", v35];
            [v6 dumpWithVerbosity:1 prefix:v36 logType:16];

            v14 = v51;
          }
        }

        v52 = [v13 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v52);
    }

    v37 = [(HMDBackingStoreTransactionBlock *)self objects];
    v7 = v49;
    v38 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v6 message:v49];
    [v37 addObject:v38];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)a3 options:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreTransactionBlock;
  v11 = [(HMDBackingStoreTransactionBlock *)&v17 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    objects = v11->_objects;
    v11->_objects = v12;

    objc_storeStrong(&v11->_options, a4);
    objc_storeWeak(&v11->_backingStore, v8);
    v11->_committed = 0;
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = @"anonymous";
    }

    [v9 setLabel:v14];
    v15 = v11;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_151905 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_151905, &__block_literal_global_151906);
  }

  v3 = logCategory__hmf_once_v5_151907;

  return v3;
}

uint64_t __46__HMDBackingStoreTransactionBlock_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_151907;
  logCategory__hmf_once_v5_151907 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)sort:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 change];
          v13 = [v12 objectChangeType];

          if (v13 == 3)
          {
            v14 = v4;
          }

          else
          {
            v14 = v5;
          }

          [v14 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    __sort(v4);
    __sort(v5);
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    [v15 addObjectsFromArray:v4];
    [v15 addObjectsFromArray:v5];
    [v6 setArray:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end