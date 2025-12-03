@interface CLSCurationDebugInfo
- (CLSCurationDebugInfo)initWithDebugCluster:(id)cluster;
- (CLSCurationDebugInfo)initWithItems:(id)items;
- (id)debugInfoForCluster:(id)cluster;
- (id)debugItemsForItems:(id)items;
- (id)dictionaryRepresentationWithAppendExtraItemInfoBlock:(id)block;
- (void)_dedupItems:(id)items toItems:(id)toItems chosenState:(unint64_t)state withDedupingType:(unint64_t)type;
- (void)addClusters:(id)clusters withReason:(id)reason;
- (void)beginTentativeSection;
- (void)chooseItem:(id)item inCluster:(id)cluster withReason:(id)reason;
- (void)chooseItem:(id)item inItems:(id)items withReason:(id)reason;
- (void)chooseItems:(id)items inCluster:(id)cluster withReason:(id)reason;
- (void)chooseItems:(id)items inItems:(id)inItems withReason:(id)reason;
- (void)dedupItems:(id)items toItem:(id)item withDedupingType:(unint64_t)type;
- (void)endTentativeSectionWithSuccess:(BOOL)success;
- (void)forceState:(unint64_t)state ofItem:(id)item withReason:(id)reason;
- (void)requireItems:(id)items inCluster:(id)cluster;
- (void)requireItems:(id)items inItems:(id)inItems;
- (void)resetWithReason:(id)reason;
- (void)setClusters:(id)clusters withReason:(id)reason;
- (void)setState:(unint64_t)state ofCluster:(id)cluster withReason:(id)reason;
- (void)setState:(unint64_t)state ofItem:(id)item withReason:(id)reason;
- (void)setState:(unint64_t)state ofItems:(id)items withReason:(id)reason;
- (void)setUnclusteredItemsState:(unint64_t)state withReason:(id)reason;
@end

@implementation CLSCurationDebugInfo

- (id)dictionaryRepresentationWithAppendExtraItemInfoBlock:(id)block
{
  v33[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  v6 = NSAllMapTableValues(self->_debugItemByItem);
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v33[0] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v33[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v10 = [v6 sortedArrayUsingDescriptors:v9];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        dictionaryRepresentation = [v17 dictionaryRepresentation];
        v19 = [dictionaryRepresentation mutableCopy];

        if (v19)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
          [v19 setObject:v20 forKeyedSubscript:@"index"];

          if (blockCopy)
          {
            item = [v17 item];
            blockCopy[2](blockCopy, item, v19);
          }

          item2 = [v17 item];
          clsIdentifier = [item2 clsIdentifier];

          [v5 setObject:v19 forKeyedSubscript:clsIdentifier];
        }

        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [dictionary setObject:v5 forKeyedSubscript:@"items"];
  dictionaryRepresentation2 = [(CLSCurationDebugCluster *)selfCopy->_rootCluster dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rootCluster"];

  return dictionary;
}

- (void)endTentativeSectionWithSuccess:(BOOL)success
{
  successCopy = success;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = NSAllMapTableValues(self->_debugItemByItem);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) endTentativeSectionWithSuccess:{successCopy, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)beginTentativeSection
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = NSAllMapTableValues(self->_debugItemByItem);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) beginTentativeSection];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resetWithReason:(id)reason
{
  debugClusterByCluster = self->_debugClusterByCluster;
  self->_debugClusterByCluster = 0;
  reasonCopy = reason;

  [(CLSCurationDebugCluster *)self->_rootCluster resetWithReason:reasonCopy agent:self->_agent stage:self->_stage];
}

- (void)_dedupItems:(id)items toItems:(id)toItems chosenState:(unint64_t)state withDedupingType:(unint64_t)type
{
  v45 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  toItemsCopy = toItems;
  firstObject = [toItemsCopy firstObject];
  v13 = [(CLSCurationDebugInfo *)self debugItemForItem:firstObject];

  if (v13)
  {
    v34 = itemsCopy;
    v14 = [(CLSCurationDebugInfo *)self debugItemsForItems:itemsCopy];
    v15 = [objc_opt_class() stringForDedupingType:type];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v14 count];
    v18 = [toItemsCopy count];
    v19 = &stru_284489518;
    if (state == 4)
    {
      v19 = @" because they are required";
    }

    v32 = v15;
    v20 = [v16 stringWithFormat:@"Deduping (%@) %lu items to %lu%@", v15, v17, v18, v19];
    v33 = toItemsCopy;
    if ([toItemsCopy count] < 2)
    {
      [v13 setState:state withReason:v20 agent:self->_agent stage:self->_stage];
      v21 = 0;
    }

    else
    {
      [(CLSCurationDebugInfo *)self debugItemsForItems:toItemsCopy];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v42 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          v25 = 0;
          do
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v39 + 1) + 8 * v25++) setState:state withReason:v20 agent:self->_agent stage:self->_stage];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v23);
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        v30 = 0;
        do
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v35 + 1) + 8 * v30);
          if (v31 != v13 && (!v21 || ([v21 containsObject:*(*(&v35 + 1) + 8 * v30)] & 1) == 0))
          {
            [v31 dupeToDebugItem:v13 withDedupingType:type];
            [v31 setState:2 withReason:v20 agent:self->_agent stage:self->_stage];
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);
    }

    toItemsCopy = v33;
    itemsCopy = v34;
  }
}

