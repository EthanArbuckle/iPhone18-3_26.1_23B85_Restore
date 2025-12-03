@interface DOCTagCloudSource
- (DOCTagCloudSource)initWithTagRegistry:(id)registry;
- (DOCTagRegistryProtocol)tagRegistry;
- (id)iCloudTags;
- (id)iCloudTagsDictionary;
- (int64_t)iCloudTagSerialNumber;
- (int64_t)iCloudTagVersion;
- (void)dealloc;
- (void)iCloudTokenWithCompletionBlock:(id)block;
- (void)isICloudAvailableWithCompletionBlock:(id)block;
- (void)kvsStoreDidChange:(id)change;
- (void)readTagsFromCloud:(BOOL)cloud;
- (void)syncTagsWithCloud:(BOOL)cloud;
- (void)ubiquityIdentityDidChange;
- (void)writeTagsToCloud;
@end

@implementation DOCTagCloudSource

- (id)iCloudTagsDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = +[DOCManagedPermission defaultPermission];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DOCTagCloudSource_iCloudTagsDictionary__block_invoke;
  v6[3] = &unk_278F9B548;
  v6[4] = self;
  v6[5] = &v7;
  [v3 adoptPersonaliCloudPersonaAndPerformBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__DOCTagCloudSource_iCloudTagsDictionary__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) store];
  v2 = [v5 objectForKey:@"FinderTagDict"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)iCloudTagVersion
{
  iCloudTagsDictionary = [(DOCTagCloudSource *)self iCloudTagsDictionary];
  v3 = [iCloudTagsDictionary objectForKeyedSubscript:@"FinderTagDictVersion"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)iCloudTagSerialNumber
{
  iCloudTagsDictionary = [(DOCTagCloudSource *)self iCloudTagsDictionary];
  v3 = [iCloudTagsDictionary objectForKeyedSubscript:@"FinderTagSerialNumber"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (DOCTagCloudSource)initWithTagRegistry:(id)registry
{
  v24.receiver = self;
  v24.super_class = DOCTagCloudSource;
  registryCopy = registry;
  v4 = [(DOCTagCloudSource *)&v24 init];
  [(DOCTagCloudSource *)v4 setTagRegistry:registryCopy];

  v5 = +[DOCManagedPermission defaultPermission];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__DOCTagCloudSource_initWithTagRegistry___block_invoke;
  v22[3] = &unk_278F9B408;
  v6 = v4;
  v23 = v6;
  [v5 adoptPersonaliCloudPersonaAndPerformBlock:v22];

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

  v9 = dispatch_queue_create("com.apple.DocumentManager.TagICloudDataSource.workingQueue", v8);
  workingQueue = v6->_workingQueue;
  v6->_workingQueue = v9;

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __41__DOCTagCloudSource_initWithTagRegistry___block_invoke_2;
  v20 = &unk_278F9B458;
  v11 = v6;
  v21 = v11;
  [(DOCTagCloudSource *)v11 iCloudTokenWithCompletionBlock:&v17];
  if (v11->_store)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_kvsStoreDidChange_ name:*MEMORY[0x277CCA7C0] object:v11->_store];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v11 selector:sel_ubiquityIdentityDidChange name:*MEMORY[0x277CCA7C8] object:0];

  v14 = v21;
  v15 = v11;

  return v15;
}

void __41__DOCTagCloudSource_initWithTagRegistry___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAD80]) initWithStoreIdentifier:@"com.apple.finder" type:0];
  [*(a1 + 32) setStore:v2];
}

void __41__DOCTagCloudSource_initWithTagRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setICloudToken:v3];
  v4 = +[DOCPostLaunchBuffer shared];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DOCTagCloudSource_initWithTagRegistry___block_invoke_3;
  v6[3] = &unk_278F9B430;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 performAfterLaunchAlwaysAsync:1 block:v6];
}

- (void)dealloc
{
  if (self->_store)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CCA7C0] object:self->_store];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CCA7C8] object:0];

  v5.receiver = self;
  v5.super_class = DOCTagCloudSource;
  [(DOCTagCloudSource *)&v5 dealloc];
}

