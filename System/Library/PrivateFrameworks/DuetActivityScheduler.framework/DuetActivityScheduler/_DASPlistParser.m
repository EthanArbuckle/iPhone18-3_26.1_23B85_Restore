@interface _DASPlistParser
+ (id)sharedInstance;
- (BOOL)containsOverrideForActivity:(id)a3 withLimitation:(id)a4;
- (_DASPlistParser)init;
- (id)dictionaryForPlist:(int64_t)a3;
- (id)loadOverrides;
- (id)suspensionDelayMitigationsForActivity:(id)a3;
- (void)loadPlist:(int64_t)a3;
@end

@implementation _DASPlistParser

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___DASPlistParser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

- (_DASPlistParser)init
{
  v9.receiver = self;
  v9.super_class = _DASPlistParser;
  v2 = [(_DASPlistParser *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    plistToDictionaryMap = v2->_plistToDictionaryMap;
    v2->_plistToDictionaryMap = v3;

    v5 = os_log_create([@"com.apple.duetactivityscheduler" UTF8String], objc_msgSend(@"plist", "UTF8String"));
    v6 = _log;
    _log = v5;

    if (!v2->_overrideActivities)
    {
      v7 = [(_DASPlistParser *)v2 loadOverrides];
    }
  }

  return v2;
}

- (id)dictionaryForPlist:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  plistToDictionaryMap = v4->_plistToDictionaryMap;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)plistToDictionaryMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(_DASPlistParser *)v4 loadPlist:a3];
  }

  v8 = v4->_plistToDictionaryMap;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];

  objc_sync_exit(v4);

  return v10;
}

- (void)loadPlist:(int64_t)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v31[0] = &unk_1F2ED49E8;
  v5 = [@"/System/Library/DuetActivityScheduler/Scheduler/Resources/" stringByAppendingString:@"com.apple.dasd.fastpass.activities.plist"];
  v32[0] = v5;
  v31[1] = &unk_1F2ED4A00;
  v6 = [@"/System/Library/DuetActivityScheduler/Scheduler/Resources/" stringByAppendingString:@"com.apple.dasd.features.plist"];
  v32[1] = v6;
  v31[2] = &unk_1F2ED4A18;
  v7 = [@"/System/Library/DuetActivityScheduler/Scheduler/Resources/" stringByAppendingString:@"com.apple.dasd.allowlist.activities.plist"];
  v32[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v8 objectForKey:v9];

  v11 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:v10];
  v12 = [v11 readDataToEndOfFile];
  if ([v12 length])
  {
    v25 = 0;
    v26 = 100;
    v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:&v26 error:&v25];
    v14 = v25;
    v15 = v14;
    v16 = _log;
    if (!v13 || v14)
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        [(_DASPlistParser *)v16 loadPlist:a3, v8];
      }
    }

    else
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
      {
        v23 = MEMORY[0x1E696AD98];
        v21 = v16;
        v24 = [v23 numberWithInteger:a3];
        v22 = [v8 objectForKey:v24];
        *buf = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v13;
        _os_log_debug_impl(&dword_1B6E2F000, v21, OS_LOG_TYPE_DEBUG, "Successfully read plist %@:%@", buf, 0x16u);
      }

      plistToDictionaryMap = self->_plistToDictionaryMap;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, v22}];
      [(NSMutableDictionary *)plistToDictionaryMap setObject:v13 forKey:v18];
    }
  }

  else
  {
    v19 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [(_DASPlistParser *)v19 loadPlist:a3, v8];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)loadOverrides
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  obj = v2;
  overrideActivities = v2->_overrideActivities;
  if (overrideActivities)
  {
LABEL_2:
    v4 = overrideActivities;
    goto LABEL_3;
  }

  v34 = [(_DASPlistParser *)v2 dictionaryForPlist:1];
  if ([v34 count])
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v34 allKeys];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v32 = v43 = 0u;
    v8 = [v32 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v8)
    {
      v33 = *v43;
      do
      {
        v35 = v8;
        for (i = 0; i != v35; ++i)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v32);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          v37 = [v34 objectForKeyedSubscript:v10];
          v11 = [v37 objectForKeyedSubscript:@"LimitationOverrides"];
          if (v11)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = v11;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v13)
            {
              v14 = *v39;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v39 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v38 + 1) + 8 * j);
                  v17 = [v7 objectForKeyedSubscript:v16];
                  v18 = v17 == 0;

                  if (v18)
                  {
                    v19 = [MEMORY[0x1E695DFA8] set];
                    [v7 setObject:v19 forKeyedSubscript:v16];
                  }

                  v20 = [v7 objectForKeyedSubscript:v16];
                  [v20 addObject:v10];
                }

                v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v13);
            }

            v11 = v36;
          }
        }

        v8 = [v32 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v8);
    }

    v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
    v22 = obj->_overrideActivities;
    obj->_overrideActivities = v21;

    overrideActivities = obj->_overrideActivities;
    goto LABEL_2;
  }

  v23 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [(_DASPlistParser *)v23 loadOverrides:v24];
  }

  v4 = 0;
LABEL_3:
  objc_sync_exit(obj);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)containsOverrideForActivity:(id)a3 withLimitation:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  if (v8)
  {
    v9 = self->_overrideActivities;
    objc_sync_enter(v9);
    v10 = [(NSDictionary *)self->_overrideActivities objectForKeyedSubscript:v7];
    v11 = [v10 containsObject:v8];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v11 |= [v8 containsString:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    objc_sync_exit(v9);
  }

  else
  {
    v16 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [_DASPlistParser containsOverrideForActivity:v6 withLimitation:v16];
    }

    LOBYTE(v11) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (id)suspensionDelayMitigationsForActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_DASPlistParser *)self dictionaryForPlist:1];
    if ([v5 count])
    {
      v6 = [v5 objectForKeyedSubscript:v4];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:@"SuspensionDelayMitigations"];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v19 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        [(_DASPlistParser *)v19 suspensionDelayMitigationsForActivity:v20, v21, v22, v23, v24, v25, v26];
      }

      v9 = 0;
    }
  }

  else
  {
    v11 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [(_DASPlistParser *)v11 suspensionDelayMitigationsForActivity:v12, v13, v14, v15, v16, v17, v18];
    }

    v9 = 0;
  }

  return v9;
}

- (void)loadPlist:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithInteger:a2];
  v8 = [a3 objectForKey:v7];
  OUTLINED_FUNCTION_1_1(&dword_1B6E2F000, v9, v10, "Failed to convert plist %@ to dictionary", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)loadPlist:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithInteger:a2];
  v8 = [a3 objectForKey:v7];
  OUTLINED_FUNCTION_1_1(&dword_1B6E2F000, v9, v10, "Failed to read file %@", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)containsOverrideForActivity:(uint64_t)a1 withLimitation:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_ERROR, "No identifier for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end