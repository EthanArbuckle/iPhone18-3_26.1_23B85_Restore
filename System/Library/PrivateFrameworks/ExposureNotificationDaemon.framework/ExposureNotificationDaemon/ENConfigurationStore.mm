@interface ENConfigurationStore
+ (id)legacyAppCacheURL;
- (BOOL)_removeSubdivisionListForRegion:(id)a3 error:(id *)a4;
- (BOOL)_saveCountrySubdivisionList:(id)a3 country:(id)a4 error:(id *)a5;
- (BOOL)_saveRegionConfiguration:(id)a3 error:(id *)a4;
- (BOOL)_saveRegionHash:(id)a3 region:(id)a4 error:(id *)a5;
- (BOOL)_saveServerConfigurationResponse:(id)a3 error:(id *)a4;
- (BOOL)regionSupportsSubdivisions:(id)a3;
- (BOOL)removeConfigurationsForRegion:(id)a3 includingSubdivisions:(BOOL)a4 error:(id *)a5;
- (BOOL)removeConfigurationsForRegionCode:(id)a3 error:(id *)a4;
- (BOOL)removeSubdivisionListForRegion:(id)a3 error:(id *)a4;
- (BOOL)saveCountrySubdivisionList:(id)a3 region:(id)a4 error:(id *)a5;
- (BOOL)saveRegionConfiguration:(id)a3 error:(id *)a4;
- (BOOL)saveRegionHash:(id)a3 region:(id)a4 error:(id *)a5;
- (BOOL)saveServerConfigurationResponse:(id)a3 error:(id *)a4;
- (BOOL)saveTemporaryServerConfigurations:(id)a3 error:(id *)a4;
- (ENConfigurationStore)init;
- (ENConfigurationStore)initWithDirectoryPath:(id)a3;
- (id)_agencyConfigurationForRegion:(id)a3;
- (id)_allCachedServerResponseConfigurationsWithPrefix:(id)a3;
- (id)_configurationForRegion:(id)a3;
- (id)_directoryURLForCachedConfigurations;
- (id)_existingConfigurationForRegion:(id)a3;
- (id)_existingConfigurationForRegionPath:(id)a3;
- (id)_localeForRegion:(id)a3;
- (id)_localeIdentifiersForRegion:(id)a3;
- (id)_regionHashForRegion:(id)a3;
- (id)_serverConfigurationForRegion:(id)a3;
- (id)_serverConfigurationResponseForFileURL:(id)a3;
- (id)_serverConfigurationResponseForRegion:(id)a3;
- (id)_subdivisionListForRegion:(id)a3;
- (id)agencyConfigurationForRegion:(id)a3;
- (id)allCachedCountries;
- (id)allCachedRegions;
- (id)allRegionConfigurations;
- (id)allRegionServerConfigurationsForCountryCode:(id)a3;
- (id)cachedAppConfiguationForBundleID:(id)a3 forRegionID:(id)a4;
- (id)configurationCacheURL;
- (id)configurationForRegion:(id)a3;
- (id)developerConfigurationsURL;
- (id)developerSubdivisionListCacheURL;
- (id)downloadConfigurationForRegion:(id)a3;
- (id)fileURLForCountryRegionHash:(id)a3;
- (id)fileURLforCountrySubdivisionList:(id)a3;
- (id)fileURLforRegionConfiguration:(id)a3;
- (id)fileURLforRegionServerConfiguration:(id)a3;
- (id)legacyAppConfiguationForMobileCountryCode:(id)a3;
- (id)localeForRegion:(id)a3;
- (id)localeIdentifiersForRegion:(id)a3;
- (id)regionCacheURL;
- (id)regionFromServerResponse:(id)a3;
- (id)regionHashForRegion:(id)a3;
- (id)serverConfigurationCacheURL;
- (id)serverConfigurationForRegion:(id)a3;
- (id)serverConfigurationResponseForRegion:(id)a3;
- (id)serverExposureConfigurationForRegion:(id)a3;
- (id)serverSubdivisionListCacheURL;
- (id)subdivisionListCacheURL;
- (id)subdivisionListForRegion:(id)a3;
- (id)systemConfigurationCacheURL;
- (void)_enumerateCachedServerResponseConfigurationsWithDirectoryURL:(id)a3 prefix:(id)a4 handler:(id)a5;
- (void)allAgencyServerRegionConfigurationsWithCompletion:(id)a3;
- (void)allCachedCountryCodesServerResponseWithDirectoryURL:(id)a3 handler:(id)a4;
- (void)allCachedServerResponseConfigurationsWithCountryCode:(id)a3 completion:(id)a4;
- (void)allRegionConfigurationsWithCompletion:(id)a3;
- (void)allRegionServerConfigurationsWithCompletion:(id)a3;
- (void)clearTemporaryCountrySubdivisionList;
- (void)clearTemporaryServerConfigurations;
- (void)enumerateCachedRegionServerConfigurationsWithCountryCode:(id)a3 handler:(id)a4;
- (void)prefsChanged;
- (void)resetStore;
@end

@implementation ENConfigurationStore

- (ENConfigurationStore)init
{
  v3 = ENDataVaultPath();
  v4 = [(ENConfigurationStore *)self initWithDirectoryPath:v3];

  return v4;
}

- (ENConfigurationStore)initWithDirectoryPath:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ENConfigurationStore;
  v5 = [(ENConfigurationStore *)&v28 init];
  if (v5)
  {
    v6 = [v4 copy];
    directoryPath = v5->_directoryPath;
    v5->_directoryPath = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.exposureNotification.configuration.store", v8);
    [(ENConfigurationStore *)v5 setStoreQueue:v9];

    [(ENConfigurationStore *)v5 setDeveloperServerConfiguration:CFPrefs_GetInt64() != 0];
    CFStringGetTypeID();
    v10 = CFPrefs_CopyTypedValue();
    [(ENConfigurationStore *)v5 setRegionIdentifierOverride:v10];

    v11 = [(ENConfigurationStore *)v5 regionCacheURL];
    v12 = *MEMORY[0x277CBE870];
    v27 = 0;
    v13 = [v11 setResourceValue:MEMORY[0x277CBEC20] forKey:v12 error:&v27];
    v14 = v27;

    if ((v13 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore initWithDirectoryPath:v5];
    }

    v15 = [(ENConfigurationStore *)v5 configurationCacheURL];
    v26 = v14;
    v16 = [v15 setResourceValue:MEMORY[0x277CBEC20] forKey:v12 error:&v26];
    v17 = v26;

    if ((v16 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore initWithDirectoryPath:v5];
    }

    v18 = [(ENConfigurationStore *)v5 systemConfigurationCacheURL];
    v25 = v17;
    v19 = [v18 setResourceValue:MEMORY[0x277CBEC20] forKey:v12 error:&v25];
    v20 = v25;

    if ((v19 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore initWithDirectoryPath:v5];
    }

    v21 = [(ENConfigurationStore *)v5 storeQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__ENConfigurationStore_initWithDirectoryPath___block_invoke;
    v23[3] = &unk_278FD0F90;
    v24 = v5;
    dispatch_async(v21, v23);
  }

  return v5;
}

