@interface UARPDynamicAssetCrashLogDecoder
- (BOOL)copySectionName:(id)name inDictionary:(id)dictionary;
- (BOOL)createDictionary:(id)dictionary inDictionary:(id)inDictionary;
- (BOOL)decodeCrashLog:(id)log inDictionary:(id)dictionary;
- (UARPDynamicAssetCrashLogDecoder)init;
- (UARPDynamicAssetCrashLogDecoder)initWithDecoderId:(unsigned int)id sectionName:(id)name inputDictionary:(id)dictionary;
@end

@implementation UARPDynamicAssetCrashLogDecoder

- (UARPDynamicAssetCrashLogDecoder)init
{
  [(UARPDynamicAssetCrashLogDecoder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetCrashLogDecoder)initWithDecoderId:(unsigned int)id sectionName:(id)name inputDictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = UARPDynamicAssetCrashLogDecoder;
  v11 = [(UARPDynamicAssetCrashLogDecoder *)&v15 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v11->_log;
    v11->_log = v12;

    v11->_decoderId = id;
    objc_storeStrong(&v11->_sectionName, name);
    objc_storeStrong(&v11->_cmapDictionary, dictionary);
  }

  return v11;
}

- (BOOL)decodeCrashLog:(id)log inDictionary:(id)dictionary
{
  logCopy = log;
  dictionaryCopy = dictionary;
  decoderId = self->_decoderId;
  if (decoderId == 2)
  {
    v9 = [(UARPDynamicAssetCrashLogDecoder *)self createDictionary:logCopy inDictionary:dictionaryCopy];
    goto LABEL_5;
  }

  if (decoderId == 1)
  {
    v9 = [(UARPDynamicAssetCrashLogDecoder *)self copySectionName:logCopy inDictionary:dictionaryCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_9;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCrashLogDecoder decodeCrashLog:? inDictionary:?];
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)copySectionName:(id)name inDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dictionaryCopy = dictionary;
  v8 = [(NSDictionary *)self->_cmapDictionary objectForKey:@"CrashLogKey"];
  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder copySectionName:inDictionary:];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder copySectionName:inDictionary:];
    }

LABEL_19:
    isKindOfClass = 0;
    goto LABEL_25;
  }

  [nameCopy allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v19 = dictionaryCopy;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      if ([v8 isEqualToString:v14])
      {
        v16 = [nameCopy objectForKey:v8];
        dictionaryCopy = v19;
        [v19 setObject:v16 forKey:v8];

LABEL_23:
        goto LABEL_24;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        dictionaryCopy = v19;
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    dictionaryCopy = v19;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder copySectionName:inDictionary:];
    }

    goto LABEL_23;
  }

LABEL_12:

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCrashLogDecoder copySectionName:inDictionary:];
  }

  isKindOfClass = 0;
LABEL_24:

LABEL_25:
  v17 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (BOOL)createDictionary:(id)dictionary inDictionary:(id)inDictionary
{
  v40 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  inDictionaryCopy = inDictionary;
  v8 = [(NSDictionary *)self->_cmapDictionary objectForKey:@"CrashLogKey"];
  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder copySectionName:inDictionary:];
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

LABEL_29:
    v25 = 0;
    goto LABEL_42;
  }

  v9 = [(NSDictionary *)self->_cmapDictionary objectForKey:@"DecodedCrashLogChildKey"];
  v10 = [(NSDictionary *)self->_cmapDictionary objectForKey:@"DecodedCrashLogKey"];
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

    goto LABEL_40;
  }

  if (!v10)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

    goto LABEL_40;
  }

  v12 = [v9 count];
  if (v12 != [v8 count])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
    }

LABEL_40:
    v25 = 0;
    goto LABEL_41;
  }

  allKeys = [dictionaryCopy allKeys];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (![v8 count])
  {
    goto LABEL_24;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v30 = v15;
    v17 = [v8 objectAtIndexedSubscript:v15];
    objc_opt_class();
    v34 = v17;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
      }

      goto LABEL_49;
    }

    v28 = v16;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = allKeys;
    v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v18)
    {

LABEL_54:
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
      }

LABEL_49:

      v25 = 0;
      goto LABEL_50;
    }

    v19 = v18;
    v31 = v14;
    v29 = allKeys;
    v20 = 0;
    v33 = *v36;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          allKeys = v29;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
          }

          goto LABEL_48;
        }

        if (![v22 isEqualToString:v34])
        {
          continue;
        }

        v23 = [v9 objectAtIndexedSubscript:v30];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetCrashLogDecoder createDictionary:inDictionary:];
          }

          allKeys = v29;
LABEL_48:

          v14 = v31;
          goto LABEL_49;
        }

        v24 = [dictionaryCopy objectForKey:v34];
        [v31 setObject:v24 forKey:v23];

        v20 = 1;
      }

      v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    allKeys = v29;
    v14 = v31;
    if ((v20 & 1) == 0)
    {
      goto LABEL_54;
    }

    v15 = (v28 + 1);
    v16 = v28 + 1;
    if ([v8 count] > v15)
    {
      continue;
    }

    break;
  }

LABEL_24:
  [inDictionaryCopy setObject:v14 forKey:v11];
  v25 = 1;
LABEL_50:

LABEL_41:
LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)decodeCrashLog:(int *)a1 inDictionary:.cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copySectionName:inDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copySectionName:inDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copySectionName:inDictionary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copySectionName:inDictionary:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDictionary:inDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDictionary:inDictionary:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDictionary:inDictionary:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createDictionary:inDictionary:.cold.10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end