@interface CacheDeletePurgeSpaceWithInfo
@end

@implementation CacheDeletePurgeSpaceWithInfo

void ___CacheDeletePurgeSpaceWithInfo_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___CacheDeletePurgeSpaceWithInfo_block_invoke_2;
  v6[3] = &unk_1E7F02930;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 clientPurge:v3 replyBlock:v6];
}

void ___CacheDeletePurgeSpaceWithInfo_block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v6 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "_CacheDeletePurgeSpaceWithInfo purged: %{public}@ bytes from %{public}@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ___CacheDeletePurgeSpaceWithInfo_block_invoke_377(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 description];
  if (v5)
  {
    v6 = [v3 description];
    v7 = [v4 stringWithFormat:@"Failed to purge space: %@", v6];
  }

  else
  {
    v7 = [v4 stringWithFormat:@"Failed to purge space: %@", @"Undefined error"];
  }

  v8 = CDGetLogHandle("client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v7;
    _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    v10 = @"CACHE_DELETE_ERROR";
    v11 = v7;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    objc_claimAutoreleasedReturnValue();
    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end