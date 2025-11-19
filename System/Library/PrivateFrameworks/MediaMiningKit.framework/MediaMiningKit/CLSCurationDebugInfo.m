@interface CLSCurationDebugInfo
- (CLSCurationDebugInfo)initWithDebugCluster:(id)a3;
- (CLSCurationDebugInfo)initWithItems:(id)a3;
- (id)debugInfoForCluster:(id)a3;
- (id)debugItemsForItems:(id)a3;
- (id)dictionaryRepresentationWithAppendExtraItemInfoBlock:(id)a3;
- (void)_dedupItems:(id)a3 toItems:(id)a4 chosenState:(unint64_t)a5 withDedupingType:(unint64_t)a6;
- (void)addClusters:(id)a3 withReason:(id)a4;
- (void)beginTentativeSection;
- (void)chooseItem:(id)a3 inCluster:(id)a4 withReason:(id)a5;
- (void)chooseItem:(id)a3 inItems:(id)a4 withReason:(id)a5;
- (void)chooseItems:(id)a3 inCluster:(id)a4 withReason:(id)a5;
- (void)chooseItems:(id)a3 inItems:(id)a4 withReason:(id)a5;
- (void)dedupItems:(id)a3 toItem:(id)a4 withDedupingType:(unint64_t)a5;
- (void)endTentativeSectionWithSuccess:(BOOL)a3;
- (void)forceState:(unint64_t)a3 ofItem:(id)a4 withReason:(id)a5;
- (void)requireItems:(id)a3 inCluster:(id)a4;
- (void)requireItems:(id)a3 inItems:(id)a4;
- (void)resetWithReason:(id)a3;
- (void)setClusters:(id)a3 withReason:(id)a4;
- (void)setState:(unint64_t)a3 ofCluster:(id)a4 withReason:(id)a5;
- (void)setState:(unint64_t)a3 ofItem:(id)a4 withReason:(id)a5;
- (void)setState:(unint64_t)a3 ofItems:(id)a4 withReason:(id)a5;
- (void)setUnclusteredItemsState:(unint64_t)a3 withReason:(id)a4;
@end

@implementation CLSCurationDebugInfo

- (id)dictionaryRepresentationWithAppendExtraItemInfoBlock:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [MEMORY[0x277CBEB38] dictionary];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = self;
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
        v18 = [v17 dictionaryRepresentation];
        v19 = [v18 mutableCopy];

        if (v19)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
          [v19 setObject:v20 forKeyedSubscript:@"index"];

          if (v4)
          {
            v21 = [v17 item];
            v4[2](v4, v21, v19);
          }

          v22 = [v17 item];
          v23 = [v22 clsIdentifier];

          [v5 setObject:v19 forKeyedSubscript:v23];
        }

        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [v27 setObject:v5 forKeyedSubscript:@"items"];
  v24 = [(CLSCurationDebugCluster *)v26->_rootCluster dictionaryRepresentation];
  [v27 setObject:v24 forKeyedSubscript:@"rootCluster"];

  return v27;
}

- (void)endTentativeSectionWithSuccess:(BOOL)a3
{
  v3 = a3;
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

        [*(*(&v9 + 1) + 8 * v8++) endTentativeSectionWithSuccess:{v3, v9}];
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

- (void)resetWithReason:(id)a3
{
  debugClusterByCluster = self->_debugClusterByCluster;
  self->_debugClusterByCluster = 0;
  v5 = a3;

  [(CLSCurationDebugCluster *)self->_rootCluster resetWithReason:v5 agent:self->_agent stage:self->_stage];
}

- (void)_dedupItems:(id)a3 toItems:(id)a4 chosenState:(unint64_t)a5 withDedupingType:(unint64_t)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v11 firstObject];
  v13 = [(CLSCurationDebugInfo *)self debugItemForItem:v12];

  if (v13)
  {
    v34 = v10;
    v14 = [(CLSCurationDebugInfo *)self debugItemsForItems:v10];
    v15 = [objc_opt_class() stringForDedupingType:a6];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v14 count];
    v18 = [v11 count];
    v19 = &stru_284489518;
    if (a5 == 4)
    {
      v19 = @" because they are required";
    }

    v32 = v15;
    v20 = [v16 stringWithFormat:@"Deduping (%@) %lu items to %lu%@", v15, v17, v18, v19];
    v33 = v11;
    if ([v11 count] < 2)
    {
      [v13 setState:a5 withReason:v20 agent:self->_agent stage:self->_stage];
      v21 = 0;
    }

    else
    {
      [(CLSCurationDebugInfo *)self debugItemsForItems:v11];
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

            [*(*(&v39 + 1) + 8 * v25++) setState:a5 withReason:v20 agent:self->_agent stage:self->_stage];
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
            [v31 dupeToDebugItem:v13 withDedupingType:a6];
            [v31 setState:2 withReason:v20 agent:self->_agent stage:self->_stage];
          }

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);
    }

    v11 = v33;
    v10 = v34;
  }
}

- (void)dedupItems:(id)a3 toItem:(id)a4 withDedupingType:(unint64_t)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v12 count:1];

  [(CLSCurationDebugInfo *)self _dedupItems:v10 toItems:v11 chosenState:1 withDedupingType:a5, v12, v13];
}

- (void)requireItems:(id)a3 inItems:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(CLSCurationDebugInfo *)self debugItemsForItems:a4];
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
        v12 = [v11 item];
        if ([v6 containsObject:v12])
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

- (void)requireItems:(id)a3 inCluster:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLSCurationDebugInfo *)self debugClusterForCluster:v7];
  v9 = v8;
  if (v8)
  {
    [v8 setState:1 withReason:@"Items required" agent:self->_agent stage:self->_stage];
    v10 = [v7 clsCurationItems];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    [(CLSCurationDebugInfo *)self requireItems:v6 inItems:v11];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cluster unknown", v12, 2u);
  }
}

