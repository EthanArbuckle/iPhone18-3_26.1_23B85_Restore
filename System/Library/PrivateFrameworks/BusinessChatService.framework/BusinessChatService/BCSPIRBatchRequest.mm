@interface BCSPIRBatchRequest
- (BCSPIRBatchRequest)initWithQuery:(id)a3;
@end

@implementation BCSPIRBatchRequest

- (BCSPIRBatchRequest)initWithQuery:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BCSPIRBatchRequest;
  v5 = [(BCSPIRBatchRequest *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [v4 itemIdentifiers];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];
    storage = v5->_storage;
    v5->_storage = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    invalidIdentifiers = v5->_invalidIdentifiers;
    v5->_invalidIdentifiers = v10;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v4 itemIdentifiers];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([v17 conformsToProtocol:&unk_2854664E0])
          {
            v18 = v17;
            v19 = [v18 pirKey];
            v20 = [(NSMutableDictionary *)v5->_storage objectForKeyedSubscript:v19];
            v21 = [v20 mutableCopy];

            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v21 addObject:v18];
            [(NSMutableDictionary *)v5->_storage setObject:v21 forKeyedSubscript:v19];
          }

          else
          {
            [(NSMutableArray *)v5->_invalidIdentifiers addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

@end