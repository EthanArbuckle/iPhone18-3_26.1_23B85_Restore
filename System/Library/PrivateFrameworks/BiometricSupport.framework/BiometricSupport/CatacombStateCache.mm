@interface CatacombStateCache
- (CatacombStateCache)init;
- (id)cachedComponents;
- (id)cachedGroupComponentsForUser:(unsigned int)user;
- (id)cachedUserComponents;
- (int)addGroupStatesFromBuffer:(id)buffer;
- (int)addUserStatesFromBuffer:(id)buffer;
- (unsigned)stateOfComponent:(id)component;
- (unsigned)stateOfMasterComponent;
- (void)removeUser:(unsigned int)user;
- (void)reset;
@end

@implementation CatacombStateCache

- (CatacombStateCache)init
{
  v6.receiver = self;
  v6.super_class = CatacombStateCache;
  v2 = [(CatacombStateCache *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedStates = v2->_cachedStates;
    v2->_cachedStates = dictionary;
  }

  return v2;
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_cachedStates removeAllObjects];
  objc_sync_exit(obj);
}

- (int)addUserStatesFromBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (([bufferCopy length] & 7) != 0)
  {
    [CatacombStateCache addUserStatesFromBuffer:];
    v13 = v15;
  }

  else
  {
    v5 = [bufferCopy length];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v5 >= 8)
    {
      v7 = 0;
      v8 = v5 >> 3;
      do
      {
        bytes = [bufferCopy bytes];
        cachedStates = selfCopy->_cachedStates;
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + v7 + 4)];
        v12 = [CatacombComponent componentForUserID:*(bytes + v7)];
        [(NSMutableDictionary *)cachedStates setObject:v11 forKey:v12];

        v7 += 8;
        --v8;
      }

      while (v8);
    }

    objc_sync_exit(selfCopy);

    v13 = 0;
  }

  return v13;
}

- (id)cachedComponents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_cachedStates allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (id)cachedUserComponents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = selfCopy->_cachedStates;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isUserComponent])
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)removeUser:(unsigned int)user
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_cachedStates allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 userID] == user)
        {
          [(NSMutableDictionary *)selfCopy->_cachedStates removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];
}

- (unsigned)stateOfComponent:(id)component
{
  componentCopy = component;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_cachedStates objectForKeyedSubscript:componentCopy];
  unsignedIntValue = [v6 unsignedIntValue];

  objc_sync_exit(selfCopy);
  return unsignedIntValue;
}

- (unsigned)stateOfMasterComponent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedStates = selfCopy->_cachedStates;
  v4 = +[CatacombComponent masterComponent];
  v5 = [(NSMutableDictionary *)cachedStates objectForKeyedSubscript:v4];
  LODWORD(cachedStates) = [v5 unsignedIntValue];

  objc_sync_exit(selfCopy);
  return cachedStates;
}

- (int)addGroupStatesFromBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (__ROR8__(0x6DB6DB6DB6DB6DB7 * [bufferCopy length], 2) >= 0x924924924924925uLL)
  {
    [CatacombStateCache addGroupStatesFromBuffer:];
    v14 = v16;
  }

  else
  {
    v5 = [bufferCopy length];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v5 >= 0x1C)
    {
      v7 = v5 / 0x1C;
      v8 = 24;
      do
      {
        bytes = [bufferCopy bytes];
        v10 = bytes + v8 - 24;
        cachedStates = selfCopy->_cachedStates;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + v8)];
        v13 = [CatacombComponent component:v10];
        [(NSMutableDictionary *)cachedStates setObject:v12 forKey:v13];

        v8 += 28;
        --v7;
      }

      while (v7);
    }

    objc_sync_exit(selfCopy);

    v14 = 0;
  }

  return v14;
}

- (id)cachedGroupComponentsForUser:(unsigned int)user
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (user != -1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = selfCopy->_cachedStates;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isGroupComponent] && objc_msgSend(v11, "userID") == user)
          {
            [array addObject:v11];
          }
        }

        v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_sync_exit(selfCopy);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)addUserStatesFromBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addGroupStatesFromBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
  v5 = *MEMORY[0x277D85DE8];
}

@end