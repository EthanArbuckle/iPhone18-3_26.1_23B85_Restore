@interface CLSCurationDebugCluster
- (CLSCurationDebugCluster)initWithDebugItems:(id)a3 reason:(id)a4;
- (id)allDebugItems;
- (id)dictionaryRepresentation;
- (id)timestamp;
- (void)addDebugClusters:(id)a3;
- (void)resetWithReason:(id)a3 agent:(id)a4 stage:(id)a5;
- (void)setDebugClusters:(id)a3;
@end

@implementation CLSCurationDebugCluster

- (id)timestamp
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_unclusteredDebugItems;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v25 + 1) + 8 * i) timestamp];
        v10 = v9;
        if (v6)
        {
          v11 = [v6 earlierDate:v9];

          v6 = v11;
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_debugClusters;
  v13 = [(NSSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * j) timestamp];
        v18 = v17;
        if (v6)
        {
          v19 = [v6 earlierDate:v17];

          v6 = v19;
        }

        else
        {
          v6 = v17;
        }
      }

      v14 = [(NSSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v61 = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = CLSCurationDebugCluster;
  v3 = [(CLSCurationDebugObject *)&v52 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(CLSCurationDebugCluster *)self allDebugItems];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v39 = v4;
  [v4 setObject:v7 forKeyedSubscript:@"totalNumberOfItems"];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = self->_unclusteredDebugItems;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObject:*(*(&v48 + 1) + 8 * i)];
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v11);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = self->_debugClusters;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v8 addObject:*(*(&v44 + 1) + 8 * j)];
      }

      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v44 objects:v59 count:16];
    }

    while (v16);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v58 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  [v8 sortUsingDescriptors:v22];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = v8;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * k);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v30 = v28;
        v31 = v30;
        if (isKindOfClass)
        {
          if ([v20 count])
          {
            v55[0] = @"itemIdentifiers";
            v55[1] = @"totalNumberOfItems";
            v56[0] = v20;
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
            v56[1] = v32;
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
            [v19 addObject:v33];

            v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v20 = v34;
          }

          v35 = [v31 dictionaryRepresentation];
          [v19 addObject:v35];
        }

        else
        {
          v36 = [v30 item];
          v35 = [v36 clsIdentifier];
          [v20 addObject:v35];

          v31 = v36;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v25);
  }

  if ([v20 count])
  {
    v53 = @"itemIdentifiers";
    v54 = v20;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v19 addObject:v37];
  }

  [v39 setObject:v19 forKeyedSubscript:@"sortedObjects"];

  return v39;
}

- (void)resetWithReason:(id)a3 agent:(id)a4 stage:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = CLSCurationDebugCluster;
  [(CLSCurationDebugObject *)&v23 resetWithReason:v8 agent:v9 stage:v10];
  v11 = [(CLSCurationDebugCluster *)self allDebugItems];
  unclusteredDebugItems = self->_unclusteredDebugItems;
  self->_unclusteredDebugItems = v11;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_unclusteredDebugItems;
  v14 = [(NSSet *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17++) resetWithReason:v8 agent:v9 stage:{v10, v19}];
      }

      while (v15 != v17);
      v15 = [(NSSet *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v15);
  }

  debugClusters = self->_debugClusters;
  self->_debugClusters = 0;
}

- (void)addDebugClusters:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  debugClusters = self->_debugClusters;
  if (debugClusters)
  {
    v6 = [(NSSet *)debugClusters mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v7 = v6;
  [v6 unionSet:v4];
  objc_storeStrong(&self->_debugClusters, v7);
  v8 = [(NSSet *)self->_unclusteredDebugItems mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) allDebugItems];
        [(NSSet *)v8 minusSet:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  unclusteredDebugItems = self->_unclusteredDebugItems;
  self->_unclusteredDebugItems = v8;
}

- (void)setDebugClusters:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_debugClusters)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Clusters already set.", buf, 2u);
    }
  }

  else
  {
    v6 = [v4 copy];
    debugClusters = self->_debugClusters;
    self->_debugClusters = v6;

    v8 = [(NSSet *)self->_unclusteredDebugItems mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * v13) allDebugItems];
          [(NSSet *)v8 minusSet:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    unclusteredDebugItems = self->_unclusteredDebugItems;
    self->_unclusteredDebugItems = v8;
  }
}

- (id)allDebugItems
{
  v17 = *MEMORY[0x277D85DE8];
  debugClusters = self->_debugClusters;
  if (debugClusters && [(NSSet *)debugClusters count])
  {
    v4 = [(NSSet *)self->_unclusteredDebugItems mutableCopy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_debugClusters;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) allDebugItems];
          [(NSSet *)v4 unionSet:v10];
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = self->_unclusteredDebugItems;
  }

  return v4;
}

- (CLSCurationDebugCluster)initWithDebugItems:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CLSCurationDebugCluster;
  v8 = [(CLSCurationDebugObject *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    unclusteredDebugItems = v8->_unclusteredDebugItems;
    v8->_unclusteredDebugItems = v9;

    objc_storeStrong(&v8->_reason, a4);
  }

  return v8;
}

@end