- (void)ubiquityIdentityDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__DOCTagCloudSource_ubiquityIdentityDidChange__block_invoke;
  v2[3] = &unk_278F9B458;
  v2[4] = self;
  [(DOCTagCloudSource *)self iCloudTokenWithCompletionBlock:v2];
}

void __46__DOCTagCloudSource_ubiquityIdentityDidChange__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) iCloudToken];
  v4 = [v6 isEqual:v3];

  v5 = v6;
  if (v6 && (v4 & 1) == 0)
  {
    [*(a1 + 32) setICloudToken:v6];
    [*(a1 + 32) syncTagsWithCloud:1];
    v5 = v6;
  }
}

- (void)kvsStoreDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CCA7B0]];
  intValue = [v6 intValue];

  if (intValue <= 1)
  {
    if (!intValue)
    {
      selfCopy2 = self;
      v12 = 0;
      goto LABEL_14;
    }

    if (intValue == 1)
    {
      v8 = +[DOCTag tagsLoadedFromUserDefaults];
      WeakRetained = objc_loadWeakRetained(&self->_tagRegistry);
      userTags = [WeakRetained userTags];
      v11 = [v8 isEqualToOrderedSet:userTags];

      v12 = v11 ^ 1u;
      selfCopy2 = self;
LABEL_14:

      [(DOCTagCloudSource *)selfCopy2 syncTagsWithCloud:v12];
      return;
    }

    goto LABEL_10;
  }

  if (intValue == 2)
  {
    v14 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v14 = docLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DOCTagCloudSource kvsStoreDidChange:v14];
    }
  }

  else
  {
    if (intValue != 3)
    {
LABEL_10:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTagCloudSource.m" lineNumber:119 description:{@"Unknown kvs store change reason %d", intValue}];

      return;
    }

    [(DOCTagCloudSource *)self ubiquityIdentityDidChange];
  }
}

- (void)syncTagsWithCloud:(BOOL)cloud
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__DOCTagCloudSource_syncTagsWithCloud___block_invoke;
  v3[3] = &unk_278F9B480;
  v3[4] = self;
  cloudCopy = cloud;
  [(DOCTagCloudSource *)self isICloudAvailableWithCompletionBlock:v3];
}

- (void)readTagsFromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v32 = *MEMORY[0x277D85DE8];
  iCloudTagsDictionary = [(DOCTagCloudSource *)self iCloudTagsDictionary];
  if (iCloudTagsDictionary)
  {
    v6 = iCloudTagsDictionary;
    iCloudTagVersion = [(DOCTagCloudSource *)self iCloudTagVersion];

    if (iCloudTagVersion == 2)
    {
      iCloudTagSerialNumber = [(DOCTagCloudSource *)self iCloudTagSerialNumber];
      WeakRetained = objc_loadWeakRetained(&self->_tagRegistry);
      tagSerialNumber = [WeakRetained tagSerialNumber];

      if (iCloudTagSerialNumber > tagSerialNumber || cloudCopy)
      {
        iCloudTags = [(DOCTagCloudSource *)self iCloudTags];
        if (iCloudTags)
        {
          v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(iCloudTags, "count")}];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v23 = iCloudTags;
          v13 = iCloudTags;
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            do
            {
              v17 = 0;
              do
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [[DOCTag alloc] initWithICloudTagAttributes:*(*(&v27 + 1) + 8 * v17)];
                [v12 addObject:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
            }

            while (v15);
          }

          v19 = objc_loadWeakRetained(&self->_tagRegistry);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __39__DOCTagCloudSource_readTagsFromCloud___block_invoke;
          v24[3] = &unk_278F9B4A8;
          v26 = cloudCopy;
          v25 = v12;
          v20 = v12;
          [v19 performBatchUpdate:v24];

          v21 = objc_loadWeakRetained(&self->_tagRegistry);
          [v21 setTagSerialNumber:iCloudTagSerialNumber];

          iCloudTags = v23;
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __39__DOCTagCloudSource_readTagsFromCloud___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 40) & 1) == 0)
  {
    [v3 removeAllTagsOfType:1];
    v3 = v4;
  }

  [v3 addTags:*(a1 + 32) options:2];
}

