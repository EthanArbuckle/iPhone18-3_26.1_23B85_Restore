@interface MUPlaceExtensionDiscoveryManager
- (MUPlaceExtensionDiscoveryManager)initWithExtensionDataItems:(id)a3 amsResultProvider:(id)a4;
- (id)discoveryResultForDataItem:(id)a3;
- (void)_loadAppLockupExtensionGroupsUsingAppIdentifiers:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_performExtensionDiscoveryUsingExtensionGroups:(id)a3 usingAppIdentifiers:(id)a4 completion:(id)a5;
- (void)performExtensionDiscoveryWithOptions:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
@end

@implementation MUPlaceExtensionDiscoveryManager

- (void)_performExtensionDiscoveryUsingExtensionGroups:(id)a3 usingAppIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696F4C0] lookupPolicyForRestaurantReservationExtensionWithContainingAppIdentifiers:v9];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E696F4C0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__MUPlaceExtensionDiscoveryManager__performExtensionDiscoveryUsingExtensionGroups_usingAppIdentifiers_completion___block_invoke;
  v17[3] = &unk_1E821A848;
  v13 = v10;
  v19 = v13;
  v14 = v8;
  v18 = v14;
  objc_copyWeak(&v20, &location);
  v15 = [v12 managerWithExtensionLookupPolicy:v11 updateHandler:v17];
  extensionManager = self->_extensionManager;
  self->_extensionManager = v15;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __114__MUPlaceExtensionDiscoveryManager__performExtensionDiscoveryUsingExtensionGroups_usingAppIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetPlaceExtensionDiscoveryManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to discover the extension with error %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if ([v5 count])
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v31 = a1;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v39;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v14 = v5;
            v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v35;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v35 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [v13 addExtensionIfMatchedAppIdentifier:{*(*(&v34 + 1) + 8 * j), v31}];
                }

                v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v16);
            }

            v19 = [v13 bestExtensionToUse];
            if (v19)
            {
              [v33 addObject:v19];
              v20 = WeakRetained[3];
              v21 = [v19 _containingAppIdentifer];
              [v20 setObject:v19 forKey:v21];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v10);
      }

      if ([v33 count])
      {
        v22 = *(v31 + 40);
        v23 = [*(v31 + 32) copy];
        (*(v22 + 16))(v22, v23, 0);
      }

      else
      {
        v27 = MUGetPlaceExtensionDiscoveryManagerLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5620000, v27, OS_LOG_TYPE_INFO, "We have no non-ui extensions, so early return", buf, 2u);
        }

        v28 = MEMORY[0x1E696ABC0];
        v29 = GEOErrorDomain();
        v23 = [v28 errorWithDomain:v29 code:-8 userInfo:0];

        (*(*(v31 + 40) + 16))(*(v31 + 40), 0, v23);
      }

      v6 = 0;
    }
  }

  else
  {
    v24 = MUGetPlaceExtensionDiscoveryManagerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_INFO, "There are no extensions installed.  Early return.", buf, 2u);
    }

    v25 = *(a1 + 40);
    v26 = [*(a1 + 32) copy];
    (*(v25 + 16))(v25, v26, 0);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_loadAppLockupExtensionGroupsUsingAppIdentifiers:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  amsResultProvider = self->_amsResultProvider;
  v12 = [v8 copy];
  v13 = MEMORY[0x1E69E96A0];
  v14 = MEMORY[0x1E69E96A0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104__MUPlaceExtensionDiscoveryManager__loadAppLockupExtensionGroupsUsingAppIdentifiers_options_completion___block_invoke;
  v17[3] = &unk_1E821A848;
  v15 = v10;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  v16 = v8;
  v18 = v16;
  [(MUAMSResultProvider *)amsResultProvider fetchResultsForBundleIds:v12 options:v9 callbackQueue:v13 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __104__MUPlaceExtensionDiscoveryManager__loadAppLockupExtensionGroupsUsingAppIdentifiers_options_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __104__MUPlaceExtensionDiscoveryManager__loadAppLockupExtensionGroupsUsingAppIdentifiers_options_completion___block_invoke_2;
      v8[3] = &unk_1E8219C30;
      v9 = *(a1 + 32);
      v7 = MUMap(v5, v8);
      (*(*(a1 + 40) + 16))();
    }
  }
}

