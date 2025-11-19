@interface MCHoldingTankManifest
+ (id)sharedManifest;
- (BOOL)_adjustManifestForDevice:(unint64_t)a3 withIdentifier:(id)a4 addingIdentifier:(BOOL)a5 outError:(id *)a6;
- (BOOL)addPurgatoryProfileData:(id)a3 identifier:(id)a4 targetDevice:(unint64_t)a5 outError:(id *)a6;
- (MCHoldingTankManifest)init;
- (id)_manifestForDevice:(unint64_t)a3 createIfNil:(BOOL)a4;
- (id)_pathToHoldingTankDirectoryForDevice:(unint64_t)a3;
- (id)_pathToHoldingTankManifestForDevice:(unint64_t)a3;
- (id)pathToHoldingTankProfileDataForIdentifier:(id)a3 targetDevice:(unint64_t)a4 createDirectory:(BOOL)a5;
- (id)uninstalledProfileDataWithIdentifier:(id)a3 targetDevice:(unint64_t)a4;
- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)a3;
- (id)uninstalledProfileWithIdentifier:(id)a3 targetDevice:(unint64_t)a4;
- (void)dealloc;
- (void)removeProfileDataWithIdentifier:(id)a3 fromHoldingTankForDevice:(unint64_t)a4;
@end

@implementation MCHoldingTankManifest

