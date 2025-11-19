@interface CBCombinedConfigProvider
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

- (CBCombinedConfigProvider)initWithProviders:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15.receiver = self;
  v15.super_class = CBCombinedConfigProvider;
  v18 = [(CBCombinedConfigProvider *)&v15 init];
  if ([v16 count])
  {
    if ([v16 count] == 1)
    {
      *&v3 = MEMORY[0x1E69E5920](v18).n128_u64[0];
      v4 = [v16 objectAtIndexedSubscript:{0, v3}];
      v19 = MEMORY[0x1E69E5928](v4);
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      memset(__b, 0, sizeof(__b));
      obj = v16;
      v11 = [v16 countByEnumeratingWithState:__b objects:v20 count:16];
      if (v11)
      {
        v7 = *__b[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(obj);
          }

          v13 = 0;
          v13 = *(__b[1] + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[NSArray addObjectsFromArray:](v14, "addObjectsFromArray:", [v13 providers]);
          }

          else
          {
            [(NSArray *)v14 addObject:v13];
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      v18->_providers = v14;
      v18->_logHandle = 0;
      v19 = v18;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](v18);
    v19 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_providers);
  *&v2 = MEMORY[0x1E69E5920](v5->_logHandle).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBCombinedConfigProvider;
  [(CBCombinedConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)a3 toDestination:(float *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadFixedFloat:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v19, v15, COERCE__INT64(*v14), v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", v19, 0x20u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)loadFixedFloat:(id)a3 withScaler:(float)a4 toDestination:(float *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  memset(__b, 0, sizeof(__b));
  obj = v20->_providers;
  v13 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v15 = 0;
      v15 = *(__b[1] + 8 * v10);
      *&v5 = v17;
      if ([v15 loadFixedFloat:v18 withScaler:v16 toDestination:v5])
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v11)
        {
          goto LABEL_12;
        }
      }
    }

    if (v20->_logHandle)
    {
      logHandle = v20->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v22, v18, COERCE__INT64(*v16), v15);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", v22, 0x20u);
      }
    }

    v21 = 1;
  }

  else
  {
LABEL_12:
    v21 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v21 & 1;
}

- (BOOL)loadFloat:(id)a3 toDestination:(float *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadFloat:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v19, v15, COERCE__INT64(*v14), v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", v19, 0x20u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (unint64_t)loadFloatArray:(id)a3 toDestination:(float *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadFloatArray:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, v15, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ from %@", v19, 0x16u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)loadIOFixedArray:(id)a3 toDestination:(float *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadIOFixedArray:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, v15, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ from %@", v19, 0x16u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)loadInt16Array:(id)a3 toDestination:(signed __int16 *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadInt16Array:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, v15, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ from %@", v19, 0x16u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)loadInt:(id)a3 toDestination:(int *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadInt:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_8_64(v19, v15, *v14, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %d from %@", v19, 0x1Cu);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)loadUint:(id)a3 toDestination:(unsigned int *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadUint:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_8_64(v19, v15, *v14, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %u from %@", v19, 0x1Cu);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (unint64_t)loadUintArray:(id)a3 toDestination:(unsigned int *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v17->_providers;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      if ([v13 loadUintArray:v15 toDestination:v14])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v17->_logHandle)
    {
      logHandle = v17->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, v15, v13);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ from %@", v19, 0x16u);
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

@end