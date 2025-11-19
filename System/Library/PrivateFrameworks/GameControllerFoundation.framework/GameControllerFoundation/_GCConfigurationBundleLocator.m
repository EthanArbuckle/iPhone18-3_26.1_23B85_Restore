@interface _GCConfigurationBundleLocator
- (_GCConfigurationBundleLocator)init;
- (_GCConfigurationBundleLocator)initWithConfigurationType:(id)a3 provider:(id)a4;
- (id)fetchBundles;
- (uint64_t)_onqueue_asset_updateBundles;
- (uint64_t)_onqueue_filesystem_updateBundles;
- (void)_onqueue_loadBundlesIfNeeded;
- (void)_onqueue_rebuildBundleCollection;
- (void)dealloc;
@end

@implementation _GCConfigurationBundleLocator

- (_GCConfigurationBundleLocator)initWithConfigurationType:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = _GCConfigurationBundleLocator;
  v8 = [(_GCConfigurationBundleLocator *)&v40 init];
  v9 = [v6 copy];
  v10 = *(v8 + 11);
  *(v8 + 11) = v9;

  v11 = gc_log_create_configuration([v6 UTF8String]);
  v12 = *(v8 + 1);
  *(v8 + 1) = v11;

  v13 = GCLookupDispatchWorkloop(v7, 1);
  v14 = *(v8 + 2);
  *(v8 + 2) = v13;

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ConfigBundleLocator:%@", v6];
  v16 = dispatch_queue_create([v15 UTF8String], 0);
  v17 = *(v8 + 3);
  *(v8 + 3) = v16;

  v18 = *(v8 + 4);
  *(v8 + 4) = MEMORY[0x1E695E0F0];

  objc_initWeak(&location, v8);
  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = GCLookupService(v7, &unk_1F4E38018, 0, 0);
  v21 = *(v8 + 6);
  *(v8 + 6) = v20;

  if (*(v8 + 6))
  {
    v22 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v8 + 2));
    v23 = *(v8 + 5);
    *(v8 + 5) = v22;

    v24 = *(v8 + 5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke;
    handler[3] = &unk_1E8414C58;
    objc_copyWeak(&v38, &location);
    dispatch_source_set_event_handler(v24, handler);
    dispatch_activate(*(v8 + 5));
    [v19 addObserver:v8 selector:sel__filesystemDidChange_ name:@"GCConfigurationBundleSourceBundlesDidChangeNotification" object:*(v8 + 6)];
    objc_destroyWeak(&v38);
  }

  else if (os_variant_has_internal_diagnostics())
  {
    [_GCConfigurationBundleLocator initWithConfigurationType:? provider:?];
  }

  v25 = GCLookupService(v7, &unk_1F4E421F0, 0, 0);
  v26 = *(v8 + 9);
  *(v8 + 9) = v25;

  if (*(v8 + 9))
  {
    v27 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v8 + 2));
    v28 = *(v8 + 8);
    *(v8 + 8) = v27;

    v29 = *(v8 + 8);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_9;
    v35[3] = &unk_1E8414C58;
    objc_copyWeak(&v36, &location);
    dispatch_source_set_event_handler(v29, v35);
    dispatch_activate(*(v8 + 8));
    [v19 addObserver:v8 selector:sel__assetDidChange_ name:@"GCConfigurationBundleSourceBundlesDidChangeNotification" object:*(v8 + 9)];
    objc_destroyWeak(&v36);
  }

  else if (os_variant_has_internal_diagnostics())
  {
    [_GCConfigurationBundleLocator initWithConfigurationType:? provider:?];
  }

  v30 = *(v8 + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___GCConfigurationBundleLocator_initWithConfigurationType_provider___block_invoke_12;
  block[3] = &unk_1E8414C58;
  objc_copyWeak(&v34, &location);
  v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, -10, block);
  dispatch_async(v30, v31);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  return v8;
}

