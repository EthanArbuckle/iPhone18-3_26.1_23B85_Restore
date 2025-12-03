@interface _CDFileUtility
- (_CDFileUtility)init;
- (id)fileHandlerUtiity:(void *)utiity withBundleId:(void *)id withMetaData:;
- (void)writeJSON:(void *)n withFileHandle:;
@end

@implementation _CDFileUtility

- (_CDFileUtility)init
{
  v3.receiver = self;
  v3.super_class = _CDFileUtility;
  return [(_CDFileUtility *)&v3 init];
}

- (id)fileHandlerUtiity:(void *)utiity withBundleId:(void *)id withMetaData:
{
  v7 = a2;
  utiityCopy = utiity;
  idCopy = id;
  if (self)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stream = [v7 stream];
    name = [stream name];

    if (!name)
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

    [v10 setObject:name forKeyedSubscript:@"eventStream"];
    startDate = [v7 startDate];
    endDate = [v7 endDate];
    if (startDate)
    {
      v15 = MEMORY[0x1E696AD98];
      [startDate timeIntervalSince1970];
      v16 = [v15 numberWithDouble:?];
      OUTLINED_FUNCTION_5_6();

      if (endDate)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [v10 setObject:@"null" forKeyedSubscript:@"startDate"];
      if (endDate)
      {
LABEL_5:
        v17 = MEMORY[0x1E696AD98];
        [endDate timeIntervalSince1970];
        v18 = [v17 numberWithDouble:?];
        OUTLINED_FUNCTION_5_6();

        if (startDate)
        {
          [endDate timeIntervalSinceDate:startDate];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          OUTLINED_FUNCTION_5_6();

LABEL_13:
          [v10 setObject:utiityCopy forKeyedSubscript:@"bundleID"];
          if (idCopy)
          {
            v22 = [idCopy copy];
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

- (void)writeJSON:(void *)n withFileHandle:
{
  v15 = *MEMORY[0x1E69E9840];
  nCopy = n;
  if (self)
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
      [nCopy writeData:v8];
      v10 = [@" "];
      [nCopy writeData:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end