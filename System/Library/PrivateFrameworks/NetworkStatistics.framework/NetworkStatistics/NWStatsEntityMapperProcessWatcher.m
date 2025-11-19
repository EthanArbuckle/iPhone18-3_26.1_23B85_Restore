@interface NWStatsEntityMapperProcessWatcher
- (NWStatsEntityMapperProcessWatcher)init;
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
- (id)stateDictionary;
- (void)_uuidProcessNameMapPrune;
- (void)noteUUID:(id)a3 forProcessName:(id)a4;
@end

@implementation NWStatsEntityMapperProcessWatcher

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = [(NSMutableDictionary *)v7->_uuidProcessNameMap objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      [v8 setObject:v9 forKeyedSubscript:@"timestamp"];

      v10 = MEMORY[0x277CCACA8];
      v11 = [v8 objectForKeyedSubscript:@"procName"];
      v12 = [v10 stringWithString:v11];
    }

    else
    {
      v12 = 0;
    }

    if (!a4)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (v12)
    {
      *a4 = 6;
    }

    goto LABEL_12;
  }

  if (!v7->_niluuidProcessName)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:?];
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_12:
  objc_sync_exit(v7);

  return v12;
}

- (NWStatsEntityMapperProcessWatcher)init
{
  v9.receiver = self;
  v9.super_class = NWStatsEntityMapperProcessWatcher;
  v2 = [(NWStatsEntityMapperProcessWatcher *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uuidProcessNameMap = v2->_uuidProcessNameMap;
    v2->_uuidProcessNameMap = v3;

    if (!v2->_uuidProcessNameMap)
    {

      v2 = 0;
    }

    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_286D3E588];
    daemonsWithStandardPrefixSet = v2->_daemonsWithStandardPrefixSet;
    v2->_daemonsWithStandardPrefixSet = v5;

    daemonsWithNonStandardMappings = v2->_daemonsWithNonStandardMappings;
    v2->_daemonsWithNonStandardMappings = &unk_286D3E5F8;
  }

  return v2;
}

- (void)noteUUID:(id)a3 forProcessName:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v6)
  {
    if ([(NSMutableDictionary *)v8->_uuidProcessNameMap count]>= 0x65)
    {
      [(NWStatsEntityMapperProcessWatcher *)v8 _uuidProcessNameMapPrune];
    }

    v9 = [(NSMutableDictionary *)v8->_uuidProcessNameMap objectForKeyedSubscript:v6];

    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (!v10)
      {
        v13 = NStatGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v7;
          _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "Memory allocation failed for %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v11 = v7;
      if (v8->_canonicalizedNames)
      {
        v12 = [(NSSet *)v8->_daemonsWithStandardPrefixSet member:v11];

        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.%@", v11];

          v14 = NStatGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v20 = v11;
            v21 = 2112;
            v22 = v6;
            v23 = 2112;
            v24 = v13;
            v15 = "Create canonical mapping for process %@, %@ -> %@";
LABEL_16:
            _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        v16 = [(NSDictionary *)v8->_daemonsWithNonStandardMappings objectForKeyedSubscript:v11];

        if (v16)
        {
          v13 = [(NSDictionary *)v8->_daemonsWithNonStandardMappings objectForKeyedSubscript:v11];

          v14 = NStatGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v20 = v11;
            v21 = 2112;
            v22 = v6;
            v23 = 2112;
            v24 = v13;
            v15 = "Create non-standard mapping for process %@, %@ -> %@";
            goto LABEL_16;
          }

LABEL_17:

LABEL_19:
          [v10 setObject:v13 forKeyedSubscript:@"procName"];
          v17 = [MEMORY[0x277CBEAA8] date];
          [v10 setObject:v17 forKeyedSubscript:@"timestamp"];

          [(NSMutableDictionary *)v8->_uuidProcessNameMap setObject:v10 forKeyedSubscript:v6];
LABEL_20:

          goto LABEL_21;
        }
      }

      v13 = v11;
      goto LABEL_19;
    }
  }

  else
  {
    objc_storeStrong(&v8->_niluuidProcessName, a4);
  }

LABEL_21:
  objc_sync_exit(v8);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4->_uuidProcessNameMap];
  [v3 setObject:v5 forKeyedSubscript:@"ProcessNameMap"];

  objc_sync_exit(v4);

  return v3;
}

- (void)_uuidProcessNameMapPrune
{
  if ([(NSMutableDictionary *)self->_uuidProcessNameMap count]>= 0x65)
  {
    v4 = [(NSMutableDictionary *)self->_uuidProcessNameMap keysSortedByValueUsingComparator:&__block_literal_global_783];
    v3 = [v4 subarrayWithRange:{0, 10}];
    [(NSMutableDictionary *)self->_uuidProcessNameMap count];
    [(NSMutableDictionary *)self->_uuidProcessNameMap removeObjectsForKeys:v3];
  }
}

uint64_t __61__NWStatsEntityMapperProcessWatcher__uuidProcessNameMapPrune__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"timestamp"];
  v6 = [v4 objectForKeyedSubscript:@"timestamp"];

  v7 = [v5 compare:v6];
  return v7;
}

@end