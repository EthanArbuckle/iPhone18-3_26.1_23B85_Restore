@interface DRSTeamDampeningConfiguration
+ (id)teamIdToTeamDampeningConfigFromPlistDirectoryPath:(id)a3 errorOut:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (DRSTeamDampeningConfiguration)initWithDefaultConfiguration:(id)a3 issueCategoryToConfigurationDict:(id)a4;
- (DRSTeamDampeningConfiguration)initWithPlistDict:(id)a3;
- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)a3 teamID:(id)a4;
- (id)_initWithTeamDampeningConfigMO_ON_MOC_QUEUE:(id)a3;
- (id)configurationForIssueCategory:(id)a3;
- (id)debugDescription;
- (id)jsonCompatibleDictRepresentation;
- (void)updateIssueCategoryConfig:(id)a3 newConfig:(id)a4;
@end

@implementation DRSTeamDampeningConfiguration

- (id)jsonCompatibleDictRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (v4)
  {
    v5 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    v6 = [v5 jsonCompatibleDictRepresentation];
    [v3 setObject:v6 forKeyedSubscript:kDRSDMDefaultConfigKey];
  }

  v7 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__DRSTeamDampeningConfiguration_jsonCompatibleDictRepresentation__block_invoke;
    v13[3] = &unk_27899FDD0;
    v14 = v9;
    v11 = v9;
    [v10 enumerateKeysAndObjectsUsingBlock:v13];

    [v3 setObject:v11 forKeyedSubscript:kDRSDMIssueCategoryDictKey];
  }

  return v3;
}

void __65__DRSTeamDampeningConfiguration_jsonCompatibleDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonCompatibleDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (v4)
  {
    v5 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    v6 = [v5 debugDescription];
    [v3 appendFormat:@"Default config:\n%@\n%@", @"==========================", v6];
  }

  v7 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];

  if (v7)
  {
    v8 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__DRSTeamDampeningConfiguration_debugDescription__block_invoke;
    v10[3] = &unk_27899FDD0;
    v11 = v3;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v3;
}

void __49__DRSTeamDampeningConfiguration_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 debugDescription];
  [v4 appendFormat:@"%@:\n%@\n%@", v5, @"==========================", v6];
}

- (DRSTeamDampeningConfiguration)initWithPlistDict:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke;
  v25[3] = &unk_27899FDF8;
  v25[4] = &v26;
  [v4 enumerateKeysAndObjectsUsingBlock:v25];
  if (*(v27 + 24) != 1)
  {
    v5 = [v4 objectForKeyedSubscript:kDRSDMDefaultConfigKey];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = DPLogHandle_DampeningManagerError();
        if (os_signpost_enabled(&v7->super))
        {
          *buf = 0;
          v8 = "Invalid default config dictionary value";
          goto LABEL_19;
        }

LABEL_20:
        v6 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v7 = [[DRSDampeningConfiguration alloc] initWithPlistDict:v5];
      if (!v7)
      {
        v7 = DPLogHandle_DampeningManagerError();
        if (os_signpost_enabled(&v7->super))
        {
          *buf = 0;
          v8 = "Malformed default config dictionary";
LABEL_19:
          _os_signpost_emit_with_name_impl(&dword_232906000, &v7->super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", v8, buf, 2u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:kDRSDMIssueCategoryDictKey];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = DPLogHandle_DampeningManagerError();
        if (os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Invalid issue category to config dictionary value", buf, 2u);
        }

        v14 = 0;
        goto LABEL_27;
      }

      v10 = [MEMORY[0x277CBEB38] dictionary];
      *buf = 0;
      v22 = buf;
      v23 = 0x2020000000;
      v24 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke_430;
      v18[3] = &unk_27899FBE8;
      v20 = buf;
      v11 = v10;
      v19 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v18];
      v12 = v22[24];
      if (v12 == 1)
      {
        v13 = DPLogHandle_DampeningManagerError();
        if (os_signpost_enabled(v13))
        {
          *v17 = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Malformed issue category-to-config plist dictionary value", v17, 2u);
        }

        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      _Block_object_dispose(buf, 8);
      if (v12)
      {
LABEL_27:
        v6 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v14 = 0;
    }

    self = [(DRSTeamDampeningConfiguration *)self initWithDefaultConfiguration:v7 issueCategoryToConfigurationDict:v14];
    v6 = self;
    goto LABEL_29;
  }

  v5 = DPLogHandle_DampeningManagerError();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Malformed team dampening plist", buf, 2u);
  }

  v6 = 0;
LABEL_31:

  _Block_object_dispose(&v26, 8);
  return v6;
}