_MUExtensionGroup *__104__MUPlaceExtensionDiscoveryManager__loadAppLockupExtensionGroupsUsingAppIdentifiers_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 iOSBundleIdentifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4 && ([v3 iOSBundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = [_MUExtensionGroup alloc];
    v9 = [v3 iOSBundleIdentifier];
    v10 = [(_MUExtensionGroup *)v8 initWithAppIdentifier:v9];

    [(_MUExtensionGroup *)v10 setAppStoreApp:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)performExtensionDiscoveryWithOptions:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v9)
    {
      v9 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
    }

    if ([(NSMutableDictionary *)self->_extensionsByAppIds count])
    {
      v12 = [(NSArray *)self->_extensionDiscoveryResults copy];
      v10[2](v10, v12, 0);
    }

    else
    {
      v13 = MUMap(self->_extensionDataItems, &__block_literal_global_16734);
      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_2;
      v15[3] = &unk_1E821A7D0;
      v9 = v9;
      v16 = v9;
      v18 = v10;
      objc_copyWeak(&v19, &location);
      v14 = v13;
      v17 = v14;
      [(MUPlaceExtensionDiscoveryManager *)self _loadAppLockupExtensionGroupsUsingAppIdentifiers:v14 options:v8 completion:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_3;
    block[3] = &unk_1E821A618;
    v18 = *(a1 + 48);
    v17 = v6;
    dispatch_async(v7, block);

    WeakRetained = v18;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_4;
      v10[3] = &unk_1E8219C08;
      v9 = *(a1 + 40);
      v11 = *(a1 + 32);
      v14 = *(a1 + 48);
      v12 = 0;
      objc_copyWeak(&v15, (a1 + 56));
      v13 = WeakRetained;
      [WeakRetained _performExtensionDiscoveryUsingExtensionGroups:v5 usingAppIdentifiers:v9 completion:v10];
      objc_destroyWeak(&v15);
    }
  }
}

void __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_5;
    block[3] = &unk_1E821A618;
    v18 = *(a1 + 56);
    v17 = *(a1 + 40);
    dispatch_async(v6, block);

    v7 = v18;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_6;
      v15[3] = &unk_1E8219BE0;
      v15[4] = WeakRetained;
      v9 = MUMap(v5, v15);
      v10 = v7[4];
      v7[4] = v9;

      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_7;
      v13[3] = &unk_1E821A618;
      v12 = *(a1 + 56);
      v13[4] = *(a1 + 48);
      v14 = v12;
      dispatch_async(v11, v13);
    }
  }
}

MUPlaceExtensionDiscoveryResult *__98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MUPlaceExtensionDiscoveryResult alloc];
  v5 = [v3 bestExtensionToUse];
  v6 = [v3 appStoreApp];
  v7 = *(*(a1 + 32) + 16);
  v8 = [v3 appIdentifier];

  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [(MUPlaceExtensionDiscoveryResult *)v4 initWithExtension:v5 appStoreApp:v6 vendorIdentifier:v9];

  return v10;
}

void __98__MUPlaceExtensionDiscoveryManager_performExtensionDiscoveryWithOptions_callbackQueue_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)discoveryResultForDataItem:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 appBundleIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_extensionDiscoveryResults;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 vendorIdentifier];
          v13 = [v4 vendorIdentifier];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (MUPlaceExtensionDiscoveryManager)initWithExtensionDataItems:(id)a3 amsResultProvider:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = MUPlaceExtensionDiscoveryManager;
  v9 = [(MUPlaceExtensionDiscoveryManager *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extensionDataItems, a3);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extensionsByAppIds = v10->_extensionsByAppIds;
    v10->_extensionsByAppIds = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    vendorIdsByAppIds = v10->_vendorIdsByAppIds;
    v10->_vendorIdsByAppIds = v13;

    objc_storeStrong(&v10->_amsResultProvider, a4);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 vendorIdentifier];
          v22 = v10->_vendorIdsByAppIds;
          v23 = [v20 appBundleIdentifier];
          [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

@end