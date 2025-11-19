@interface CAMTransientDataSource
- (BOOL)_removeAssetWithUUID:(id)a3;
- (BOOL)isEmpty;
- (CAMTransientDataSource)init;
- (NSSet)existingBurstIdentifiers;
- (NSString)description;
- (id)existingAssetForUUID:(id)a3;
- (id)existingAssetUUIDs;
- (id)existingRepresentativeAssetForBurstIdentifier:(id)a3;
- (id)insertAssetWithConvertible:(id)a3;
- (id)transientAssetMapping;
- (id)transientBurstMapping;
- (id)uuids;
- (void)_notifyObserversOfDataSourceChange;
- (void)enqueuePendingBurstAssetWithConvertible:(id)a3;
- (void)performChanges:(id)a3;
- (void)processPendingBurstAssets;
- (void)removeAllAssets;
- (void)removeAssetWithUUID:(id)a3;
- (void)removeRepresentativeAssetForBurstIdentifier:(id)a3;
- (void)updateAssetWithConvertible:(id)a3;
@end

@implementation CAMTransientDataSource

- (CAMTransientDataSource)init
{
  v17.receiver = self;
  v17.super_class = CAMTransientDataSource;
  v2 = [(CAMTransientDataSource *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->__observers;
    v2->__observers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetUUIDs = v2->__assetUUIDs;
    v2->__assetUUIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsByUUID = v2->__assetsByUUID;
    v2->__assetsByUUID = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    representativeAssetsByBurstIdentifier = v2->__representativeAssetsByBurstIdentifier;
    v2->__representativeAssetsByBurstIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enqueuedBurstAssetUUIDByBurstIdentifier = v2->__enqueuedBurstAssetUUIDByBurstIdentifier;
    v2->__enqueuedBurstAssetUUIDByBurstIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enqueuedBurstConvertiblesByAssetUUID = v2->__enqueuedBurstConvertiblesByAssetUUID;
    v2->__enqueuedBurstConvertiblesByAssetUUID = v13;

    v15 = v2;
  }

  return v2;
}

- (void)_notifyObserversOfDataSourceChange
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CAMTransientDataSource *)self _nestedPerformChanges]< 1)
  {
    v4 = [(CAMTransientDataSource *)self _observers];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) transientDataSourceDidChange:self];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [(CAMTransientDataSource *)self _pendingChangeNotifications]+ 1;

    [(CAMTransientDataSource *)self _setPendingChangeNotifications:v3];
  }
}

- (id)uuids
{
  v2 = [(CAMTransientDataSource *)self _assetUUIDs];
  v3 = [v2 copy];

  return v3;
}

- (id)transientAssetMapping
{
  v2 = [(CAMTransientDataSource *)self _assetsByUUID];
  v3 = [v2 copy];

  return v3;
}

- (id)transientBurstMapping
{
  v2 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMTransientDataSource *)self _assetUUIDs];
  v6 = [(CAMTransientDataSource *)self _assetsByUUID];
  v7 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
  v8 = [(CAMTransientDataSource *)self _enqueuedBurstAssetUUIDByBurstIdentifier];
  v9 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
  v10 = [v3 stringWithFormat:@"<%@ assetUUIDs:%@, assetsByUUID:%@, representativeAssetsByBurstIDs:%@, enquedBurstAssetUUIDByBurstID:%@, enqueuedBurstConvertiblesByAssetUUID:%@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEmpty
{
  v2 = [(CAMTransientDataSource *)self _assetUUIDs];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)existingAssetUUIDs
{
  v2 = [(CAMTransientDataSource *)self _assetUUIDs];
  v3 = [v2 copy];

  return v3;
}

- (id)existingAssetForUUID:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientDataSource *)self _assetsByUUID];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)existingRepresentativeAssetForBurstIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)insertAssetWithConvertible:(id)a3
{
  v4 = a3;
  v5 = [[CAMTransientAsset alloc] initWithAsset:0 convertible:v4];

  v6 = [(CAMTransientAsset *)v5 uuid];
  v7 = [(CAMTransientAsset *)v5 burstIdentifier];
  v8 = [(CAMTransientDataSource *)self _assetUUIDs];
  v9 = [(CAMTransientDataSource *)self _assetsByUUID];
  [v8 addObject:v6];
  [v9 setObject:v5 forKey:v6];
  if (v7)
  {
    v10 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
    [v10 setObject:v5 forKey:v7];
  }

  if ([(CAMTransientAsset *)v5 mediaType]== 1)
  {
    v11 = @"still image";
  }

  else
  {
    v12 = [(CAMTransientAsset *)v5 mediaType];
    v11 = @"unknown";
    if (v12 == 2)
    {
      v11 = @"video";
    }
  }

  v13 = v11;
  v14 = os_log_create("com.apple.camera", "CameraRoll");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [CAMTransientDataSource insertAssetWithConvertible:];
  }

  [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];
  objc_initWeak(&location, self);
  v15 = dispatch_time(0, 300000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CAMTransientDataSource_insertAssetWithConvertible___block_invoke;
  block[3] = &unk_1E76F7DC0;
  objc_copyWeak(&v20, &location);
  v19 = v6;
  v16 = v6;
  dispatch_after(v15, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v5;
}

void __53__CAMTransientDataSource_insertAssetWithConvertible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeAssetWithUUID:*(a1 + 32)];
}

