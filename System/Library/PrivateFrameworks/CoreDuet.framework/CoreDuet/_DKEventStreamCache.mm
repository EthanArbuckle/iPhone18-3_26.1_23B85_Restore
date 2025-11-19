@interface _DKEventStreamCache
+ (id)sharedCached;
- (id)eventStreamWithName:(id)a3 valueType:(id)a4;
@end

@implementation _DKEventStreamCache

+ (id)sharedCached
{
  if (sharedCached_onceToken != -1)
  {
    +[_DKEventStreamCache sharedCached];
  }

  v3 = sharedCached_sharedCache;

  return v3;
}

- (id)eventStreamWithName:(id)a3 valueType:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(_DKEventStreamCache *)v8 objectForKey:v6];
    v10 = v9;
    if (v9 && (!v7 || ([v9 eventValueType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v7), v11, v12)))
    {
      v13 = v10;
    }

    else
    {
      v13 = [[_DKEventStream alloc] initWithName:v6 valueType:v7 cache:0];
      if (v10)
      {
        v14 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = [v10 eventValueType];
          v18 = 138412802;
          v19 = v6;
          v20 = 2112;
          v21 = v17;
          v22 = 2112;
          v23 = v7;
          _os_log_error_impl(&dword_191750000, v14, OS_LOG_TYPE_ERROR, "Conflicting types for event stream %@. Cached: %@ vs. New: %@.", &v18, 0x20u);
        }
      }

      if (v13)
      {
        [(_DKEventStreamCache *)v8 setObject:v13 forKey:v6];
      }
    }

    objc_sync_exit(v8);
  }

  else
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      [_DKEventStream initWithName:? valueType:? cache:?];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

@end