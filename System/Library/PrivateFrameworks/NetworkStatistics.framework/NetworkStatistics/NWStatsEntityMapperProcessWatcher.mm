@interface NWStatsEntityMapperProcessWatcher
- (NWStatsEntityMapperProcessWatcher)init;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
- (id)stateDictionary;
- (void)_uuidProcessNameMapPrune;
- (void)noteUUID:(id)d forProcessName:(id)name;
@end

@implementation NWStatsEntityMapperProcessWatcher

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_uuidProcessNameMap objectForKeyedSubscript:dCopy];
    if (v8)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v8 setObject:date forKeyedSubscript:@"timestamp"];

      v10 = MEMORY[0x277CCACA8];
      v11 = [v8 objectForKeyedSubscript:@"procName"];
      v12 = [v10 stringWithString:v11];
    }

    else
    {
      v12 = 0;
    }

    if (!derivation)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (v12)
    {
      *derivation = 6;
    }

    goto LABEL_12;
  }

  if (!selfCopy->_niluuidProcessName)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:?];
  if (derivation)
  {
    goto LABEL_9;
  }

LABEL_12:
  objc_sync_exit(selfCopy);

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

- (void)noteUUID:(id)d forProcessName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dCopy)
  {
    if ([(NSMutableDictionary *)selfCopy->_uuidProcessNameMap count]>= 0x65)
    {
      [(NWStatsEntityMapperProcessWatcher *)selfCopy _uuidProcessNameMapPrune];
    }

    v9 = [(NSMutableDictionary *)selfCopy->_uuidProcessNameMap objectForKeyedSubscript:dCopy];

    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (!v10)
      {
        v13 = NStatGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = nameCopy;
          _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "Memory allocation failed for %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v11 = nameCopy;
      if (selfCopy->_canonicalizedNames)
      {
        v12 = [(NSSet *)selfCopy->_daemonsWithStandardPrefixSet member:v11];

        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.%@", v11];

          v14 = NStatGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v20 = v11;
            v21 = 2112;
            v22 = dCopy;
            v23 = 2112;
            v24 = v13;
            v15 = "Create canonical mapping for process %@, %@ -> %@";
LABEL_16:
            _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        v16 = [(NSDictionary *)selfCopy->_daemonsWithNonStandardMappings objectForKeyedSubscript:v11];

        if (v16)
        {
          v13 = [(NSDictionary *)selfCopy->_daemonsWithNonStandardMappings objectForKeyedSubscript:v11];

          v14 = NStatGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v20 = v11;
            v21 = 2112;
            v22 = dCopy;
            v23 = 2112;
            v24 = v13;
            v15 = "Create non-standard mapping for process %@, %@ -> %@";
            goto LABEL_16;
          }

LABEL_17:

LABEL_19:
          [v10 setObject:v13 forKeyedSubscript:@"procName"];
          date = [MEMORY[0x277CBEAA8] date];
          [v10 setObject:date forKeyedSubscript:@"timestamp"];

          [(NSMutableDictionary *)selfCopy->_uuidProcessNameMap setObject:v10 forKeyedSubscript:dCopy];
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
    objc_storeStrong(&selfCopy->_niluuidProcessName, name);
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:selfCopy->_uuidProcessNameMap];
  [v3 setObject:v5 forKeyedSubscript:@"ProcessNameMap"];

  objc_sync_exit(selfCopy);

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