void __46__ENConfigurationStore_initWithDirectoryPath___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) subdivisionListCacheURL];
  v2 = [MEMORY[0x277CCAA08] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *MEMORY[0x277CBE860];
  v22 = *MEMORY[0x277CBE860];
  v4 = [MEMORY[0x277CBEA68] arrayWithObjects:&v22 count:1];
  v5 = [v2 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:v4 options:4 error:0];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v16 = v1;
    v8 = 0;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        v11 = v8;
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        v17 = 0;
        v13 = [v12 getResourceValue:&v17 forKey:v3 error:{0, v16}];
        v8 = v17;

        if (v13 && ([v8 BOOLValue] & 1) == 0)
        {
          if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
          {
            __46__ENConfigurationStore_initWithDirectoryPath___block_invoke_cold_1();
          }

          [v2 removeItemAtURL:v12 error:0];
        }

        ++v10;
      }

      while (v7 != v10);
      v14 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      v7 = v14;
    }

    while (v14);

    v1 = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)configurationForRegion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ENConfigurationStore_configurationForRegion___block_invoke;
  block[3] = &unk_278FD10D0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__ENConfigurationStore_configurationForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _configurationForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_configurationForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ENConfigurationStore *)self _serverConfigurationResponseForRegion:v4];
    v6 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:v5];
    v7 = v6;
    if (!v5 || !v6)
    {
      if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v14 = 0;
      goto LABEL_19;
    }

    v8 = [(ENConfigurationStore *)self _existingConfigurationForRegion:v4];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277CC5CB0]) initWithVersion:objc_msgSend(v7 region:{"enVersion"), v4}];
    }

    v9 = [v8 userConsent];
    if (!v9 && [v7 enVersion] >= 2)
    {
      v10 = [v7 legalConsentVersion];

      if (!v10)
      {
LABEL_11:
        v12 = [v8 region];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = v8;
        }

        else
        {
          [(ENConfigurationStore *)v8 _configurationForRegion:v4, &v16];
          v14 = v16;
        }

LABEL_19:
        goto LABEL_20;
      }

      v9 = [v7 legalConsentVersion];
      v11 = [objc_alloc(MEMORY[0x277CC5CF8]) initWithConsentVersion:v9];
      [v8 setUserConsent:v11];
    }

    goto LABEL_11;
  }

  [ENConfigurationStore _configurationForRegion:?];
  v14 = v16;
LABEL_20:

  return v14;
}

- (id)_existingConfigurationForRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 regionCode];
    v7 = [(ENConfigurationStore *)self fileURLforRegionConfiguration:v6];
    v8 = [v7 path];

    v9 = [MEMORY[0x277CCAA08] defaultManager];
    LOBYTE(v7) = [v9 fileExistsAtPath:v8];

    if ((v7 & 1) == 0)
    {
      v10 = [v5 countryCode];
      v11 = [(ENConfigurationStore *)self fileURLforRegionConfiguration:v10];
      v12 = [v11 path];

      v8 = v12;
    }

    v13 = [(ENConfigurationStore *)self _existingConfigurationForRegionPath:v8];
  }

  else
  {
    [ENConfigurationStore _existingConfigurationForRegion:?];
    v13 = v15;
  }

  return v13;
}

- (id)_existingConfigurationForRegionPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA08] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v15 = 0;
      v6 = [MEMORY[0x277CBEA98] dataWithContentsOfFile:v3 options:0 error:&v15];
      v7 = v15;
      if (!v7 && v6)
      {
        goto LABEL_9;
      }

      if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationStore _existingConfigurationForRegionPath:v3];
        if (v6)
        {
          goto LABEL_9;
        }
      }

      else if (v6)
      {
LABEL_9:
        v8 = MEMORY[0x277CBEB90];
        v9 = objc_opt_class();
        v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
        v14 = v7;
        v11 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:v10 fromData:v6 error:&v14];
        v12 = v14;

        if (v12)
        {
          if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v11 = 0;
        }

        goto LABEL_16;
      }

      v11 = 0;
      v12 = v7;
LABEL_16:

      goto LABEL_17;
    }

    [(ENConfigurationStore *)v3 _existingConfigurationForRegionPath:?];
  }

  else
  {
    [ENConfigurationStore _existingConfigurationForRegionPath:?];
  }

  v11 = v16;
LABEL_17:

  return v11;
}

- (BOOL)saveRegionConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(ENConfigurationStore *)self storeQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ENConfigurationStore_saveRegionConfiguration_error___block_invoke;
  v10[3] = &unk_278FD13C8;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_barrier_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __54__ENConfigurationStore_saveRegionConfiguration_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveRegionConfiguration:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_saveRegionConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v17 = ENErrorF();
    v21 = 0;
    goto LABEL_30;
  }

  v7 = [v6 region];
  v8 = [v7 regionCode];
  v9 = [(ENConfigurationStore *)self fileURLforRegionConfiguration:v8];

  v10 = v6;
  v11 = [v10 region];
  v12 = [(ENConfigurationStore *)self _existingConfigurationForRegion:v11];

  v13 = v10;
  if (v12)
  {
    v13 = v10;
    if (([v12 isEqual:v10] & 1) == 0)
    {
      v13 = [v12 updatedWithConfiguration:v10];

      if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationStore _saveRegionConfiguration:error:];
      }
    }
  }

  if (!v9)
  {
    if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore _saveRegionConfiguration:error:];
    }

    v17 = 0;
    v21 = 0;
    goto LABEL_29;
  }

  v14 = [v9 URLByDeletingLastPathComponent];
  v15 = [MEMORY[0x277CCAA08] defaultManager];
  v29 = 0;
  v16 = [v15 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v29];
  v17 = v29;

  if (v16)
  {
    v18 = *MEMORY[0x277CBE870];
    v28 = v17;
    v19 = [v14 setResourceValue:MEMORY[0x277CBEC20] forKey:v18 error:&v28];
    v20 = v28;

    if ((v19 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      v25 = v14;
      v26 = v20;
      LogPrintF_safe();
    }

    v27 = v20;
    v21 = 1;
    v22 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:{&v27, v25, v26}];
    v17 = v27;

    if (!v17)
    {
      if ([v22 writeToURL:v9 atomically:1])
      {
        if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationStore _saveRegionConfiguration:error:];
        }
      }

      else
      {
        if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationStore _saveRegionConfiguration:v10 error:?];
        }

        v21 = 0;
      }
    }

    if (!a4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = 0;
    if (!a4)
    {
      goto LABEL_28;
    }
  }

  v23 = v17;
  *a4 = v17;
LABEL_28:

LABEL_29:
LABEL_30:

  return v21;
}

- (BOOL)saveCountrySubdivisionList:(id)a3 region:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ENConfigurationStore_saveCountrySubdivisionList_region_error___block_invoke;
  block[3] = &unk_278FD1008;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  LOBYTE(self) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return self;
}

uint64_t __64__ENConfigurationStore_saveCountrySubdivisionList_region_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveCountrySubdivisionList:*(a1 + 40) country:*(a1 + 48) error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)saveRegionHash:(id)a3 region:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ENConfigurationStore_saveRegionHash_region_error___block_invoke;
  block[3] = &unk_278FD1008;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  LOBYTE(self) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return self;
}

