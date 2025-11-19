@interface NWStatsEntityMapperCoalitionWatcher
- (BOOL)noteUUID:(id)a3 forPid:(int)a4;
- (NWStatsEntityMapperCoalitionWatcher)init;
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
- (void)_uuidCoalitionNameMapPrune;
@end

@implementation NWStatsEntityMapperCoalitionWatcher

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)v7->_uuidCoalitionNameMap objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      [v8 setObject:v9 forKeyedSubscript:@"timestamp"];

      v10 = MEMORY[0x277CCACA8];
      v11 = [v8 objectForKeyedSubscript:@"coalitionName"];
      v12 = [v10 stringWithString:v11];
    }

    else
    {
      v12 = 0;
    }

    objc_sync_exit(v7);
    if (a4 && v12)
    {
      *a4 = 5;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NWStatsEntityMapperCoalitionWatcher)init
{
  v6.receiver = self;
  v6.super_class = NWStatsEntityMapperCoalitionWatcher;
  v2 = [(NWStatsEntityMapperCoalitionWatcher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uuidCoalitionNameMap = v2->_uuidCoalitionNameMap;
    v2->_uuidCoalitionNameMap = v3;

    if (!v2->_uuidCoalitionNameMap)
    {

      return 0;
    }
  }

  return v2;
}

- (BOOL)noteUUID:(id)a3 forPid:(int)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = pid_to_coalitionID(a4);
    v8 = NStatGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_DEFAULT, "Note coalition name %@ for uuid %@", &v18, 0x16u);
    }

    if (v7)
    {
      v9 = self;
      objc_sync_enter(v9);
      if ([(NSMutableDictionary *)v9->_uuidCoalitionNameMap count]>= 0x65)
      {
        [(NWStatsEntityMapperCoalitionWatcher *)v9 _uuidCoalitionNameMapPrune];
      }

      v10 = [(NSMutableDictionary *)v9->_uuidCoalitionNameMap objectForKeyedSubscript:v6];

      if (v10)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = v12 != 0;
        if (v12)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithString:v7];
          [v12 setObject:v13 forKeyedSubscript:@"coalitionName"];

          v14 = [MEMORY[0x277CBEAA8] date];
          [v12 setObject:v14 forKeyedSubscript:@"timestamp"];

          [(NSMutableDictionary *)v9->_uuidCoalitionNameMap setObject:v12 forKeyedSubscript:v6];
        }

        else
        {
          v15 = NStatGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v18 = 138412290;
            v19 = v7;
            _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_ERROR, "Memory allocation failed for %@", &v18, 0xCu);
          }
        }
      }

      objc_sync_exit(v9);
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_uuidCoalitionNameMapPrune
{
  if ([(NSMutableDictionary *)self->_uuidCoalitionNameMap count]>= 0x65)
  {
    v4 = [(NSMutableDictionary *)self->_uuidCoalitionNameMap keysSortedByValueUsingComparator:&__block_literal_global_158];
    v3 = [v4 subarrayWithRange:{0, 10}];
    [(NSMutableDictionary *)self->_uuidCoalitionNameMap count];
    [(NSMutableDictionary *)self->_uuidCoalitionNameMap removeObjectsForKeys:v3];
  }
}

uint64_t __65__NWStatsEntityMapperCoalitionWatcher__uuidCoalitionNameMapPrune__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"timestamp"];
  v6 = [v4 objectForKeyedSubscript:@"timestamp"];

  v7 = [v5 compare:v6];
  return v7;
}

@end