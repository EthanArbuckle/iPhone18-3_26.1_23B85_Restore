@interface MSDKSignedManifest
- (BOOL)_addDependenciesForComponent:(id)component withLookupDict:(id)dict;
- (BOOL)_buildAppDepedencies;
- (BOOL)_parseInstallationOrder:(id)order;
- (BOOL)_parseLocale;
- (BOOL)_parseManifestInfo:(id)info;
- (id)_componentListForSection:(id)section fromPayload:(id)payload;
- (id)_manifestDataFromFile:(id)file;
- (id)_parseAllFiles;
- (id)_parseFactoryBackupList;
- (id)_toComponentDictionary:(id)dictionary;
- (id)description;
- (id)initFromManifestAtPath:(id)path verifyManifest:(BOOL)manifest;
- (void)_parseLocale;
@end

@implementation MSDKSignedManifest

- (id)initFromManifestAtPath:(id)path verifyManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  v48 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v45.receiver = self;
  v45.super_class = MSDKSignedManifest;
  v7 = [(MSDKSignedManifest *)&v45 init];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = pathCopy;
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "Reading manifest at path %{public}@...", buf, 0xCu);
  }

  [(MSDKSignedManifest *)v7 setFilePath:pathCopy];
  v9 = [(MSDKSignedManifest *)v7 _manifestDataFromFile:pathCopy];
  if (!v9)
  {
LABEL_41:
    [MSDKSignedManifest initFromManifestAtPath:verifyManifest:];
    v42 = 0;
    goto LABEL_38;
  }

  v10 = v9;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "Checking manifest version...", buf, 2u);
  }

  v12 = [v10 objectForKey:@"Version" ofType:objc_opt_class()];
  v13 = v12;
  if (!v12 || (v7->_version = [v12 intValue], !-[MSDKSignedManifest _checkManifestVersion](v7, "_checkManifestVersion")))
  {
    v16 = 0;
    goto LABEL_40;
  }

  v14 = defaultLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (manifestCopy)
  {
    if (v15)
    {
      *buf = 138543362;
      v47 = pathCopy;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "Verifying manifest at path %{public}@...", buf, 0xCu);
    }

    v16 = +[MSDDemoManifestCheck sharedInstance];
    if (!v16)
    {
      [MSDKSignedManifest initFromManifestAtPath:verifyManifest:];
      goto LABEL_40;
    }

    v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1630];
    v18 = [v16 verifyFactoryManifestSignature:v10 forDataSectionKeys:v17];

    if (!v18)
    {
      v10 = 0;
      goto LABEL_40;
    }

    v14 = defaultLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = pathCopy;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "Manifest at path %{public}@ verified", buf, 0xCu);
    }
  }

  else
  {
    if (v15)
    {
      *buf = 138543362;
      v47 = pathCopy;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "Skipping verification for manifest at path %{public}@", buf, 0xCu);
    }

    v16 = 0;
    v18 = v10;
  }

  if (![(MSDKSignedManifest *)v7 _parseManifestInfo:v18])
  {
    goto LABEL_39;
  }

  if (![(MSDKSignedManifest *)v7 _parseInstallationOrder:v18])
  {
    goto LABEL_39;
  }

  v19 = [(MSDKSignedManifest *)v7 _componentListForSection:@"Apps" fromPayload:v18];
  nonSystemAppList = v7->_nonSystemAppList;
  v7->_nonSystemAppList = v19;

  if (!v7->_nonSystemAppList)
  {
    goto LABEL_39;
  }

  v21 = [(MSDKSignedManifest *)v7 _componentListForSection:@"SystemApps" fromPayload:v18];
  systemAppList = v7->_systemAppList;
  v7->_systemAppList = v21;

  if (!v7->_systemAppList)
  {
    goto LABEL_39;
  }

  v23 = [(MSDKSignedManifest *)v7 _componentListForSection:@"BackupData" fromPayload:v18];
  backupDataList = v7->_backupDataList;
  v7->_backupDataList = v23;

  if (!v7->_backupDataList)
  {
    goto LABEL_39;
  }

  v25 = [(MSDKSignedManifest *)v7 _componentListForSection:@"UserData" fromPayload:v18];
  userDataList = v7->_userDataList;
  v7->_userDataList = v25;

  if (!v7->_userDataList)
  {
    goto LABEL_39;
  }

  v27 = [(MSDKSignedManifest *)v7 _componentListForSection:@"AppData" fromPayload:v18];
  appDataList = v7->_appDataList;
  v7->_appDataList = v27;

  if (!v7->_appDataList)
  {
    goto LABEL_39;
  }

  v29 = [(MSDKSignedManifest *)v7 _componentListForSection:@"GroupData" fromPayload:v18];
  groupDataList = v7->_groupDataList;
  v7->_groupDataList = v29;

  if (!v7->_groupDataList)
  {
    goto LABEL_39;
  }

  v31 = [(MSDKSignedManifest *)v7 _componentListForSection:@"ExtensionData" fromPayload:v18];
  extensionDataList = v7->_extensionDataList;
  v7->_extensionDataList = v31;

  if (!v7->_extensionDataList)
  {
    goto LABEL_39;
  }

  v33 = [(MSDKSignedManifest *)v7 _componentListForSection:@"ProvisioningProfiles" fromPayload:v18];
  provisioningProfiles = v7->_provisioningProfiles;
  v7->_provisioningProfiles = v33;

  if (!v7->_provisioningProfiles)
  {
    goto LABEL_39;
  }

  v35 = [(MSDKSignedManifest *)v7 _componentListForSection:@"ConfigurationProfiles" fromPayload:v18];
  configurationProfiles = v7->_configurationProfiles;
  v7->_configurationProfiles = v35;

  if (!v7->_configurationProfiles)
  {
    goto LABEL_39;
  }

  _parseFactoryBackupList = [(MSDKSignedManifest *)v7 _parseFactoryBackupList];
  factoryBackupList = v7->_factoryBackupList;
  v7->_factoryBackupList = _parseFactoryBackupList;

  if (!_parseFactoryBackupList || ([(MSDKSignedManifest *)v7 _parseAllFiles], v39 = objc_claimAutoreleasedReturnValue(), allFiles = v7->_allFiles, v7->_allFiles = v39, allFiles, !v39) || ![(MSDKSignedManifest *)v7 _parseLocale]|| ![(MSDKSignedManifest *)v7 _buildAppDepedencies])
  {
LABEL_39:
    v10 = v18;
LABEL_40:

    goto LABEL_41;
  }

