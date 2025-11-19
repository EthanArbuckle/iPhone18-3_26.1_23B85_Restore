@interface CommunicationsFilterBlockList
+ (id)sharedInstance;
- (BOOL)isItemInList:(id)a3;
- (CommunicationsFilterBlockList)init;
- (CommunicationsFilterBlockList)initWithXPCService:(id)a3;
- (id)areItemsInList:(id)a3;
- (id)copyAllItems;
- (void)addItemForAllServices:(id)a3;
- (void)dealloc;
- (void)removeItemForAllServices:(id)a3;
@end

@implementation CommunicationsFilterBlockList

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[CommunicationsFilterBlockList sharedInstance];
  }

  return sharedInstance_sInstance;
}

- (id)copyAllItems
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, CMFXPCEventCode, 2);
  v4 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v3];
  xpc_release(v3);
  v5 = [v4 objectForKey:CMFDictionaryResultKey];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:*(*(&v17 + 1) + 8 * i)];
          if (v12)
          {
            v13 = v12;
            [v7 addObject:v12];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = CMFDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CommunicationsFilterBlockList *)v14 copyAllItems];
    }

    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

CommunicationsFilterBlockList *__47__CommunicationsFilterBlockList_sharedInstance__block_invoke()
{
  result = objc_alloc_init(CommunicationsFilterBlockList);
  sharedInstance_sInstance = result;
  return result;
}

- (CommunicationsFilterBlockList)init
{
  v3 = objc_alloc_init(CMFXPCService);
  v4 = [(CommunicationsFilterBlockList *)self initWithXPCService:v3];

  return v4;
}

- (CommunicationsFilterBlockList)initWithXPCService:(id)a3
{
  v6.receiver = self;
  v6.super_class = CommunicationsFilterBlockList;
  v4 = [(CommunicationsFilterBlockList *)&v6 init];
  if (v4)
  {
    v4->_cache = objc_alloc_init(CommunicationsFilterBlockListCache);
    v4->_queue = dispatch_queue_create("com.apple.cmfblocklist", 0);
    v4->_xpcService = a3;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  self->_queue = 0;
  v3.receiver = self;
  v3.super_class = CommunicationsFilterBlockList;
  [(CommunicationsFilterBlockList *)&v3 dealloc];
}

- (void)addItemForAllServices:(id)a3
{
  v5 = [a3 dictionaryRepresentation];
  if (v5)
  {
    v6 = v5;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, CMFXPCEventCode, 0);
    IMInsertDictionariesToXPCDictionary();
    [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v7, v6, 0];
    xpc_release(v7);
    cache = self->_cache;

    [(CommunicationsFilterBlockListCache *)cache removeItemFromCache:a3];
  }

  else
  {
    v9 = CMFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CommunicationsFilterBlockList addItemForAllServices:v9];
    }
  }
}

- (void)removeItemForAllServices:(id)a3
{
  v5 = [a3 dictionaryRepresentation];
  if (v5)
  {
    v6 = v5;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, CMFXPCEventCode, 1);
    IMInsertDictionariesToXPCDictionary();
    [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v7, v6, 0];
    xpc_release(v7);
    cache = self->_cache;

    [(CommunicationsFilterBlockListCache *)cache removeItemFromCache:a3];
  }

  else
  {
    v9 = CMFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CommunicationsFilterBlockList removeItemForAllServices:v9];
    }
  }
}

- (BOOL)isItemInList:(id)a3
{
  v5 = [(CommunicationsFilterBlockListCache *)self->_cache cachedResponseForItem:?];
  v6 = CMFDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == -1)
  {
    if (v7)
    {
      *v15 = 0;
      _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, "Item not in the cache.", v15, 2u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, CMFXPCEventCode, 3);
    v13 = [a3 dictionaryRepresentation];
    IMInsertDictionariesToXPCDictionary();
    v10 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v9, v13, 0];
    xpc_release(v9);
    v8 = [v10 objectForKey:CMFDictionaryResultKey];
    if (v8)
    {
      v11 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[CommunicationsFilterBlockListCache setResponse:forItem:](self->_cache, "setResponse:forItem:", [v11 BOOLValue], a3);
        LOBYTE(v8) = [v11 BOOLValue];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, "Item in the cache.", buf, 2u);
    }

    LOBYTE(v8) = v5 == 1;
  }

  return v8;
}

- (id)areItemsInList:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  if (a3 && [a3 count])
  {
    v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(a3, "count")}];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [(CommunicationsFilterBlockListCache *)self->_cache cachedResponseForItem:v10];
              if (v11 == -1)
              {
                [v5 addObject:v10];
              }

              else
              {
                [v30 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v11 == 1), v10}];
              }
            }
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v5);
            }

            v17 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
            if (v17)
            {
              [v12 addObject:v17];
            }
          }

          v14 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v14);
      }

      if ([v12 count])
      {
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v18, CMFXPCEventCode, 4);
        IMInsertDictionariesToXPCDictionary();
        v19 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v18, v12, 0];
        xpc_release(v18);
        v20 = [v19 objectForKey:CMFDictionaryResultKey];
        if (v20)
        {
          v21 = v20;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v22 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v32;
              do
              {
                for (k = 0; k != v23; ++k)
                {
                  if (*v32 != v24)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v26 = *(*(&v31 + 1) + 8 * k);
                  v27 = [v21 objectForKey:{objc_msgSend(v26, "unformattedID")}];
                  if (v27)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = [v27 BOOLValue];
                    }

                    else
                    {
                      v27 = 0;
                    }
                  }

                  [(CommunicationsFilterBlockListCache *)self->_cache setResponse:v27 forItem:v26];
                  [v30 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", v27), v26}];
                }

                v23 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
              }

              while (v23);
            }
          }
        }
      }
    }
  }

  else
  {
    v30 = MEMORY[0x277CBEC10];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v30;
}

@end