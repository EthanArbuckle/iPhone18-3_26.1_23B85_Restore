@interface DNDSClientDetails
+ (id)_detailsForClientIdentifier:(id)identifier bundleInfoDictionary:(id)dictionary;
+ (id)detailsForBundleAtURL:(id)l;
+ (id)detailsForClientIdentifier:(id)identifier applicationBundleURL:(id)l;
- (DNDSClientDetails)initWithClientIdentifier:(id)identifier identifiers:(id)identifiers resolutionContextAssumingDeviceUILocked:(BOOL)locked userInteractionClient:(BOOL)client persistentAssertionClient:(BOOL)assertionClient syncSuppressedClient:(BOOL)suppressedClient iOS14SyncSuppressedClient:(BOOL)syncSuppressedClient forcesAssertionStatusUpdate:(BOOL)self0;
@end

@implementation DNDSClientDetails

+ (id)detailsForBundleAtURL:(id)l
{
  v4 = CFBundleCopyInfoDictionaryInDirectory(l);
  if (v4)
  {
    v5 = [self _detailsForClientIdentifier:0 bundleInfoDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)detailsForClientIdentifier:(id)identifier applicationBundleURL:(id)l
{
  identifierCopy = identifier;
  v7 = CFBundleCopyInfoDictionaryInDirectory(l);
  v8 = [(__CFDictionary *)v7 bs_safeDictionaryForKey:@"DNDClientDetails"];
  v9 = [v8 bs_safeDictionaryForKey:identifierCopy];
  if (v9)
  {
    v10 = [self _detailsForClientIdentifier:identifierCopy bundleInfoDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_detailsForClientIdentifier:(id)identifier bundleInfoDictionary:(id)dictionary
{
  v36[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy bs_safeDictionaryForKey:@"DNDModeAssertionServiceOptions"];
  v8 = v7;
  if (identifierCopy)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 bs_safeStringForKey:@"DNDClientIdentifier"];
    v11 = v10;
    if (v10)
    {
      identifierCopy = v10;
    }

    else
    {
      v12 = [dictionaryCopy bs_safeStringForKey:*MEMORY[0x277CBED38]];
      v13 = v12;
      v14 = &stru_285C26090;
      if (v12)
      {
        v14 = v12;
      }

      identifierCopy = v14;
    }

    v15 = [v8 bs_safeArrayForKey:@"DNDClientIdentifier"];
    v9 = [v15 bs_filter:&__block_literal_global_29];
  }

  v34 = identifierCopy;
  if (![v9 count])
  {
    v36[0] = identifierCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];

    v9 = v16;
  }

  v17 = [dictionaryCopy bs_safeDictionaryForKey:@"DNDEventBehaviorResolutionServiceOptions"];
  v18 = [v17 bs_safeNumberForKey:@"DNDEventBehaviorResolutionContextDeviceUILocked"];
  bOOLValue = [v18 BOOLValue];

  v19 = [v8 bs_safeNumberForKey:@"DNDUserInteractive"];
  bOOLValue2 = [v19 BOOLValue];

  v21 = [v8 bs_safeNumberForKey:@"DNDAssertionsPersist"];
  bOOLValue3 = [v21 BOOLValue];

  v23 = [v8 bs_safeNumberForKey:@"DNDSyncSuppressed"];
  bOOLValue4 = [v23 BOOLValue];

  v25 = [v8 bs_safeNumberForKey:@"DNDiOS14SyncSuppressed"];
  bOOLValue5 = [v25 BOOLValue];

  v27 = [v8 bs_safeNumberForKey:@"DNDForceAssertionStatusUpdate"];
  bOOLValue6 = [v27 BOOLValue];

  BYTE1(v32) = bOOLValue6;
  LOBYTE(v32) = bOOLValue5;
  v29 = [[self alloc] initWithClientIdentifier:v34 identifiers:v9 resolutionContextAssumingDeviceUILocked:bOOLValue userInteractionClient:bOOLValue2 persistentAssertionClient:bOOLValue3 syncSuppressedClient:bOOLValue4 iOS14SyncSuppressedClient:v32 forcesAssertionStatusUpdate:?];

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

- (DNDSClientDetails)initWithClientIdentifier:(id)identifier identifiers:(id)identifiers resolutionContextAssumingDeviceUILocked:(BOOL)locked userInteractionClient:(BOOL)client persistentAssertionClient:(BOOL)assertionClient syncSuppressedClient:(BOOL)suppressedClient iOS14SyncSuppressedClient:(BOOL)syncSuppressedClient forcesAssertionStatusUpdate:(BOOL)self0
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v24.receiver = self;
  v24.super_class = DNDSClientDetails;
  v18 = [(DNDSClientDetails *)&v24 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    clientIdentifier = v18->_clientIdentifier;
    v18->_clientIdentifier = v19;

    v21 = [identifiersCopy copy];
    identifiers = v18->_identifiers;
    v18->_identifiers = v21;

    v18->_resolutionContextAssumingDeviceUILocked = locked;
    v18->_userInteractionClient = client;
    v18->_persistentAssertionClient = assertionClient;
    v18->_syncSuppressedClient = suppressedClient;
    v18->_iOS14SyncSuppressedClient = syncSuppressedClient;
    v18->_forcesAssertionStatusUpdate = update;
  }

  return v18;
}

@end