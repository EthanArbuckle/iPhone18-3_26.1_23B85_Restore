@interface BLTHashCache
- (BLTHashCache)init;
- (void)_updateCacheWithItems:(id)a3 forSectionID:(id)a4 matchID:(id)a5 result:(id)a6;
- (void)updateCacheWithItems:(id)a3 forSectionID:(id)a4 matchID:(id)a5 result:(id)a6;
@end

@implementation BLTHashCache

- (BLTHashCache)init
{
  v6.receiver = self;
  v6.super_class = BLTHashCache;
  v2 = [(BLTHashCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    cacheBySectionID = v2->_cacheBySectionID;
    v2->_cacheBySectionID = v3;
  }

  return v2;
}

- (void)updateCacheWithItems:(id)a3 forSectionID:(id)a4 matchID:(id)a5 result:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__BLTHashCache_updateCacheWithItems_forSectionID_matchID_result___block_invoke;
  v18[3] = &unk_278D31830;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  BLTDispatchWorkQueue(v18);
}

- (void)_updateCacheWithItems:(id)a3 forSectionID:(id)a4 matchID:(id)a5 result:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_cacheBySectionID objectForKeyedSubscript:v11];
  v15 = [v14 objectForKeyedSubscript:v12];
  v16 = [MEMORY[0x277CBEB58] setWithArray:v10];
  v17 = [v16 mutableCopy];
  [v16 minusSet:v15];
  [v17 minusSet:v16];
  v45 = [v15 mutableCopy];
  v47 = v17;
  [v45 minusSet:v17];
  v42 = v12;
  v43 = v11;
  v39 = self;
  if ([v16 count] || objc_msgSend(v45, "count"))
  {
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_cacheBySectionID setObject:v14 forKeyedSubscript:v11];
    }

    [v14 objectForKeyedSubscript:{v12, self}];
    v19 = v18 = v14;

    v46 = v18;
    if (v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB58] set];
      [v18 setObject:v15 forKeyedSubscript:v12];
    }
  }

  else
  {
    v46 = v14;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        if (v13)
        {
          v13[2](v13, v25, [v10 indexOfObject:*(*(&v56 + 1) + 8 * i)], 1);
        }

        [v15 addObject:{v25, v39}];
      }

      v22 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v22);
  }

  v41 = v20;

  if (v13)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v26 = v47;
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v53;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v13[2](v13, *(*(&v52 + 1) + 8 * j), [v10 indexOfObject:{*(*(&v52 + 1) + 8 * j), v39, v41}], 0);
        }

        v28 = [v26 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v28);
    }
  }

  v44 = v10;
  v31 = [v10 count];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v45;
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v48 + 1) + 8 * k);
        if (v13)
        {
          v13[2](v13, *(*(&v48 + 1) + 8 * k), v31++, 2);
        }

        [v15 removeObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v34);
  }

  if (![v15 count])
  {
    [v46 removeObjectForKey:v42];
    if (![v46 count])
    {
      [*(v40 + 8) removeObjectForKey:v43];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end