@interface DOCSourceBuilder
- (DOCSourceBuilder)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier;
- (DOCSourceBuilder)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier managedPermissions:(id)permissions;
- (id)buildSourcesFromLegacyPickerExtensions:(id)extensions legacyProviders:(id)providers;
- (id)buildSourcesFromProviderDomains:(id)domains;
- (id)buildSourcesProviders:(id)providers legacyWebViewFileProviders:(id)fileProviders;
- (id)containingAppBundleIdentifierForBundleURL:(id)l;
- (id)containingAppBundleIdentifierForPicker:(id)picker;
- (id)containingAppBundleIdentifierForProvider:(id)provider;
- (id)filterNonObsoleteLegacyPickersFromPickers:(id)pickers modernProviders:(id)providers;
- (id)matchingLegacyProviderIdentifierForPicker:(id)picker;
@end

@implementation DOCSourceBuilder

- (DOCSourceBuilder)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D06218];
  identifierCopy = identifier;
  defaultPermission = [v6 defaultPermission];
  v9 = [(DOCSourceBuilder *)self initWithUserAction:action hostIdentifier:identifierCopy managedPermissions:defaultPermission];

  return v9;
}

- (DOCSourceBuilder)initWithUserAction:(unint64_t)action hostIdentifier:(id)identifier managedPermissions:(id)permissions
{
  identifierCopy = identifier;
  permissionsCopy = permissions;
  v13.receiver = self;
  v13.super_class = DOCSourceBuilder;
  v10 = [(DOCSourceBuilder *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(DOCSourceBuilder *)v10 setUserAction:action];
    [(DOCSourceBuilder *)v11 setHostIdentifier:identifierCopy];
    [(DOCSourceBuilder *)v11 setManagedPermission:permissionsCopy];
  }

  return v11;
}

- (id)buildSourcesProviders:(id)providers legacyWebViewFileProviders:(id)fileProviders
{
  fileProvidersCopy = fileProviders;
  v7 = MEMORY[0x277CBEB18];
  providersCopy = providers;
  array = [v7 array];
  array2 = [MEMORY[0x277CBEB18] array];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __69__DOCSourceBuilder_buildSourcesProviders_legacyWebViewFileProviders___block_invoke;
  v21 = &unk_278FA1FB0;
  v11 = array2;
  v22 = v11;
  v12 = array;
  v23 = v12;
  [providersCopy enumerateObjectsUsingBlock:&v18];

  if (fileProvidersCopy)
  {
    v13 = [(DOCSourceBuilder *)self filterNonObsoleteLegacyPickersFromPickers:fileProvidersCopy modernProviders:v11, v18, v19, v20, v21, v22];
    v14 = [(DOCSourceBuilder *)self buildSourcesFromLegacyPickerExtensions:v13 legacyProviders:v12];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(DOCSourceBuilder *)self buildSourcesFromProviderDomains:v11, v18, v19, v20, v21];
  v16 = [v15 arrayByAddingObjectsFromArray:v14];

  return v16;
}

void __69__DOCSourceBuilder_buildSourcesProviders_legacyWebViewFileProviders___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 supportsEnumeration];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