LABEL_35:
  v41 = defaultLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = pathCopy;
    _os_log_impl(&dword_259B7D000, v41, OS_LOG_TYPE_DEFAULT, "Successfully parsed manifest at path %{public}@", buf, 0xCu);
  }

  v42 = v7;
LABEL_38:

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Name:%@>", v5, self->_bundleName];

  return v6;
}

- (id)_manifestDataFromFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:fileCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:fileCopy];
    if (v6)
    {
      v7 = v6;
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      v9 = *MEMORY[0x277CBE640];
      [v7 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

      [v7 open];
      v14 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithStream:v7 options:2 format:0 error:&v14];
      v11 = v14;
      [v7 close];
      currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v7 removeFromRunLoop:currentRunLoop2 forMode:v9];

      if (!v10)
      {
        [MSDKSignedManifest _manifestDataFromFile:];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      [(MSDKSignedManifest *)fileCopy _manifestDataFromFile:v10];
    }

    else
    {
      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MSDKSignedManifest _manifestDataFromFile:];
      }
    }
  }

  else
  {
    v11 = defaultLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSDKSignedManifest _manifestDataFromFile:];
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (BOOL)_parseManifestInfo:(id)info
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = @"Info";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@ section...", buf, 0xCu);
  }

  v6 = [infoCopy objectForKey:@"Info" ofType:objc_opt_class()];

  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = [v6 objectForKey:@"Product" ofType:objc_opt_class()];
  products = self->_products;
  self->_products = v7;

  v9 = [v6 objectForKey:@"ContentCode" ofType:objc_opt_class()];
  contentCode = self->_contentCode;
  self->_contentCode = v9;

  v11 = [v6 objectForKey:@"BundleName" ofType:objc_opt_class()];
  bundleName = self->_bundleName;
  self->_bundleName = v11;

  v13 = [v6 objectForKey:@"CreateTime" ofType:objc_opt_class()];
  dateCreated = self->_dateCreated;
  self->_dateCreated = v13;

  v15 = [v6 objectForKey:@"Language" ofType:objc_opt_class()];
  language = self->_language;
  self->_language = v15;

  v17 = [v6 objectForKey:@"MinimumOSVersion" ofType:objc_opt_class()];
  minimumOSVersion = self->_minimumOSVersion;
  self->_minimumOSVersion = v17;

  v19 = [v6 objectForKey:@"NetworkTier" ofType:objc_opt_class()];
  networkTier = self->_networkTier;
  self->_networkTier = v19;

  v21 = [v6 objectForKey:@"PartNumber" ofType:objc_opt_class()];
  partNumber = self->_partNumber;
  self->_partNumber = v21;

  v23 = [v6 objectForKey:@"Revision" ofType:objc_opt_class()];
  revision = self->_revision;
  self->_revision = v23;

  v25 = [v6 objectForKey:@"ValidUntil" ofType:objc_opt_class()];
  validUntil = self->_validUntil;
  self->_validUntil = v25;

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", self->_partNumber, -[NSNumber intValue](self->_revision, "intValue")];
  bundleID = self->_bundleID;
  self->_bundleID = v27;

  if (!self->_products)
  {
    goto LABEL_17;
  }

  if (self->_contentCode && self->_bundleName && self->_dateCreated && self->_language && self->_minimumOSVersion && self->_networkTier && self->_partNumber && self->_revision && self->_validUntil && self->_bundleID)
  {
    v29 = 1;
  }

  else
  {
LABEL_17:
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_parseInstallationOrder:(id)order
{
  v15 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = @"InstallationOrder";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@...", &v13, 0xCu);
  }

  [(MSDKSignedManifest *)self setCriticalComponents:MEMORY[0x277CBEBF8]];
  v6 = objc_opt_new();
  v7 = [orderCopy objectForKey:@"InstallationOrder"];

  if (!v7)
  {
    [MSDKSignedManifest _parseInstallationOrder:];
LABEL_21:
    v10 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MSDKSignedManifest _parseInstallationOrder:];
      goto LABEL_21;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 objectForKey:@"CriticalComponents"];
    v9 = [v7 objectForKey:@"Components"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v8];
        [(MSDKSignedManifest *)self setCriticalComponents:v8];
      }
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v9];
      }
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v6 = [v7 mutableCopy];
LABEL_16:
  }

  [(MSDKSignedManifest *)self setInstallationOrder:v6];
  v10 = 1;
