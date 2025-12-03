@interface CBCombinedConfigProvider
- (BOOL)loadFixedFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (BOOL)loadFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadInt:(id)int toDestination:(int *)destination;
- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination;
- (CBCombinedConfigProvider)initWithProviders:(id)providers;
- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination;
- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination;
- (unint64_t)loadInt16Array:(id)array toDestination:(signed __int16 *)destination;
- (unint64_t)loadUintArray:(id)array toDestination:(unsigned int *)destination;
- (void)dealloc;
@end

@implementation CBCombinedConfigProvider

- (CBCombinedConfigProvider)initWithProviders:(id)providers
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  providersCopy = providers;
  v15.receiver = self;
  v15.super_class = CBCombinedConfigProvider;
  selfCopy = [(CBCombinedConfigProvider *)&v15 init];
  if ([providersCopy count])
  {
    if ([providersCopy count] == 1)
    {
      *&v3 = MEMORY[0x1E69E5920](selfCopy).n128_u64[0];
      v4 = [providersCopy objectAtIndexedSubscript:{0, v3}];
      v19 = MEMORY[0x1E69E5928](v4);
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      memset(__b, 0, sizeof(__b));
      obj = providersCopy;
      v11 = [providersCopy countByEnumeratingWithState:__b objects:v20 count:16];
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

      selfCopy->_providers = v14;
      selfCopy->_logHandle = 0;
      v19 = selfCopy;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](selfCopy);
    v19 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_providers);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBCombinedConfigProvider;
  [(CBCombinedConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)float toDestination:(float *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  floatCopy = float;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadFixedFloat:floatCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v19, floatCopy, COERCE__INT64(*destinationCopy), v13);
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

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v19 = a2;
  floatCopy = float;
  scalerCopy = scaler;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      *&v5 = scalerCopy;
      if ([v15 loadFixedFloat:floatCopy withScaler:destinationCopy toDestination:v5])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v22, floatCopy, COERCE__INT64(*destinationCopy), v15);
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

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  floatCopy = float;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadFloat:floatCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_0_8_64(v19, floatCopy, COERCE__INT64(*destinationCopy), v13);
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

- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  arrayCopy = array;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadFloatArray:arrayCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, arrayCopy, v13);
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

- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  arrayCopy = array;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadIOFixedArray:arrayCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, arrayCopy, v13);
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

- (unint64_t)loadInt16Array:(id)array toDestination:(signed __int16 *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  arrayCopy = array;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadInt16Array:arrayCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, arrayCopy, v13);
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

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  intCopy = int;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadInt:intCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_8_64(v19, intCopy, *destinationCopy, v13);
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

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  uintCopy = uint;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadUint:uintCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_8_64(v19, uintCopy, *destinationCopy, v13);
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

- (unint64_t)loadUintArray:(id)array toDestination:(unsigned int *)destination
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  arrayCopy = array;
  destinationCopy = destination;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_providers;
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
      if ([v13 loadUintArray:arrayCopy toDestination:destinationCopy])
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

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, arrayCopy, v13);
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