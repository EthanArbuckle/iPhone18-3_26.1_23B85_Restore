@interface FSResourceManager
- (FSResourceManager)init;
- (id)getResource:(id)resource;
- (id)getResources;
- (id)getTaskUUIDs:(id)ds;
- (int)getResourceState:(id)state;
- (void)addResource:(id)resource;
- (void)addTaskUUID:(id)d resource:(id)resource;
- (void)removeResource:(id)resource;
- (void)removeTaskUUID:(id)d;
- (void)updateResource:(id)resource;
@end

@implementation FSResourceManager

- (FSResourceManager)init
{
  v8.receiver = self;
  v8.super_class = FSResourceManager;
  v2 = [(FSResourceManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resourceTasks = v2->_resourceTasks;
    v2->_resourceTasks = v3;

    v5 = objc_opt_new();
    resources = v2->_resources;
    v2->_resources = v5;
  }

  return v2;
}

- (void)removeResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSResourceManager removeResource:resourceCopy];
  }

  getResourceID = [resourceCopy getResourceID];
  if (getResourceID)
  {
    [(NSMutableDictionary *)self->_resourceTasks removeObjectForKey:getResourceID];
    [(NSMutableDictionary *)self->_resources removeObjectForKey:getResourceID];
  }
}

- (void)removeTaskUUID:(id)d
{
  dCopy = d;
  v5 = self->_resourceTasks;
  objc_sync_enter(v5);
  resourceTasks = self->_resourceTasks;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__FSResourceManager_removeTaskUUID___block_invoke;
  v8[3] = &unk_278FED4B0;
  v7 = dCopy;
  v9 = v7;
  [(NSMutableDictionary *)resourceTasks enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

void __36__FSResourceManager_removeTaskUUID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  if ([v8 containsObject:v10])
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __36__FSResourceManager_removeTaskUUID___block_invoke_cold_1(v7, v9, v11);
    }

    [v8 removeObject:*v9];
    *a4 = 1;
  }
}

- (id)getResource:(id)resource
{
  resourceCopy = resource;
  v5 = [(NSMutableDictionary *)self->_resources objectForKey:resourceCopy];
  v6 = fskit_std_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [FSResourceManager getResource:];
    }
  }

  else if (v7)
  {
    [FSResourceManager getResource:];
  }

  return v5;
}

- (int)getResourceState:(id)state
{
  stateCopy = state;
  v5 = [(NSMutableDictionary *)self->_resources objectForKey:stateCopy];
  v6 = fskit_std_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [FSResourceManager getResourceState:];
    }

    state = [v5 state];
  }

  else
  {
    if (v7)
    {
      [FSResourceManager getResourceState:];
    }

    state = 0;
  }

  return state;
}

- (id)getResources
{
  v2 = [(NSMutableDictionary *)self->_resources copy];

  return v2;
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSResourceManager addResource:resourceCopy];
  }

  resources = self->_resources;
  getResourceID = [resourceCopy getResourceID];
  v8 = [(NSMutableDictionary *)resources objectForKey:getResourceID];

  if (v8)
  {
    getResourceID2 = fskit_std_log();
    if (os_log_type_enabled(getResourceID2, OS_LOG_TYPE_DEBUG))
    {
      [FSResourceManager addResource:resourceCopy];
    }
  }

  else
  {
    v10 = self->_resources;
    getResourceID2 = [resourceCopy getResourceID];
    [(NSMutableDictionary *)v10 setObject:resourceCopy forKey:getResourceID2];
  }
}

- (void)updateResource:(id)resource
{
  resourceCopy = resource;
  getResourceID = [resourceCopy getResourceID];
  v6 = fskit_std_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (getResourceID)
  {
    if (v7)
    {
      [FSResourceManager updateResource:resourceCopy];
    }

    resources = self->_resources;
    getResourceID2 = [resourceCopy getResourceID];
    [(NSMutableDictionary *)resources setObject:resourceCopy forKey:getResourceID2];

    v6 = fskit_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FSResourceManager updateResource:resourceCopy];
    }
  }

  else if (v7)
  {
    [FSResourceManager updateResource:v6];
  }
}

- (void)addTaskUUID:(id)d resource:(id)resource
{
  dCopy = d;
  resourceCopy = resource;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSResourceManager addTaskUUID:resourceCopy resource:?];
  }

  resourceTasks = self->_resourceTasks;
  getResourceID = [resourceCopy getResourceID];
  v11 = [(NSMutableDictionary *)resourceTasks objectForKey:getResourceID];

  if (!v11)
  {
    v12 = self->_resourceTasks;
    v13 = objc_opt_new();
    getResourceID2 = [resourceCopy getResourceID];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:getResourceID2];

    v15 = self->_resourceTasks;
    getResourceID3 = [resourceCopy getResourceID];
    v11 = [(NSMutableDictionary *)v15 objectForKey:getResourceID3];
  }

  [v11 addObject:dCopy];
}

- (id)getTaskUUIDs:(id)ds
{
  resourceTasks = self->_resourceTasks;
  getResourceID = [ds getResourceID];
  v5 = [(NSMutableDictionary *)resourceTasks objectForKey:getResourceID];

  return v5;
}

- (void)removeResource:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __36__FSResourceManager_removeTaskUUID___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 136315650;
  v6 = "[FSResourceManager removeTaskUUID:]_block_invoke";
  v7 = 2112;
  v8 = a1;
  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:found:%@:%@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)getResource:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:found:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getResource:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:not_found:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getResourceState:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:found:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getResourceState:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:not_found:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addResource:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addResource:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateResource:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateResource:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateResource:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[FSResourceManager updateResource:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:error: resourceID is nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addTaskUUID:(void *)a1 resource:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getResourceID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end