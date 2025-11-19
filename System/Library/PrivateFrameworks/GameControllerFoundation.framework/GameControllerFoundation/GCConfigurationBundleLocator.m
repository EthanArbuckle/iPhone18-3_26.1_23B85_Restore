@interface GCConfigurationBundleLocator
@end

@implementation GCConfigurationBundleLocator

void __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _os_activity_create(&dword_1D2C3B000, "[Config Bundle Locator/Source/FS] Did Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v3.opaque[0] = 0;
    v3.opaque[1] = 0;
    os_activity_scope_enter(v2, &v3);
    if ([(_GCConfigurationBundleLocator *)WeakRetained _onqueue_filesystem_updateBundles])
    {
      [(_GCConfigurationBundleLocator *)WeakRetained _onqueue_rebuildBundleCollection];
    }

    os_activity_scope_leave(&v3);
  }
}

void __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _os_activity_create(&dword_1D2C3B000, "[Config Bundle Locator/Source/Asset] Did Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_2;
    block[3] = &unk_1E8413DA0;
    v5 = WeakRetained;
    dispatch_async_and_wait(v3, block);

    os_activity_scope_leave(&state);
  }
}

void __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_2(uint64_t a1)
{
  if ([(_GCConfigurationBundleLocator *)*(a1 + 32) _onqueue_asset_updateBundles])
  {
    v2 = *(a1 + 32);

    [(_GCConfigurationBundleLocator *)v2 _onqueue_rebuildBundleCollection];
  }
}

void __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_2_13;
    block[3] = &unk_1E8413DA0;
    v5 = WeakRetained;
    dispatch_async_and_wait(v3, block);
  }
}

void __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_2_13(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1D2C3B000, "[Config Bundle Locator] Refresh Bundles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  [(_GCConfigurationBundleLocator *)*(a1 + 32) _onqueue_loadBundlesIfNeeded];
  os_activity_scope_leave(&v3);
}

id __45___GCConfigurationBundleLocator_fetchBundles__block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v4 = atomic_load(a2);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    block[7] = v2;
    v12 = v3;
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __45___GCConfigurationBundleLocator_fetchBundles__block_invoke_cold_1(v8);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___GCConfigurationBundleLocator_fetchBundles__block_invoke_18;
    block[3] = &unk_1E8413DA0;
    block[4] = v9;
    dispatch_async_and_wait(v10, block);
    v5 = *(*(a1 + 32) + 32);
  }

  return v5;
}

void __45___GCConfigurationBundleLocator_fetchBundles__block_invoke_18(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1D2C3B000, "[Config Bundle Locator] Fetch Bundles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  [(_GCConfigurationBundleLocator *)*(a1 + 32) _onqueue_loadBundlesIfNeeded];
  os_activity_scope_leave(&v3);
}

void __65___GCConfigurationBundleLocator__onqueue_rebuildBundleCollection__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"GCConfigurationBundlesDidChangeNotification" object:*(a1 + 32)];
}

_GCConfigurationBundle *__66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_1(v4, v3);
  }

  v5 = [_GCConfigurationBundle alloc];
  v6 = [v3 path];
  v15 = 0;
  v7 = [(_GCConfigurationBundle *)v5 initWithPath:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = v7;
    goto LABEL_5;
  }

  v11 = [v8 domain];
  if ([v11 isEqual:0x1F4E1F970])
  {
    v12 = [v8 code];

    if (v12 == 2)
    {
      v13 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_3(v13, v3);
      }

      goto LABEL_5;
    }
  }

  else
  {
  }

  v14 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_2(v14, v3, v8);
  }

LABEL_5:

  return v7;
}

_GCConfigurationBundle *__61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0;
  [v3 getResourceValue:&v20 forKey:@"NSURLAssetKey" error:0];
  v4 = v20;
  v5 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke_cold_1(v5);
  }

  v6 = [_GCConfigurationBundle alloc];
  v7 = [v3 path];
  v19 = 0;
  v8 = [(_GCConfigurationBundle *)v6 initWithPath:v7 error:&v19];
  v9 = v19;

  if (v8)
  {
    v10 = v8;
    goto LABEL_5;
  }

  v13 = [v9 domain];
  if ([v13 isEqual:0x1F4E1F970])
  {
    v14 = [v9 code];

    if (v14 == 2)
    {
      v15 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke_cold_2(v15);
      }

      goto LABEL_5;
    }
  }

  else
  {
  }

  v16 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = v16;
    v18 = [v3 lastPathComponent];
    *buf = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v4;
    v25 = 2114;
    v26 = v9;
    _os_log_fault_impl(&dword_1D2C3B000, v17, OS_LOG_TYPE_FAULT, "[Source/Asset] Failed to load bundle '%{public}@' in asset '%@': %{public}@", buf, 0x20u);
  }

LABEL_5:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_2(&dword_1D2C3B000, v5, v6, "[Source/FS] (Re)Loading bundle at '%@'.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_2_5() path];
  OUTLINED_FUNCTION_2_0();
  v9 = 2114;
  v10 = a3;
  _os_log_fault_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_FAULT, "[Source/FS] Failed to load bundle at '%@': %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke_cold_3(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_2(&dword_1D2C3B000, v5, v6, "[Source/FS] Skipping bundle at '%@'.  Incompatible with host.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_5() lastPathComponent];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_3(&dword_1D2C3B000, v4, v5, "[Source/Asset] (Re)Loading bundle '%{public}@' in asset '%@'.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_5() lastPathComponent];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_3(&dword_1D2C3B000, v4, v5, "[Source/Asset] Skipping bundle '%{public}@' in asset '%@'.  Incompatible with host.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end