uint64_t __52__ENConfigurationStore_saveRegionHash_region_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveRegionHash:*(a1 + 40) region:*(a1 + 48) error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)saveServerConfigurationResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(ENConfigurationStore *)self storeQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ENConfigurationStore_saveServerConfigurationResponse_error___block_invoke;
  v10[3] = &unk_278FD13C8;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __62__ENConfigurationStore_saveServerConfigurationResponse_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveServerConfigurationResponse:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_saveServerConfigurationResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"config"];
  v8 = [v7 objectForKeyedSubscript:@"enVersion"];
  v9 = v8;
  if (v8 && [v8 intValue] > 0)
  {
    v10 = [(ENConfigurationStore *)self regionFromServerResponse:v6];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 regionCode];
      v13 = [(ENConfigurationStore *)self fileURLforRegionServerConfiguration:v12];

      v14 = [v13 URLByDeletingLastPathComponent];
      v15 = [MEMORY[0x277CCAA08] defaultManager];
      v16 = [v15 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:a4];

      if (v16)
      {
        v32 = v7;
        v17 = *MEMORY[0x277CBE870];
        v33 = 0;
        v18 = [v14 setResourceValue:MEMORY[0x277CBEC20] forKey:v17 error:&v33];
        v19 = v33;
        if ((v18 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
        {
          v29 = v14;
          v30 = v19;
          LogPrintF_safe();
        }

        v31 = v19;
        v20 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:{a4, v29, v30}];
        v21 = v20;
        if (v20 && [v20 writeToURL:v13 options:1 error:a4])
        {
          if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
          {
            [ENConfigurationStore _saveServerConfigurationResponse:error:];
          }

          v22 = [(ENConfigurationStore *)self _existingConfigurationForRegion:v11];
          v23 = v22;
          v27 = 1;
          if (v22)
          {
            v24 = [v22 enVersion];
            if (v24 != [v9 unsignedIntegerValue])
            {
              v25 = [(ENConfigurationStore *)self _configurationForRegion:v11];
              [v25 setEnVersion:{objc_msgSend(v9, "unsignedIntegerValue")}];
              v26 = [(ENConfigurationStore *)self _saveRegionConfiguration:v25 error:a4];

              if (!v26)
              {
                v27 = 0;
              }
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v7 = v32;
      }

      else
      {
        v27 = 0;
      }
    }

    else if (a4)
    {
      ENErrorF();
      *a4 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else if (a4)
  {
    ENErrorF();
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)removeConfigurationsForRegion:(id)a3 includingSubdivisions:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v9 = [v8 countryCode];
  v10 = [(ENConfigurationStore *)self removeConfigurationsForRegionCode:v9 error:a5];
  *(v17 + 24) = v10;

  if (v6)
  {
    v11 = [v8 countryCode];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__ENConfigurationStore_removeConfigurationsForRegion_includingSubdivisions_error___block_invoke;
    v15[3] = &unk_278FD26D0;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = a5;
    [(ENConfigurationStore *)self enumerateCachedRegionServerConfigurationsWithCountryCode:v11 handler:v15];
  }

  else
  {
    v11 = [v8 regionCode];
    v12 = [(ENConfigurationStore *)self removeConfigurationsForRegionCode:v11 error:a5];
    *(v17 + 24) = v12;
  }

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __82__ENConfigurationStore_removeConfigurationsForRegion_includingSubdivisions_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 region];
  v5 = [v4 regionCode];
  [v3 removeConfigurationsForRegionCode:v5 error:a1[6]];

  if (*a1[6])
  {
    *(*(a1[5] + 8) + 24) = 0;
  }
}

- (BOOL)removeConfigurationsForRegionCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v7 = [(ENConfigurationStore *)self storeQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ENConfigurationStore_removeConfigurationsForRegionCode_error___block_invoke;
  v10[3] = &unk_278FD26F8;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void __64__ENConfigurationStore_removeConfigurationsForRegionCode_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileURLforRegionConfiguration:*(a1 + 40)];
  v3 = [v2 path];

  v11 = 0;
  v4 = [MEMORY[0x277CCAA08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v11];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA08] defaultManager];
    *(*(*(a1 + 48) + 8) + 24) = [v6 removeItemAtPath:v3 error:*(a1 + 56)];

    if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      __64__ENConfigurationStore_removeConfigurationsForRegionCode_error___block_invoke_cold_1();
    }
  }

  v7 = [*(a1 + 32) fileURLforRegionServerConfiguration:*(a1 + 40)];
  v8 = [v7 path];

  v9 = [MEMORY[0x277CCAA08] defaultManager];
  LODWORD(v7) = [v9 fileExistsAtPath:v8 isDirectory:&v11];

  if (v7)
  {
    v10 = [MEMORY[0x277CCAA08] defaultManager];
    *(*(*(a1 + 48) + 8) + 24) = [v10 removeItemAtPath:v8 error:*(a1 + 56)];

    if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      __64__ENConfigurationStore_removeConfigurationsForRegionCode_error___block_invoke_cold_2();
    }
  }
}

- (BOOL)removeSubdivisionListForRegion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v7 = [(ENConfigurationStore *)self storeQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ENConfigurationStore_removeSubdivisionListForRegion_error___block_invoke;
  v10[3] = &unk_278FD13C8;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __61__ENConfigurationStore_removeSubdivisionListForRegion_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _removeSubdivisionListForRegion:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_removeSubdivisionListForRegion:(id)a3 error:(id *)a4
{
  v6 = [a3 countryCode];
  v7 = [(ENConfigurationStore *)self fileURLforCountrySubdivisionList:v6];
  v8 = [v7 path];

  v9 = [MEMORY[0x277CCAA08] defaultManager];
  LODWORD(v7) = [v9 fileExistsAtPath:v8];

  if (v7)
  {
    v10 = [MEMORY[0x277CCAA08] defaultManager];
    v11 = [v10 removeItemAtPath:v8 error:a4];

    v12 = (*a4 == 0) & v11;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)enumerateCachedRegionServerConfigurationsWithCountryCode:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v8 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ENConfigurationStore_enumerateCachedRegionServerConfigurationsWithCountryCode_handler___block_invoke;
  block[3] = &unk_278FD2370;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(v8, block);

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__7;
  v14[4] = __Block_byref_object_dispose__7;
  v15 = 0;
  v9 = v18[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__ENConfigurationStore_enumerateCachedRegionServerConfigurationsWithCountryCode_handler___block_invoke_2;
  v11[3] = &unk_278FD2720;
  v13 = v14;
  v10 = v7;
  v12 = v10;
  [(ENConfigurationStore *)self _enumerateCachedServerResponseConfigurationsWithDirectoryURL:v9 prefix:v6 handler:v11];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v17, 8);
}

void __89__ENConfigurationStore_enumerateCachedRegionServerConfigurationsWithCountryCode_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _directoryURLForCachedConfigurations];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __89__ENConfigurationStore_enumerateCachedRegionServerConfigurationsWithCountryCode_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC5CD0];
  v4 = a2;
  v5 = [[v3 alloc] initWithServerResponseDictionary:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = *(*(a1 + 32) + 16);

    v8();
  }
}

- (id)allCachedCountries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_alloc_init(MEMORY[0x277CBEB50]);
  v3 = [(ENConfigurationStore *)self storeQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ENConfigurationStore_allCachedCountries__block_invoke;
  v6[3] = &unk_278FD2770;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__ENConfigurationStore_allCachedCountries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _directoryURLForCachedConfigurations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__ENConfigurationStore_allCachedCountries__block_invoke_2;
  v4[3] = &unk_278FD2748;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v3 allCachedCountryCodesServerResponseWithDirectoryURL:v2 handler:v4];
}

void __42__ENConfigurationStore_allCachedCountries__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CC5CA0] regionWithCode:a2];
  v5 = [v3 countryCode];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)allCachedRegions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_alloc_init(MEMORY[0x277CBEB50]);
  v3 = [(ENConfigurationStore *)self storeQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ENConfigurationStore_allCachedRegions__block_invoke;
  v6[3] = &unk_278FD2770;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__ENConfigurationStore_allCachedRegions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _directoryURLForCachedConfigurations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ENConfigurationStore_allCachedRegions__block_invoke_2;
  v4[3] = &unk_278FD2748;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v3 allCachedCountryCodesServerResponseWithDirectoryURL:v2 handler:v4];
}

