@interface MDMAppPropertyShim
+ (id)_dmdKeysToRequestToGetItems:(id)a3;
+ (id)_itemKeyToDMDKeyMappingTable;
- (DMFConnection)deviceManagementUserConnection;
- (id)_appDictionaryFromApp:(id)a3;
- (void)_createAppItems;
- (void)_createKeysForRequest;
- (void)_createRequest;
- (void)_executeRequest;
- (void)fetchAppItems;
@end

@implementation MDMAppPropertyShim

- (void)fetchAppItems
{
  [(MDMAppPropertyShim *)self _createRequest];
  [(MDMAppPropertyShim *)self _executeRequest];

  [(MDMAppPropertyShim *)self _createAppItems];
}

- (void)_createRequest
{
  [(MDMAppPropertyShim *)self _createKeysForRequest];
  v6 = objc_opt_new();
  [v6 setType:6];
  v3 = [(MDMAppPropertyShim *)self appsRequested];
  v4 = [v3 allObjects];
  [v6 setBundleIdentifiers:v4];

  [v6 setManagedAppsOnly:{-[MDMAppPropertyShim shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly")}];
  [v6 setDeleteFeedback:0];
  [v6 setAdvanceTransientStates:0];
  v5 = [(MDMAppPropertyShim *)self keysForRequest];
  [v6 setPropertyKeys:v5];

  [(MDMAppPropertyShim *)self setRequest:v6];
}

- (void)_createKeysForRequest
{
  v3 = objc_opt_class();
  v5 = [(MDMAppPropertyShim *)self itemsRequested];
  v4 = [v3 _dmdKeysToRequestToGetItems:v5];
  [(MDMAppPropertyShim *)self setKeysForRequest:v4];
}

- (void)_executeRequest
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(MDMAppPropertyShim *)self deviceManagementUserConnection];
  v4 = [(MDMAppPropertyShim *)self request];
  v12 = 0;
  v5 = [v3 performRequest:v4 error:&v12];
  v6 = v12;

  if (!v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"request for app items failed: %@", v6];
    v8 = [MDMAppPropertyShimException alloc];
    v13 = @"error";
    v14[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [(MDMAppPropertyShimException *)v8 initWithName:@"MCDMDAppPropertyShimExceptionRequestFailed" reason:v7 userInfo:v9];

    [(MDMAppPropertyShimException *)v10 raise];
  }

  [(MDMAppPropertyShim *)self setResponse:v5];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createAppItems
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MDMAppPropertyShim *)self response];
  v4 = [v3 appsByBundleIdentifier];

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v17}];
        v13 = [(MDMAppPropertyShim *)self _appDictionaryFromApp:v12];
        if (!-[MDMAppPropertyShim shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly") || ([v12 sourceIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, !v15))
        {
          if (v13)
          {
            [v5 setObject:v13 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [(MDMAppPropertyShim *)self setAppItems:v5];
  v16 = *MEMORY[0x277D85DE8];
}

- (DMFConnection)deviceManagementUserConnection
{
  deviceManagementUserConnection = self->_deviceManagementUserConnection;
  if (!deviceManagementUserConnection)
  {
    v4 = [MEMORY[0x277D04BF8] currentUserConnection];
    v5 = self->_deviceManagementUserConnection;
    self->_deviceManagementUserConnection = v4;

    deviceManagementUserConnection = self->_deviceManagementUserConnection;
  }

  return deviceManagementUserConnection;
}

+ (id)_itemKeyToDMDKeyMappingTable
{
  v6[16] = *MEMORY[0x277D85DE8];
  v5[0] = @"AdHocCodeSigned";
  v5[1] = @"AppStoreVendable";
  v6[0] = @"isAdHocCodeSigned";
  v6[1] = @"isAppStoreVendable";
  v5[2] = @"BetaApp";
  v5[3] = @"BundleSize";
  v6[2] = @"isBetaApp";
  v6[3] = @"staticUsage";
  v5[4] = @"DeviceBasedVPP";
  v5[5] = @"DynamicSize";
  v6[4] = @"isDeviceBasedVPP";
  v6[5] = @"dynamicUsage";
  v5[6] = @"ExternalVersionIdentifier";
  v5[7] = @"DistributorIdentifier";
  v6[6] = @"externalVersionIdentifier";
  v6[7] = @"distributorIdentifier";
  v5[8] = @"HasUpdateAvailable";
  v5[9] = @"Identifier";
  v6[8] = @"hasUpdateAvailable";
  v6[9] = @"bundleIdentifier";
  v5[10] = @"Installing";
  v5[11] = @"IsValidated";
  v6[10] = @"installationState";
  v6[11] = @"isValidated";
  v5[12] = @"Name";
  v5[13] = @"ShortVersion";
  v6[12] = @"displayName";
  v6[13] = @"shortVersion";
  v5[14] = @"Version";
  v5[15] = @"IsAppClip";
  v6[14] = @"version";
  v6[15] = @"isAppClip";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_dmdKeysToRequestToGetItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _itemKeyToDMDKeyMappingTable];
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v6 addObject:@"bundleIdentifier"];
  [v6 addObject:@"installationState"];
  [v6 addObject:@"storeItemIdentifier"];
  [v6 addObject:@"sourceIdentifier"];
  v13 = [v6 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_appDictionaryFromApp:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 installationState] - 2;
  if (v6 <= 5 && ((0x37u >> v6) & 1) != 0)
  {
    v7 = 0xCu >> v6;
    v8 = [(MDMAppPropertyShim *)self itemsRequested];
    v9 = [v8 containsObject:@"Installing"];

    v10 = MEMORY[0x277CBEC38];
    v11 = MEMORY[0x277CBEC28];
    if (v9)
    {
      if (v7)
      {
        v12 = MEMORY[0x277CBEC28];
      }

      else
      {
        v12 = MEMORY[0x277CBEC38];
      }

      [v5 setObject:v12 forKeyedSubscript:@"Installing"];
    }

    v13 = [v4 bundleIdentifier];
    [v5 setObject:v13 forKeyedSubscript:@"Identifier"];

    v14 = [(MDMAppPropertyShim *)self itemsRequested];
    v15 = [v14 containsObject:@"ExternalVersionIdentifier"];

    if (v15)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = [v4 externalVersionIdentifier];
      v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue")}];
      [v5 setObject:v18 forKeyedSubscript:@"ExternalVersionIdentifier"];
    }

    v19 = [(MDMAppPropertyShim *)self itemsRequested];
    v20 = [v19 containsObject:@"DistributorIdentifier"];

    if (v20)
    {
      v21 = [v4 distributorIdentifier];
      [v5 setObject:v21 forKeyedSubscript:@"DistributorIdentifier"];
    }

    v22 = [(MDMAppPropertyShim *)self itemsRequested];
    v23 = [v22 containsObject:@"Version"];

    if (v23)
    {
      v24 = [v4 version];
      [v5 setObject:v24 forKeyedSubscript:@"Version"];
    }

    v25 = [(MDMAppPropertyShim *)self itemsRequested];
    v26 = [v25 containsObject:@"ShortVersion"];

    if (v26)
    {
      v27 = [v4 shortVersion];
      [v5 setObject:v27 forKeyedSubscript:@"ShortVersion"];
    }

    v28 = [(MDMAppPropertyShim *)self itemsRequested];
    v29 = [v28 containsObject:@"Name"];

    if (v29)
    {
      v30 = [v4 displayName];
      [v5 setObject:v30 forKeyedSubscript:@"Name"];
    }

    v31 = [(MDMAppPropertyShim *)self itemsRequested];
    v32 = [v31 containsObject:@"BundleSize"];

    if (v32)
    {
      v33 = [v4 staticUsage];
      [v5 setObject:v33 forKeyedSubscript:@"BundleSize"];
    }

    v34 = [(MDMAppPropertyShim *)self itemsRequested];
    v35 = [v34 containsObject:@"DynamicSize"];

    if (v35 && (v7 & 1) != 0)
    {
      v36 = [v4 dynamicUsage];
      v37 = [v4 onDemandResourcesUsage];
      v38 = v37;
      if (v37)
      {
        if (v36)
        {
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v37, "unsignedLongLongValue") + objc_msgSend(v36, "unsignedLongLongValue")}];

          v36 = v39;
        }

        else
        {
          v36 = v37;
        }
      }

      [v5 setObject:v36 forKeyedSubscript:@"DynamicSize"];
    }

    v41 = [(MDMAppPropertyShim *)self itemsRequested];
    v42 = [v41 containsObject:@"HasUpdateAvailable"];

    if (v42)
    {
      v43 = [v4 storeItemIdentifier];
      v44 = [v43 longLongValue];

      if (v44)
      {
        if ([v4 hasUpdateAvailable])
        {
          v45 = v10;
        }

        else
        {
          v45 = v11;
        }

        [v5 setObject:v45 forKeyedSubscript:@"HasUpdateAvailable"];
      }
    }

    v46 = [(MDMAppPropertyShim *)self itemsRequested];
    v47 = [v46 containsObject:@"IsValidated"];

    if (v47)
    {
      if ([v4 isValidated])
      {
        v48 = v10;
      }

      else
      {
        v48 = v11;
      }

      [v5 setObject:v48 forKeyedSubscript:@"IsValidated"];
    }

    v49 = [(MDMAppPropertyShim *)self itemsRequested];
    v50 = [v49 containsObject:@"AppStoreVendable"];

    if (v50)
    {
      if ([v4 isAppStoreVendable])
      {
        v51 = v10;
      }

      else
      {
        v51 = v11;
      }

      [v5 setObject:v51 forKeyedSubscript:@"AppStoreVendable"];
    }

    v52 = [(MDMAppPropertyShim *)self itemsRequested];
    v53 = [v52 containsObject:@"DeviceBasedVPP"];

    if (v53)
    {
      if ([v4 isDeviceBasedVPP])
      {
        v54 = v10;
      }

      else
      {
        v54 = v11;
      }

      [v5 setObject:v54 forKeyedSubscript:@"DeviceBasedVPP"];
    }

    v55 = [(MDMAppPropertyShim *)self itemsRequested];
    v56 = [v55 containsObject:@"BetaApp"];

    if (v56)
    {
      if ([v4 isBetaApp])
      {
        v57 = v10;
      }

      else
      {
        v57 = v11;
      }

      [v5 setObject:v57 forKeyedSubscript:@"BetaApp"];
    }

    v58 = [(MDMAppPropertyShim *)self itemsRequested];
    v59 = [v58 containsObject:@"AdHocCodeSigned"];

    if (v59)
    {
      if ([v4 isAdHocCodeSigned])
      {
        v60 = v10;
      }

      else
      {
        v60 = v11;
      }

      [v5 setObject:v60 forKeyedSubscript:@"AdHocCodeSigned"];
    }

    v61 = [(MDMAppPropertyShim *)self itemsRequested];
    v62 = [v61 containsObject:@"IsAppClip"];

    if (v62)
    {
      if ([v4 isAppClip])
      {
        v63 = v10;
      }

      else
      {
        v63 = v11;
      }

      [v5 setObject:v63 forKeyedSubscript:@"IsAppClip"];
    }

    v64 = [v4 sourceIdentifier];

    if (v64)
    {
      [v5 setObject:*MEMORY[0x277D035A8] forKeyedSubscript:@"Source"];
    }

    v40 = [v5 copy];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

@end