- (MCHoldingTankManifest)init
{
  v6.receiver = self;
  v6.super_class = MCHoldingTankManifest;
  v2 = [(MCHoldingTankManifest *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.managedconfiguration.MCHoldingTankManifest._syncQueue", 0);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_suspend(self->_syncQueue);
  v3.receiver = self;
  v3.super_class = MCHoldingTankManifest;
  [(MCHoldingTankManifest *)&v3 dealloc];
}

+ (id)sharedManifest
{
  if (sharedManifest_once_0 != -1)
  {
    +[MCHoldingTankManifest sharedManifest];
  }

  v3 = sharedManifest_obj_0;

  return v3;
}

uint64_t __39__MCHoldingTankManifest_sharedManifest__block_invoke()
{
  sharedManifest_obj_0 = objc_alloc_init(MCHoldingTankManifest);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_pathToHoldingTankDirectoryForDevice:(unint64_t)a3
{
  v4 = MCSystemProfileStorageDirectory();
  v5 = [MCProfile stringForDeviceType:a3];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

- (id)_pathToHoldingTankManifestForDevice:(unint64_t)a3
{
  v3 = [(MCHoldingTankManifest *)self _pathToHoldingTankDirectoryForDevice:a3];
  v4 = MCHoldingTankManifestName();
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathToHoldingTankProfileDataForIdentifier:(id)a3 targetDevice:(unint64_t)a4 createDirectory:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(MCHoldingTankManifest *)self _pathToHoldingTankDirectoryForDevice:a4];
  if (v5)
  {
    [(MCHoldingTankManifest *)self _createDirectory:v9 withIntermediateDirectories:1];
  }

  v10 = [(MCHoldingTankManifest *)self _profileDataFileNameForProfileIdentifier:v8];
  v11 = [v9 stringByAppendingPathComponent:v10];

  return v11;
}

- (id)_manifestForDevice:(unint64_t)a3 createIfNil:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v7 = [MCProfile stringForDeviceType:?];
  v8 = [(MCHoldingTankManifest *)self _pathToHoldingTankManifestForDevice:a3];
  if (!self->_universalManifest)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    universalManifest = self->_universalManifest;
    self->_universalManifest = v9;
  }

  v24 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8 options:0 error:&v24];
  v12 = v24;
  if (v12)
  {
    if (!v4)
    {
      v13 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v26 = v8;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Failed to pull manifest data from path (this might be normal): %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }

  v23 = 0;
  v14 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v11 options:1 format:0 error:&v23];
  v15 = v23;
  [(NSMutableDictionary *)self->_universalManifest setObject:v14 forKeyedSubscript:v7];

  if (v15)
  {
    v16 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "Failed to serialize manifest data with error: %{public}@", buf, 0xCu);
    }
  }

  v17 = [(NSMutableDictionary *)self->_universalManifest objectForKeyedSubscript:v7];

  if (!v17 && v4)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    [(NSMutableDictionary *)self->_universalManifest setObject:v18 forKeyedSubscript:v7];

    v19 = [(NSMutableDictionary *)self->_universalManifest objectForKeyedSubscript:v7];
    [v19 MCWriteToBinaryFile:v8];
  }

  v20 = [(NSMutableDictionary *)self->_universalManifest objectForKeyedSubscript:v7];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)uninstalledProfileIdentifiersForDevice:(unint64_t)a3
{
  v3 = [(MCHoldingTankManifest *)self _manifestForDevice:a3 createIfNil:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allKeys];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)uninstalledProfileWithIdentifier:(id)a3 targetDevice:(unint64_t)a4
{
  v4 = [(MCHoldingTankManifest *)self uninstalledProfileDataWithIdentifier:a3 targetDevice:a4];
  if (v4)
  {
    v5 = [MCProfile profileWithData:v4 outError:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)uninstalledProfileDataWithIdentifier:(id)a3 targetDevice:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(MCHoldingTankManifest *)self pathToHoldingTankProfileDataForIdentifier:a3 targetDevice:a4 createDirectory:0];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v12 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:0 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = v4;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Failed to read profile data from path: %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)addPurgatoryProfileData:(id)a3 identifier:(id)a4 targetDevice:(unint64_t)a5 outError:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v12 = [(MCHoldingTankManifest *)self pathToHoldingTankProfileDataForIdentifier:v10 targetDevice:a5 createDirectory:1];
  v20 = 0;
  v13 = [v11 writeToFile:v12 options:0x20000000 error:&v20];

  v14 = v20;
  if (v13)
  {
    v15 = [(MCHoldingTankManifest *)self _adjustManifestForDevice:a5 withIdentifier:v10 addingIdentifier:1 outError:a6];
  }

  else
  {
    v16 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "Failed to add profile data with identifier: %{public}@ to path: %{public}@ with error: %{public}@", buf, 0x20u);
    }

    MCCheckSystemGroupContainerFileReadability(0, 0);
    if (a6)
    {
      v17 = v14;
      v15 = 0;
      *a6 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)removeProfileDataWithIdentifier:(id)a3 fromHoldingTankForDevice:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCHoldingTankManifest *)self pathToHoldingTankProfileDataForIdentifier:v6 targetDevice:a4 createDirectory:1];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  [v8 removeItemAtPath:v7 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Failed to remove profile data with identifier: %{public}@ from path: %{public}@ with error: %{public}@", buf, 0x20u);
    }
  }

  [(MCHoldingTankManifest *)self _adjustManifestForDevice:a4 withIdentifier:v6 addingIdentifier:0 outError:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_adjustManifestForDevice:(unint64_t)a3 withIdentifier:(id)a4 addingIdentifier:(BOOL)a5 outError:(id *)a6
{
  v10 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__MCHoldingTankManifest__adjustManifestForDevice_withIdentifier_addingIdentifier_outError___block_invoke;
  block[3] = &unk_1E77D2550;
  block[4] = self;
  v18 = a3;
  v19 = a5;
  v12 = v10;
  v16 = v12;
  v17 = &v20;
  dispatch_sync(syncQueue, block);
  if (a6)
  {
    *a6 = v21[5];
  }

  v13 = v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __91__MCHoldingTankManifest__adjustManifestForDevice_withIdentifier_addingIdentifier_outError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _manifestForDevice:*(a1 + 56) createIfNil:*(a1 + 64)];
  v3 = v2;
  if (v2)
  {
    [v2 removeObjectForKey:*(a1 + 40)];
    if (*(a1 + 64) == 1)
    {
      v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
      [v3 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    v5 = [*(a1 + 32) _pathToHoldingTankManifestForDevice:*(a1 + 56)];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v7 = *(*(a1 + 48) + 8);
    obj = *(v7 + 40);
    [v3 writeToURL:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v13 = v5;
        v14 = 2114;
        v15 = v9;
        _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Failed to write manifest to path: %{public}@ with error: %{public}@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end