@interface CacheDeleteRegister
@end

@implementation CacheDeleteRegister

uint64_t ___CacheDeleteRegister_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.cache_delete_registration_queue", 0);
  v1 = _MergedGlobals_2;
  _MergedGlobals_2 = v0;

  qword_1ED769FE8 = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

void ___CacheDeleteRegister_block_invoke_311(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [qword_1ED769FE8 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 96) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 96) + 8) + 40);
  if (v5)
  {
    if ((*(a1 + 128) & 1) != 0 || [v5 anonymous])
    {
      v6 = CDGetLogHandle("client");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v31 = [*(a1 + 32) UTF8String];
        *buf = 136315138;
        *v40 = v31;
        _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "CacheDeleteRegistration of %s: new registration is or previous registration was anonymous.", buf, 0xCu);
      }
    }

    [*(*(*(a1 + 96) + 8) + 40) suspend];
  }

  else
  {
    v7 = [CacheDeleteServiceListener cacheDeleteServiceListener:*(a1 + 32) options:*(a1 + 40)];
    v8 = *(*(a1 + 96) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [qword_1ED769FE8 setObject:*(*(*(a1 + 96) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  }

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    if (*(a1 + 128) == 1)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = *(*(a1 + 104) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = [MEMORY[0x1E695DF70] array];
    v14 = v13;
    if (*(a1 + 48))
    {
      [v13 addObject:@"PURGEABLE_ENTITLEMENT"];
    }

    if (*(a1 + 56))
    {
      [v14 addObject:@"PURGE_ENTITLEMENT"];
      [*(*(*(a1 + 112) + 8) + 40) addObject:@"PURGE"];
    }

    if (*(a1 + 64))
    {
      [v14 addObject:@"CANCEL_PURGE_ENTITLEMENT"];
    }

    if (*(a1 + 72))
    {
      [v14 addObject:@"PERIODIC_ENTITLEMENT"];
      [*(*(*(a1 + 112) + 8) + 40) addObject:@"PERIODIC"];
    }

    if (*(a1 + 80))
    {
      [v14 addObject:@"NOTIFICATION_ENTITLEMENT"];
      v15 = CDGetLogHandle("client");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        *buf = 67109634;
        *v40 = 155;
        *&v40[4] = 2112;
        *&v40[6] = v16;
        v41 = 2112;
        v42 = v17;
        _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteRegister notify for %@ with options: %@", buf, 0x1Cu);
      }

      v18 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_PURGE_NOTIFICATION"];
      if (v18)
      {
        v19 = v18;
        v20 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_PURGE_NOTIFICATION"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = *(a1 + 40);
          v37 = *(a1 + 32);
          v23 = [v22 objectForKeyedSubscript:@"CACHE_DELETE_PURGE_NOTIFICATION"];
          v38 = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

          v25 = CDGetLogHandle("client");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 32);
            *buf = 67109634;
            *v40 = 161;
            *&v40[4] = 2112;
            *&v40[6] = v26;
            v41 = 2112;
            v42 = v24;
            _os_log_impl(&dword_1BA7F1000, v25, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteRegister calling deleted for %@ with: %@", buf, 0x1Cu);
          }

          v32 = MEMORY[0x1E69E9820];
          v33 = 3221225472;
          v34 = ___CacheDeleteRegister_block_invoke_334;
          v35 = &unk_1E7F02738;
          v36 = v24;
          v27 = v24;
          CallCacheD(&v32, &__block_literal_global_336);
        }
      }
    }

    if (*(a1 + 88))
    {
      v28 = [*(a1 + 120) objectForKeyedSubscript:@"CACHE_DELETE_REQUIRED_ENTITLEMENTS"];
      if (v28)
      {
        [v14 addObjectsFromArray:v28];
      }

      v29 = *(a1 + 88);
    }

    else
    {
      v29 = 0;
    }

    [*(*(*(a1 + 96) + 8) + 40) setPurgeable:*(a1 + 48) purge:*(a1 + 56) cancel:*(a1 + 64) periodic:*(a1 + 72) notify:*(a1 + 80) callback:v29 entitlements:{v14, v32, v33, v34, v35}];
    [*(*(*(a1 + 96) + 8) + 40) resume];
  }

  else
  {
    v14 = CDGetLogHandle("client");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_ERROR, "unable to create listener", buf, 2u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void ___CacheDeleteRegister_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "CallCacheD failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void ___CacheDeleteRegister_block_invoke_341(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 40);
  v5 = a2;
  v6 = [v4 endpoint];
  v7 = *(*(a1[6] + 8) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___CacheDeleteRegister_block_invoke_2_342;
  v8[3] = &unk_1E7F02B98;
  v8[4] = a1[7];
  [v5 clientCheckin:v3 endpoint:v6 info:v7 reply:v8];
}

void ___CacheDeleteRegister_block_invoke_2_342(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CDGetLogHandle("client");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_ERROR, "Proxy check-in error: %@, serviceInfo: %@", &v9, 0x16u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void ___CacheDeleteRegister_block_invoke_344(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "Failed to register: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end