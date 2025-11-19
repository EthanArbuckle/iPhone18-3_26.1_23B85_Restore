@interface MSDKManifestInstallableItem
- (BOOL)isSystemApp;
- (MSDKManifestInstallableItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5;
- (id)description;
@end

@implementation MSDKManifestInstallableItem

- (MSDKManifestInstallableItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v42.receiver = self;
  v42.super_class = MSDKManifestInstallableItem;
  v11 = [(MSDKManifestItem *)&v42 initWithIdentifier:v9 andDictionary:v10 forComponent:a5];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v11->_identifier, a3);
  v13 = [v10 objectForKey:@"AppType" ofType:objc_opt_class()];
  appType = v12->_appType;
  v12->_appType = v13;

  if (!v12->_appType)
  {
    [MSDKManifestInstallableItem initWithIdentifier:v9 andDictionary:&v43 forComponent:?];
LABEL_20:
    v16 = v43;
    goto LABEL_29;
  }

  v15 = [v10 objectForKey:@"IsContainerized" ofType:objc_opt_class()];
  if (!v15)
  {
    [MSDKManifestInstallableItem initWithIdentifier:v9 andDictionary:&v43 forComponent:?];
    goto LABEL_20;
  }

  v16 = v15;
  v12->_isContainerized = [v15 BOOLValue];
  v17 = [v10 objectForKey:@"OSVersion" ofType:objc_opt_class()];
  osVersion = v12->_osVersion;
  v12->_osVersion = v17;

  if (!v12->_osVersion)
  {
    [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
    goto LABEL_29;
  }

  v19 = [v10 objectForKey:@"PlatformType" ofType:objc_opt_class()];
  platformType = v12->_platformType;
  v12->_platformType = v19;

  if (!v12->_platformType)
  {
    [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
    goto LABEL_29;
  }

  if (![(MSDKManifestInstallableItem *)v12 isSystemApp])
  {
    v27 = [v10 objectForKey:@"Identifier" ofType:objc_opt_class()];
    uniqueID = v12->_uniqueID;
    v12->_uniqueID = v27;

    if (v12->_uniqueID)
    {
      v29 = [v10 objectForKey:@"CFBundleShortVersionString" ofType:objc_opt_class()];
      bundleShortVersionString = v12->_bundleShortVersionString;
      v12->_bundleShortVersionString = v29;

      if (v12->_bundleShortVersionString)
      {
        v31 = [v10 objectForKey:@"RealSize" ofType:objc_opt_class()];
        realSize = v12->_realSize;
        v12->_realSize = v31;

        if (v12->_realSize)
        {
          v33 = [v10 objectForKey:@"Size" ofType:objc_opt_class()];
          size = v12->_size;
          v12->_size = v33;

          if (v12->_size)
          {
            v35 = [v10 objectForKey:@"AppPrivacyPermissions" ofType:objc_opt_class()];
            privacyPermissions = v12->_privacyPermissions;
            v12->_privacyPermissions = v35;

            if (v12->_privacyPermissions)
            {
              v37 = [v10 objectForKey:@"Hash" ofType:objc_opt_class()];
              fileHash = v12->_fileHash;
              v12->_fileHash = v37;

              if (v12->_fileHash)
              {
                v26 = [MSDKCacheManager getBundleFilePathFromHash:?];
                goto LABEL_15;
              }

              [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
            }

            else
            {
              [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
            }
          }

          else
          {
            [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
          }
        }

        else
        {
          [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
        }
      }

      else
      {
        [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
      }
    }

    else
    {
      [MSDKManifestInstallableItem initWithIdentifier:andDictionary:forComponent:];
    }

LABEL_29:

    v40 = 0;
    goto LABEL_17;
  }

  v21 = v12->_uniqueID;
  v12->_uniqueID = 0;

  v22 = v12->_bundleShortVersionString;
  v12->_bundleShortVersionString = 0;

  v23 = v12->_realSize;
  v12->_realSize = 0;

  v24 = v12->_size;
  v12->_size = 0;

  v25 = v12->_privacyPermissions;
  v12->_privacyPermissions = 0;

  v26 = 0;
LABEL_15:
  bundleFilePath = v12->_bundleFilePath;
  v12->_bundleFilePath = v26;

LABEL_16:
  v40 = v12;
LABEL_17:

  return v40;
}

- (BOOL)isSystemApp
{
  v2 = [(MSDKManifestItem *)self component];
  v3 = [v2 isOfType:0];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ID:%@>", v5, self->_identifier];

  return v6;
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.5()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.6()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.7()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v3, v4, "%s: Failed to parse %{public}@ from app item %{public}@", v5, v6, v7, v8, 2u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:(uint64_t)a1 andDictionary:(NSObject *)a2 forComponent:.cold.9(uint64_t a1, NSObject **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4_2(&dword_259B7D000, v5, v6, "%s: Failed to parse %{public}@ from app item %{public}@", v7, v8, v9, v10, 2u);
  }

  *a2 = v3;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:(uint64_t)a1 andDictionary:(NSObject *)a2 forComponent:.cold.10(uint64_t a1, NSObject **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4_2(&dword_259B7D000, v5, v6, "%s: Failed to parse %{public}@ from app item %{public}@", v7, v8, v9, v10, 2u);
  }

  *a2 = v3;
  v4 = *MEMORY[0x277D85DE8];
}

@end