LABEL_18:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_parseFactoryBackupList
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1648];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:self->_backupDataList];
  [v5 addObjectsFromArray:self->_userDataList];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138543362;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [v3 containsObject:identifier];

        if (v14)
        {
          v15 = defaultLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v12;
            _os_log_impl(&dword_259B7D000, v15, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from factory backup list", buf, 0xCu);
          }

          [v4 addObject:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [v6 removeObjectsInArray:v4];
  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_parseLocale
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_backupDataList;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v25 + 1) + 8 * v7);
      identifier = [v8 identifier];
      v10 = [identifier isEqualToString:@"locale"];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    data = [v8 data];
    firstObject = [data firstObject];

    if (firstObject)
    {
      data2 = [firstObject data];

      if (data2)
      {
        data3 = [firstObject data];
        v15 = [data3 objectForKey:@"language"];
        languageCode = self->_languageCode;
        self->_languageCode = v15;

        if (self->_languageCode)
        {
          data4 = [firstObject data];
          v18 = [data4 objectForKey:@"region"];
          regionCode = self->_regionCode;
          self->_regionCode = v18;

          v20 = self->_regionCode;
          if (v20)
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_languageCode, v20, v25];
            localeCode = self->_localeCode;
            self->_localeCode = v21;

            goto LABEL_15;
          }

          [(MSDKSignedManifest *)&v29 _parseLocale];
        }

        else
        {
          [(MSDKSignedManifest *)&v29 _parseLocale];
        }
      }

      else
      {
        [MSDKSignedManifest _parseLocale];
      }
    }

    else
    {
      [MSDKSignedManifest _parseLocale];
    }

    goto LABEL_24;
  }