void __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke_430(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = [[DRSDampeningConfiguration alloc] initWithPlistDict:v7];

  if (v8)
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)teamIdToTeamDampeningConfigFromPlistDirectoryPath:(id)a3 errorOut:(id *)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v65 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6 isDirectory:&v65];

  if ((v8 & 1) == 0)
  {
    v9 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v9))
    {
      *buf = 138543362;
      v67 = v6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistDirectoryMissing", "Plist directory %{public}@ does not exist", buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_54;
  }

  if (v65)
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v64 = 0;
    v11 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:&v64];
    v12 = v64;

    if (v12)
    {
      v13 = DPLogHandle_DampeningManagerError();
      if (os_signpost_enabled(v13))
      {
        v14 = [v12 localizedDescription];
        *buf = 138543618;
        v67 = v6;
        v68 = 2114;
        v69 = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotEnumeratePlistDirectory", "Could not enumerate plist directory %{public}@ due to error: %{public}@", buf, 0x16u);
      }

      if (a4)
      {
        v15 = v12;
        v16 = 0;
        *a4 = v12;
      }

      else
      {
        v16 = 0;
      }

LABEL_53:

      goto LABEL_54;
    }

    v53 = a4;
    v55 = v9;
    v56 = v6;
    v18 = [MEMORY[0x277CBEB38] dictionary];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = v11;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (!v20)
    {
LABEL_38:

      v16 = v18;
      v9 = v55;
      v6 = v56;
      v43 = v18;
      v12 = 0;
      v11 = v54;
LABEL_52:

      goto LABEL_53;
    }

    v21 = v20;
    v22 = *v61;
    v57 = v19;
    v58 = v18;
