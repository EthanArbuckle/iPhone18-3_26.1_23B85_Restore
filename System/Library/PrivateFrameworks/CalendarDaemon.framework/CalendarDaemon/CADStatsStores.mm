@interface CADStatsStores
- (id)eventDictionaries;
- (void)prepareWithContext:(id)a3;
- (void)processStores:(id)a3;
@end

@implementation CADStatsStores

- (void)prepareWithContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);
  v7 = a3;
  v5 = objc_opt_new();
  storeInfos = self->_storeInfos;
  self->_storeInfos = v5;
}

- (void)processStores:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [(NSMutableArray *)self->_storeInfos addObject:v10];
        v11 = CalStoreCopyCalendars();
        if (v11)
        {
          v12 = v11;
          if (CFArrayGetCount(v11) >= 1)
          {
            CFArrayGetValueAtIndex(v12, 0);
            v13 = CalCalendarCopyDomainName();
            v14 = *(v10 + 40);
            *(v10 + 40) = v13;

            *(v10 + 48) = CalCalendarEmailIsUsedForOtherSource();
          }

          CFRelease(v12);
        }

        *(v10 + 8) = CalStoreGetType();
        *(v10 + 32) = CalStoreIsDelegate();
        *(v10 + 33) = CalStoreIsEnabled();
        v15 = CalStoreCopyUUID();
        if (v15)
        {
          v16 = v15;
          v17 = [(CADStatCollectionContext *)self->_context accountStore];
          v18 = [v17 accountWithIdentifier:v16];

          v19 = [v18 displayAccount];
          v20 = [v19 accountType];
          v21 = [v20 identifier];
          v22 = *(v10 + 24);
          *(v10 + 24) = v21;

          if (*(v10 + 24))
          {
            *(v10 + 16) = PCSettingsGetStyle();
          }

          CFRelease(v16);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)eventDictionaries
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_storeInfos, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_storeInfos;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = objc_opt_new();
        [v9 setObject:&unk_2837C7558 forKeyedSubscript:@"instance"];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(v8 + 8)];
        [v9 setObject:v10 forKeyedSubscript:@"storeType"];

        v11 = *(v8 + 24);
        if (v11)
        {
          [v9 setObject:v11 forKeyedSubscript:@"accountType"];
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(v8 + 16)];
          [v9 setObject:v12 forKeyedSubscript:@"syncStyle"];
        }

        v13 = *(v8 + 40);
        if (v13)
        {
          [v9 setObject:v13 forKeyedSubscript:@"emailDomain"];
          v14 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 48)];
          [v9 setObject:v14 forKeyedSubscript:@"emailIsUsedInOtherSource"];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 32)];
        [v9 setObject:v15 forKeyedSubscript:@"isDelegate"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 33)];
        [v9 setObject:v16 forKeyedSubscript:@"isEnabled"];

        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

@end