- (void)writeTagsToCloud
{
  v52 = *MEMORY[0x277D85DE8];
  iCloudTagsDictionary = [(DOCTagCloudSource *)self iCloudTagsDictionary];
  if (iCloudTagsDictionary)
  {
  }

  else
  {
    v4 = +[DOCTag tagsLoadedFromUserDefaults];
    WeakRetained = objc_loadWeakRetained(&self->_tagRegistry);
    userTags = [WeakRetained userTags];
    v7 = [v4 isEqualToOrderedSet:userTags];

    if (v7)
    {
      goto LABEL_26;
    }
  }

  v8 = objc_loadWeakRetained(&self->_tagRegistry);
  userTags2 = [v8 userTags];

  iCloudTags = [(DOCTagCloudSource *)self iCloudTags];
  v11 = iCloudTags;
  v12 = MEMORY[0x277CBEBF8];
  if (iCloudTags)
  {
    v12 = iCloudTags;
  }

  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      v19 = 0;
      do
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[DOCTag alloc] initWithICloudTagAttributes:*(*(&v46 + 1) + 8 * v19)];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v17);
  }

  if (![DOCTag areTags:userTags2 equalByNameAndColorTo:v14])
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    iCloudTagSerialNumber = [(DOCTagCloudSource *)self iCloudTagSerialNumber];
    v23 = objc_loadWeakRetained(&self->_tagRegistry);
    tagSerialNumber = [v23 tagSerialNumber];

    if (iCloudTagSerialNumber <= tagSerialNumber)
    {
      v25 = tagSerialNumber;
    }

    else
    {
      v25 = iCloudTagSerialNumber;
    }

    v38 = v25;
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(userTags2, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = userTags2;
    v27 = userTags2;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        v31 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          iCloudTagAttributes = [*(*(&v42 + 1) + 8 * v31) iCloudTagAttributes];
          [v26 addObject:iCloudTagAttributes];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }

    [v21 setObject:v26 forKeyedSubscript:@"FinderTags"];
    [v21 setObject:&unk_285C77EC8 forKeyedSubscript:@"FinderTagDictVersion"];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v38 + 1];
    [v21 setObject:v33 forKeyedSubscript:@"FinderTagSerialNumber"];

    v34 = objc_loadWeakRetained(&self->_tagRegistry);
    [v34 setTagSerialNumber:v38 + 1];

    v35 = +[DOCManagedPermission defaultPermission];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __37__DOCTagCloudSource_writeTagsToCloud__block_invoke;
    v40[3] = &unk_278F9B430;
    v40[4] = self;
    v41 = v21;
    v36 = v21;
    [v35 adoptPersonaliCloudPersonaAndPerformBlock:v40];

    userTags2 = v39;
  }

LABEL_26:
  v37 = *MEMORY[0x277D85DE8];
}

void __37__DOCTagCloudSource_writeTagsToCloud__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  [v2 setDictionary:*(a1 + 40) forKey:@"FinderTagDict"];

  v3 = [*(a1 + 32) store];
  [v3 synchronize];
}

- (void)iCloudTokenWithCompletionBlock:(id)block
{
  blockCopy = block;
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DOCTagCloudSource_iCloudTokenWithCompletionBlock___block_invoke;
  block[3] = &unk_278F9B4F8;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workingQueue, block);
}

void __52__DOCTagCloudSource_iCloudTokenWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 ubiquityIdentityToken];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DOCTagCloudSource_iCloudTokenWithCompletionBlock___block_invoke_2;
  v6[3] = &unk_278F9B4D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)isICloudAvailableWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__DOCTagCloudSource_isICloudAvailableWithCompletionBlock___block_invoke;
  v6[3] = &unk_278F9B520;
  v7 = blockCopy;
  v5 = blockCopy;
  [(DOCTagCloudSource *)self iCloudTokenWithCompletionBlock:v6];
}

- (id)iCloudTags
{
  iCloudTagsDictionary = [(DOCTagCloudSource *)self iCloudTagsDictionary];
  v3 = [iCloudTagsDictionary objectForKeyedSubscript:@"FinderTags"];

  return v3;
}

- (DOCTagRegistryProtocol)tagRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_tagRegistry);

  return WeakRetained;
}

@end