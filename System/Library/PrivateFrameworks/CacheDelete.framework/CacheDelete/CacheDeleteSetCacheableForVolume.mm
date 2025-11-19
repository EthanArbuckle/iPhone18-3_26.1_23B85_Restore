@interface CacheDeleteSetCacheableForVolume
@end

@implementation CacheDeleteSetCacheableForVolume

void ___CacheDeleteSetCacheableForVolume_block_invoke(uint64_t a1, void *a2)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695E118];
  if (!*(a1 + 48))
  {
    v3 = MEMORY[0x1E695E110];
  }

  v27[0] = @"CACHE_DELETE_CACHE_ENABLED";
  v27[1] = @"CACHE_DELETE_CACHEABLE_DURATION";
  v4 = *(a1 + 32);
  v28[0] = v3;
  v28[1] = v4;
  v27[2] = @"CACHE_DELETE_TIMESTAMP";
  v5 = MEMORY[0x1E696AD98];
  v6 = MEMORY[0x1E695DF00];
  v7 = a2;
  [v6 timeIntervalSinceReferenceDate];
  v8 = [v5 numberWithDouble:?];
  v28[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

  [v7 clientSetState:v9 key:*(a1 + 40)];
  v10 = CDGetLogHandle("client");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v11 = "TRUE";
    }

    else
    {
      v11 = "FALSE";
    }

    [*(a1 + 32) doubleValue];
    v13 = v12;
    [*(a1 + 32) doubleValue];
    v15 = days_hours_mins(v14);
    v16 = MEMORY[0x1E695DF00];
    [*(a1 + 32) doubleValue];
    v17 = [v16 dateWithTimeIntervalSinceNow:?];
    v19 = 136315906;
    v20 = v11;
    v21 = 2048;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEFAULT, "_CacheDeleteSetCacheableForVolume setting cacheable to %s, with a duration of: %f (%@), expiring on: %@", &v19, 0x2Au);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void ___CacheDeleteSetCacheableForVolume_block_invoke_393(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "_CacheDeleteSetCacheableForVolume CallCacheD error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end