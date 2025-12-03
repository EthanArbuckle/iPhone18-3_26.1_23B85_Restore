@interface KMIntentVocabularyMultiDatasetBridge
- (KMIntentVocabularyMultiDatasetBridge)init;
- (KMIntentVocabularyMultiDatasetBridge)initWithStoreManager:(id)manager authorization:(id)authorization;
- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block;
@end

@implementation KMIntentVocabularyMultiDatasetBridge

- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  savedCustomVocabularyOverviewDictionary = [(KMIntentVocabularyStoreManager *)self->_storeManager savedCustomVocabularyOverviewDictionary];
  allKeys = [savedCustomVocabularyOverviewDictionary allKeys];
  v8 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [allKeys componentsJoinedByString:{@", "}];
    *buf = 136315394;
    v41 = "[KMIntentVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_2559DF000, v9, OS_LOG_TYPE_INFO, "%s Enumerating Intents Custom Vocabulary from all available apps=[%@]", buf, 0x16u);
  }

  *datasets = [allKeys count];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = allKeys;
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v24 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(KMIntentVocabularyStoreManager *)self->_storeManager resolveIntentSlotsForApp:v12 fromAllAppsOverview:savedCustomVocabularyOverviewDictionary];
        if ([v14 count])
        {
          v28 = v13;
          v29 = v11;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v27 = v14;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [[KMIntentVocabularyDatasetBridge alloc] initWithAppId:v12 intentSlot:*(*(&v30 + 1) + 8 * i) storeManager:self->_storeManager authorization:self->_authorization itemMapper:self->_itemMapper];
                if (v20)
                {
                  blockCopy[2](blockCopy, v20);
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v17);
          }

          v13 = v28;
          v11 = v29;
          v14 = v27;
        }

        else
        {
          v21 = KMLogContextCore;
          if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v41 = "[KMIntentVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
            v42 = 2112;
            v43 = v12;
            _os_log_debug_impl(&dword_2559DF000, v21, OS_LOG_TYPE_DEBUG, "%s Found no intentSlots associated with appId=%@ in custom vocabulary directory.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v26);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (KMIntentVocabularyMultiDatasetBridge)initWithStoreManager:(id)manager authorization:(id)authorization
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = KMIntentVocabularyMultiDatasetBridge;
  v9 = [(KMIntentVocabularyMultiDatasetBridge *)&v19 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_storeManager, manager);
  objc_storeStrong(&v10->_authorization, authorization);
  if (!v10->_storeManager || !v10->_authorization)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v18];
  v12 = v18;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v11;

  if (!v10->_itemMapper)
  {
    v15 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[KMIntentVocabularyMultiDatasetBridge initWithStoreManager:authorization:]";
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_6:
  v14 = v10;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (KMIntentVocabularyMultiDatasetBridge)init
{
  v3 = objc_alloc_init(KMIntentVocabularyStoreManager);
  v4 = objc_alloc_init(KMIntentVocabularyAuthorization);
  v5 = [(KMIntentVocabularyMultiDatasetBridge *)self initWithStoreManager:v3 authorization:v4];

  return v5;
}

@end