- (void)dedupItems:(id)items toItem:(id)item withDedupingType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = MEMORY[0x277CBEA60];
  itemCopy2 = item;
  itemsCopy = items;
  v11 = [v8 arrayWithObjects:&itemCopy count:1];

  [(CLSCurationDebugInfo *)self _dedupItems:itemsCopy toItems:v11 chosenState:1 withDedupingType:type, itemCopy, v13];
}

- (void)requireItems:(id)items inItems:(id)inItems
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  [(CLSCurationDebugInfo *)self debugItemsForItems:inItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        item = [v11 item];
        if ([itemsCopy containsObject:item])
        {
          v13 = 4;
        }

        else
        {
          v13 = 2;
        }

        [v11 setState:v13 withReason:@"Items required" agent:self->_agent stage:self->_stage];
      }

      v8 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)requireItems:(id)items inCluster:(id)cluster
{
  itemsCopy = items;
  clusterCopy = cluster;
  v8 = [(CLSCurationDebugInfo *)self debugClusterForCluster:clusterCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setState:1 withReason:@"Items required" agent:self->_agent stage:self->_stage];
    clsCurationItems = [clusterCopy clsCurationItems];
    v11 = [MEMORY[0x277CBEB98] setWithArray:clsCurationItems];
    [(CLSCurationDebugInfo *)self requireItems:itemsCopy inItems:v11];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cluster unknown", v12, 2u);
  }
}

- (void)chooseItems:(id)items inItems:(id)inItems withReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  reasonCopy = reason;
  [(CLSCurationDebugInfo *)self debugItemsForItems:inItems];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        item = [v14 item];
        if ([itemsCopy containsObject:item])
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        [v14 setState:v16 withReason:reasonCopy agent:self->_agent stage:self->_stage];
      }

      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)chooseItems:(id)items inCluster:(id)cluster withReason:(id)reason
{
  itemsCopy = items;
  clusterCopy = cluster;
  reasonCopy = reason;
  v11 = [(CLSCurationDebugInfo *)self debugClusterForCluster:clusterCopy];
  if (v11)
  {
    if ([itemsCopy count])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [v11 setState:v12 withReason:reasonCopy agent:self->_agent stage:self->_stage];
    clsCurationItems = [clusterCopy clsCurationItems];
    v14 = [MEMORY[0x277CBEB98] setWithArray:clsCurationItems];
    [(CLSCurationDebugInfo *)self chooseItems:itemsCopy inItems:v14 withReason:reasonCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cluster unknown", v15, 2u);
  }
}

- (void)chooseItem:(id)item inItems:(id)items withReason:(id)reason
{
  v8 = MEMORY[0x277CBEB98];
  reasonCopy = reason;
  itemsCopy = items;
  if (item)
  {
    [v8 setWithObject:item];
  }

  else
  {
    [v8 set];
  }
  v11 = ;
  [(CLSCurationDebugInfo *)self chooseItems:v11 inItems:itemsCopy withReason:reasonCopy];
}

- (void)chooseItem:(id)item inCluster:(id)cluster withReason:(id)reason
{
  v8 = MEMORY[0x277CBEB98];
  reasonCopy = reason;
  clusterCopy = cluster;
  if (item)
  {
    [v8 setWithObject:item];
  }

  else
  {
    [v8 set];
  }
  v11 = ;
  [(CLSCurationDebugInfo *)self chooseItems:v11 inCluster:clusterCopy withReason:reasonCopy];
}

- (void)setUnclusteredItemsState:(unint64_t)state withReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  unclusteredDebugItems = [(CLSCurationDebugCluster *)self->_rootCluster unclusteredDebugItems];
  v8 = [unclusteredDebugItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(unclusteredDebugItems);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 state] != 4)
        {
          [v12 setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
        }
      }

      v9 = [unclusteredDebugItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)forceState:(unint64_t)state ofItem:(id)item withReason:(id)reason
{
  reasonCopy = reason;
  v9 = [(CLSCurationDebugInfo *)self debugItemForItem:item];
  [v9 resetWithReason:reasonCopy agent:self->_agent stage:self->_stage];
  [v9 setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
}

- (void)setState:(unint64_t)state ofItems:(id)items withReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v9 = [(CLSCurationDebugInfo *)self debugItemsForItems:items];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setState:(unint64_t)state ofItem:(id)item withReason:(id)reason
{
  reasonCopy = reason;
  v9 = [(CLSCurationDebugInfo *)self debugItemForItem:item];
  [v9 setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
}

- (void)setState:(unint64_t)state ofCluster:(id)cluster withReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  reasonCopy = reason;
  v10 = [(CLSCurationDebugInfo *)self debugClusterForCluster:clusterCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
    clsCurationItems = [clusterCopy clsCurationItems];
    v13 = [(CLSCurationDebugInfo *)self debugItemsForItems:clsCurationItems];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v19 + 1) + 8 * i) setState:state withReason:reasonCopy agent:self->_agent stage:self->_stage];
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cluster unknown", v18, 2u);
  }
}