- (_GCConfigurationBundleLocator)init
{
  [(_GCConfigurationBundleLocator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = v3;
  if (self->_filesystemSource)
  {
    [v3 removeObserver:self name:@"GCConfigurationBundleSourceBundlesDidChangeNotification" object:?];
    dispatch_source_cancel(self->_filesystemChangedEventSource);
  }

  if (self->_assetSource)
  {
    [v4 removeObserver:self name:@"GCConfigurationBundleSourceBundlesDidChangeNotification" object:?];
    dispatch_source_cancel(self->_assetsChangedEventSource);
  }

  v5.receiver = self;
  v5.super_class = _GCConfigurationBundleLocator;
  [(_GCConfigurationBundleLocator *)&v5 dealloc];
}

- (id)fetchBundles
{
  v4 = objc_getProperty(self, a2, 56, 1);
  v5 = objc_getProperty(self, a2, 80, 1);
  v6 = objc_getProperty(self, a2, 32, 1);
  v7 = v6;
  if (self->_filesystemSource)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || self->_assetSource && !v5 || ![v6 count])
  {
    v10 = [[GCOperation alloc] initOnQueue:self->_workloop withOptions:256];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___GCConfigurationBundleLocator_fetchBundles__block_invoke;
    v12[3] = &unk_1E8414C80;
    v12[4] = self;
    [v10 setSyncBlock:v12];
    v9 = [v10 activate];
  }

  else
  {
    v9 = [GCFuture futureWithResult:v7];
  }

  return v9;
}

- (uint64_t)_onqueue_filesystem_updateBundles
{
  v2 = a1;
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v3 = *(v2 + 48);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 configurationBundleURLsForType:*(v2 + 88)];
      if ([v5 waitUntilFinished] == 1)
      {
        v6 = *(v2 + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v17 = v6;
          v18 = [OUTLINED_FUNCTION_2_5() error];
          *buf = 138543362;
          v26 = v18;
          _os_log_error_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_ERROR, "[Source/FS] Error fetching bundle URLs: %{public}@", buf, 0xCu);
        }

        v2 = 0;
      }

      else
      {
        v7 = [v5 result];
        OUTLINED_FUNCTION_7_0();
        v21 = 3221225472;
        v22 = __66___GCConfigurationBundleLocator__onqueue_filesystem_updateBundles__block_invoke;
        v23 = &unk_1E8414CA8;
        v24 = v2;
        [v8 gc_arrayByTransformingElementsWithOptions:1 usingBlock:&v20];
        objc_claimAutoreleasedReturnValue();
        if (OUTLINED_FUNCTION_7_2())
        {
          HIDWORD(v26) = HIDWORD(v1);
          OUTLINED_FUNCTION_3_3(&dword_1D2C3B000, v9, v10, "[Source/FS] New bundles: %@.", v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, 2u);
        }

        if (([v1 count] || objc_msgSend(*(v2 + 56), "count")) && (objc_msgSend(v1, "isEqual:", *(v2 + 56)) & 1) == 0)
        {
          objc_setProperty_atomic(v2, sel__onqueue_filesystem_updateBundles, v1, 56);
          v2 = 1;
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_onqueue_rebuildBundleCollection
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_getProperty(a1, sel__onqueue_rebuildBundleCollection, 56, 1);
    v3 = objc_getProperty(a1, sel__onqueue_rebuildBundleCollection, 80, 1);
    v4 = objc_opt_new();
    v5 = v4;
    if (v3)
    {
      [v4 addObjectsFromArray:v3];
    }

    if (v2)
    {
      [v5 addObjectsFromArray:v2];
    }

    v6 = a1[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      *buf = 134217984;
      v17 = [v5 count];
      _os_log_impl(&dword_1D2C3B000, v7, OS_LOG_TYPE_INFO, "Now tracking %llu bundles.", buf, 0xCu);
    }

    objc_setProperty_atomic(a1, sel__onqueue_rebuildBundleCollection, v5, 32);
    v8 = a1[2];
    OUTLINED_FUNCTION_7_0();
    v12 = 3221225472;
    v13 = __65___GCConfigurationBundleLocator__onqueue_rebuildBundleCollection__block_invoke;
    v14 = &unk_1E8413DA0;
    v15 = a1;
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_onqueue_asset_updateBundles
{
  v2 = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v3 = *(v2 + 72);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 configurationBundleURLsForType:*(v2 + 88)];
      if ([v5 waitUntilFinished] == 1)
      {
        v6 = *(v2 + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v17 = v6;
          v18 = [OUTLINED_FUNCTION_2_5() error];
          *buf = 138412546;
          v26 = v4;
          v27 = 2114;
          v28 = v18;
          _os_log_error_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_ERROR, "[Source/Asset] Error fetching bundle URLs from '%@': %{public}@", buf, 0x16u);
        }

        v2 = 0;
      }

      else
      {
        v7 = [v5 result];
        OUTLINED_FUNCTION_7_0();
        v21 = 3221225472;
        v22 = __61___GCConfigurationBundleLocator__onqueue_asset_updateBundles__block_invoke;
        v23 = &unk_1E8414CA8;
        v24 = v2;
        [v8 gc_arrayByTransformingElementsWithOptions:1 usingBlock:&v20];
        objc_claimAutoreleasedReturnValue();
        if (OUTLINED_FUNCTION_7_2())
        {
          HIDWORD(v26) = HIDWORD(v1);
          OUTLINED_FUNCTION_3_3(&dword_1D2C3B000, v9, v10, "[Source/Asset] New configuration bundles: %@.", v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, 2u);
        }

        if (([v1 count] || objc_msgSend(*(v2 + 80), "count")) && (objc_msgSend(v1, "isEqual:", *(v2 + 80)) & 1) == 0)
        {
          objc_setProperty_atomic(v2, sel__onqueue_asset_updateBundles, v1, 80);
          v2 = 1;
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_onqueue_loadBundlesIfNeeded
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    if (*(a1 + 48) && !*(a1 + 56))
    {
      updated = [(_GCConfigurationBundleLocator *)a1 _onqueue_filesystem_updateBundles];
    }

    else
    {
      updated = 0;
    }

    if (*(a1 + 72) && !*(a1 + 80))
    {
      if (((updated | [(_GCConfigurationBundleLocator *)a1 _onqueue_asset_updateBundles]) & 1) == 0)
      {
        return;
      }
    }

    else if (!updated)
    {
      return;
    }

    [(_GCConfigurationBundleLocator *)a1 _onqueue_rebuildBundleCollection];
  }
}

- (void)initWithConfigurationType:(os_log_t *)a1 provider:.cold.1(os_log_t *a1)
{
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_1(&dword_1D2C3B000, v1, v2, "No file system source.", v3, v4, v5, v6, 0);
  }
}

- (void)initWithConfigurationType:(os_log_t *)a1 provider:.cold.2(os_log_t *a1)
{
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_1(&dword_1D2C3B000, v1, v2, "No asset source.", v3, v4, v5, v6, 0);
  }
}

@end