void __40__ENConfigurationStore_allCachedRegions__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CC5CA0] regionWithCode:a2];
  if (v3)
  {
    v4 = v3;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v3 = v4;
  }
}

- (void)allCachedCountryCodesServerResponseWithDirectoryURL:(id)a3 handler:(id)a4
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = a4;
  v6 = [MEMORY[0x277CCAA08] defaultManager];
  v7 = *MEMORY[0x277CBE8F0];
  v8 = *MEMORY[0x277CBE860];
  v37[0] = *MEMORY[0x277CBE8F0];
  v37[1] = v8;
  v9 = [MEMORY[0x277CBEA68] arrayWithObjects:v37 count:2];
  v26 = v5;
  v10 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:v9 options:5 errorHandler:&__block_literal_global_4];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      v28 = v12;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v31 = 0;
        [v15 getResourceValue:&v31 forKey:v7 error:0];
        v17 = v31;
        v30 = 0;
        [v15 getResourceValue:&v30 forKey:v8 error:0];
        v18 = v30;
        if (([v18 BOOLValue] & 1) == 0)
        {
          v19 = v8;
          v20 = v7;
          v21 = [v17 stringByReplacingOccurrencesOfString:@".json" withString:&stru_285D62BB0];
          v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v23 = [v22 isSensitiveLoggingAllowed];

          if (v23 && gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
          {
            [ENConfigurationStore allCachedCountryCodesServerResponseWithDirectoryURL:handler:];
          }

          v27[2](v27, v21);

          v7 = v20;
          v8 = v19;
          v12 = v28;
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v12 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

BOOL __84__ENConfigurationStore_allCachedCountryCodesServerResponseWithDirectoryURL_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __84__ENConfigurationStore_allCachedCountryCodesServerResponseWithDirectoryURL_handler___block_invoke_cold_1();
  }

  return v5 == 0;
}

- (id)allRegionConfigurations
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = [MEMORY[0x277CBEA68] array];
  v3 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ENConfigurationStore_allRegionConfigurations__block_invoke;
  block[3] = &unk_278FD2370;
  block[4] = self;
  block[5] = &v21;
  dispatch_async_and_wait(v3, block);

  v4 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v22[5], "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v22[5];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:*(*(&v16 + 1) + 8 * i)];
        if (v8)
        {
          v9 = [(ENConfigurationStore *)self storeQueue];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __47__ENConfigurationStore_allRegionConfigurations__block_invoke_2;
          v14[3] = &unk_278FD1240;
          v14[4] = self;
          v14[5] = v8;
          v15 = v4;
          dispatch_sync(v9, v14);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v5);
  }

  v10 = [v4 copy];
  _Block_object_dispose(&v21, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __47__ENConfigurationStore_allRegionConfigurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allCachedServerResponseConfigurationsWithPrefix:&stru_285D62BB0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __47__ENConfigurationStore_allRegionConfigurations__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) region];
  v5 = [v2 _configurationForRegion:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 48) addObject:v5];
    v4 = v5;
  }
}

- (void)allRegionConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ENConfigurationStore_allRegionConfigurationsWithCompletion___block_invoke;
  v6[3] = &unk_278FD27B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ENConfigurationStore *)self allCachedServerResponseConfigurationsWithCompletion:v6];
}

void __62__ENConfigurationStore_allRegionConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CC5CD0]);
        v12 = [v11 initWithServerResponseDictionary:{v10, v19}];
        v13 = v12;
        if (v12)
        {
          v14 = *(a1 + 32);
          v15 = [v12 region];
          v16 = [v14 _configurationForRegion:v15];

          if (v16)
          {
            [v4 addObject:v16];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)allRegionServerConfigurationsForCountryCode:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = [MEMORY[0x277CBEA68] array];
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ENConfigurationStore_allRegionServerConfigurationsForCountryCode___block_invoke;
  block[3] = &unk_278FD10D0;
  v24 = &v25;
  block[4] = self;
  v6 = v4;
  v23 = v6;
  dispatch_async_and_wait(v5, block);

  v7 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v26[5], "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v26[5];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x277CC5CD0]);
        v14 = [v13 initWithServerResponseDictionary:{v12, v18}];
        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v9);
  }

  v15 = [v7 copy];
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __68__ENConfigurationStore_allRegionServerConfigurationsForCountryCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allCachedServerResponseConfigurationsWithPrefix:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)allRegionServerConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ENConfigurationStore_allRegionServerConfigurationsWithCompletion___block_invoke;
  v6[3] = &unk_278FD27E0;
  v7 = v4;
  v5 = v4;
  [(ENConfigurationStore *)self allCachedServerResponseConfigurationsWithCompletion:v6];
}

void __68__ENConfigurationStore_allRegionServerConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CC5CD0]);
        v12 = [v11 initWithServerResponseDictionary:{v10, v15}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)allAgencyServerRegionConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ENConfigurationStore_allAgencyServerRegionConfigurationsWithCompletion___block_invoke;
  v6[3] = &unk_278FD27B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ENConfigurationStore *)self allCachedServerResponseConfigurationsWithCompletion:v6];
}

void __74__ENConfigurationStore_allAgencyServerRegionConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [*(a1 + 32) regionFromServerResponse:v9];
        if (v10)
        {
          v11 = objc_alloc(MEMORY[0x277CC5CC0]);
          v12 = [*(a1 + 32) _localeForRegion:v10];
          v13 = [v11 initWithServerResponseDictionary:v9 locale:v12];

          if (v13)
          {
            [v16 addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)serverConfigurationResponseForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v16 = 0;
    v5 = [(ENConfigurationStore *)self storeQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ENConfigurationStore_serverConfigurationResponseForRegion___block_invoke;
    block[3] = &unk_278FD10D0;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __61__ENConfigurationStore_serverConfigurationResponseForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serverConfigurationResponseForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_serverConfigurationResponseForRegion:(id)a3
{
  v4 = a3;
  v5 = [v4 regionCode];
  v6 = [(ENConfigurationStore *)self fileURLforRegionServerConfiguration:v5];

  v7 = [(ENConfigurationStore *)self _serverConfigurationResponseForFileURL:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v6 path];
    v10 = [MEMORY[0x277CCAA08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = [v4 countryCode];
      v13 = [(ENConfigurationStore *)self fileURLforRegionServerConfiguration:v12];

      v8 = [(ENConfigurationStore *)self _serverConfigurationResponseForFileURL:v13];
      v6 = v13;
    }
  }

  return v8;
}

- (id)_serverConfigurationResponseForFileURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    v19 = 0;
    v6 = [MEMORY[0x277CBEA98] dataWithContentsOfFile:v5 options:0 error:&v19];
    v7 = v19;
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (!v8)
    {
      goto LABEL_11;
    }

    if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore _serverConfigurationResponseForFileURL:v5];
      if (v6)
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
LABEL_11:
      v9 = MEMORY[0x277CBEB90];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
      v18 = v7;
      v14 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:v13 fromData:v6 error:&v18];
      v15 = v18;

      if ((v15 || !v14) && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_18;
    }

    v14 = 0;
    v15 = v7;
LABEL_18:
    v16 = v14;

    goto LABEL_19;
  }

  [ENConfigurationStore _serverConfigurationResponseForFileURL:?];
  v16 = v20;
LABEL_19:

  return v16;
}

- (void)allCachedServerResponseConfigurationsWithCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ENConfigurationStore_allCachedServerResponseConfigurationsWithCountryCode_completion___block_invoke;
  block[3] = &unk_278FD2808;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __88__ENConfigurationStore_allCachedServerResponseConfigurationsWithCountryCode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [*(a1 + 32) _allCachedServerResponseConfigurationsWithPrefix:*(a1 + 40)];
    (*(v1 + 16))(v1, v2);
  }
}

