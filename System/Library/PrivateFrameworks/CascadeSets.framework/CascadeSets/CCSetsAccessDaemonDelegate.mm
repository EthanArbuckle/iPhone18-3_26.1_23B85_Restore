@interface CCSetsAccessDaemonDelegate
+ (id)defaultInstance;
+ (id)readDefaultLocalDeviceUUID:(id *)a3;
- (BOOL)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:(id)a3 container:(id)a4;
- (BOOL)_validateCurrentSchemaAgainstContainerInfo:(id)a3 container:(id)a4;
- (BOOL)_validateReadOnlyContainer:(id)a3;
- (BOOL)loadOrCreateResourceGenerationCounter;
- (BOOL)prepareContainer:(id)a3;
- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5;
- (BOOL)setLastMaintenanceDateForResourceContainer:(id)a3 date:(id)a4 error:(id *)a5;
- (BOOL)teardownResource:(id)a3 inContainer:(id)a4;
- (CCSetsAccessDaemonDelegate)initWithBaseSystemPath:(id)a3 notifySourcesOnReset:(BOOL)a4;
- (id)_resetSetsDirectory:(id)a3;
- (id)_storedLocalIDSIdentifierInContainer:(id)a3;
- (id)incrementResourceGenerationCounter;
- (id)lastMaintenanceDateForResourceContainer:(id)a3;
- (id)setsDirectoryInContainer:(id)a3;
- (void)incrementResourceGenerationCounter;
- (void)loadOrCreateResourceGenerationCounter;
@end

@implementation CCSetsAccessDaemonDelegate

- (BOOL)loadOrCreateResourceGenerationCounter
{
  v26 = *MEMORY[0x1E69E9840];
  p_resourceGenerationCounter = &self->_resourceGenerationCounter;
  if (self->_resourceGenerationCounter)
  {
    v3 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    baseSystemPath = self->_baseSystemPath;
    v21 = 0;
    v7 = [v5 _loadResourceGenerationCounter:0 baseSystemPath:baseSystemPath error:&v21];
    v8 = v21;
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    v3 = v10;
    if (v10)
    {
      objc_storeStrong(p_resourceGenerationCounter, v7);
      v11 = [(BMFileBackedCounter *)self->_resourceGenerationCounter fileUUID];
      localDeviceUUID = self->_localDeviceUUID;
      self->_localDeviceUUID = v11;

      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = self->_localDeviceUUID;
        v15 = v13;
        v16 = [(NSUUID *)v14 UUIDString];
        *buf = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_INFO, "%@ resourceGeneration counter loaded with deviceUUID: %@", buf, 0x16u);
      }
    }

    else
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [CCSetsAccessDaemonDelegate loadOrCreateResourceGenerationCounter];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)defaultInstance
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:1];
  v4 = [v2 initWithBaseSystemPath:v3 notifySourcesOnReset:1];

  return v4;
}

- (CCSetsAccessDaemonDelegate)initWithBaseSystemPath:(id)a3 notifySourcesOnReset:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CCSetsAccessDaemonDelegate;
  v8 = [(CCSetsAccessDaemonDelegate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseSystemPath, a3);
    v9->_notifySourcesOnReset = a4;
    v10 = objc_alloc(MEMORY[0x1E69C5D60]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    preparedContainers = v9->_preparedContainers;
    v9->_preparedContainers = v12;
  }

  return v9;
}

+ (id)readDefaultLocalDeviceUUID:(id *)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:1];
  v6 = [v4 _loadResourceGenerationCounter:1 baseSystemPath:v5 error:a3];

  v7 = [v6 fileUUID];

  return v7;
}