LABEL_15:

  if (!self->_localeCode)
  {
    [MSDKSignedManifest _parseLocale];
    v3 = v29;
LABEL_24:

    result = 0;
    goto LABEL_17;
  }

  result = 1;
LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_parseAllFiles
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  factoryBackupList = self->_factoryBackupList;
  appDataList = self->_appDataList;
  v43[0] = self->_nonSystemAppList;
  v43[1] = appDataList;
  groupDataList = self->_groupDataList;
  v43[2] = factoryBackupList;
  v43[3] = groupDataList;
  v44 = *&self->_extensionDataList;
  configurationProfiles = self->_configurationProfiles;
  [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v23)
  {
    v22 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v25 = v8;
        v27 = [v25 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v27)
        {
          v26 = *v33;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(v25);
              }

              v10 = *(*(&v32 + 1) + 8 * i);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              data = [v10 data];
              v12 = [data countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v29;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v29 != v14)
                    {
                      objc_enumerationMutation(data);
                    }

                    v16 = *(*(&v28 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    fileHash = [v16 fileHash];

                    if (fileHash)
                    {
                      [v3 addObject:v16];
                    }
                  }

                  v13 = [data countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v27);
        }

        v7 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v23);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)_buildAppDepedencies
{
  v31[9] = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "Building app component dependencies...", buf, 2u);
  }

  v30[0] = @"Apps";
  v23 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_nonSystemAppList];
  v31[0] = v23;
  v30[1] = @"SystemApps";
  v4 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_systemAppList];
  v31[1] = v4;
  v30[2] = @"AppData";
  v5 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_appDataList];
  v31[2] = v5;
  v30[3] = @"BackupData";
  v6 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_backupDataList];
  v31[3] = v6;
  v30[4] = @"UserData";
  v7 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_userDataList];
  v31[4] = v7;
  v30[5] = @"GroupData";
  v8 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_groupDataList];
  v31[5] = v8;
  v30[6] = @"ExtensionData";
  v9 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_extensionDataList];
  v31[6] = v9;
  v30[7] = @"ProvisioningProfiles";
  v10 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_provisioningProfiles];
  v31[7] = v10;
  v30[8] = @"ConfigurationProfiles";
  v11 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_configurationProfiles];
  v31[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:9];

  v13 = objc_opt_new();
  [v13 addObjectsFromArray:self->_nonSystemAppList];
  [v13 addObjectsFromArray:self->_systemAppList];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        getRawDependency = [v19 getRawDependency];

        if (getRawDependency)
        {
          [(MSDKSignedManifest *)self _addDependenciesForComponent:v19 withLookupDict:v12];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_toComponentDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v4 setObject:v10 forKey:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_addDependenciesForComponent:(id)component withLookupDict:(id)dict
{
  v44 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  dictCopy = dict;
  [componentCopy getRawDependency];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v36 = 0u;
  v25 = [v6 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v25)
  {
    v19 = 1;
    goto LABEL_24;
  }

  v26 = v6;
  v27 = *v34;
  while (2)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v34 != v27)
      {
        objc_enumerationMutation(v6);
      }

      v8 = *(*(&v33 + 1) + 8 * i);
      v9 = [dictCopy objectForKey:v8];
      if (!v9)
      {
        [MSDKSignedManifest _addDependenciesForComponent:withLookupDict:];
        v21 = *buf;
        goto LABEL_28;
      }

      v10 = [v6 objectForKey:v8 ofType:objc_opt_class()];
      if (!v10)
      {
        v21 = defaultLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MSDKSignedManifest _addDependenciesForComponent:withLookupDict:];
        }

