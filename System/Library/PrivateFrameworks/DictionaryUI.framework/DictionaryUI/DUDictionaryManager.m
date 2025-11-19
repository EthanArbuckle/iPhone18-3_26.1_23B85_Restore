@interface DUDictionaryManager
+ (id)assetManager;
- (BOOL)_hasDefinitionForTerm:(id)a3;
- (DUDictionaryManager)init;
- (id)_allAvailableDefinitionDictionaries;
- (id)_availableDictionaryAssets;
- (id)_definitionValuesForTerm:(id)a3;
- (int64_t)_compareOrderOfDictionary:(id)a3 withDictionary:(id)a4;
- (void)_downloadDictionaryAssetCatalogWithTimeout:(int64_t)a3 completion:(id)a4;
- (void)_migrateInstalledStateForNewDictionaries:(id)a3;
@end

@implementation DUDictionaryManager

- (DUDictionaryManager)init
{
  v7.receiver = self;
  v7.super_class = DUDictionaryManager;
  v2 = [(DUDictionaryManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DUDictionaryManager *)v2 _allAvailableDefinitionDictionaries];
    availableDefinitionDictionaries = v3->_availableDefinitionDictionaries;
    v3->_availableDefinitionDictionaries = v4;

    v3->_initiallyEmptyAssets = [(NSArray *)v3->_availableDefinitionDictionaries count]== 0;
  }

  return v3;
}

+ (id)assetManager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)_hasDefinitionForTerm:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_availableDefinitionDictionaries;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v12 + 1) + 8 * i) _hasDefinitionForTerm:{v5, v12}])
          {
            LOBYTE(v7) = 1;
            goto LABEL_14;
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_definitionValuesForTerm:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_availableDefinitionDictionaries;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 activated])
        {
          v12 = [v11 _definitionValueForTerm:v4];
          v13 = v12;
          if (v12 && [v12 foundRecordRefs])
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_downloadDictionaryAssetCatalogWithTimeout:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setAllowsCellularAccess:1];
  [v7 setDiscretionary:0];
  [v7 setTimeoutIntervalForResource:a3];
  v8 = MEMORY[0x277D289C0];
  v9 = [(DUDictionaryManager *)self _dictionaryAssetType];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__DUDictionaryManager__downloadDictionaryAssetCatalogWithTimeout_completion___block_invoke;
  v11[3] = &unk_278F6F3E8;
  v12 = v6;
  v10 = v6;
  [v8 startCatalogDownload:v9 options:v7 then:v11];
}

uint64_t __77__DUDictionaryManager__downloadDictionaryAssetCatalogWithTimeout_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_availableDictionaryAssets
{
  v3 = objc_alloc(MEMORY[0x277D289D8]);
  v4 = [(DUDictionaryManager *)self _dictionaryAssetType];
  v5 = [v3 initWithType:v4];

  [v5 returnTypes:2];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  v6 = [v5 queryMetaDataSync];
  if (v6)
  {
    NSLog(&cfstr_DictionaryuiDu.isa, v6);
    v7 = 0;
  }

  else
  {
    v7 = [v5 results];
  }

  return v7;
}

