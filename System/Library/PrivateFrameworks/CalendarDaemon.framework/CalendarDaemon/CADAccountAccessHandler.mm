@interface CADAccountAccessHandler
- (CADAccountAccessHandler)initWithDatabaseDataProvider:(id)a3;
- (id)restrictedCalendarRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4;
- (id)restrictedStoreRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4;
- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5;
- (void)gatherRestrictedStoreRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5;
@end

@implementation CADAccountAccessHandler

- (CADAccountAccessHandler)initWithDatabaseDataProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADAccountAccessHandler;
  v6 = [(CADAccountAccessHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, a3);
  }

  return v7;
}

- (id)restrictedStoreRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(CADAccountAccessHandler *)self gatherRestrictedStoreRowIDs:v7 forAction:a3 inDatabase:a4];

  return v7;
}

- (void)gatherRestrictedStoreRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(CADCalendarDatabaseDataProvider *)self->_dataProvider storesInDatabase:a5];
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
        if (![(CADAccountAccessHandler *)self isActionAllowed:a4 forStore:v14 inDatabase:a5])
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADCalendarDatabaseDataProvider storeUIDForStore:inDatabase:](self->_dataProvider, "storeUIDForStore:inDatabase:", v14, a5)}];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)restrictedCalendarRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(CADAccountAccessHandler *)self gatherRestrictedCalendarRowIDs:v7 forAction:a3 inDatabase:a4];

  return v7;
}

- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(CADCalendarDatabaseDataProvider *)self->_dataProvider storesInDatabase:a5];
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
        if (![(CADAccountAccessHandler *)self isActionAllowed:a4 forStore:v14 inDatabase:a5])
        {
          [(CADCalendarDatabaseDataProvider *)self->_dataProvider gatherCalendarRowIDs:v8 inStore:v14 inDatabase:a5];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end