- (id)incrementResourceGenerationCounter
{
  resourceGenerationCounter = self->_resourceGenerationCounter;
  v10 = 0;
  v11 = 0;
  v3 = [(BMFileBackedCounter *)resourceGenerationCounter incrementCount:&v11 error:&v10];
  v4 = v11;
  v5 = v10;
  v6 = __biome_log_for_category();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CCSetsAccessDaemonDelegate incrementResourceGenerationCounter];
    }

    v8 = v4;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate incrementResourceGenerationCounter];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5
{
  v6 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = BMAccessModePrintableDescription();
    *buf = 138413058;
    v34 = v27;
    v35 = 2114;
    v36 = v8;
    v37 = 2114;
    v38 = v29;
    v39 = 2114;
    v40 = v9;
    _os_log_debug_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEBUG, "%@ preparing resource %{public}@ for mode %{public}@ with container %{public}@", buf, 0x2Au);
  }

  if ((v6 & 2) != 0)
  {
    if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:v9])
    {
      v12 = [v8 name];
      v13 = [v12 isEqual:*MEMORY[0x1E698E900]];

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v14 = [CCDataResource dataResourceFromSpecifier:v8 inContainer:v9];
        v32 = 0;
        v15 = [v14 databaseFileExists:&v32];
        v16 = v32;
        if (v15)
        {
          v11 = 1;
        }

        else
        {
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            v19 = [v16 localizedFailureReason];
            *buf = 138412802;
            v34 = v18;
            v35 = 2112;
            v36 = v8;
            v37 = 2112;
            v38 = v19;
            _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_DEFAULT, "%@ Resource %@ has not been prepared yet (%@)", buf, 0x20u);
          }

          v20 = [(CCSetsAccessDaemonDelegate *)self incrementResourceGenerationCounter];
          if (v20)
          {
            v21 = [[CCDataResourceWriter alloc] initWithDataResource:v14 accessAssertion:0];
            localDeviceUUID = self->_localDeviceUUID;
            v23 = [(CCSetsAccessDaemonDelegate *)self _storedLocalIDSIdentifierInContainer:v9];
            v24 = +[CCDeviceSite deviceSiteForLocalDeviceUUID:resourceGeneration:idsDeviceId:platform:](CCDeviceSite, "deviceSiteForLocalDeviceUUID:resourceGeneration:idsDeviceId:platform:", localDeviceUUID, v20, v23, [MEMORY[0x1E698E9A0] platform]);

            v11 = [(CCDataResourceWriter *)v21 initializeDatabaseWithLocalDeviceSite:v24];
            v25 = __biome_log_for_category();
            v26 = v25;
            if (v11)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [CCSetsAccessDaemonDelegate prepareResource:withMode:inContainer:];
              }
            }

            else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [CCSetsAccessDaemonDelegate prepareResource:withMode:inContainer:];
            }
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(CCSetsAccessDaemonDelegate *)self _validateReadOnlyContainer:v9];
  }

  v30 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)teardownResource:(id)a3 inContainer:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    v17 = v20;
    _os_log_debug_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEBUG, "%@ tearing down resource %{public}@ with container %{public}@", buf, 0x20u);
  }

  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:v7])
  {
    v9 = [CCDataResource dataResourceFromSpecifier:v6 inContainer:v7];
    v10 = [[CCDataResourceWriter alloc] initWithDataResource:v9 accessAssertion:0];
    v18 = 0;
    v11 = [(CCDataResourceWriter *)v10 removeResource:&v18];
    v12 = v18;
    if (v12)
    {
      v11 = 0;
    }

    v13 = __biome_log_for_category();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CCSetsAccessDaemonDelegate teardownResource:inContainer:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate teardownResource:inContainer:];
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)prepareContainer:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  preparedContainers = self->_preparedContainers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CCSetsAccessDaemonDelegate_prepareContainer___block_invoke;
  v8[3] = &unk_1E7C8BCF0;
  v8[4] = self;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)preparedContainers runWithLockAcquired:v8];
  LOBYTE(preparedContainers) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return preparedContainers;
}