- (id)_allAvailableDefinitionDictionaries
{
  v51 = *MEMORY[0x277D85DE8];
  v27 = [(DUDictionaryManager *)self _availableDictionaryAssets];
  v28 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if (v27)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v3 = v27;
    v4 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v4)
    {
      v5 = *v45;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v45 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v44 + 1) + 8 * i);
          v8 = [v7 _formatVersion];
          if (v8 == MEMORY[0x24C1E7090]())
          {
            v9 = [[DUDefinitionDictionary alloc] initWithAsset:v7];
            if (v9)
            {
              if ([v7 state] != 1)
              {
                [(DUDefinitionDictionary *)v9 setActivated:1];
              }

              v10 = [v7 attributes];
              [(DUDefinitionDictionary *)v9 setPreferredOrder:MEMORY[0x24C1E70C0](v10, v28)];

              [v2 addObject:v9];
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v4);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke;
    v43[3] = &unk_278F6F410;
    v43[4] = self;
    [v2 sortUsingComparator:v43];
  }

  else
  {
    v2 = 0;
  }

  [v2 _filteredArrayOfObjectsPassingTest:&__block_literal_global_471];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * j);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_3;
        v34[3] = &unk_278F6F458;
        v34[4] = v14;
        v34[5] = &v39;
        v15 = [v2 _filteredArrayOfObjectsPassingTest:v34];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v48 count:16];
        if (v17)
        {
          v18 = *v31;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v16);
              }

              [v2 removeObject:*(*(&v30 + 1) + 8 * k)];
            }

            v17 = [v16 countByEnumeratingWithState:&v30 objects:v48 count:16];
          }

          while (v17);
        }

        v20 = [v14 rawAsset];
        if (![v16 count] && objc_msgSend(v20, "state") == 3)
        {
          [v2 removeObject:v14];
          v21 = [v20 purgeSync];
          *(v40 + 24) = 1;
          v22 = [v20 attributes];
          v23 = [v22 objectForKeyedSubscript:@"DictionaryIdentifier"];
          NSLog(&cfstr_DictionaryuiAl.isa, v23, v21);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v11);
  }

  if (self->_initiallyEmptyAssets && [v2 count] && !objc_msgSend(obj, "count"))
  {
    [(DUDictionaryManager *)self _migrateInstalledStateForNewDictionaries:v2];
    self->_initiallyEmptyAssets = 0;
  }

  objc_storeStrong(&self->_availableDefinitionDictionaries, v2);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) _compareOrderOfDictionary:v5 withDictionary:v6];
  objc_autoreleasePoolPop(v7);

  return v8;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 rawAsset];
  v3 = [v2 wasLocal];

  return v3;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) localizedDictionaryName];
  v5 = [v3 localizedDictionaryName];
  if (([v4 isEqual:v5] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [v3 rawAsset];
  v7 = [v6 wasLocal];

  if (v7)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = *(a1 + 32);
  v9 = [v3 rawAsset];
  [v8 setAssetToUpgrade:v9];

  v10 = *(*(a1 + 40) + 8);
  v11 = 1;
  *(v10 + 24) = 1;
LABEL_6:

  return v11;
}

- (int64_t)_compareOrderOfDictionary:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 preferredOrder];
  v8 = [v6 preferredOrder];
  if (v7 == -1 && v8 == -1)
  {
    v9 = [v5 localizedSortName];
    v10 = [v6 localizedSortName];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_285B95F20;
    }

    v13 = [v9 localizedStandardCompare:v12];
  }

  else if (v7 == -1 || v8 == -1)
  {
    if (v7 == -1)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

  else if (v7 > v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (void)_migrateInstalledStateForNewDictionaries:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = objc_alloc(MEMORY[0x277D289A8]);
  v5 = [(DUDictionaryManager *)self _dictionaryAssetType];
  v6 = [v4 initWithAssetType:v5];

  [v6 setQueriesLocalAssetInformationOnly:1];
  v28 = v6;
  v7 = [v6 runQueryAndReturnError:0];
  if ([v7 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      v29 = *v43;
      v30 = v7;
      do
      {
        v11 = 0;
        v32 = v9;
        do
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v42 + 1) + 8 * v11);
          if ([v12 state] == 1)
          {
            v34 = v12;
            v35 = v11;
            v13 = [v12 attributes];
            v14 = [v13 objectForKeyedSubscript:@"DictionaryIdentifier"];

            NSLog(&cfstr_DictionaryuiV1.isa, v14);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v15 = v31;
            v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v39;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v39 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v38 + 1) + 8 * i);
                  v21 = [v20 rawAsset];
                  v22 = [v21 attributes];
                  v23 = [v22 objectForKeyedSubscript:@"DictionaryIdentifier"];
                  v24 = [v23 isEqualToString:v14];

                  if (v24)
                  {
                    v25 = [v20 rawAsset];
                    [v20 setAssetToUpgrade:v25];

                    goto LABEL_18;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:

            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __64__DUDictionaryManager__migrateInstalledStateForNewDictionaries___block_invoke;
            v36[3] = &unk_278F6F480;
            v37 = v14;
            v26 = v14;
            [v34 purge:v36];

            v10 = v29;
            v7 = v30;
            v9 = v32;
            v11 = v35;
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v9);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __64__DUDictionaryManager__migrateInstalledStateForNewDictionaries___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_DictionaryuiPu.isa, *(a1 + 32), a2);
  }
}

@end