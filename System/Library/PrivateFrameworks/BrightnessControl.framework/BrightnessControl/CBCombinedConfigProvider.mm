@interface CBCombinedConfigProvider
+ (id)providerFromList:(id)a3;
- (BOOL)loadFixedFloat:(id)a3 toDestination:(float *)a4;
- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5;
- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4;
- (BOOL)loadInt:(id)a3 toDestination:(int *)a4;
- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4;
- (CBCombinedConfigProvider)initWithProviders:(id)a3;
- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4;
- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4;
- (unint64_t)loadInt16Array:(id)a3 toDestination:(signed __int16 *)a4;
- (unint64_t)loadUintArray:(id)a3 toDestination:(unsigned int *)a4;
- (void)dealloc;
@end

@implementation CBCombinedConfigProvider

+ (id)providerFromList:(id)a3
{
  v3 = [[CBCombinedConfigProvider alloc] initWithProviders:a3];

  return v3;
}

- (CBCombinedConfigProvider)initWithProviders:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CBCombinedConfigProvider;
  v4 = [(CBCombinedConfigProvider *)&v17 init];
  if ([a3 count])
  {
    if ([a3 count] == 1)
    {

      v4 = [a3 objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(a3);
            }

            v10 = *(*(&v13 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[NSArray addObjectsFromArray:](v5, "addObjectsFromArray:", [v10 providers]);
            }

            else
            {
              [(NSArray *)v5 addObject:v10];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [a3 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v7);
      }

      v4->_logHandle = 0;
      v4->_providers = v5;
    }
  }

  else
  {

    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBCombinedConfigProvider;
  [(CBCombinedConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)a3 toDestination:(float *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 loadFixedFloat:a3 toDestination:a4])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = *a4;
            *buf = 138412802;
            v22 = a3;
            v23 = 2048;
            v24 = v15;
            v25 = 2112;
            v26 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v8) = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  providers = self->_providers;
  v10 = [(NSArray *)providers countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(providers);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        *&v11 = a4;
        if ([v15 loadFixedFloat:a3 withScaler:a5 toDestination:v11])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v18 = *a5;
            *buf = 138412802;
            v25 = a3;
            v26 = 2048;
            v27 = v18;
            v28 = 2112;
            v29 = v15;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v10) = 1;
          goto LABEL_14;
        }

        ++v14;
      }

      while (v12 != v14);
      v10 = [(NSArray *)providers countByEnumeratingWithState:&v20 objects:v30 count:16];
      v12 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 loadFloat:a3 toDestination:a4])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = *a4;
            *buf = 138412802;
            v22 = a3;
            v23 = 2048;
            v24 = v15;
            v25 = 2112;
            v26 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v8) = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v13 + 1) + 8 * v11) loadFloatArray:a3 toDestination:a4])
        {
          if (self->_logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [CBCombinedConfigProvider loadFloatArray:toDestination:];
          }

          result = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v13 + 1) + 8 * v11) loadIOFixedArray:a3 toDestination:a4])
        {
          if (self->_logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [CBCombinedConfigProvider loadFloatArray:toDestination:];
          }

          result = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)loadInt16Array:(id)a3 toDestination:(signed __int16 *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v13 + 1) + 8 * v11) loadInt16Array:a3 toDestination:a4])
        {
          if (self->_logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [CBCombinedConfigProvider loadFloatArray:toDestination:];
          }

          result = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 loadInt:a3 toDestination:a4])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = *a4;
            *buf = 138412802;
            v22 = a3;
            v23 = 1024;
            v24 = v15;
            v25 = 2112;
            v26 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %d from %@", buf, 0x1Cu);
          }

          LOBYTE(v8) = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if ([v12 loadUint:a3 toDestination:a4])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = *a4;
            *buf = 138412802;
            v22 = a3;
            v23 = 1024;
            v24 = v15;
            v25 = 2112;
            v26 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %u from %@", buf, 0x1Cu);
          }

          LOBYTE(v8) = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v17 objects:v27 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)loadUintArray:(id)a3 toDestination:(unsigned int *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v13 + 1) + 8 * v11) loadUintArray:a3 toDestination:a4])
        {
          if (self->_logHandle && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
          {
            [CBCombinedConfigProvider loadFloatArray:toDestination:];
          }

          result = 1;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)loadFloatArray:toDestination:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_223D10000, v0, v1, "Loaded %@ from %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end