- (id)_allCachedServerResponseConfigurationsWithPrefix:(id)a3
{
  v4 = MEMORY[0x277CBEB10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(ENConfigurationStore *)self _directoryURLForCachedConfigurations];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ENConfigurationStore__allCachedServerResponseConfigurationsWithPrefix___block_invoke;
  v11[3] = &unk_278FD2830;
  v12 = v6;
  v8 = v6;
  [(ENConfigurationStore *)self _enumerateCachedServerResponseConfigurationsWithDirectoryURL:v7 prefix:v5 handler:v11];

  v9 = [v8 copy];

  return v9;
}

- (id)_directoryURLForCachedConfigurations
{
  if ([(ENConfigurationStore *)self developerServerConfiguration])
  {
    goto LABEL_4;
  }

  v3 = [(ENConfigurationStore *)self regionIdentifierOverride];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(ENConfigurationStore *)self regionIdentifierOverride];
  v6 = [v5 length];

  if (v6)
  {
LABEL_4:
    v7 = [(ENConfigurationStore *)self developerConfigurationsURL];
  }

  else
  {
LABEL_5:
    v7 = [(ENConfigurationStore *)self serverConfigurationCacheURL];
  }

  return v7;
}

- (void)_enumerateCachedServerResponseConfigurationsWithDirectoryURL:(id)a3 prefix:(id)a4 handler:(id)a5
{
  v50[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v34 = a5;
  v9 = [MEMORY[0x277CCAA08] defaultManager];
  v10 = *MEMORY[0x277CBE8F0];
  v11 = *MEMORY[0x277CBE860];
  v50[0] = *MEMORY[0x277CBE8F0];
  v50[1] = v11;
  v12 = [MEMORY[0x277CBEA68] arrayWithObjects:v50 count:2];
  v33 = v7;
  v13 = [v9 enumeratorAtURL:v7 includingPropertiesForKeys:v12 options:5 errorHandler:&__block_literal_global_72];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v13;
  v41 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v41)
  {
    v40 = *v46;
    v37 = v10;
    v38 = v8;
    v36 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v44 = 0;
        [v15 getResourceValue:&v44 forKey:v10 error:0];
        v17 = v44;
        v43 = 0;
        [v15 getResourceValue:&v43 forKey:v11 error:0];
        v18 = v43;
        if (([v18 BOOLValue] & 1) == 0)
        {
          if (![v8 length] || (objc_msgSend(v8, "lowercaseString"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "hasPrefix:", v19), v19, v20))
          {
            v21 = [MEMORY[0x277CBEA98] dataWithContentsOfURL:v15];
            if (v21)
            {
              v22 = MEMORY[0x277CBEB90];
              v23 = objc_opt_class();
              v24 = objc_opt_class();
              v25 = objc_opt_class();
              v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
              v42 = 0;
              v27 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:v26 fromData:v21 error:&v42];
              v28 = v42;
              if (v28)
              {
                v10 = v37;
                if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
                {
                  [ENConfigurationStore _enumerateCachedServerResponseConfigurationsWithDirectoryURL:prefix:handler:];
                }
              }

              else
              {
                v35 = v27;
                v29 = +[ENLoggingPrefs sharedENLoggingPrefs];
                v30 = [v29 isSensitiveLoggingAllowed];

                if (v30 && gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
                {
                  [ENConfigurationStore _enumerateCachedServerResponseConfigurationsWithDirectoryURL:prefix:handler:];
                }

                v27 = v35;
                (v34)[2](v34, v35);
                v10 = v37;
              }

              v8 = v38;
              v11 = v36;
            }
          }
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v41 != v14);
      v31 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v41 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL __100__ENConfigurationStore__enumerateCachedServerResponseConfigurationsWithDirectoryURL_prefix_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __100__ENConfigurationStore__enumerateCachedServerResponseConfigurationsWithDirectoryURL_prefix_handler___block_invoke_cold_1();
  }

  return v5 == 0;
}

- (id)serverConfigurationForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v16 = 0;
    v5 = [(ENConfigurationStore *)self storeQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ENConfigurationStore_serverConfigurationForRegion___block_invoke;
    block[3] = &unk_278FD10D0;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __53__ENConfigurationStore_serverConfigurationForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serverConfigurationForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)subdivisionListForRegion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ENConfigurationStore_subdivisionListForRegion___block_invoke;
  block[3] = &unk_278FD10D0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__ENConfigurationStore_subdivisionListForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _subdivisionListForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_subdivisionListForRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 countryCode];
    v7 = [(ENConfigurationStore *)self fileURLforCountrySubdivisionList:v6];
    v8 = [v7 path];

    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore _subdivisionListForRegion:v5];
    }

    v9 = [MEMORY[0x277CCAA08] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEA68]) initWithContentsOfFile:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [ENConfigurationStore _subdivisionListForRegion:?];
    v11 = v13;
  }

  return v11;
}

- (id)regionHashForRegion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ENConfigurationStore_regionHashForRegion___block_invoke;
  block[3] = &unk_278FD10D0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__ENConfigurationStore_regionHashForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _regionHashForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_regionHashForRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 countryCode];
    v7 = [(ENConfigurationStore *)self fileURLForCountryRegionHash:v6];

    v8 = [v7 path];
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore _regionHashForRegion:v5];
    }

    v9 = [MEMORY[0x277CCAA08] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      v14 = 0;
      v11 = [objc_alloc(MEMORY[0x277CCACA0]) initWithContentsOfURL:v7 encoding:4 error:&v14];
      v12 = v14;
      if (!v11 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [ENConfigurationStore _regionHashForRegion:?];
    v11 = v15;
  }

  return v11;
}

- (id)localeIdentifiersForRegion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ENConfigurationStore_localeIdentifiersForRegion___block_invoke;
  block[3] = &unk_278FD10D0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__ENConfigurationStore_localeIdentifiersForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localeIdentifiersForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_localeIdentifiersForRegion:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v31 = v4;
    v30 = [(ENConfigurationStore *)self _serverConfigurationResponseForRegion:v4];
    v5 = [v30 objectForKeyedSubscript:@"config"];
    v6 = [MEMORY[0x277CBEB10] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v5;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      v32 = *v35;
      do
      {
        v11 = 0;
        v33 = v9;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          if ([v12 hasPrefix:@"agencyMessage"])
          {
            v13 = [v12 componentsSeparatedByString:@"_"];
            if ([v13 count] == 3)
            {
              v14 = MEMORY[0x277CCACA0];
              v15 = [v13 objectAtIndexedSubscript:1];
              [v15 lowercaseString];
              v17 = v16 = v7;
              v18 = [v13 objectAtIndexedSubscript:2];
              [v18 uppercaseString];
              v20 = v19 = v6;
              v21 = [v14 stringWithFormat:@"%@_%@", v17, v20];

              v6 = v19;
              v7 = v16;
              v9 = v33;

              v10 = v32;
              [v19 addObject:v21];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v4 = v31;
    if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      v27 = v31;
      v28 = v6;
      LogPrintF_safe();
    }

    if ([v6 count])
    {
      v22 = v6;
    }

    else
    {
      [(ENConfigurationStore *)&v39 _localeIdentifiersForRegion:?];
      v22 = v38;
    }

    v24 = v29;
    v23 = v30;
  }

  else
  {
    v23 = [MEMORY[0x277CBEAF0] currentLocale];
    v24 = [v23 localeIdentifier];
    v41[0] = v24;
    v22 = [MEMORY[0x277CBEA68] arrayWithObjects:v41 count:1];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)localeForRegion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENConfigurationStore_localeForRegion___block_invoke;
  block[3] = &unk_278FD10D0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __40__ENConfigurationStore_localeForRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localeForRegion:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_localeForRegion:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA8D0];
    v4 = [(ENConfigurationStore *)self _localeIdentifiersForRegion:?];
    v5 = [MEMORY[0x277CBEAF0] preferredLanguages];
    v6 = [v3 preferredLocalizationsFromArray:v4 forPreferences:v5];
    v7 = [v6 firstObject];

    v8 = [MEMORY[0x277CBEAF0] localeWithLocaleIdentifier:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAF0] currentLocale];
  }

  return v8;
}

