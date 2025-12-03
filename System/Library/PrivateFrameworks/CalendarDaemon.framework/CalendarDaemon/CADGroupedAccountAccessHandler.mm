@interface CADGroupedAccountAccessHandler
- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database;
- (CADGroupedAccountAccessHandler)initWithDatabaseDataProvider:(id)provider;
- (id)restrictedCalendarRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (id)restrictedStoreRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (void)addAccountAccessHandler:(id)handler;
- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database;
- (void)reset;
@end

@implementation CADGroupedAccountAccessHandler

- (CADGroupedAccountAccessHandler)initWithDatabaseDataProvider:(id)provider
{
  v7.receiver = self;
  v7.super_class = CADGroupedAccountAccessHandler;
  v3 = [(CADAccountAccessHandler *)&v7 initWithDatabaseDataProvider:provider];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    accessHandlers = v3->_accessHandlers;
    v3->_accessHandlers = array;

    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)addAccountAccessHandler:(id)handler
{
  handlerCopy = handler;
  accessHandlers = [(CADGroupedAccountAccessHandler *)self accessHandlers];
  [accessHandlers addObject:handlerCopy];
}

- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessHandlers = [(CADGroupedAccountAccessHandler *)self accessHandlers];
  v9 = [accessHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(accessHandlers);
        }

        if (![*(*(&v16 + 1) + 8 * i) isActionAllowed:allowed forStore:store inDatabase:database])
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v10 = [accessHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)restrictedStoreRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  v8 = [dataProvider databaseID:database];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableArray *)self->_restrictedStoreReadCache objectAtIndexedSubscript:action];
  v11 = [v10 objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CADAccountAccessHandler *)self gatherRestrictedStoreRowIDs:v13 forAction:action inDatabase:database];
    v12 = v13;
    if (!self->_restrictedStoreReadCache)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      restrictedStoreReadCache = self->_restrictedStoreReadCache;
      self->_restrictedStoreReadCache = v14;

      v16 = self->_restrictedStoreReadCache;
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableArray *)v16 addObject:v17];

      v18 = self->_restrictedStoreReadCache;
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableArray *)v18 addObject:v19];

      v20 = [(NSMutableArray *)self->_restrictedStoreReadCache objectAtIndexedSubscript:action];

      v10 = v20;
    }

    [v10 setObject:v12 forKeyedSubscript:v9];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)restrictedCalendarRowIDsForAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  v8 = [dataProvider databaseID:database];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableArray *)self->_restrictedCalendarReadCache objectAtIndexedSubscript:action];
  v11 = [v10 objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CADGroupedAccountAccessHandler *)self gatherRestrictedCalendarRowIDs:v13 forAction:action inDatabase:database];
    v12 = v13;
    if (!self->_restrictedCalendarReadCache)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      restrictedCalendarReadCache = self->_restrictedCalendarReadCache;
      self->_restrictedCalendarReadCache = v14;

      v16 = self->_restrictedCalendarReadCache;
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableArray *)v16 addObject:v17];

      v18 = self->_restrictedCalendarReadCache;
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableArray *)v18 addObject:v19];

      v20 = [(NSMutableArray *)self->_restrictedCalendarReadCache objectAtIndexedSubscript:action];

      v10 = v20;
    }

    [v10 setObject:v12 forKeyedSubscript:v9];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (void)reset
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accessHandlers = [(CADGroupedAccountAccessHandler *)self accessHandlers];
  v4 = [accessHandlers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(accessHandlers);
        }

        [*(*(&v10 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [accessHandlers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock(&self->_lock);
  restrictedCalendarReadCache = self->_restrictedCalendarReadCache;
  self->_restrictedCalendarReadCache = 0;

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_accessHandlers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) gatherRestrictedCalendarRowIDs:dsCopy forAction:action inDatabase:{database, v15}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end