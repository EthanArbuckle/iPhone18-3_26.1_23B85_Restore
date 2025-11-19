@interface MDMInstalledApplicationListCommand
+ (id)allItems;
+ (id)expensiveItems;
+ (id)itemsThatMustAlwaysBeReturned;
- (id)responseForRequest:(id)a3;
- (void)_processArguments;
- (void)_processIdentifiersArgument;
- (void)_processItemsArgument;
- (void)_processManagedAppsOnlyArgument;
- (void)_reset;
- (void)_validateRequestDictionaryIsPresentAndADictionary;
- (void)fetchAppProperties;
@end

@implementation MDMInstalledApplicationListCommand

- (id)responseForRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MDMInstalledApplicationListCommand *)self _reset];
  [(MDMInstalledApplicationListCommand *)self setRequest:v4];
  [(MDMInstalledApplicationListCommand *)self _processArguments];
  [(MDMInstalledApplicationListCommand *)self fetchAppProperties];
  v5 = objc_opt_new();
  v6 = [(MDMInstalledApplicationListCommand *)self appItems];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v6 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v20 = @"InstalledApplicationList";
  v21 = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v11 addEntriesFromDictionary:v12];

  v13 = [v11 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_reset
{
  [(MDMInstalledApplicationListCommand *)self setRequest:0];
  [(MDMInstalledApplicationListCommand *)self setAppsRequested:0];
  [(MDMInstalledApplicationListCommand *)self setShouldReturnManagedAppsOnly:0];

  [(MDMInstalledApplicationListCommand *)self setItemsRequested:0];
}

- (void)_processArguments
{
  [(MDMInstalledApplicationListCommand *)self _processIdentifiersArgument];
  [(MDMInstalledApplicationListCommand *)self _processManagedAppsOnlyArgument];

  [(MDMInstalledApplicationListCommand *)self _processItemsArgument];
}

- (void)_processIdentifiersArgument
{
  v21 = *MEMORY[0x277D85DE8];
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  v3 = [(MDMInstalledApplicationListCommand *)self request];
  v4 = [v3 objectForKeyedSubscript:@"Identifiers"];

  if (v4)
  {
    v14 = self;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument Identifiers is not an array"];
    }

    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"identifier is not a string"];
          }

          [v5 addObject:{v11, v14}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [(MDMInstalledApplicationListCommand *)v14 setAppsRequested:v12];

    v4 = v15;
  }

  else
  {
    [(MDMInstalledApplicationListCommand *)self setAppsRequested:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processManagedAppsOnlyArgument
{
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  v3 = [(MDMInstalledApplicationListCommand *)self request];
  v6 = [v3 objectForKeyedSubscript:@"ManagedAppsOnly"];

  v4 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument ManagedAppsOnly is not a number (BOOLean)"];
      v4 = v6;
    }
  }

  -[MDMInstalledApplicationListCommand setShouldReturnManagedAppsOnly:](self, "setShouldReturnManagedAppsOnly:", (-[MDMInstalledApplicationListCommand isUserEnrollment](self, "isUserEnrollment") | [v4 BOOLValue]) & 1);
}

- (void)_processItemsArgument
{
  v2 = self;
  v28 = *MEMORY[0x277D85DE8];
  [(MDMInstalledApplicationListCommand *)self _validateRequestDictionaryIsPresentAndADictionary];
  v3 = [(MDMInstalledApplicationListCommand *)v2 request];
  v4 = [v3 objectForKeyedSubscript:@"Items"];

  v5 = objc_opt_new();
  v6 = [objc_opt_class() allItems];
  v7 = v6;
  if (v4)
  {
    v20 = v2;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"argument Items is not an array"];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"item is not a string"];
          }

          if ([v7 containsObject:{v13, v19}])
          {
            [v5 addObject:v13];
          }

          else
          {
            v14 = *DMCLogObjects();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v26 = v13;
              _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "InstalledApplicationList command requested invalid Item %{public}@. Ignored.", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v10);
    }

    v4 = v19;
    v2 = v20;
  }

  else
  {
    v15 = [v6 allObjects];
    [v5 addObjectsFromArray:v15];

    v16 = [objc_opt_class() expensiveItems];
    [v5 minusSet:v16];
  }

  v17 = [objc_opt_class() itemsThatMustAlwaysBeReturned];
  [v5 unionSet:v17];

  [(MDMInstalledApplicationListCommand *)v2 setItemsRequested:v5];
  v18 = *MEMORY[0x277D85DE8];
}

+ (id)itemsThatMustAlwaysBeReturned
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Identifier";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_validateRequestDictionaryIsPresentAndADictionary
{
  v3 = [(MDMInstalledApplicationListCommand *)self request];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:@"InvalidArgument" format:@"request does not exist"];
  }

  v4 = [(MDMInstalledApplicationListCommand *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x277CBEAD8];

    [v6 raise:@"InvalidArgument" format:@"request is not a dictionary"];
  }
}

- (void)fetchAppProperties
{
  v6 = [(MDMInstalledApplicationListCommand *)self dataSource];
  v3 = [(MDMInstalledApplicationListCommand *)self appsRequested];
  [v6 setAppsRequested:v3];

  [v6 setShouldReturnManagedAppsOnly:{-[MDMInstalledApplicationListCommand shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly")}];
  v4 = [(MDMInstalledApplicationListCommand *)self itemsRequested];
  [v6 setItemsRequested:v4];

  [v6 fetchAppItems];
  v5 = [v6 appItems];
  [(MDMInstalledApplicationListCommand *)self setAppItems:v5];
}

+ (id)allItems
{
  v7[16] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Identifier";
  v7[1] = @"ExternalVersionIdentifier";
  v7[2] = @"DistributorIdentifier";
  v7[3] = @"Version";
  v7[4] = @"ShortVersion";
  v7[5] = @"Name";
  v7[6] = @"BundleSize";
  v7[7] = @"DynamicSize";
  v7[8] = @"IsValidated";
  v7[9] = @"Installing";
  v7[10] = @"AppStoreVendable";
  v7[11] = @"DeviceBasedVPP";
  v7[12] = @"BetaApp";
  v7[13] = @"AdHocCodeSigned";
  v7[14] = @"HasUpdateAvailable";
  v7[15] = @"IsAppClip";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:16];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)expensiveItems
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"BundleSize";
  v7[1] = @"DynamicSize";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end