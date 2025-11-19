@interface KMAppGlobalVocabularyMultiDatasetBridge
- (KMAppGlobalVocabularyMultiDatasetBridge)init;
- (KMAppGlobalVocabularyMultiDatasetBridge)initWithModifiedOriginAppIds:(id)a3 languageCode:(id)a4;
- (id)_extractAllAppIntentVocabularyForApp:(id)a3 languageCode:(id)a4;
- (id)_extractAllAppIntentVocabularyFromBundle:(__CFBundle *)a3 languageCode:(id)a4;
- (id)_sortAppIntentVocabularyByCascadeItemType:(id)a3;
- (void)enumerateAllDatasets:(unint64_t *)a3 usingBlock:(id)a4;
@end

@implementation KMAppGlobalVocabularyMultiDatasetBridge

- (id)_sortAppIntentVocabularyByCascadeItemType:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __85__KMAppGlobalVocabularyMultiDatasetBridge__sortAppIntentVocabularyByCascadeItemType___block_invoke;
        v13[3] = &unk_279805C58;
        v14 = v4;
        v15 = v10;
        [v10 enumerateFieldsUsingBlock:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

void __85__KMAppGlobalVocabularyMultiDatasetBridge__sortAppIntentVocabularyByCascadeItemType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 fieldType] - 600;
  if (v6 <= 4)
  {
    v7 = word_255A00808[v6];
    if (v7 != *MEMORY[0x277CF94A8])
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:word_255A00808[v6]];
      v12 = [v8 objectForKey:v9];

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
        [v10 setObject:v12 forKey:v11];
      }

      [v12 addObject:*(a1 + 40)];
      *a4 = 1;
    }
  }
}

- (id)_extractAllAppIntentVocabularyFromBundle:(__CFBundle *)a3 languageCode:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = CFBundleCopyResourceURLForLocalization(a3, @"AppIntentVocabulary", @"plist", 0, v6);
  if (!v7)
  {
    v8 = v6;
    if ([(__CFString *)v8 length])
    {
      v9 = [(__CFString *)v8 componentsSeparatedByString:@"-"];
      v10 = [v9 firstObject];
    }

    else
    {
      v10 = 0;
    }

    v11 = CFBundleCopyResourceURLForLocalization(a3, @"AppIntentVocabulary", @"plist", 0, v10);
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(__CFString *)v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v13 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v12];

      v7 = CFBundleCopyResourceURLForLocalization(a3, @"AppIntentVocabulary", @"plist", 0, [v13 localeIdentifier]);
      if (!v7)
      {

        v16 = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];
  if (v14)
  {
    itemMapper = self->_itemMapper;
    v23 = 0;
    v16 = [(KVItemMapper *)itemMapper mapObject:v14 error:&v23];
    v17 = v23;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v20 = KMLogContextCore;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyFromBundle:languageCode:]";
        v26 = 2112;
        v27 = v17;
        _os_log_error_impl(&dword_2559DF000, v20, OS_LOG_TYPE_ERROR, "%s Failed to map appIntentVocabulary with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyFromBundle:languageCode:]";
      v26 = 2112;
      v27 = v7;
      _os_log_error_impl(&dword_2559DF000, v19, OS_LOG_TYPE_ERROR, "%s Failed to initialize appIntentVocabulary dictionary from URL: %@", buf, 0x16u);
    }

    v17 = 0;
    v16 = 0;
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_extractAllAppIntentVocabularyForApp:(id)a3 languageCode:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v18 = 0;
    v8 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v18];
    v9 = v18;
    v10 = *MEMORY[0x277CBECE8];
    [v8 URL];
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      v12 = Unique;
      v13 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _extractAllAppIntentVocabularyFromBundle:Unique languageCode:v7];
      _CFBundleFlushBundleCaches();
      CFRelease(v12);
    }

    else
    {
      v15 = KMLogContextCore;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyForApp:languageCode:]";
        v21 = 2112;
        v22 = v6;
        _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s Cannot create a bundle instance with appId: %@", buf, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v14 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyForApp:languageCode:]";
      _os_log_error_impl(&dword_2559DF000, v14, OS_LOG_TYPE_ERROR, "%s nil languageCode", buf, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)enumerateAllDatasets:(unint64_t *)a3 usingBlock:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    modifiedAppIds = self->_modifiedAppIds;
    v9 = v6;
    v10 = [v7 numberWithUnsignedInteger:{-[NSSet count](modifiedAppIds, "count")}];
    *buf = 136315394;
    v46 = "[KMAppGlobalVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_2559DF000, v9, OS_LOG_TYPE_INFO, "%s Scanning app global terms for %@ modified apps", buf, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_modifiedAppIds;
  v30 = [(NSSet *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v11 = 0;
  if (v30)
  {
    v29 = *v40;
    v28 = self;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _extractAllAppIntentVocabularyForApp:v13 languageCode:self->_languageCode];
        if (v15)
        {
          v32 = v14;
          v33 = i;
          v31 = v15;
          v16 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _sortAppIntentVocabularyByCascadeItemType:v15];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v36;
            do
            {
              v34 = v11;
              for (j = 0; j != v18; ++j)
              {
                if (*v36 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v35 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = -[KMAppGlobalVocabularyBridge initWithOriginAppId:cascadeItemType:items:]([KMAppGlobalVocabularyBridge alloc], "initWithOriginAppId:cascadeItemType:items:", v13, [v21 unsignedShortValue], v22);
                v24 = KMLogContextCore;
                if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v46 = "[KMAppGlobalVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
                  v47 = 2112;
                  v48 = v13;
                  _os_log_impl(&dword_2559DF000, v24, OS_LOG_TYPE_INFO, "%s Extracting app global terms for app: %@", buf, 0x16u);
                }

                v5[2](v5, v23);
              }

              v11 = v34 + v18;
              v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v18);
          }

          self = v28;
          v14 = v32;
          i = v33;
          v15 = v31;
        }

        objc_autoreleasePoolPop(v14);
      }

      v30 = [(NSSet *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v30);
  }

  *a3 = v11;
  v25 = *MEMORY[0x277D85DE8];
}

- (KMAppGlobalVocabularyMultiDatasetBridge)initWithModifiedOriginAppIds:(id)a3 languageCode:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = KMAppGlobalVocabularyMultiDatasetBridge;
  v9 = [(KMAppGlobalVocabularyMultiDatasetBridge *)&v22 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_modifiedAppIds, a3);
  objc_storeStrong(&v10->_languageCode, a4);
  modifiedAppIds = v10->_modifiedAppIds;
  if (!modifiedAppIds || !v10->_languageCode)
  {
    v16 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      languageCode = v10->_languageCode;
      *buf = 136315650;
      v24 = "[KMAppGlobalVocabularyMultiDatasetBridge initWithModifiedOriginAppIds:languageCode:]";
      v25 = 2112;
      v26 = modifiedAppIds;
      v27 = 2112;
      v28 = languageCode;
      _os_log_error_impl(&dword_2559DF000, v16, OS_LOG_TYPE_ERROR, "%s Invalid {modified: %@ language: %@}", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v21 = 0;
  v12 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v21];
  v13 = v21;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v12;

  if (!v10->_itemMapper)
  {
    v18 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[KMAppGlobalVocabularyMultiDatasetBridge initWithModifiedOriginAppIds:languageCode:]";
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2559DF000, v18, OS_LOG_TYPE_ERROR, "%s Cannot initialize item mapper with error: %@", buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_6:
  v15 = v10;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (KMAppGlobalVocabularyMultiDatasetBridge)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end