- (void)updateAssetWithConvertible:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 burstIdentifier];
  v7 = [(CAMTransientDataSource *)self existingAssetForUUID:v5];
  v8 = [(CAMTransientDataSource *)self existingRepresentativeAssetForBurstIdentifier:v6];
  v9 = [v8 uuid];
  if (v7 | v8)
  {
    if (v8 && ([v8 uuid], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v5), v10, (v11 & 1) == 0))
    {
      v12 = [v8 creationDate];
      v19 = [v4 captureDate];
      [(CAMTransientAsset *)v12 timeIntervalSinceDate:v19];
      if (v20 >= 0.0)
      {
        v22 = os_log_create("com.apple.camera", "CameraRoll");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(CAMTransientDataSource *)v5 updateAssetWithConvertible:v22, v23, v24, v25, v26, v27, v28];
        }
      }

      else
      {
        [(CAMTransientDataSource *)self removeAssetWithUUID:v9];
        v21 = [(CAMTransientDataSource *)self insertAssetWithConvertible:v4];
      }
    }

    else
    {
      v30 = v9;
      v12 = [[CAMTransientAsset alloc] initWithAsset:v7 convertible:v4];
      v13 = [(CAMTransientAsset *)v12 uuid];
      v14 = [(CAMTransientDataSource *)self _assetsByUUID];
      v29 = v13;
      [v14 setObject:v12 forKey:v13];
      if ([(CAMTransientAsset *)v12 mediaType]== 1)
      {
        v15 = @"still image";
      }

      else
      {
        v16 = [(CAMTransientAsset *)v12 mediaType];
        v15 = @"unknown";
        if (v16 == 2)
        {
          v15 = @"video";
        }
      }

      v17 = v15;
      v18 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CAMTransientDataSource updateAssetWithConvertible:];
      }

      [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];
      v9 = v30;
    }
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEBUG))
    {
      [CAMTransientDataSource updateAssetWithConvertible:?];
    }
  }
}

- (BOOL)_removeAssetWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientDataSource *)self existingAssetForUUID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 burstIdentifier];
    v8 = [(CAMTransientDataSource *)self _assetUUIDs];
    v9 = [(CAMTransientDataSource *)self _assetsByUUID];
    v10 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
    [v8 removeObject:v4];
    [v9 removeObjectForKey:v4];
    [v10 removeObjectForKey:v4];
    if (v7)
    {
      v11 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
      [v11 removeObjectForKey:v7];
      v12 = [(CAMTransientDataSource *)self _enqueuedBurstAssetUUIDByBurstIdentifier];
      [v12 removeObjectForKey:v7];
    }

    v13 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(CAMTransientDataSource *)v4 _removeAssetWithUUID:v13, v14, v15, v16, v17, v18, v19];
    }

LABEL_10:
    goto LABEL_11;
  }

  v7 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
  v20 = [v7 objectForKey:v4];

  if (v20)
  {
    [v7 removeObjectForKey:v4];
    v8 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(CAMTransientDataSource *)v4 _removeAssetWithUUID:v8, v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v6 != 0;
}

- (void)removeAllAssets
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CAMTransientDataSource *)self _assetsByUUID];
  v4 = [v3 allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [(CAMTransientDataSource *)self _removeAssetWithUUID:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
    if (v7)
    {
      [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];
    }
  }
}

- (void)removeAssetWithUUID:(id)a3
{
  if ([(CAMTransientDataSource *)self _removeAssetWithUUID:a3])
  {

    [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];
  }
}

- (NSSet)existingBurstIdentifiers
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(CAMTransientDataSource *)self _representativeAssetsByBurstIdentifier];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  v7 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CAMTransientDataSource_existingBurstIdentifiers__block_invoke;
  v10[3] = &unk_1E76FEEE0;
  v8 = v6;
  v11 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void __50__CAMTransientDataSource_existingBurstIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 firstObject];
  v4 = *(a1 + 32);
  v5 = [v6 burstIdentifier];
  [v4 addObject:v5];
}

- (void)removeRepresentativeAssetForBurstIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientDataSource *)self existingRepresentativeAssetForBurstIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 uuid];
    [(CAMTransientDataSource *)self _removeAssetWithUUID:v7];
  }

  else
  {
    v7 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
    v22 = 0;
    v23[0] = &v22;
    v23[1] = 0x3032000000;
    v23[2] = __Block_byref_object_copy__36;
    v23[3] = __Block_byref_object_dispose__36;
    v24 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __70__CAMTransientDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke;
    v19 = &unk_1E76FEF08;
    v20 = v4;
    v21 = &v22;
    [v7 enumerateKeysAndObjectsUsingBlock:&v16];
    v8 = [v7 objectForKey:{*(v23[0] + 40), v16, v17, v18, v19}];

    if (v8)
    {
      [v7 removeObjectForKey:*(v23[0] + 40)];
      v9 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(CAMTransientDataSource *)v23 removeRepresentativeAssetForBurstIdentifier:v9, v10, v11, v12, v13, v14, v15];
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];
}

void __70__CAMTransientDataSource_removeRepresentativeAssetForBurstIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [a3 firstObject];
  v9 = [v8 burstIdentifier];
  v10 = v9;
  if (v8 && [v9 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)enqueuePendingBurstAssetWithConvertible:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 burstIdentifier];
  if (v6)
  {
    v7 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
    v8 = [(CAMTransientDataSource *)self _enqueuedBurstAssetUUIDByBurstIdentifier];
    v9 = [v8 objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:v5])
      {
LABEL_11:
        v12 = [v7 objectForKey:v5];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v7 setObject:v12 forKey:v5];
        }

        [v12 addObject:v4];

        goto LABEL_14;
      }

      [v8 setObject:v5 forKey:v6];
      [v7 removeObjectForKey:v10];
    }

    else
    {
      [v8 setObject:v5 forKey:v6];
    }

    v11 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CAMTransientDataSource enqueuePendingBurstAssetWithConvertible:];
    }

    goto LABEL_11;
  }

  v7 = os_log_create("com.apple.camera", "CameraRoll");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Unable to enqueue a pending burst asset because this convertible does not have a burst identifier!", v13, 2u);
  }

LABEL_14:
}

- (void)processPendingBurstAssets
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(CAMTransientDataSource *)self _enqueuedBurstAssetUUIDByBurstIdentifier];
  v23 = [(CAMTransientDataSource *)self _enqueuedBurstConvertiblesByAssetUUID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v22 = *v29;
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v4 objectForKey:{v9, v21}];
        v11 = [v23 objectForKey:v10];
        v12 = os_log_create("com.apple.camera", "CameraRoll");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = v21;
          v34 = v10;
          v35 = 2114;
          v36 = v9;
          _os_log_debug_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEBUG, "Processing %{public}@ for burst %{public}@", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v24 + 1) + 8 * j);
              if (v16)
              {
                [(CAMTransientDataSource *)self updateAssetWithConvertible:v19];
              }

              else
              {
                v20 = [(CAMTransientDataSource *)self insertAssetWithConvertible:v19];
              }

              v16 = 1;
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  [v4 removeAllObjects];
  [v23 removeAllObjects];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  if ([(CAMTransientDataSource *)self _nestedPerformChanges])
  {
    [(CAMTransientDataSource *)self _setNestedPerformChanges:[(CAMTransientDataSource *)self _nestedPerformChanges]+ 1];
    v4[2](v4);

    v5 = [(CAMTransientDataSource *)self _nestedPerformChanges]- 1;

    [(CAMTransientDataSource *)self _setNestedPerformChanges:v5];
  }

  else
  {
    [(CAMTransientDataSource *)self _setPendingChangeNotifications:0];
    [(CAMTransientDataSource *)self _setNestedPerformChanges:[(CAMTransientDataSource *)self _nestedPerformChanges]+ 1];
    v4[2](v4);

    [(CAMTransientDataSource *)self _setNestedPerformChanges:[(CAMTransientDataSource *)self _nestedPerformChanges]- 1];
    if ([(CAMTransientDataSource *)self _pendingChangeNotifications]>= 1)
    {
      [(CAMTransientDataSource *)self _notifyObserversOfDataSourceChange];

      [(CAMTransientDataSource *)self _setPendingChangeNotifications:0];
    }
  }
}

@end