- (id)buildSourcesFromProviderDomains:(id)domains
{
  v26 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(domainsCopy, "count") + 1}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = domainsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        mEMORY[0x277D061E0] = [MEMORY[0x277D061E0] sharedManager];
        v12 = [mEMORY[0x277D061E0] hostAppCanSeeFileProviderDomain:v10];

        if (v12)
        {
          defaultPermission = [MEMORY[0x277D06218] defaultPermission];
          v14 = [defaultPermission canHostAppPerformAction:-[DOCSourceBuilder userAction](self fileProviderDomain:{"userAction"), v10}];

          if (v14)
          {
            hostIdentifier = [(DOCSourceBuilder *)self hostIdentifier];
            v16 = [_TtC26DocumentManagerExecutables21DOCFileProviderSource createSourceFrom:v10 with:hostIdentifier];

            [v20 addObject:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = +[_TtC26DocumentManagerExecutables21DOCFileProviderSource createSpotlightSources];
  [v20 addObjectsFromArray:v17];

  v18 = [v20 copy];

  return v18;
}

- (id)buildSourcesFromLegacyPickerExtensions:(id)extensions legacyProviders:(id)providers
{
  v49 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  providersCopy = providers;
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = extensionsCopy;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v39;
    v11 = 0x277D06000uLL;
    *&v8 = 136315650;
    v30 = v8;
    do
    {
      v12 = 0;
      v33 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        defaultPermission = [*(v11 + 536) defaultPermission];
        v15 = [defaultPermission canHostAppPerformAction:-[DOCSourceBuilder userAction](self legacyPickerExtension:{"userAction"), v13}];

        v16 = [(DOCSourceBuilder *)self matchingLegacyProviderIdentifierForPicker:v13];
        v17 = v16;
        if (v16)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = MEMORY[0x277CCAC30];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __75__DOCSourceBuilder_buildSourcesFromLegacyPickerExtensions_legacyProviders___block_invoke;
          v36[3] = &unk_278FA1FD8;
          v20 = v16;
          v37 = v20;
          v21 = [v19 predicateWithBlock:v36];
          v22 = [providersCopy filteredArrayUsingPredicate:v21];
          firstObject = [v22 firstObject];

          if (!firstObject)
          {
            v24 = *MEMORY[0x277D062B8];
            if (!*MEMORY[0x277D062B8])
            {
              DOCInitLogging();
              v24 = *MEMORY[0x277D062B8];
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v43 = "[DOCSourceBuilder buildSourcesFromLegacyPickerExtensions:legacyProviders:]";
              v44 = 2112;
              v45 = v20;
              _os_log_debug_impl(&dword_2493AC000, v24, OS_LOG_TYPE_DEBUG, "%s falling back to fetching domain manually for legacy V1 file provider for ID: %@", buf, 0x16u);
            }

            v35 = 0;
            firstObject = [MEMORY[0x277CC6420] providerDomainWithID:v20 cachePolicy:1 error:&v35];
            v25 = v35;
            if (v25)
            {
              v26 = *MEMORY[0x277D062B8];
              if (!*MEMORY[0x277D062B8])
              {
                DOCInitLogging();
                v26 = *MEMORY[0x277D062B8];
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v43 = "[DOCSourceBuilder buildSourcesFromLegacyPickerExtensions:legacyProviders:]";
                v44 = 2112;
                v45 = v20;
                v46 = 2112;
                v47 = v25;
                _os_log_error_impl(&dword_2493AC000, v26, OS_LOG_TYPE_ERROR, "%s failed to fetch domain manually for legacy V1 file provider for ID: %@ error: %@", buf, 0x20u);
              }
            }
          }

          v27 = [[DOCPickerSource alloc] initWithPicker:v13 providerDomain:firstObject];
          if (v27)
          {
            [v31 addObject:v27];
          }

          v9 = v33;
          v11 = 0x277D06000;
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v9);
  }

  v28 = [v31 copy];

  return v28;
}

uint64_t __75__DOCSourceBuilder_buildSourcesFromLegacyPickerExtensions_legacyProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 providerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)filterNonObsoleteLegacyPickersFromPickers:(id)pickers modernProviders:(id)providers
{
  v31 = *MEMORY[0x277D85DE8];
  pickersCopy = pickers;
  providersCopy = providers;
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = providersCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(DOCSourceBuilder *)self containingAppBundleIdentifierForProvider:*(*(&v26 + 1) + 8 * i)];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v15 = MEMORY[0x277CCAC30];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __78__DOCSourceBuilder_filterNonObsoleteLegacyPickersFromPickers_modernProviders___block_invoke;
  v23 = &unk_278FA2000;
  selfCopy = self;
  v25 = v8;
  v16 = v8;
  v17 = [v15 predicateWithBlock:&v20];
  v18 = [pickersCopy filteredArrayUsingPredicate:{v17, v20, v21, v22, v23, selfCopy}];

  return v18;
}

uint64_t __78__DOCSourceBuilder_filterNonObsoleteLegacyPickersFromPickers_modernProviders___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) containingAppBundleIdentifierForPicker:a2];
  if (v3)
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)containingAppBundleIdentifierForPicker:(id)picker
{
  infoDictionary = [picker infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:@"Path"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [(DOCSourceBuilder *)self containingAppBundleIdentifierForBundleURL:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)containingAppBundleIdentifierForProvider:(id)provider
{
  extensionBundleURL = [provider extensionBundleURL];
  v5 = [(DOCSourceBuilder *)self containingAppBundleIdentifierForBundleURL:extensionBundleURL];

  return v5;
}

- (id)containingAppBundleIdentifierForBundleURL:(id)l
{
  v3 = [MEMORY[0x277CC1E90] doc_applicationExtensionRecordAtURL:l];
  containingApplicationRecord = [v3 containingApplicationRecord];

  bundleIdentifier = [containingApplicationRecord bundleIdentifier];

  return bundleIdentifier;
}

- (id)matchingLegacyProviderIdentifierForPicker:(id)picker
{
  v24 = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  v4 = objc_alloc(MEMORY[0x277CC1E50]);
  identifier = [pickerCopy identifier];
  v6 = [v4 initWithBundleIdentifier:identifier error:0];

  containingBundleRecord = [v6 containingBundleRecord];
  objc_opt_class();
  bundleIdentifier = 0;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    applicationExtensionRecords = [containingBundleRecord applicationExtensionRecords];
    v10 = [applicationExtensionRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v18 = pickerCopy;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(applicationExtensionRecords);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          extensionPointRecord = [v14 extensionPointRecord];
          identifier2 = [extensionPointRecord identifier];

          if ([identifier2 isEqualToString:@"com.apple.fileprovider-nonui"])
          {
            bundleIdentifier = [v14 bundleIdentifier];

            goto LABEL_12;
          }
        }

        v11 = [applicationExtensionRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      bundleIdentifier = 0;
LABEL_12:
      pickerCopy = v18;
    }

    else
    {
      bundleIdentifier = 0;
    }
  }

  return bundleIdentifier;
}

@end