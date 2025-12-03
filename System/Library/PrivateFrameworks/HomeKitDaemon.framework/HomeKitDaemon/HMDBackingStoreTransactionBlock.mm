@interface HMDBackingStoreTransactionBlock
+ (id)logCategory;
+ (void)sort:(id)sort;
- (HMDBackingStore)backingStore;
- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)store options:(id)options label:(id)label;
- (NSString)description;
- (void)add:(id)add withMessage:(id)message;
- (void)addObjects:(id)objects;
- (void)run:(id)run;
- (void)runWithCoreDataBlock:(id)block withCompletionBlock:(id)completionBlock;
- (void)runWithoutSave:(id)save;
- (void)save:(id)save;
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
  options = [(HMDBackingStoreTransactionBlock *)self options];
  objects = [(HMDBackingStoreTransactionBlock *)self objects];
  v6 = [v3 stringWithFormat:@"<HMDBackingStoreTransaction options:%@ objects:%lu>", options, objc_msgSend(objects, "count")];

  return v6;
}

- (void)runWithCoreDataBlock:(id)block withCompletionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:1 coreDataBlock:blockCopy completionHandler:completionBlockCopy];
}

- (void)save:(id)save
{
  saveCopy = save;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  options = [(HMDBackingStoreTransactionBlock *)self options];
  [backingStore commit:self run:0 save:1 archiveInline:objc_msgSend(options coreDataBlock:"mustSaveArchiveAtomically") completionHandler:{0, saveCopy}];
}

- (void)runWithoutSave:(id)save
{
  saveCopy = save;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:0 archiveInline:1 coreDataBlock:0 completionHandler:saveCopy];
}

- (void)run:(id)run
{
  runCopy = run;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:1 coreDataBlock:0 completionHandler:runCopy];
}

- (void)addObjects:(id)objects
{
  v15 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectsCopy);
        }

        [(HMDBackingStoreTransactionBlock *)self add:*(*(&v10 + 1) + 8 * v8++) withMessage:0];
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)add:(id)add withMessage:(id)message
{
  v62 = *MEMORY[0x277D85DE8];
  addCopy = add;
  messageCopy = message;
  uuid = [addCopy uuid];

  if (!uuid)
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = *MEMORY[0x277CBE658];
    v42 = MEMORY[0x277CCACA8];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    bsoType = [addCopy bsoType];
    v46 = [v42 stringWithFormat:@"UUID for a transaction object (%@ / %@) must be set before adding to a transaction.", v44, bsoType];
    v47 = [v40 exceptionWithName:v41 reason:v46 userInfo:0];
    v48 = v47;

    objc_exception_throw(v47);
  }

  if ([(HMDBackingStoreTransactionBlock *)self committed])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@adding to a committed transaction block probably indicates a bad state.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v49 = messageCopy;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    objects = [(HMDBackingStoreTransactionBlock *)self objects];
    v52 = [objects countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v52)
    {
      v14 = *v54;
      v50 = addCopy;
      v51 = *v54;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(objects);
          }

          v16 = *(*(&v53 + 1) + 8 * i);
          change = [v16 change];
          uuid2 = [change uuid];
          uuid3 = [addCopy uuid];
          v20 = [uuid2 isEqual:uuid3];

          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              [(HMDBackingStoreTransactionBlock *)selfCopy2 options];
              v25 = objects;
              v27 = v26 = self;
              label = [v27 label];
              *buf = 138543618;
              v58 = v24;
              v59 = 2112;
              v60 = label;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Just got request to add duplicate model object to transaction %@! (Both will be processed):", buf, 0x16u);

              self = v26;
              objects = v25;
              addCopy = v50;
            }

            objc_autoreleasePoolPop(v21);
            change2 = [v16 change];
            v30 = MEMORY[0x277CCACA8];
            change3 = [v16 change];
            v32 = changeTypeAsNSString([change3 objectChangeType]);
            v33 = [v30 stringWithFormat:@"previous (%@)", v32];
            [change2 dumpWithVerbosity:1 prefix:v33 logType:16];

            v34 = MEMORY[0x277CCACA8];
            v35 = changeTypeAsNSString([addCopy objectChangeType]);
            v36 = [v34 stringWithFormat:@"new (%@)", v35];
            [addCopy dumpWithVerbosity:1 prefix:v36 logType:16];

            v14 = v51;
          }
        }

        v52 = [objects countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v52);
    }

    objects2 = [(HMDBackingStoreTransactionBlock *)self objects];
    messageCopy = v49;
    v38 = [[HMDBackingStoreTransactionItem alloc] initWithChange:addCopy message:v49];
    [objects2 addObject:v38];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)store options:(id)options label:(id)label
{
  storeCopy = store;
  optionsCopy = options;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreTransactionBlock;
  v11 = [(HMDBackingStoreTransactionBlock *)&v17 init];
  if (v11)
  {
    array = [MEMORY[0x277CBEB18] array];
    objects = v11->_objects;
    v11->_objects = array;

    objc_storeStrong(&v11->_options, options);
    objc_storeWeak(&v11->_backingStore, storeCopy);
    v11->_committed = 0;
    if (labelCopy)
    {
      v14 = labelCopy;
    }

    else
    {
      v14 = @"anonymous";
    }

    [optionsCopy setLabel:v14];
    v15 = v11;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_226700 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_226700, &__block_literal_global_226701);
  }

  v3 = logCategory__hmf_once_v5_226702;

  return v3;
}

void __46__HMDBackingStoreTransactionBlock_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_226702;
  logCategory__hmf_once_v5_226702 = v1;
}

+ (void)sort:(id)sort
{
  v22 = *MEMORY[0x277D85DE8];
  sortCopy = sort;
  if ([sortCopy count] >= 2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sortCopy, "count")}];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sortCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = sortCopy;
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
          change = [v11 change];
          objectChangeType = [change objectChangeType];

          if (objectChangeType == 3)
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