- (void)chooseItems:(id)a3 inItems:(id)a4 withReason:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [(CLSCurationDebugInfo *)self debugItemsForItems:a4];
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
        v15 = [v14 item];
        if ([v8 containsObject:v15])
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        [v14 setState:v16 withReason:v9 agent:self->_agent stage:self->_stage];
      }

      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)chooseItems:(id)a3 inCluster:(id)a4 withReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CLSCurationDebugInfo *)self debugClusterForCluster:v9];
  if (v11)
  {
    if ([v8 count])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [v11 setState:v12 withReason:v10 agent:self->_agent stage:self->_stage];
    v13 = [v9 clsCurationItems];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v13];
    [(CLSCurationDebugInfo *)self chooseItems:v8 inItems:v14 withReason:v10];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cluster unknown", v15, 2u);
  }
}

- (void)chooseItem:(id)a3 inItems:(id)a4 withReason:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  if (a3)
  {
    [v8 setWithObject:a3];
  }

  else
  {
    [v8 set];
  }
  v11 = ;
  [(CLSCurationDebugInfo *)self chooseItems:v11 inItems:v10 withReason:v9];
}

- (void)chooseItem:(id)a3 inCluster:(id)a4 withReason:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  if (a3)
  {
    [v8 setWithObject:a3];
  }

  else
  {
    [v8 set];
  }
  v11 = ;
  [(CLSCurationDebugInfo *)self chooseItems:v11 inCluster:v10 withReason:v9];
}

- (void)setUnclusteredItemsState:(unint64_t)a3 withReason:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CLSCurationDebugCluster *)self->_rootCluster unclusteredDebugItems];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 state] != 4)
        {
          [v12 setState:a3 withReason:v6 agent:self->_agent stage:self->_stage];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)forceState:(unint64_t)a3 ofItem:(id)a4 withReason:(id)a5
{
  v8 = a5;
  v9 = [(CLSCurationDebugInfo *)self debugItemForItem:a4];
  [v9 resetWithReason:v8 agent:self->_agent stage:self->_stage];
  [v9 setState:a3 withReason:v8 agent:self->_agent stage:self->_stage];
}

- (void)setState:(unint64_t)a3 ofItems:(id)a4 withReason:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(CLSCurationDebugInfo *)self debugItemsForItems:a4];
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

        [*(*(&v14 + 1) + 8 * v13++) setState:a3 withReason:v8 agent:self->_agent stage:self->_stage];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setState:(unint64_t)a3 ofItem:(id)a4 withReason:(id)a5
{
  v8 = a5;
  v9 = [(CLSCurationDebugInfo *)self debugItemForItem:a4];
  [v9 setState:a3 withReason:v8 agent:self->_agent stage:self->_stage];
}

- (void)setState:(unint64_t)a3 ofCluster:(id)a4 withReason:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(CLSCurationDebugInfo *)self debugClusterForCluster:v8];
  v11 = v10;
  if (v10)
  {
    [v10 setState:a3 withReason:v9 agent:self->_agent stage:self->_stage];
    v12 = [v8 clsCurationItems];
    v13 = [(CLSCurationDebugInfo *)self debugItemsForItems:v12];
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

          [*(*(&v19 + 1) + 8 * i) setState:a3 withReason:v9 agent:self->_agent stage:self->_stage];
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

- (void)addClusters:(id)a3 withReason:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  if (!self->_debugClusterByCluster)
  {
    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugClusterByCluster = self->_debugClusterByCluster;
    self->_debugClusterByCluster = v9;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
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
        v16 = [v15 clsCurationItems];
        v17 = [(CLSCurationDebugInfo *)self debugItemsForItems:v16];
        v18 = [[CLSCurationDebugCluster alloc] initWithDebugItems:v17 reason:v7];
        [(NSMapTable *)self->_debugClusterByCluster setObject:v18 forKey:v15];
        [v8 addObject:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [(CLSCurationDebugCluster *)self->_rootCluster addDebugClusters:v8];
}

- (void)setClusters:(id)a3 withReason:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugClusterByCluster = self->_debugClusterByCluster;
    self->_debugClusterByCluster = v9;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v6;
    obj = v6;
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
          v16 = [v15 clsCurationItems];
          v17 = [(CLSCurationDebugInfo *)self debugItemsForItems:v16];
          v18 = [[CLSCurationDebugCluster alloc] initWithDebugItems:v17 reason:v7];
          [(NSMapTable *)self->_debugClusterByCluster setObject:v18 forKey:v15];
          [v8 addObject:v18];
        }

        v12 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(CLSCurationDebugCluster *)self->_rootCluster setDebugClusters:v8];
    v6 = v19;
  }
}

- (id)debugItemsForItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

- (id)debugInfoForCluster:(id)a3
{
  v3 = [(CLSCurationDebugInfo *)self debugClusterForCluster:a3];
  v4 = [[CLSCurationDebugInfo alloc] initWithDebugCluster:v3];

  return v4;
}

- (CLSCurationDebugInfo)initWithDebugCluster:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CLSCurationDebugInfo;
  v6 = [(CLSCurationDebugInfo *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootCluster, a3);
    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugItemByItem = v7->_debugItemByItem;
    v7->_debugItemByItem = v8;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v5 allDebugItems];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = v7->_debugItemByItem;
          v17 = [v15 item];
          [(NSMapTable *)v16 setObject:v15 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (CLSCurationDebugInfo)initWithItems:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CLSCurationDebugInfo;
  v5 = [(CLSCurationDebugInfo *)&v24 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    debugItemByItem = v5->_debugItemByItem;
    v5->_debugItemByItem = v7;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
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