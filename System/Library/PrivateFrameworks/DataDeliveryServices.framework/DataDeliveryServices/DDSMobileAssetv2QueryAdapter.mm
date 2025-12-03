@interface DDSMobileAssetv2QueryAdapter
+ (id)maAssetQueryForddsAssetQuery:(id)query compatiblilityVersion:(int64_t)version platformVersion:(id)platformVersion internalInstall:(BOOL)install;
@end

@implementation DDSMobileAssetv2QueryAdapter

+ (id)maAssetQueryForddsAssetQuery:(id)query compatiblilityVersion:(int64_t)version platformVersion:(id)platformVersion internalInstall:(BOOL)install
{
  installCopy = install;
  v40[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  platformVersionCopy = platformVersion;
  v11 = objc_alloc(MEMORY[0x1E69B18E8]);
  assetType = [queryCopy assetType];
  v13 = [v11 initWithType:assetType];

  [v13 setDoNotBlockBeforeFirstUnlock:1];
  if (objc_opt_respondsToSelector())
  {
    [v13 setDoNotBlockOnNetworkStatus_];
    v14 = QueryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:v14 compatiblilityVersion:? platformVersion:? internalInstall:?];
    }
  }

  else
  {
    v14 = QueryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "WARNING: The version of DataDeliveryServices in this build does not set doNotBlockOnNetworkStatusSetter=YES, possibly resulting in hangs.", buf, 2u);
    }
  }

  filter = [queryCopy filter];
  filters = [filter filters];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke;
  v33 = &unk_1E86C5D38;
  v17 = v13;
  v34 = v17;
  [filters enumerateKeysAndObjectsUsingBlock:&v30];

  if (version >= 1)
  {
    v18 = [objc_opt_class() stringFromInteger:{version, v30, v31, v32, v33}];
    v19 = *MEMORY[0x1E69B1840];
    if ([v17 addKeyValuePair:*MEMORY[0x1E69B1840] with:v18])
    {
      v20 = QueryLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
      }
    }

    if (installCopy)
    {
      v21 = [objc_opt_class() stringFromInteger:version];
      if ([v17 addKeyValuePair:v19 with:v21])
      {
        v22 = QueryLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
        }
      }
    }
  }

  if (platformVersionCopy)
  {
    v40[0] = platformVersionCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v24 = [v23 mutableCopy];
    v25 = [v17 addKeyValueArray:@"_SupportedPlatforms" with:v24];

    if (v25)
    {
      v26 = QueryLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = platformVersionCopy;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        *buf = 138543618;
        v37 = @"_SupportedPlatforms";
        v38 = 2114;
        v39 = v29;
        _os_log_error_impl(&dword_1DF7C6000, v26, OS_LOG_TYPE_ERROR, "Unexpected failure adding key (%{public}@)/value (%{public}@) pair", buf, 0x16u);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v17;
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 anyObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = QueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_1();
    }

    goto LABEL_17;
  }

  if ([v6 count] == 1)
  {
    v9 = [v6 allObjects];
    v10 = [v9 firstObject];

    v11 = [v10 isEqualToString:&stru_1F5ABCB80];
    v12 = *(a1 + 32);
    if (v11)
    {
      if ([v12 addKeyValueNull:v5])
      {
        v13 = QueryLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else if ([v12 addKeyValuePair:v5 with:v10])
    {
      v13 = QueryLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        +[DDSMobileAssetv2QueryAdapter maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:];
      }

LABEL_14:
    }

LABEL_17:

    goto LABEL_18;
  }

  if ([v6 count] < 2)
  {
    v10 = QueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_2(v5, v10);
    }

    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  v15 = [v6 allObjects];
  v16 = [v15 mutableCopy];
  [v14 addKeyValueArray:v5 with:v16];

LABEL_18:
}

+ (void)maAssetQueryForddsAssetQuery:compatiblilityVersion:platformVersion:internalInstall:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1DF7C6000, v0, v1, "Unexpected failure adding key (%{public}@)/value (%{public}@) pair");
  v2 = *MEMORY[0x1E69E9840];
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Skipping key: %{public}@ values: %{public}@ (is this the region dict? that's handled elsewhere)", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __115__DDSMobileAssetv2QueryAdapter_maAssetQueryForddsAssetQuery_compatiblilityVersion_platformVersion_internalInstall___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "No values specified for key (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end