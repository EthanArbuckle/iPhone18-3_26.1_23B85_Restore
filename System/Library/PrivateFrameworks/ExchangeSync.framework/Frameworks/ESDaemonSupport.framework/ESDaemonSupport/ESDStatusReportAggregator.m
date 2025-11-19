@interface ESDStatusReportAggregator
- (ESDStatusReportAggregator)initWithStatusReports:(id)a3 numOutstandingReports:(int)a4 timeout:(double)a5 completionBlock:(id)a6;
- (void)_coalesceAndReport;
- (void)noteAdditionalReportDicts:(id)a3;
@end

@implementation ESDStatusReportAggregator

- (ESDStatusReportAggregator)initWithStatusReports:(id)a3 numOutstandingReports:(int)a4 timeout:(double)a5 completionBlock:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v34.receiver = self;
  v34.super_class = ESDStatusReportAggregator;
  v12 = [(ESDStatusReportAggregator *)&v34 init];
  v13 = v12;
  if (v12)
  {
    v12->_numOutstandingReports = a4;
    if (v11)
    {
      v14 = [v11 copy];
      completionBlock = v13->_completionBlock;
      v13->_completionBlock = v14;
    }

    v16 = objc_opt_new();
    persistentUUIDToStatusReport = v13->_persistentUUIDToStatusReport;
    v13->_persistentUUIDToStatusReport = v16;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          v24 = [v23 persistentUUID];
          [(NSMutableDictionary *)v13->_persistentUUIDToStatusReport setObject:v23 forKeyedSubscript:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v20);
    }

    v25 = dispatch_time(0, (a5 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__ESDStatusReportAggregator_initWithStatusReports_numOutstandingReports_timeout_completionBlock___block_invoke;
    block[3] = &unk_278FCDC98;
    v29 = v13;
    dispatch_after(v25, MEMORY[0x277D85CD0], block);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_coalesceAndReport
{
  v20 = *MEMORY[0x277D85DE8];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_finished)
  {
    objc_sync_exit(obj);
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    obj->_finished = 1;
    objc_sync_exit(obj);

    if ([(NSMutableDictionary *)obj->_persistentUUIDToStatusReport count])
    {
      v3 = [(NSMutableDictionary *)obj->_persistentUUIDToStatusReport allValues];
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](obj->_persistentUUIDToStatusReport, "count")}];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
            [v4 addObject:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v4 = 0;
    }

    completionBlock = obj->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, v4);
      v12 = obj->_completionBlock;
      obj->_completionBlock = 0;
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)noteAdditionalReportDicts:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  --self->_numOutstandingReports;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_alloc(MEMORY[0x277D03978]) initWithDictionaryRepresentation:*(*(&v14 + 1) + 8 * i)];
        v10 = [v9 persistentUUID];
        v11 = [(NSMutableDictionary *)self->_persistentUUIDToStatusReport objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          [v11 mergeStatusReport:v9];
        }

        else
        {
          [(NSMutableDictionary *)self->_persistentUUIDToStatusReport setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if (self->_numOutstandingReports <= 0)
  {
    [(ESDStatusReportAggregator *)self _coalesceAndReport];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end