- (void)addClusters:(id)clusters withReason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  reasonCopy = reason;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(clustersCopy, "count")}];
  if (!self->_debugClusterByCluster)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugClusterByCluster = self->_debugClusterByCluster;
    self->_debugClusterByCluster = strongToStrongObjectsMapTable;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = clustersCopy;
  v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        clsCurationItems = [v15 clsCurationItems];
        v17 = [(CLSCurationDebugInfo *)self debugItemsForItems:clsCurationItems];
        v18 = [[CLSCurationDebugCluster alloc] initWithDebugItems:v17 reason:reasonCopy];
        [(NSMapTable *)self->_debugClusterByCluster setObject:v18 forKey:v15];
        [v8 addObject:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [(CLSCurationDebugCluster *)self->_rootCluster addDebugClusters:v8];
}

- (void)setClusters:(id)clusters withReason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  reasonCopy = reason;
  if (self->_debugClusterByCluster)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Clusters already set. To reset them, use resetWithReason first", buf, 2u);
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(clustersCopy, "count")}];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugClusterByCluster = self->_debugClusterByCluster;
    self->_debugClusterByCluster = strongToStrongObjectsMapTable;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = clustersCopy;
    obj = clustersCopy;
    v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          clsCurationItems = [v15 clsCurationItems];
          v17 = [(CLSCurationDebugInfo *)self debugItemsForItems:clsCurationItems];
          v18 = [[CLSCurationDebugCluster alloc] initWithDebugItems:v17 reason:reasonCopy];
          [(NSMapTable *)self->_debugClusterByCluster setObject:v18 forKey:v15];
          [v8 addObject:v18];
        }

        v12 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(CLSCurationDebugCluster *)self->_rootCluster setDebugClusters:v8];
    clustersCopy = v19;
  }
}

- (id)debugItemsForItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_debugItemByItem objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)debugInfoForCluster:(id)cluster
{
  v3 = [(CLSCurationDebugInfo *)self debugClusterForCluster:cluster];
  v4 = [[CLSCurationDebugInfo alloc] initWithDebugCluster:v3];

  return v4;
}

- (CLSCurationDebugInfo)initWithDebugCluster:(id)cluster
{
  v25 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  v23.receiver = self;
  v23.super_class = CLSCurationDebugInfo;
  v6 = [(CLSCurationDebugInfo *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootCluster, cluster);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugItemByItem = v7->_debugItemByItem;
    v7->_debugItemByItem = strongToStrongObjectsMapTable;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allDebugItems = [clusterCopy allDebugItems];
    v11 = [allDebugItems countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(allDebugItems);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = v7->_debugItemByItem;
          item = [v15 item];
          [(NSMapTable *)v16 setObject:v15 forKey:item];
        }

        v12 = [allDebugItems countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (CLSCurationDebugInfo)initWithItems:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v24.receiver = self;
  v24.super_class = CLSCurationDebugInfo;
  v5 = [(CLSCurationDebugInfo *)&v24 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugItemByItem = v5->_debugItemByItem;
    v5->_debugItemByItem = strongToStrongObjectsMapTable;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [CLSCurationDebugItem alloc];
          v16 = [(CLSCurationDebugItem *)v15 initWithItem:v14, v20];
          [(NSMapTable *)v5->_debugItemByItem setObject:v16 forKey:v14];
          [v6 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [[CLSCurationDebugCluster alloc] initWithDebugItems:v6 reason:@"Root"];
    rootCluster = v5->_rootCluster;
    v5->_rootCluster = v17;
  }

  return v5;
}

@end