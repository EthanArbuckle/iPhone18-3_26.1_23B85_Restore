@interface CADAccountAccessHandler
- (CADAccountAccessHandler)initWithDatabaseDataProvider:(id)provider;
- (id)restrictedCalendarRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (id)restrictedStoreRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (void)gatherRestrictedStoreRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database;
@end

@implementation CADAccountAccessHandler

- (CADAccountAccessHandler)initWithDatabaseDataProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CADAccountAccessHandler;
  v6 = [(CADAccountAccessHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, provider);
  }

  return v7;
}

- (id)restrictedStoreRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(CADAccountAccessHandler *)self gatherRestrictedStoreRowIDs:v7 forAction:action inDatabase:database];

  return v7;
}

- (void)gatherRestrictedStoreRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v9 = [(CADCalendarDatabaseDataProvider *)self->_dataProvider storesInDatabase:database];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (![(CADAccountAccessHandler *)self isActionAllowed:action forStore:v14 inDatabase:database])
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADCalendarDatabaseDataProvider storeUIDForStore:inDatabase:](self->_dataProvider, "storeUIDForStore:inDatabase:", v14, database)}];
          [dsCopy addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)restrictedCalendarRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(CADAccountAccessHandler *)self gatherRestrictedCalendarRowIDs:v7 forAction:action inDatabase:database];

  return v7;
}

- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v9 = [(CADCalendarDatabaseDataProvider *)self->_dataProvider storesInDatabase:database];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (![(CADAccountAccessHandler *)self isActionAllowed:action forStore:v14 inDatabase:database])
        {
          [(CADCalendarDatabaseDataProvider *)self->_dataProvider gatherCalendarRowIDs:dsCopy inStore:v14 inDatabase:database];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end