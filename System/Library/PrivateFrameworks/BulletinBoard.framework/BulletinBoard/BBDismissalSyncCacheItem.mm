@interface BBDismissalSyncCacheItem
- (BBDismissalSyncCacheItem)init;
- (id)findBulletinMatch:(id)match;
- (id)purgeExpired;
- (void)cacheDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds forFeeds:(unint64_t)feeds;
- (void)removeBulletinMatch:(id)match;
@end

@implementation BBDismissalSyncCacheItem

- (BBDismissalSyncCacheItem)init
{
  v8.receiver = self;
  v8.super_class = BBDismissalSyncCacheItem;
  v2 = [(BBDismissalSyncCacheItem *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dismissalDictionariesAndFeeds = v2->_dismissalDictionariesAndFeeds;
    v2->_dismissalDictionariesAndFeeds = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dismissalIDToFeeds = v2->_dismissalIDToFeeds;
    v2->_dismissalIDToFeeds = v5;
  }

  return v2;
}

- (void)cacheDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds forFeeds:(unint64_t)feeds
{
  v46 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  dsCopy = ds;
  obj = dictionariesCopy;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [dictionariesCopy countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = self->_dismissalDictionariesAndFeeds;
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * j);
              if ([v18 matchDismissalDictionary:v12])
              {
                [v18 addFeeds:feeds];
                goto LABEL_16;
              }
            }

            v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = [[BBDismissalDictionaryAndFeeds alloc] initWithDismissalDictionary:v12 andFeeds:feeds];
        [(NSMutableArray *)self->_dismissalDictionariesAndFeeds addObject:v13];
LABEL_16:
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = dsCopy;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * k);
        v25 = [(NSMutableDictionary *)self->_dismissalIDToFeeds objectForKeyedSubscript:v24];
        if (v25)
        {
          v26 = v25;
          [(BBDismissalItem *)v25 addFeeds:feeds];
        }

        else
        {
          v26 = [[BBDismissalItem alloc] initWithFeeds:feeds];
          [(NSMutableDictionary *)self->_dismissalIDToFeeds setObject:v26 forKeyedSubscript:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)findBulletinMatch:(id)match
{
  v23 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  dismissalID = [matchCopy dismissalID];
  if (!dismissalID || ([(NSMutableDictionary *)self->_dismissalIDToFeeds objectForKeyedSubscript:dismissalID], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, v8 = [[BBDismissalSyncBulletinMatch alloc] initWithDismissalID:dismissalID andItem:v6], v7, !v8))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    date = [matchCopy date];
    if (date)
    {
      [dictionary setObject:date forKeyedSubscript:@"d"];
    }

    syncHash = [matchCopy syncHash];
    if (syncHash)
    {
      [dictionary setObject:syncHash forKeyedSubscript:@"h"];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_dismissalDictionariesAndFeeds;
    v8 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 matchDismissalDictionary:{dictionary, v18}])
          {
            v8 = [[BBDismissalSyncBulletinMatch alloc] initWithDismissalDictionaryItem:v15];
            goto LABEL_18;
          }
        }

        v8 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)removeBulletinMatch:(id)match
{
  matchCopy = match;
  dismissalID = [matchCopy dismissalID];
  if (dismissalID)
  {
    [(NSMutableDictionary *)self->_dismissalIDToFeeds removeObjectForKey:dismissalID];
  }

  else
  {
    dismissalItem = [matchCopy dismissalItem];
    if (dismissalItem)
    {
      [(NSMutableArray *)self->_dismissalDictionariesAndFeeds removeObject:dismissalItem];
    }
  }
}

- (id)purgeExpired
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  dismissalDictionariesAndFeeds = self->_dismissalDictionariesAndFeeds;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__BBDismissalSyncCacheItem_purgeExpired__block_invoke;
  v17[3] = &unk_278D2A410;
  v5 = v3;
  v18 = v5;
  v19 = &v20;
  [(NSMutableArray *)dismissalDictionariesAndFeeds enumerateObjectsUsingBlock:v17];
  [(NSMutableArray *)self->_dismissalDictionariesAndFeeds removeObjectsAtIndexes:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dismissalIDToFeeds = self->_dismissalIDToFeeds;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __40__BBDismissalSyncCacheItem_purgeExpired__block_invoke_2;
  v14 = &unk_278D2A438;
  v8 = v6;
  v15 = v8;
  v16 = &v20;
  [(NSMutableDictionary *)dismissalIDToFeeds enumerateKeysAndObjectsUsingBlock:&v11];
  [(NSMutableDictionary *)self->_dismissalIDToFeeds removeObjectsForKeys:v8, v11, v12, v13, v14];
  v9 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v9;
}

void __40__BBDismissalSyncCacheItem_purgeExpired__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([v10 hasExpired])
  {
    [*(a1 + 32) addIndex:a3];
  }

  else
  {
    v5 = [v10 expiration];
    v6 = [v5 compare:*(*(*(a1 + 40) + 8) + 40)];

    if (v6 == -1)
    {
      v7 = [v10 expiration];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

void __40__BBDismissalSyncCacheItem_purgeExpired__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 hasExpired])
  {
    [*(a1 + 32) addObject:v11];
  }

  else
  {
    v6 = [v5 expiration];
    v7 = [v6 compare:*(*(*(a1 + 40) + 8) + 40)];

    if (v7 == -1)
    {
      v8 = [v5 expiration];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

@end