- (void)prefsChanged
{
  v3 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ENConfigurationStore_prefsChanged__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __36__ENConfigurationStore_prefsChanged__block_invoke(uint64_t a1)
{
  Int64 = CFPrefs_GetInt64();
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if ((Int64 != 0) != [v4 developerServerConfiguration])
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      __36__ENConfigurationStore_prefsChanged__block_invoke_cold_1(v3);
    }

    [*v3 setDeveloperServerConfiguration:Int64 != 0];
  }

  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();
  v6 = [*v3 regionIdentifierOverride];
  v9 = v5;
  v7 = v6;
  if (v9 == v7)
  {

    goto LABEL_16;
  }

  if ((v9 != 0) != (v7 == 0))
  {
    v8 = [v9 isEqual:v7];

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __36__ENConfigurationStore_prefsChanged__block_invoke_cold_2(v3);
  }

  [*v3 setRegionIdentifierOverride:v9];
LABEL_16:
}

- (BOOL)saveTemporaryServerConfigurations:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__7;
  v42 = __Block_byref_object_dispose__7;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __64__ENConfigurationStore_saveTemporaryServerConfigurations_error___block_invoke;
  v33[3] = &unk_278FD2858;
  v33[5] = &v38;
  v33[6] = a4;
  v33[4] = &v34;
  v24 = MEMORY[0x24C214430](v33);
  if (-[ENConfigurationStore developerServerConfiguration](self, "developerServerConfiguration") || (-[ENConfigurationStore regionIdentifierOverride](self, "regionIdentifierOverride"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (-[ENConfigurationStore regionIdentifierOverride](self, "regionIdentifierOverride"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length] == 0, v7, v6, !v8))
  {
    v9 = [MEMORY[0x277CCAA08] defaultManager];
    v10 = [(ENConfigurationStore *)self developerConfigurationsURL];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v25;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v44 count:16];
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (!v14 || (v15 = (v39 + 5), v28 = v39[5], v16 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v28], objc_storeStrong(v15, v28), !v16))
        {
          if (v39[5])
          {
            if (gLogCategory_ENConfigurationStore > 90)
            {
              goto LABEL_27;
            }

            if (gLogCategory_ENConfigurationStore == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_27;
              }

              v21 = v39[5];
            }
          }

          else
          {
            v19 = ENErrorF();
            v20 = v39[5];
            v39[5] = v19;

            if (gLogCategory_ENConfigurationStore > 90 || gLogCategory_ENConfigurationStore == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_27;
            }
          }

          LogPrintF_safe();
          goto LABEL_27;
        }

        v17 = [(ENConfigurationStore *)self storeQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__ENConfigurationStore_saveTemporaryServerConfigurations_error___block_invoke_2;
        block[3] = &unk_278FD23C0;
        block[4] = self;
        block[5] = v14;
        block[6] = &v34;
        block[7] = &v38;
        dispatch_sync(v17, block);
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_27:

    v18 = *(v35 + 24);
  }

  else if (a4)
  {
    ENErrorF();
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  v24[2](v24);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __64__ENConfigurationStore_saveTemporaryServerConfigurations_error___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && *(a1 + 48))
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    if (v2)
    {
      **(a1 + 48) = v2;
    }

    else
    {
      v3 = ENErrorF();
      **(a1 + 48) = v3;
    }
  }
}

void __64__ENConfigurationStore_saveTemporaryServerConfigurations_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _saveServerConfigurationResponse:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (void)clearTemporaryCountrySubdivisionList
{
  v3 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ENConfigurationStore_clearTemporaryCountrySubdivisionList__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)clearTemporaryServerConfigurations
{
  v3 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ENConfigurationStore_clearTemporaryServerConfigurations__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)resetStore
{
  v3 = [MEMORY[0x277CCAA08] defaultManager];
  v4 = +[ENConfigurationStore legacyAppCacheURL];
  v17 = 0;
  v5 = [v3 removeItemAtURL:v4 error:&v17];
  v6 = v17;

  if (v5)
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore resetStore];
    }
  }

  else if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationStore resetStore];
  }

  v7 = [MEMORY[0x277CCAA08] defaultManager];
  v8 = [(ENConfigurationStore *)self configurationCacheURL];
  v16 = v6;
  v9 = [v7 removeItemAtURL:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore resetStore];
    }
  }

  else if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationStore resetStore];
  }

  v11 = [MEMORY[0x277CCAA08] defaultManager];
  v12 = [(ENConfigurationStore *)self subdivisionListCacheURL];
  v15 = v10;
  v13 = [v11 removeItemAtURL:v12 error:&v15];
  v14 = v15;

  if (v13)
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore resetStore];
    }
  }

  else if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationStore resetStore];
  }
}

- (id)regionCacheURL
{
  v2 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:@"Regions"];
  v3 = [MEMORY[0x277CBEBC8] fileURLWithPath:v2 isDirectory:1];

  return v3;
}

- (id)configurationCacheURL
{
  v2 = [(ENConfigurationStore *)self regionCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Configurations"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)systemConfigurationCacheURL
{
  v2 = [(ENConfigurationStore *)self configurationCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"System"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)fileURLforRegionConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ENConfigurationStore *)self systemConfigurationCacheURL];
  v6 = MEMORY[0x277CCACA0];
  v7 = [v4 lowercaseString];

  v8 = [v6 stringWithFormat:@"%@.data", v7];
  v9 = [v5 URLByAppendingPathComponent:v8];

  return v9;
}

- (id)developerConfigurationsURL
{
  v2 = [(ENConfigurationStore *)self configurationCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"developer"];

  return v3;
}