LABEL_21:
    v23 = 0;
    while (1)
    {
      if (*v61 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v60 + 1) + 8 * v23);
      if ([v24 hasDirectoryPath])
      {
        v25 = DPLogHandle_DampeningManager();
        if (os_signpost_enabled(v25))
        {
          v26 = [v24 path];
          *buf = 138543362;
          v67 = v26;
          v27 = v25;
          v28 = "SkippingPlistSubDir";
LABEL_35:
          _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v28, "Skipping %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v29 = [v24 pathExtension];
        v30 = [v29 isEqualToString:@"plist"];

        if (v30)
        {
          v31 = v21;
          v32 = v22;
          v33 = objc_alloc(MEMORY[0x277CBEAC0]);
          v59 = 0;
          v34 = [v33 initWithContentsOfURL:v24 error:&v59];
          v25 = v59;
          if (!v34)
          {
            v44 = DPLogHandle_DampeningManagerError();
            if (os_signpost_enabled(v44))
            {
              v45 = [v24 path];
              v46 = v45;
              v47 = @"Unknown";
              if (v25)
              {
                v47 = v25;
              }

              *buf = 138543618;
              v67 = v45;
              v68 = 2114;
              v69 = v47;
              _os_signpost_emit_with_name_impl(&dword_232906000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistLoadingError", "Failed to load %{public}@ due to error: %{public}@", buf, 0x16u);
            }

            v9 = v55;
            v6 = v56;
            v12 = 0;
            v11 = v54;
            v48 = v57;
            if (v53)
            {
              *v53 = 0;
            }

            goto LABEL_51;
          }

          v35 = [[DRSTeamDampeningConfiguration alloc] initWithPlistDict:v34];
          if (!v35)
          {
            v49 = DPLogHandle_DampeningManagerError();
            v9 = v55;
            v6 = v56;
            v12 = 0;
            if (os_signpost_enabled(v49))
            {
              v50 = [v24 path];
              *buf = 138543362;
              v67 = v50;
              _os_signpost_emit_with_name_impl(&dword_232906000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigPlistProcessingError", "Failed to intialize team dampening configuration from %{public}@", buf, 0xCu);
            }

            if (v53)
            {
              *v53 = _dampeningManagerError(@"Invalid plist dictionary");
            }

            v11 = v54;
            v48 = v57;
LABEL_51:

            v16 = 0;
            v43 = v58;
            goto LABEL_52;
          }

          v36 = v35;
          v37 = [v24 path];
          v38 = [v37 lastPathComponent];
          v39 = [v38 stringByDeletingPathExtension];

          v40 = DPLogHandle_DampeningManager();
          if (os_signpost_enabled(v40))
          {
            v41 = [v24 path];
            v42 = [(DRSTeamDampeningConfiguration *)v36 debugDescription];
            *buf = 138543874;
            v67 = v41;
            v68 = 2114;
            v69 = v39;
            v70 = 2114;
            v71 = v42;
            _os_signpost_emit_with_name_impl(&dword_232906000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IncludingPlistTeamIDConfig", "Path: %{public}@\nTeamID: %{public}@\nConfig:\n%{public}@", buf, 0x20u);
          }

          v18 = v58;
          [v58 setObject:v36 forKeyedSubscript:v39];

          v19 = v57;
          v22 = v32;
          v21 = v31;
        }

        else
        {
          v25 = DPLogHandle_DampeningManager();
          if (os_signpost_enabled(v25))
          {
            v26 = [v24 path];
            *buf = 138543362;
            v67 = v26;
            v27 = v25;
            v28 = "SkippingNonPlistFile";
            goto LABEL_35;
          }
        }
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v21)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }
    }
  }

  v17 = DPLogHandle_DampeningManagerError();
  if (os_signpost_enabled(v17))
  {
    *buf = 138543362;
    v67 = v6;
    _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistDirectoryNotDirectory", "Plist directory %{public}@ is not a directory", buf, 0xCu);
  }

  if (!a4)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_55;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Plist directory path '%@' is not a directory", v6];
  _dampeningManagerError(v9);
  *a4 = v16 = 0;
LABEL_54:

LABEL_55:
  v51 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)updateIssueCategoryConfig:(id)a3 newConfig:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (DRSTeamDampeningConfiguration)initWithDefaultConfiguration:(id)a3 issueCategoryToConfigurationDict:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v16.receiver = self;
    v16.super_class = DRSTeamDampeningConfiguration;
    v11 = [(DRSTeamDampeningConfiguration *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_defaultConfiguration, a3);
      v13 = [v8 mutableCopy];
      issueCategoryToConfigurationDict = v12->_issueCategoryToConfigurationDict;
      v12->_issueCategoryToConfigurationDict = v13;
    }

    self = v12;
    v10 = self;
  }

  else
  {
    v9 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationFailure", "Default configuration and issue category configuration dictionary cannot both be nil", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)configurationForIssueCategory:(id)a3
{
  v4 = a3;
  v5 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v13 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
      if (v7 && (v8 = v7, [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        v10 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
        v11 = [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
        if (v14)
        {
          goto LABEL_17;
        }

        v15 = [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration];

        if (v15)
        {
          goto LABEL_18;
        }
      }

      v16 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
      if (v16)
      {
        v17 = v16;
        v18 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];

        if (v18)
        {
          v19 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
          v20 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];
          v21 = [v19 isEqualToDictionary:v20];

          if (v21)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }
      }

      v14 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
      if (!v14)
      {
        v23 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];

        if (!v23)
        {
LABEL_22:
          v13 = 1;
          goto LABEL_19;
        }

LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)_initWithTeamDampeningConfigMO_ON_MOC_QUEUE:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 defaultConfiguration];

  if (v5)
  {
    v6 = [DRSDampeningConfiguration alloc];
    v7 = [v4 defaultConfiguration];
    v23 = [(DRSDampeningConfiguration *)v6 _initWithMO_ON_MOC_QUEUE:v7];
  }

  else
  {
    v23 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v4 categoryConfigurations];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [[DRSDampeningConfiguration alloc] _initWithMO_ON_MOC_QUEUE:v14];
        if (!v15)
        {
          v20 = DPLogHandle_DampeningManagerError();
          if (os_signpost_enabled(v20))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationMOInitFailure", "Failed to initialize team dampening configuration from persistence", buf, 2u);
          }

          v19 = 0;
          v18 = v23;
          goto LABEL_18;
        }

        v16 = v15;
        v17 = [v14 identifier];
        [v8 setObject:v16 forKeyedSubscript:v17];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (![v8 count])
  {

    v8 = 0;
  }

  v18 = v23;
  self = [(DRSTeamDampeningConfiguration *)self initWithDefaultConfiguration:v23 issueCategoryToConfigurationDict:v8];
  v19 = self;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)a3 teamID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DRSTeamDampeningConfigurationMO alloc] initWithContext:v6];
  [(DRSTeamDampeningConfigurationMO *)v8 setTeamID:v7];
  v9 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (v9)
  {
    v10 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    v11 = [v10 _ON_MOC_QUEUE_moRepresentationInContext:v6 identifier:@"defaultConfiguration"];
    [(DRSTeamDampeningConfigurationMO *)v8 setDefaultConfiguration:v11];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__DRSTeamDampeningConfiguration__ON_MOC_QUEUE_moRepresentationInContext_teamID___block_invoke;
  v17[3] = &unk_27899FE20;
  v13 = v6;
  v18 = v13;
  v20 = &v21;
  v14 = v8;
  v19 = v14;
  [v12 enumerateKeysAndObjectsUsingBlock:v17];

  if (v22[3])
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __80__DRSTeamDampeningConfiguration__ON_MOC_QUEUE_moRepresentationInContext_teamID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 _ON_MOC_QUEUE_moRepresentationInContext:*(a1 + 32) identifier:v7];
  if (v8)
  {
    [*(a1 + 40) addCategoryConfigurationsObject:v8];
  }

  else
  {
    *a4 = 1;
    v9 = DPLogHandle_DampeningManagerError();
    if (os_signpost_enabled(v9))
    {
      v11 = 138543362;
      v12 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationMORepresentationFailure", "Failed to get MO representation of config for issueCategory: %{public}@", &v11, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end