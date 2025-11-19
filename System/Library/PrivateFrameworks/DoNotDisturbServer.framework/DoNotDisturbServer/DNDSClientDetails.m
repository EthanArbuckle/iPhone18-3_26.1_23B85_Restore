@interface DNDSClientDetails
+ (id)_detailsForClientIdentifier:(id)a3 bundleInfoDictionary:(id)a4;
+ (id)detailsForBundleAtURL:(id)a3;
+ (id)detailsForClientIdentifier:(id)a3 applicationBundleURL:(id)a4;
- (DNDSClientDetails)initWithClientIdentifier:(id)a3 identifiers:(id)a4 resolutionContextAssumingDeviceUILocked:(BOOL)a5 userInteractionClient:(BOOL)a6 persistentAssertionClient:(BOOL)a7 syncSuppressedClient:(BOOL)a8 iOS14SyncSuppressedClient:(BOOL)a9 forcesAssertionStatusUpdate:(BOOL)a10;
@end

@implementation DNDSClientDetails

+ (id)detailsForBundleAtURL:(id)a3
{
  v4 = CFBundleCopyInfoDictionaryInDirectory(a3);
  if (v4)
  {
    v5 = [a1 _detailsForClientIdentifier:0 bundleInfoDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)detailsForClientIdentifier:(id)a3 applicationBundleURL:(id)a4
{
  v6 = a3;
  v7 = CFBundleCopyInfoDictionaryInDirectory(a4);
  v8 = [(__CFDictionary *)v7 bs_safeDictionaryForKey:@"DNDClientDetails"];
  v9 = [v8 bs_safeDictionaryForKey:v6];
  if (v9)
  {
    v10 = [a1 _detailsForClientIdentifier:v6 bundleInfoDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_detailsForClientIdentifier:(id)a3 bundleInfoDictionary:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 bs_safeDictionaryForKey:@"DNDModeAssertionServiceOptions"];
  v8 = v7;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 bs_safeStringForKey:@"DNDClientIdentifier"];
    v11 = v10;
    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v12 = [v6 bs_safeStringForKey:*MEMORY[0x277CBED38]];
      v13 = v12;
      v14 = &stru_285C26090;
      if (v12)
      {
        v14 = v12;
      }

      v5 = v14;
    }

    v15 = [v8 bs_safeArrayForKey:@"DNDClientIdentifier"];
    v9 = [v15 bs_filter:&__block_literal_global_29];
  }

  v34 = v5;
  if (![v9 count])
  {
    v36[0] = v5;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];

    v9 = v16;
  }

  v17 = [v6 bs_safeDictionaryForKey:@"DNDEventBehaviorResolutionServiceOptions"];
  v18 = [v17 bs_safeNumberForKey:@"DNDEventBehaviorResolutionContextDeviceUILocked"];
  v33 = [v18 BOOLValue];

  v19 = [v8 bs_safeNumberForKey:@"DNDUserInteractive"];
  v20 = [v19 BOOLValue];

  v21 = [v8 bs_safeNumberForKey:@"DNDAssertionsPersist"];
  v22 = [v21 BOOLValue];

  v23 = [v8 bs_safeNumberForKey:@"DNDSyncSuppressed"];
  v24 = [v23 BOOLValue];

  v25 = [v8 bs_safeNumberForKey:@"DNDiOS14SyncSuppressed"];
  v26 = [v25 BOOLValue];

  v27 = [v8 bs_safeNumberForKey:@"DNDForceAssertionStatusUpdate"];
  v28 = [v27 BOOLValue];

  BYTE1(v32) = v28;
  LOBYTE(v32) = v26;
  v29 = [[a1 alloc] initWithClientIdentifier:v34 identifiers:v9 resolutionContextAssumingDeviceUILocked:v33 userInteractionClient:v20 persistentAssertionClient:v22 syncSuppressedClient:v24 iOS14SyncSuppressedClient:v32 forcesAssertionStatusUpdate:?];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __70__DNDSClientDetails__detailsForClientIdentifier_bundleInfoDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (DNDSClientDetails)initWithClientIdentifier:(id)a3 identifiers:(id)a4 resolutionContextAssumingDeviceUILocked:(BOOL)a5 userInteractionClient:(BOOL)a6 persistentAssertionClient:(BOOL)a7 syncSuppressedClient:(BOOL)a8 iOS14SyncSuppressedClient:(BOOL)a9 forcesAssertionStatusUpdate:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v24.receiver = self;
  v24.super_class = DNDSClientDetails;
  v18 = [(DNDSClientDetails *)&v24 init];
  if (v18)
  {
    v19 = [v16 copy];
    clientIdentifier = v18->_clientIdentifier;
    v18->_clientIdentifier = v19;

    v21 = [v17 copy];
    identifiers = v18->_identifiers;
    v18->_identifiers = v21;

    v18->_resolutionContextAssumingDeviceUILocked = a5;
    v18->_userInteractionClient = a6;
    v18->_persistentAssertionClient = a7;
    v18->_syncSuppressedClient = a8;
    v18->_iOS14SyncSuppressedClient = a9;
    v18->_forcesAssertionStatusUpdate = a10;
  }

  return v18;
}

@end