- (id)serverConfigurationCacheURL
{
  v2 = [(ENConfigurationStore *)self configurationCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Server"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)fileURLforRegionServerConfiguration:(id)a3
{
  v4 = a3;
  if ([(ENConfigurationStore *)self developerServerConfiguration])
  {
    goto LABEL_4;
  }

  v5 = [(ENConfigurationStore *)self regionIdentifierOverride];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(ENConfigurationStore *)self regionIdentifierOverride];
  v8 = [v7 length];

  if (v8)
  {
LABEL_4:
    v9 = [(ENConfigurationStore *)self developerConfigurationsURL];
  }

  else
  {
LABEL_5:
    v9 = [(ENConfigurationStore *)self serverConfigurationCacheURL];
  }

  v10 = v9;
  v11 = MEMORY[0x277CCACA0];
  v12 = [v4 lowercaseString];
  v13 = [v11 stringWithFormat:@"%@.json", v12];
  v14 = [v10 URLByAppendingPathComponent:v13];

  return v14;
}

- (id)subdivisionListCacheURL
{
  v2 = [(ENConfigurationStore *)self regionCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Subdivisions"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)developerSubdivisionListCacheURL
{
  v2 = [(ENConfigurationStore *)self subdivisionListCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Developer"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)serverSubdivisionListCacheURL
{
  v2 = [(ENConfigurationStore *)self subdivisionListCacheURL];
  v3 = [v2 URLByAppendingPathComponent:@"Server"];
  v4 = [v3 path];

  v5 = [MEMORY[0x277CBEBC8] fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)fileURLforCountrySubdivisionList:(id)a3
{
  v4 = a3;
  if ([(ENConfigurationStore *)self developerServerConfiguration])
  {
    goto LABEL_4;
  }

  v5 = [(ENConfigurationStore *)self regionIdentifierOverride];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(ENConfigurationStore *)self regionIdentifierOverride];
  v8 = [v7 length];

  if (v8)
  {
LABEL_4:
    v9 = [(ENConfigurationStore *)self developerSubdivisionListCacheURL];
  }

  else
  {
LABEL_5:
    v9 = [(ENConfigurationStore *)self serverSubdivisionListCacheURL];
  }

  v10 = v9;
  v11 = MEMORY[0x277CCACA0];
  v12 = [v4 lowercaseString];
  v13 = [v11 stringWithFormat:@"%@.plist", v12];
  v14 = [v10 URLByAppendingPathComponent:v13];

  return v14;
}

- (id)fileURLForCountryRegionHash:(id)a3
{
  v4 = a3;
  if ([(ENConfigurationStore *)self developerServerConfiguration])
  {
    goto LABEL_4;
  }

  v5 = [(ENConfigurationStore *)self regionIdentifierOverride];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [(ENConfigurationStore *)self regionIdentifierOverride];
  v8 = [v7 length];

  if (v8)
  {
LABEL_4:
    v9 = [(ENConfigurationStore *)self developerSubdivisionListCacheURL];
  }

  else
  {
LABEL_5:
    v9 = [(ENConfigurationStore *)self serverSubdivisionListCacheURL];
  }

  v10 = v9;
  v11 = MEMORY[0x277CCACA0];
  v12 = [v4 lowercaseString];

  v13 = [v11 stringWithFormat:@"%@_region_hash.plist", v12];
  v14 = [v10 URLByAppendingPathComponent:v13];

  return v14;
}

+ (id)legacyAppCacheURL
{
  if (legacyAppCacheURL_onceToken != -1)
  {
    +[ENConfigurationStore legacyAppCacheURL];
  }

  v3 = legacyAppCacheURL_cacheURL;

  return v3;
}

void __41__ENConfigurationStore_legacyAppCacheURL__block_invoke()
{
  v7 = 1;
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3 && gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      __41__ENConfigurationStore_legacyAppCacheURL__block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CBEBC8] fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v5 = [v4 URLByAppendingPathComponent:@"Library/Caches/Cloud/"];
    v6 = legacyAppCacheURL_cacheURL;
    legacyAppCacheURL_cacheURL = v5;

    free(v1);
  }

  else if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __41__ENConfigurationStore_legacyAppCacheURL__block_invoke_cold_2(&v7);
  }
}

- (id)cachedAppConfiguationForBundleID:(id)a3 forRegionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v8 = [(ENConfigurationStore *)self storeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ENConfigurationStore_cachedAppConfiguationForBundleID_forRegionID___block_invoke;
  block[3] = &unk_278FD2880;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __69__ENConfigurationStore_cachedAppConfiguationForBundleID_forRegionID___block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = +[ENConfigurationStore legacyAppCacheURL];
    v3 = [v2 URLByAppendingPathComponent:a1[4]];
    v4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@.plist", a1[5]];
    v5 = [v3 URLByAppendingPathComponent:v4];

    v6 = [MEMORY[0x277CBEA98] dataWithContentsOfURL:v5];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB90];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v19 = 0;
      v10 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:v9 fromData:v6 error:&v19];
      v11 = v19;
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v10;

      if (v11 || ([*(*(a1[6] + 8) + 40) appID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", a1[5]), v14, (v15 & 1) == 0))
      {
        if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
        {
          v18 = a1[5];
          LogPrintF_safe();
        }

        v16 = *(a1[6] + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = 0;
      }

      else if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
      {
        __69__ENConfigurationStore_cachedAppConfiguationForBundleID_forRegionID___block_invoke_cold_1((a1 + 6));
      }
    }
  }

  else if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __69__ENConfigurationStore_cachedAppConfiguationForBundleID_forRegionID___block_invoke_cold_2(a1);
  }
}

- (id)legacyAppConfiguationForMobileCountryCode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationStore legacyAppConfiguationForMobileCountryCode:];
    }

    v5 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7;
    v15 = __Block_byref_object_dispose__7;
    v16 = 0;
    v6 = [(ENConfigurationStore *)self storeQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke;
    v8[3] = &unk_278FD2770;
    v9 = 0;
    v10 = &v11;
    dispatch_sync(v6, v8);

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

void __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke(uint64_t a1)
{
  v47[2] = *MEMORY[0x277D85DE8];
  if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_cold_1(a1);
  }

  v2 = +[ENConfigurationStore legacyAppCacheURL];
  v35 = (a1 + 32);
  v3 = [v2 URLByAppendingPathComponent:*(a1 + 32)];

  v4 = [MEMORY[0x277CCAA08] defaultManager];
  v5 = *MEMORY[0x277CBE8F0];
  v6 = *MEMORY[0x277CBE860];
  v47[0] = *MEMORY[0x277CBE8F0];
  v47[1] = v6;
  v7 = [MEMORY[0x277CBEA68] arrayWithObjects:v47 count:2];
  v33 = v3;
  v8 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:4 errorHandler:&__block_literal_global_168];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    v34 = v9;
    v37 = *v43;
    while (2)
    {
      v13 = 0;
      v38 = v11;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v41 = 0;
        [v14 getResourceValue:&v41 forKey:v5 error:{0, v31, v32}];
        v15 = v41;
        v40 = 0;
        [v14 getResourceValue:&v40 forKey:v6 error:0];
        v16 = v40;
        if (([v16 BOOLValue] & 1) == 0)
        {
          v17 = [MEMORY[0x277CBEA98] dataWithContentsOfURL:v14];
          if (v17)
          {
            v18 = MEMORY[0x277CBEB90];
            v19 = objc_opt_class();
            v31 = objc_opt_class();
            v32 = 0;
            v39 = [v18 setWithObjects:v19];
            v20 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClasses:? fromData:? error:?];
            v21 = 0;
            v22 = *(*(a1 + 40) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v20;

            if (v21)
            {
              if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
              {
                v31 = *v35;
                v32 = v21;
                LogPrintF_safe();
              }

              v28 = *(*(a1 + 40) + 8);
              v29 = *(v28 + 40);
              *(v28 + 40) = 0;
            }

            else
            {
              v24 = a1;
              v25 = [*(*(*(a1 + 40) + 8) + 40) regionID];
              v36 = [v25 isEqualToString:*v35];

              v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v27 = [v26 isSensitiveLoggingAllowed];

              if (v36)
              {
                a1 = v24;
                if (v27 && gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
                {
                  __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_cold_3(v24 + 40);
                }

                v9 = v34;
                goto LABEL_33;
              }

              a1 = v24;
              v9 = v34;
              if (v27 && gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
              {
                __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_cold_2(a1 + 40);
              }
            }

            v12 = v37;
            v11 = v38;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  if (!*(*(*(a1 + 40) + 8) + 40) && gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_cold_4(v35);
  }

  v30 = *MEMORY[0x277D85DE8];
}

BOOL __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    __66__ENConfigurationStore_legacyAppConfiguationForMobileCountryCode___block_invoke_2_cold_1();
  }

  return v5 == 0;
}

- (BOOL)_saveCountrySubdivisionList:(id)a3 country:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 countryCode];
  v10 = [(ENConfigurationStore *)self fileURLforCountrySubdivisionList:v9];

  v11 = [v10 URLByDeletingLastPathComponent];
  v12 = [MEMORY[0x277CCAA08] defaultManager];
  v14 = OUTLINED_FUNCTION_2_3(v12, v13);

  if (v14)
  {
    v15 = *MEMORY[0x277CBE870];
    v22 = 0;
    v16 = [v11 setResourceValue:MEMORY[0x277CBEC20] forKey:v15 error:&v22];
    v17 = v22;
    if ((v16 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      v20 = v11;
      v21 = v17;
      LogPrintF_safe();
    }

    v18 = [v8 writeToURL:v10 error:{a5, v20, v21}];
    if (v18 && gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)_saveRegionHash:(id)a3 region:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 countryCode];
  v10 = [(ENConfigurationStore *)self fileURLForCountryRegionHash:v9];

  v11 = [v10 URLByDeletingLastPathComponent];
  v12 = [MEMORY[0x277CCAA08] defaultManager];
  v14 = OUTLINED_FUNCTION_2_3(v12, v13);

  if (!v14)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v15 = *MEMORY[0x277CBE870];
  v27 = 0;
  v16 = [v11 setResourceValue:MEMORY[0x277CBEC20] forKey:v15 error:&v27];
  v17 = v27;
  if ((v16 & 1) == 0 && gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (!v8)
  {
    v18 = [MEMORY[0x277CCAA08] defaultManager];
    v26 = 0;
    v19 = [v18 removeItemAtURL:v10 error:&v26];
    v20 = v26;

    if ((v19 & 1) == 0)
    {
      if ([v20 code] != 4 || (objc_msgSend(v20, "domain"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", *MEMORY[0x277CCA048]), v21, (v22 & 1) == 0))
      {
        if (a5)
        {
          v23 = v20;
          *a5 = v20;
        }

        goto LABEL_20;
      }
    }

LABEL_12:
    if (gLogCategory_ENConfigurationStore <= 10 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v24 = 1;
    goto LABEL_23;
  }

  if ([v8 writeToURL:v10 atomically:1 encoding:4 error:a5])
  {
    goto LABEL_12;
  }

LABEL_20:
  v24 = 0;
LABEL_23:

LABEL_24:
  return v24;
}

- (BOOL)regionSupportsSubdivisions:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(ENConfigurationStore *)self subdivisionListForRegion:?];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_serverConfigurationForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ENConfigurationStore *)self _serverConfigurationResponseForRegion:v4];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serverExposureConfigurationForRegion:(id)a3
{
  v3 = [(ENConfigurationStore *)self serverConfigurationResponseForRegion:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CC5CE0]) initWithServerResponseDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)agencyConfigurationForRegion:(id)a3
{
  v4 = a3;
  v5 = [OUTLINED_FUNCTION_3_3() serverConfigurationResponseForRegion:?];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CC5CC0]);
    v7 = [OUTLINED_FUNCTION_3_3() localeForRegion:?];
    v8 = OUTLINED_FUNCTION_5_1(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_agencyConfigurationForRegion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [OUTLINED_FUNCTION_3_3() _serverConfigurationResponseForRegion:?];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CC5CC0]);
      v7 = [OUTLINED_FUNCTION_3_3() _localeForRegion:?];
      v8 = OUTLINED_FUNCTION_5_1(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)downloadConfigurationForRegion:(id)a3
{
  v3 = [(ENConfigurationStore *)self serverConfigurationResponseForRegion:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CC5CE8]) initWithServerResponseDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)regionFromServerResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"countryCode"];
    if (!v5)
    {
      v7 = 0;
      goto LABEL_12;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = 0;
    if (!self || (isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    v8 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
    {
      if (([MEMORY[0x277CC5CA0] validSubdivisionCode:v8 forCountryCode:v5] & 1) == 0)
      {
        if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v7 = 0;
        goto LABEL_11;
      }

      v9 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v5 subdivisionCode:v8];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v5];
    }

    v7 = v9;
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

void __60__ENConfigurationStore_clearTemporaryCountrySubdivisionList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) developerSubdivisionListCacheURL];
  v3 = [v2 path];

  v4 = [OUTLINED_FUNCTION_4_0() defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v20];

  if (!v5)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v6 = [*(v1 + 2568) defaultManager];
  v14 = OUTLINED_FUNCTION_6_0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  v15 = v19;

  if (v14 && !v15)
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_13;
  }

  if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_14:
}

