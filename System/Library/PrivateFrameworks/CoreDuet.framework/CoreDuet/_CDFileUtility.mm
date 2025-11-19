@interface _CDFileUtility
- (_CDFileUtility)init;
- (id)fileHandlerUtiity:(void *)a3 withBundleId:(void *)a4 withMetaData:;
- (void)writeJSON:(void *)a3 withFileHandle:;
@end

@implementation _CDFileUtility

- (_CDFileUtility)init
{
  v3.receiver = self;
  v3.super_class = _CDFileUtility;
  return [(_CDFileUtility *)&v3 init];
}

- (id)fileHandlerUtiity:(void *)a3 withBundleId:(void *)a4 withMetaData:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v7 stream];
    v12 = [v11 name];

    if (!v12)
    {
      v20 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *v24 = 0;
        _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "Exiting because no eventStreamName found", v24, 2u);
      }

      v21 = 0;
      goto LABEL_17;
    }

    [v10 setObject:v12 forKeyedSubscript:@"eventStream"];
    v13 = [v7 startDate];
    v14 = [v7 endDate];
    if (v13)
    {
      v15 = MEMORY[0x1E696AD98];
      [v13 timeIntervalSince1970];
      v16 = [v15 numberWithDouble:?];
      OUTLINED_FUNCTION_5_6();

      if (v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [v10 setObject:@"null" forKeyedSubscript:@"startDate"];
      if (v14)
      {
LABEL_5:
        v17 = MEMORY[0x1E696AD98];
        [v14 timeIntervalSince1970];
        v18 = [v17 numberWithDouble:?];
        OUTLINED_FUNCTION_5_6();

        if (v13)
        {
          [v14 timeIntervalSinceDate:v13];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          OUTLINED_FUNCTION_5_6();

LABEL_13:
          [v10 setObject:v8 forKeyedSubscript:@"bundleID"];
          if (v9)
          {
            v22 = [v9 copy];
            OUTLINED_FUNCTION_5_6();
          }

          else
          {
            [v10 setObject:@"null" forKeyedSubscript:@"metadata"];
          }

          v21 = [v10 copy];

LABEL_17:
          goto LABEL_18;
        }

LABEL_12:
        [v10 setObject:@"null" forKeyedSubscript:@"duration"];
        goto LABEL_13;
      }
    }

    [v10 setObject:@"null" forKeyedSubscript:@"endDate"];
    goto LABEL_12;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (void)writeJSON:(void *)a3 withFileHandle:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x1E696ACB0];
    v7 = [a2 copy];
    v12 = 0;
    v8 = [v6 dataWithJSONObject:v7 options:0 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "Error serializing json data: %@", buf, 0xCu);
      }
    }

    else
    {
      [v5 writeData:v8];
      v10 = [@" "];
      [v5 writeData:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end