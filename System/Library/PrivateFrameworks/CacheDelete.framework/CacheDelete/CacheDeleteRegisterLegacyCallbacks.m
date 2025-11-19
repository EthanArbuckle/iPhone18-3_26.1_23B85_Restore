@interface CacheDeleteRegisterLegacyCallbacks
@end

@implementation CacheDeleteRegisterLegacyCallbacks

uint64_t ___CacheDeleteRegisterLegacyCallbacks_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (*(v2 + 16))();
  }

  else
  {
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v14 = v10;
      _os_log_error_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_ERROR, "%@ has a PURGEABLE property, but the callback is NULL", buf, 0xCu);
    }

    v3 = 0;
  }

  v5 = getRootVolume();
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{v3, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v5}];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:2];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ___CacheDeleteRegisterLegacyCallbacks_block_invoke_348(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 longLongValue];
    if (v6 == -1)
    {
      v7 = CDGetLogHandle("client");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_ERROR, "Boot volume not included in info dict, returning nil", buf, 2u);
      }

      v8 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v23 = 445;
      *&v23[4] = 2112;
      *&v23[6] = v5;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "%d num is not a number: %@", buf, 0x12u);
    }

    v6 = 0;
  }

  v10 = *(a1 + 32);
  v11 = CDGetLogHandle("client");
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138412802;
      *v23 = v13;
      *&v23[8] = 2048;
      *&v23[10] = v6;
      v24 = 1024;
      v25 = a2;
      _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "calling %@'s purge with %lld at urgency %d", buf, 0x1Cu);
    }

    v14 = (*(*(a1 + 32) + 16))();
    v12 = CDGetLogHandle("client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138412546;
      *v23 = v15;
      *&v23[8] = 2048;
      *&v23[10] = v14;
      _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "%@ returned: %lld", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      *v23 = v19;
      _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "%@ has a PURGE property, but the callback is NULL", buf, 0xCu);
    }

    v14 = 0;
  }

  v7 = getRootVolume();
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{v14, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v7}];
  v21[1] = v16;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:2];

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ___CacheDeleteRegisterLegacyCallbacks_block_invoke_349(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v6 = [v5 longLongValue];
  if (v6 == -1)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (*(v8 + 16))(v8, v7, a2);
    }

    else
    {
      v11 = CDGetLogHandle("client");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        *buf = 138412290;
        v20 = v16;
        _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "%@ has periodic property in CacheDelete.plist, but a NULL callback", buf, 0xCu);
      }

      v9 = 0;
    }

    v12 = getRootVolume();
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{v9, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v12}];
    v18[1] = v13;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:2];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

@end