void __47__CCSetsAccessDaemonDelegate_prepareContainer___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) loadOrCreateResourceGenerationCounter])
  {
    v4 = [v3 objectForKey:*(a1 + 40)];
    v5 = [*(a1 + 32) setsDirectoryInContainer:*(a1 + 40)];
    if (v4)
    {
      if ([*(a1 + 32) _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:v4 container:*(a1 + 40)])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_18:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v6 = BMGetOrCreateDirectoryURL();
      v7 = 0;

      if (!v6)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 40);
          *buf = 138412802;
          v16 = v5;
          v17 = 2112;
          v18 = v14;
          v19 = 2112;
          v20 = v7;
          _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Failed to resolve / create sets directory (%@) in container: %@ error: %@", buf, 0x20u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_20;
      }

      v4 = [*(a1 + 32) _loadOrCreateContainerInfo:v5 readOnly:0];
      if ([*(a1 + 32) _validateCurrentSchemaAgainstContainerInfo:v4 container:*(a1 + 40)])
      {
        v8 = [*(a1 + 32) _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:v4 container:*(a1 + 40)];

        if (v8)
        {
LABEL_15:
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            *buf = 138412290;
            v16 = v12;
            _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "Prepared container: %@", buf, 0xCu);
          }

          [v3 setObject:v4 forKey:*(a1 + 40)];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v10 = [*(a1 + 32) _resetSetsDirectory:v5];

    v4 = v10;
    if (!v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_21:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_storedLocalIDSIdentifierInContainer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  preparedContainers = self->_preparedContainers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CCSetsAccessDaemonDelegate__storedLocalIDSIdentifierInContainer___block_invoke;
  v9[3] = &unk_1E7C8BD18;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)preparedContainers runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__CCSetsAccessDaemonDelegate__storedLocalIDSIdentifierInContainer___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*(a1 + 32)];
  v3 = [v6 objectForKey:@"idsDeviceId"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:(id)a3 container:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"localDeviceUUID"];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
  }

  else
  {
    v9 = 0;
  }

  if (([(NSUUID *)self->_localDeviceUUID isEqual:v9]& 1) != 0)
  {
    v10 = [(CCSetsAccessDaemonDelegate *)self localIDSDeviceId];
    if (v10)
    {
      v11 = [v6 objectForKey:@"idsDeviceId"];
      v12 = [v10 isEqual:v11];
      if ((v12 & 1) == 0)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138413058;
          v22 = objc_opt_class();
          v23 = 2112;
          v24 = v10;
          v25 = 2112;
          v26 = v11;
          v27 = 2112;
          v28 = v7;
          v14 = v22;
          _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "%@ Local IDS device identifier %@ is not equal to stored %@ in container: %@", &v21, 0x2Au);
        }
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CCSetsAccessDaemonDelegate _validateCurrentLocalDeviceUUIDsAgainstContainerInfo:container:];
      }

      v12 = 1;
    }
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      localDeviceUUID = self->_localDeviceUUID;
      v17 = v15;
      v18 = [v9 UUIDString];
      v21 = 138413058;
      v22 = v15;
      v23 = 2112;
      v24 = localDeviceUUID;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "%@ Local device identifier %@ is not equal to stored: %@ in container: %@", &v21, 0x2Au);
    }

    v12 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_validateCurrentSchemaAgainstContainerInfo:(id)a3 container:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 objectForKey:@"schemaVersion"];
  v8 = [(CCSetsAccessDaemonDelegate *)self currentSchemaVersion];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"empty";
      v14 = 138412802;
      v15 = &unk_1F2EC9420;
      v16 = 2112;
      if (v7)
      {
        v11 = v7;
      }

      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "Current schema (expected: %@) not initialized yet (found: %@) in container: %@", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_validateReadOnlyContainer:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  preparedContainers = self->_preparedContainers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CCSetsAccessDaemonDelegate__validateReadOnlyContainer___block_invoke;
  v8[3] = &unk_1E7C8BD40;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  [(_PASLock *)preparedContainers runWithLockAcquired:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

void __57__CCSetsAccessDaemonDelegate__validateReadOnlyContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  if (!v3)
  {
    v4 = *(a1 + 40);
    v5 = [v4 setsDirectoryInContainer:*(a1 + 32)];
    v6 = [v4 _loadOrCreateContainerInfo:v5 readOnly:1];

    v3 = v6;
  }

  v7 = v3;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _validateCurrentSchemaAgainstContainerInfo:v3 container:*(a1 + 32)];
}

