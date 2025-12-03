@interface BLTHashCache
- (BLTHashCache)init;
- (void)_updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result;
- (void)updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result;
@end

@implementation BLTHashCache

- (BLTHashCache)init
{
  v6.receiver = self;
  v6.super_class = BLTHashCache;
  v2 = [(BLTHashCache *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cacheBySectionID = v2->_cacheBySectionID;
    v2->_cacheBySectionID = dictionary;
  }

  return v2;
}

- (void)updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result
{
  itemsCopy = items;
  dCopy = d;
  iDCopy = iD;
  resultCopy = result;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__BLTHashCache_updateCacheWithItems_forSectionID_matchID_result___block_invoke;
  v18[3] = &unk_278D31830;
  v18[4] = self;
  v19 = itemsCopy;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = resultCopy;
  v14 = resultCopy;
  v15 = iDCopy;
  v16 = dCopy;
  v17 = itemsCopy;
  BLTDispatchWorkQueue(v18);
}

- (void)_updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result
{
  v63 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  iDCopy = iD;
  resultCopy = result;
  dictionary = [(NSMutableDictionary *)self->_cacheBySectionID objectForKeyedSubscript:dCopy];
  v15 = [dictionary objectForKeyedSubscript:iDCopy];
  v16 = [MEMORY[0x277CBEB58] setWithArray:itemsCopy];
  v17 = [v16 mutableCopy];
  [v16 minusSet:v15];
  [v17 minusSet:v16];
  v45 = [v15 mutableCopy];
  v47 = v17;
  [v45 minusSet:v17];
  v42 = iDCopy;
  v43 = dCopy;
  selfCopy = self;
  if ([v16 count] || objc_msgSend(v45, "count"))
  {
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_cacheBySectionID setObject:dictionary forKeyedSubscript:dCopy];
    }

    [dictionary objectForKeyedSubscript:{iDCopy, self}];
    v19 = v18 = dictionary;

    v46 = v18;
    if (v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB58] set];
      [v18 setObject:v15 forKeyedSubscript:iDCopy];
    }
  }

  else
  {
    v46 = dictionary;
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
        if (resultCopy)
        {
          resultCopy[2](resultCopy, v25, [itemsCopy indexOfObject:*(*(&v56 + 1) + 8 * i)], 1);
        }

        [v15 addObject:{v25, selfCopy}];
      }

      v22 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v22);
  }

  v41 = v20;

  if (resultCopy)
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

          resultCopy[2](resultCopy, *(*(&v52 + 1) + 8 * j), [itemsCopy indexOfObject:{*(*(&v52 + 1) + 8 * j), selfCopy, v41}], 0);
        }

        v28 = [v26 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v28);
    }
  }

  v44 = itemsCopy;
  v31 = [itemsCopy count];
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
        if (resultCopy)
        {
          resultCopy[2](resultCopy, *(*(&v48 + 1) + 8 * k), v31++, 2);
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