LABEL_28:
        v11 = v9;
LABEL_22:

        v19 = 0;
        goto LABEL_24;
      }

      v24 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v29 + 1) + 8 * j);
            v17 = [v9 objectForKey:v16 ofType:objc_opt_class()];
            if (!v17)
            {
              v20 = defaultLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "[MSDKSignedManifest _addDependenciesForComponent:withLookupDict:]";
                v38 = 2114;
                v39 = v16;
                v40 = 2114;
                v41 = v24;
                _os_log_error_impl(&dword_259B7D000, v20, OS_LOG_TYPE_ERROR, "%s: Failed to lookup component with identifier %{public}@ in section %{public}@", buf, 0x20u);
              }

              v21 = v9;
              v6 = v26;
              goto LABEL_22;
            }

            v18 = v17;
            [componentCopy addDependency:v17];
          }

          v13 = [v11 countByEnumeratingWithState:&v29 objects:v42 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v6 = v26;
    }

    v19 = 1;
    v25 = [v26 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_componentListForSection:(id)section fromPayload:(id)payload
{
  v40 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  payloadCopy = payload;
  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = sectionCopy;
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@ section...", buf, 0xCu);
  }

  v29 = objc_opt_new();
  v8 = [payloadCopy objectForKey:sectionCopy ofType:objc_opt_class()];
  if (!v8)
  {
    v21 = 0;
    goto LABEL_23;
  }

  v9 = [&unk_286AE18A0 objectForKey:sectionCopy];
  if (!v9)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      OUTLINED_FUNCTION_3();
      v36 = sectionCopy;
      _os_log_error_impl(&dword_259B7D000, v10, OS_LOG_TYPE_ERROR, "%s: cannot determine component type for section %{public}@", buf, 0x16u);
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v28 = sectionCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v8;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = *v31;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v30 + 1) + 8 * i);
      v17 = [v11 objectForKey:v16 ofType:objc_opt_class()];
      if (!v17)
      {
        v18 = defaultLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_3();
          v36 = v16;
          v37 = v25;
          sectionCopy = v28;
          v38 = v28;
          _os_log_error_impl(&dword_259B7D000, v18, OS_LOG_TYPE_ERROR, "%s: component %{public}@ in section %{public}@ is of wrong format", buf, 0x20u);
        }

        else
        {
          sectionCopy = v28;
        }

LABEL_20:
        v8 = v27;

        goto LABEL_21;
      }

      v18 = v17;
      v19 = [[MSDKManifestComponent alloc] initWithIdentifier:v16 componentType:[v10 intValue] andDictionary:v17];
      if (!v19)
      {
        v22 = defaultLogHandle();
        sectionCopy = v28;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_3();
          v36 = v16;
          v37 = v26;
          v38 = v28;
          _os_log_error_impl(&dword_259B7D000, v22, OS_LOG_TYPE_ERROR, "%s: failed to parse component %{public}@ in section %{public}@", buf, 0x20u);
        }

        goto LABEL_20;
      }

      v20 = v19;
      [v29 addObject:v19];
    }

    v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v21 = v29;
  sectionCopy = v28;
  v8 = v27;
LABEL_22:

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)initFromManifestAtPath:verifyManifest:.cold.1()
{
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)initFromManifestAtPath:verifyManifest:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_manifestDataFromFile:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_error_impl(&dword_259B7D000, v1, OS_LOG_TYPE_ERROR, "%s: Manifest file does not exist: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_manifestDataFromFile:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v4))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_manifestDataFromFile:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_manifestDataFromFile:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_error_impl(&dword_259B7D000, v1, OS_LOG_TYPE_ERROR, "%s: Failed to read manifest file: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_parseInstallationOrder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_parseInstallationOrder:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_parseLocale
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_addDependenciesForComponent:withLookupDict:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_259B7D000, v3, OS_LOG_TYPE_ERROR, "%s: Failed to parse %{public}@ dependency list for component %{public}@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addDependenciesForComponent:withLookupDict:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

@end