- (id)setsDirectoryInContainer:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E698E9C8] setsDirectoryInContainer:a3];
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)_resetSetsDirectory:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v4;
    _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEFAULT, "Clearing sets directory: %@", buf, 0xCu);
  }

  v35 = 0;
  v6 = BMRemoveItemIfExistsAtURL();
  v7 = 0;
  v8 = v7;
  if (v6)
  {
    v34 = v7;
    v9 = BMGetOrCreateDirectoryURL();
    v10 = v34;

    if (v9)
    {
      v11 = [(CCSetsAccessDaemonDelegate *)self _loadOrCreateContainerInfo:v4 readOnly:0];
      v12 = [(CCSetsAccessDaemonDelegate *)self currentSchemaVersion];
      v13 = MEMORY[0x1E695DF70];
      v31 = v12;
      v45[0] = v12;
      localDeviceUUID = self->_localDeviceUUID;
      v15 = BMDataFromNSUUID();
      v45[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v17 = [v13 arrayWithArray:v16];

      v18 = MEMORY[0x1E695DF70];
      v44[0] = @"schemaVersion";
      v44[1] = @"localDeviceUUID";
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
      v20 = [v18 arrayWithArray:v19];

      v21 = [(CCSetsAccessDaemonDelegate *)self localIDSDeviceId];
      if (v21)
      {
        [v17 addObject:v21];
        [v20 addObject:@"idsDeviceId"];
      }

      v33 = v10;
      v22 = [v11 writeUpdatedObjects:v17 forKeys:v20 error:&v33, v31];
      v8 = v33;

      v23 = __biome_log_for_category();
      v24 = v23;
      if (v22)
      {
        v25 = v32;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(NSUUID *)self->_localDeviceUUID UUIDString];
          *buf = 138413058;
          v37 = v4;
          v38 = 2112;
          v39 = v32;
          v40 = 2112;
          v41 = v26;
          v42 = 2112;
          v43 = v21;
          _os_log_impl(&dword_1B6DB2000, v24, OS_LOG_TYPE_DEFAULT, "Sets directory (%@) initialized with schema version: %@ localDeviceId: %@ idsDeviceId: %@", buf, 0x2Au);
        }

        if (self->_notifySourcesOnReset)
        {
          notify_post([@"com.apple.CascadeSets.DonateNow" UTF8String]);
          v27 = __biome_log_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = @"com.apple.CascadeSets.DonateNow";
            _os_log_impl(&dword_1B6DB2000, v27, OS_LOG_TYPE_DEFAULT, "Posted notification %@", buf, 0xCu);
          }
        }

        v28 = v11;
      }

      else
      {
        v25 = v32;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
        }

        v28 = 0;
      }
    }

    else
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
      }

      v28 = 0;
      v8 = v10;
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate _resetSetsDirectory:];
    }

    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)lastMaintenanceDateForResourceContainer:(id)a3
{
  v4 = a3;
  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:v4])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__11;
    v16 = __Block_byref_object_dispose__11;
    v17 = 0;
    preparedContainers = self->_preparedContainers;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__CCSetsAccessDaemonDelegate_lastMaintenanceDateForResourceContainer___block_invoke;
    v9[3] = &unk_1E7C8BD18;
    v10 = v4;
    v11 = &v12;
    [(_PASLock *)preparedContainers runWithLockAcquired:v9];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate lastMaintenanceDateForResourceContainer:];
    }

    v6 = 0;
  }

  return v6;
}

void __70__CCSetsAccessDaemonDelegate_lastMaintenanceDateForResourceContainer___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*(a1 + 32)];
  v3 = [v6 objectForKey:@"lastMaintenanceDate"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)setLastMaintenanceDateForResourceContainer:(id)a3 date:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(CCSetsAccessDaemonDelegate *)self prepareContainer:v8])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__11;
    v23 = __Block_byref_object_dispose__11;
    v24 = 0;
    preparedContainers = self->_preparedContainers;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__CCSetsAccessDaemonDelegate_setLastMaintenanceDateForResourceContainer_date_error___block_invoke;
    v14[3] = &unk_1E7C8BD68;
    v15 = v8;
    v17 = &v25;
    v16 = v9;
    v18 = &v19;
    [(_PASLock *)preparedContainers runWithLockAcquired:v14];
    v11 = *(v26 + 24);
    if (a5 && (v26[3] & 1) == 0)
    {
      *a5 = v20[5];
      v11 = *(v26 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCSetsAccessDaemonDelegate setLastMaintenanceDateForResourceContainer:date:error:];
    }

    v11 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v11 & 1;
}

void __84__CCSetsAccessDaemonDelegate_setLastMaintenanceDateForResourceContainer_date_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKey:a1[4]];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v3 writeUpdatedObject:v4 forKey:@"lastMaintenanceDate" error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;
}

- (void)loadOrCreateResourceGenerationCounter
{
  OUTLINED_FUNCTION_4_0();
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)incrementResourceGenerationCounter
{
  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)prepareResource:withMode:inContainer:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)prepareResource:withMode:inContainer:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)teardownResource:inContainer:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B6DB2000, v1, OS_LOG_TYPE_ERROR, "Could not remove resource: %@ error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)teardownResource:inContainer:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1B6DB2000, v0, OS_LOG_TYPE_DEBUG, "Removed resource: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_validateCurrentLocalDeviceUUIDsAgainstContainerInfo:container:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadOrCreateContainerInfo:readOnly:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to load container info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_resetSetsDirectory:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to remove sets directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_resetSetsDirectory:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to write container info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_resetSetsDirectory:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to create sets directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)lastMaintenanceDateForResourceContainer:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to prepare container %@ when looking up last maintenance date", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLastMaintenanceDateForResourceContainer:date:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to prepare container %@ when setting last maintenance date", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end