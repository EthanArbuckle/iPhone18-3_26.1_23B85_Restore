@interface MSDKManifestComponent
- (MSDKManifestComponent)initWithIdentifier:(id)a3 componentType:(int64_t)a4 andDictionary:(id)a5;
- (id)_parseDataItem:(id)a3;
- (id)_parseDataItemsForAppComponent:(id)a3;
- (id)_parseFileItems:(id)a3;
- (void)addDependency:(id)a3;
@end

@implementation MSDKManifestComponent

- (MSDKManifestComponent)initWithIdentifier:(id)a3 componentType:(int64_t)a4 andDictionary:(id)a5
{
  v9 = a3;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = MSDKManifestComponent;
  v11 = [(MSDKManifestComponent *)&v37 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  [(MSDKManifestComponent *)v11 setType:a4];
  objc_storeStrong(&v12->_identifier, a3);
  v13 = objc_opt_new();
  [(MSDKManifestComponent *)v12 setMutableDependencies:v13];

  v14 = [v10 objectForKey:@"Manifest" ofType:objc_opt_class()];
  v15 = v14;
  if (!v14)
  {
    v15 = [v10 objectForKey:@"Settings" ofType:objc_opt_class()];
    if (!v15)
    {
      v36 = defaultLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
      }

      v17 = 0;
      v15 = 0;
      goto LABEL_35;
    }
  }

  v16 = [v15 objectForKey:@"Info" ofType:objc_opt_class()];
  if (!v16)
  {
    v36 = defaultLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

    v17 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  if (![(MSDKManifestComponent *)v12 isOfType:0]&& ![(MSDKManifestComponent *)v12 isOfType:1])
  {
    v22 = [(MSDKManifestComponent *)v12 isOfType:4];
    if (!v14 && !v22)
    {
      v36 = defaultLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
      }

      goto LABEL_35;
    }

    [(MSDKManifestComponent *)v12 setRawDependencyDict:0];
    v23 = [v15 objectForKey:@"Data" ofType:objc_opt_class()];
    if (!v23)
    {
      v36 = defaultLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
      }

      goto LABEL_35;
    }

    v18 = v23;
    if (v14)
    {
      [(MSDKManifestComponent *)v12 _parseFileItems:v23];
    }

    else
    {
      [(MSDKManifestComponent *)v12 _parseDataItem:v23];
    }
    v24 = ;
    data = v12->_data;
    v12->_data = v24;

    if (v24)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  if (!v14)
  {
    v36 = defaultLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

    goto LABEL_35;
  }

  v18 = [(MSDKManifestComponent *)v12 _parseDataItemsForAppComponent:v17];
  v19 = v12->_data;
  v12->_data = v18;

  if (!v18)
  {
LABEL_36:

    v34 = 0;
    goto LABEL_20;
  }

  v20 = [v15 objectForKey:@"Dependencies" ofType:objc_opt_class()];
  [(MSDKManifestComponent *)v12 setRawDependencyDict:v20];

  v21 = [(MSDKManifestComponent *)v12 rawDependencyDict];

  if (!v21)
  {
    v36 = defaultLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent initWithIdentifier:componentType:andDictionary:];
    }

LABEL_35:

    v18 = 0;
    goto LABEL_36;
  }

  v18 = 0;
LABEL_18:
  v26 = [v17 objectForKey:@"OSVersion" ofType:objc_opt_class()];
  osVersion = v12->_osVersion;
  v12->_osVersion = v26;

  v28 = [v17 objectForKey:@"PlatformType" ofType:objc_opt_class()];
  platformType = v12->_platformType;
  v12->_platformType = v28;

  v30 = [v10 objectForKey:@"Certificate" ofType:objc_opt_class()];
  certificate = v12->_certificate;
  v12->_certificate = v30;

  v32 = [v10 objectForKey:@"Signature" ofType:objc_opt_class()];
  signature = v12->_signature;
  v12->_signature = v32;

LABEL_19:
  v34 = v12;
LABEL_20:

  return v34;
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  v5 = [(MSDKManifestComponent *)self mutableDependencies];
  [v5 addObject:v4];
}

- (id)_parseDataItemsForAppComponent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MSDKManifestInstallableItem alloc];
  v7 = [(MSDKManifestComponent *)self identifier];
  v8 = [(MSDKManifestInstallableItem *)v6 initWithIdentifier:v7 andDictionary:v4 forComponent:self];

  if (v8)
  {
    [v5 addObject:v8];
    v9 = v5;
  }

  else
  {
    [MSDKManifestComponent _parseDataItemsForAppComponent:?];
    v9 = 0;
  }

  return v9;
}

- (id)_parseDataItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MSDKManifestDataItem alloc];
  v7 = [(MSDKManifestComponent *)self identifier];
  v8 = [(MSDKManifestDataItem *)v6 initWithIdentifier:v7 andDictionary:v4 forComponent:self];

  if (v8)
  {
    [v5 addObject:v8];
    v9 = v5;
  }

  else
  {
    [MSDKManifestComponent _parseDataItemsForAppComponent:?];
    v9 = 0;
  }

  return v9;
}

- (id)_parseFileItems:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v12 = [v6 objectForKey:v11 ofType:{objc_opt_class(), v19}];
      if (!v12)
      {
        break;
      }

      v13 = [[MSDKManifestFileItem alloc] initWithIdentifier:v11 andDictionary:v12 forComponent:self];
      if (!v13)
      {
        v16 = defaultLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(MSDKManifestComponent *)v11 _parseFileItems:?];
        }

LABEL_15:

        v15 = 0;
        goto LABEL_16;
      }

      v14 = v13;
      [v5 addObject:v13];

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = defaultLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MSDKManifestComponent _parseFileItems:?];
    }

    goto LABEL_15;
  }

LABEL_10:

  v15 = v5;
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v4[0] = 136315906;
  OUTLINED_FUNCTION_0_0();
  v5 = v0;
  v6 = v1;
  v7 = @"Manifest";
  v8 = v1;
  v9 = @"Settings";
  _os_log_error_impl(&dword_259B7D000, v2, OS_LOG_TYPE_ERROR, "%s: Component %{public}@ does not have %{public}@ or %{public}@ key", v4, 0x2Au);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Cannot parse %{public}@ dictionary for component %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Cannot parse %{public}@ dictionary for component %{public}@ of Apps/SystemApps section", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:componentType:andDictionary:.cold.6()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_3_2(&dword_259B7D000, v0, v1, "%s: Failed to parse %{public}@ dict for component: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_parseDataItemsForAppComponent:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = [a1 identifier];
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_parseFileItems:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_parseFileItems:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end