void __58__ENConfigurationStore_clearTemporaryServerConfigurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) developerConfigurationsURL];
  v3 = [v2 path];

  v4 = [OUTLINED_FUNCTION_4_0() defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v20];

  if (!v5)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v6 = [*(v1 + 2568) defaultManager];
  v14 = OUTLINED_FUNCTION_6_0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  v15 = v19;

  if (v14 && !v15)
  {
    if (gLogCategory_ENConfigurationStore <= 30 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    goto LABEL_13;
  }

  if (gLogCategory_ENConfigurationStore <= 90 && (gLogCategory_ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_14:
}

- (void)initWithDirectoryPath:(void *)a1 .cold.1(void *a1)
{
  [a1 regionCacheURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_4();
  LogPrintF_safe();
}

- (void)initWithDirectoryPath:(void *)a1 .cold.2(void *a1)
{
  [a1 configurationCacheURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_4();
  LogPrintF_safe();
}

- (void)initWithDirectoryPath:(void *)a1 .cold.3(void *a1)
{
  [a1 systemConfigurationCacheURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_4();
  LogPrintF_safe();
}

- (void)_configurationForRegion:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  if (gLogCategory__ENConfigurationStore <= 90 && (gLogCategory__ENConfigurationStore != -1 || _LogCategory_Initialize()))
  {
    v5 = [a1 region];
    LogPrintF_safe();
  }

  *a3 = 0;
}

- (uint64_t)_configurationForRegion:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_existingConfigurationForRegion:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_existingConfigurationForRegionPath:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (gLogCategory_ENConfigurationStore <= 10)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = 0;
  return result;
}

- (void)_existingConfigurationForRegionPath:(void *)a1 .cold.2(void *a1)
{
  [a1 lastPathComponent];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_4();
  LogPrintF_safe();
}

- (uint64_t)_existingConfigurationForRegionPath:(uint64_t)result .cold.3(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_saveRegionConfiguration:(void *)a1 error:.cold.2(void *a1)
{
  v1 = [a1 region];
  LogPrintF_safe();
}

- (void)_serverConfigurationResponseForFileURL:(void *)a1 .cold.1(void *a1)
{
  [a1 lastPathComponent];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_4();
  LogPrintF_safe();
}

- (uint64_t)_serverConfigurationResponseForFileURL:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_subdivisionListForRegion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 countryCode];
  LogPrintF_safe();
}

- (uint64_t)_subdivisionListForRegion:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_regionHashForRegion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 countryCode];
  LogPrintF_safe();
}

- (uint64_t)_regionHashForRegion:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENConfigurationStore <= 90)
  {
    if (gLogCategory_ENConfigurationStore != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_localeIdentifiersForRegion:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  v4 = [MEMORY[0x277CBEAF0] currentLocale];
  v5 = [v4 localeIdentifier];
  *a1 = v5;
  *a2 = [MEMORY[0x277CBEA68] arrayWithObjects:a1 count:1];
}

void __36__ENConfigurationStore_prefsChanged__block_invoke_cold_2(id *a1)
{
  v1 = [*a1 regionIdentifierOverride];
  LogPrintF_safe();
}

@end