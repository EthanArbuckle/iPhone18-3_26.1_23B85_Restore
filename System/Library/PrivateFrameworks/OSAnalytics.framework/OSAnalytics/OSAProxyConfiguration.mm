@interface OSAProxyConfiguration
- (BOOL)isConfigEnabled:(id)a3;
- (BOOL)isFile:(id)a3 validForSubmission:(id)a4 reasonableSize:(int64_t)a5 to:(id)a6 internalTypes:(id)a7 result:(const char *)a8;
- (id)assembleMetadataAt:(double)a3 withOptions:(unsigned int)a4;
- (id)description;
- (id)init:(id)a3 fromMetadata:(id)a4;
- (id)initFromPath:(id)a3;
- (id)metadata;
@end

@implementation OSAProxyConfiguration

- (id)init:(id)a3 fromMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v50.receiver = self;
  v50.super_class = OSAProxyConfiguration;
  v9 = [(OSAProxyConfiguration *)&v50 init];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [v8 objectForKeyedSubscript:@"path"];
  logPath = v9->_logPath;
  v9->_logPath = v10;

  objc_storeStrong(&v9->_identifier, a3);
  v12 = [v8 objectForKeyedSubscript:@"machine_config"];
  modelCode = v9->_modelCode;
  v9->_modelCode = v12;

  v14 = [v8 objectForKeyedSubscript:@"product_version"];
  productVersion = v9->_productVersion;
  v9->_productVersion = v14;

  v16 = [v8 objectForKeyedSubscript:@"os_train"];
  osTrain = v9->_osTrain;
  v9->_osTrain = v16;

  v18 = [v8 objectForKeyedSubscript:@"target_audience"];
  targetAudience = v9->_targetAudience;
  v9->_targetAudience = v18;

  v20 = [v8 objectForKeyedSubscript:@"os_version"];
  buildVersion = v9->_buildVersion;
  v9->_buildVersion = v20;

  v22 = [v8 objectForKeyedSubscript:@"UI_country_code"];
  uiCountryCode = v9->_uiCountryCode;
  v9->_uiCountryCode = v22;

  v24 = [v8 objectForKeyedSubscript:@"system_ID"];
  systemId = v9->_systemId;
  v9->_systemId = v24;

  v26 = [v8 objectForKeyedSubscript:@"crashreporter_key"];
  crashReporterKey = v9->_crashReporterKey;
  v9->_crashReporterKey = v26;

  v28 = [v8 objectForKeyedSubscript:@"awd_device_ID"];
  awdReporterKey = v9->_awdReporterKey;
  v9->_awdReporterKey = v28;

  v30 = [v8 objectForKeyedSubscript:@"internal_key"];
  internalKey = v9->_internalKey;
  v9->_internalKey = v30;

  v32 = [v8 objectForKeyedSubscript:@"release_type"];
  releaseType = v9->_releaseType;
  v9->_releaseType = v32;

  v34 = [v8 objectForKeyedSubscript:@"SeedGroup"];
  seedGroup = v9->_seedGroup;
  v9->_seedGroup = v34;

  v36 = [v8 objectForKeyedSubscript:@"ExperimentGroup"];
  experimentGroup = v9->_experimentGroup;
  v9->_experimentGroup = v36;

  v38 = [v8 objectForKeyedSubscript:@"AutomatedDeviceGroup"];
  automatedDeviceGroup = v9->_automatedDeviceGroup;
  v9->_automatedDeviceGroup = v38;

  v40 = [v8 objectForKeyedSubscript:@"AutomatedContextURL"];
  automatedContextURL = v9->_automatedContextURL;
  v9->_automatedContextURL = v40;

  v42 = [v8 objectForKeyedSubscript:@"currentTaskingIDByRouting"];
  currentTaskingIDByRouting = v9->_currentTaskingIDByRouting;
  v9->_currentTaskingIDByRouting = v42;

  v44 = [v8 objectForKeyedSubscript:@"isComputeController"];
  v9->_isComputeController = [v44 BOOLValue];

  if (!v9->_osTrain)
  {
    v9->_osTrain = @"<unknown>";
  }

  if (!v9->_targetAudience)
  {
    v9->_targetAudience = @"<unknown>";
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v9->_osTrain, v9->_buildVersion];
  productNameVersionBuildString = v9->_productNameVersionBuildString;
  v9->_productNameVersionBuildString = v45;

  if ([(NSString *)v9->_modelCode length]&& [(NSString *)v9->_productVersion length]&& [(NSString *)v9->_buildVersion length]&& [(NSString *)v9->_uiCountryCode length]&& [(NSString *)v9->_crashReporterKey length])
  {
    if ([(NSString *)v9->_releaseType length])
    {
      v47 = v9;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
LABEL_14:
    v47 = 0;
  }

  v48 = v47;

  return v48;
}

- (id)initFromPath:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = [v4 stringByAppendingPathComponent:@"deviceMetadata.proxy"];
  v7 = [v5 dictionaryWithContentsOfFile:v6];

  v8 = [v4 lastPathComponent];
  v9 = [(OSAProxyConfiguration *)self init:v8 fromMetadata:v7];

  if (v9)
  {
    v10 = [v4 copy];
    v11 = v9[1];
    v9[1] = v10;
  }

  return v9;
}

- (id)assembleMetadataAt:(double)a3 withOptions:(unsigned int)a4
{
  v4 = a4;
  v5 = a3;
  v34[2] = *MEMORY[0x1E69E9840];
  if ((a4 & 4) != 0)
  {
    a3 = OSATimeIntervalApproximate(a3);
  }

  v7 = OSADateFormat(5u, a3);
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = MEMORY[0x1E696AD98];
  if ((v4 & 4) != 0)
  {
    v5 = OSATimeIntervalApproximate(v5);
  }

  v10 = [v9 numberWithDouble:v5];
  [v8 setObject:v10 forKey:@"submissionTime"];

  [v8 setObject:v7 forKey:@"submissionTimeISO"];
  v11 = [(OSAProxyConfiguration *)self releaseType];
  [v8 setValue:v11 forKey:@"release_type"];

  v12 = [(OSAProxyConfiguration *)self modelCode];
  [v8 setValue:v12 forKey:@"machine_config"];

  v13 = [(OSAProxyConfiguration *)self automatedDeviceGroup];
  [v8 setValue:v13 forKey:@"AutomatedDeviceGroup"];

  v14 = [(OSAProxyConfiguration *)self automatedContextURL];
  [v8 setValue:v14 forKey:@"AutomatedContextURL"];

  v15 = [(OSAProxyConfiguration *)self seedGroup];
  [v8 setValue:v15 forKey:@"SeedGroup"];

  v16 = [(OSAProxyConfiguration *)self experimentGroup];
  [v8 setValue:v16 forKey:@"ExperimentGroup"];

  v17 = [(OSAProxyConfiguration *)self internalKey];
  [v8 setValue:v17 forKey:@"internal_key"];

  if ([(OSAProxyConfiguration *)self isComputeController])
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isComputeController"];
  }

  if ([(OSAProxyConfiguration *)self isInDeviceRecoveryEnvironment])
  {
    v18 = [(OSAProxyConfiguration *)self recoveryModeReason];
    [v8 setObject:v18 forKeyedSubscript:@"submission_from_recovery_mode_with_reason"];
  }

  if (v4)
  {
    [v8 setValue:0 forKey:@"crashreporter_key"];
    if ((v4 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = [(OSAProxyConfiguration *)self crashReporterKey];
    [v8 setValue:v19 forKey:@"crashreporter_key"];

    if ((v4 & 2) != 0)
    {
LABEL_11:
      [v8 setValue:0 forKey:@"system_ID"];
      goto LABEL_14;
    }
  }

  v20 = [(OSAProxyConfiguration *)self systemId];
  [v8 setValue:v20 forKey:@"system_ID"];

LABEL_14:
  if (![(OSAProxyConfiguration *)self isProxy])
  {
    goto LABEL_23;
  }

  v21 = +[OSASystemConfiguration sharedInstance];
  v33[0] = @"os_version";
  v22 = [v21 productNameVersionBuildString];
  v33[1] = @"machine_config";
  v34[0] = v22;
  v23 = [v21 modelCode];
  v34[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v25 = [v24 mutableCopy];

  if ([v21 appleInternal])
  {
    v26 = [v21 crashReporterKey];
    [v25 setObject:v26 forKey:@"crashreporter_key"];

    v27 = [v21 automatedDeviceGroup];
    [v25 setValue:v27 forKey:@"AutomatedDeviceGroup"];

    v28 = [v21 internalKey];
    v29 = @"internal_key";
LABEL_19:
    [v25 setValue:v28 forKey:v29];

    goto LABEL_20;
  }

  if ([v21 factoryDevice])
  {
    v28 = [v21 automatedDeviceGroup];
    v29 = @"AutomatedDeviceGroup";
    goto LABEL_19;
  }

LABEL_20:
  if ([v21 isInDeviceRecoveryEnvironment])
  {
    v30 = [v21 recoveryModeReason];
    [v25 setObject:v30 forKeyedSubscript:@"submission_from_recovery_mode_with_reason"];
  }

  [v8 setValue:v25 forKey:@"proxyingDevice"];

LABEL_23:
  v31 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)metadata
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(OSAProxyConfiguration *)self modelCode];
  [v3 setObject:v4 forKeyedSubscript:@"machine_config"];

  v5 = [(OSAProxyConfiguration *)self productVersion];
  [v3 setObject:v5 forKeyedSubscript:@"product_version"];

  v6 = [(OSAProxyConfiguration *)self osTrain];
  [v3 setObject:v6 forKeyedSubscript:@"os_train"];

  v7 = [(OSAProxyConfiguration *)self targetAudience];
  [v3 setObject:v7 forKeyedSubscript:@"target_audience"];

  v8 = [(OSAProxyConfiguration *)self buildVersion];
  [v3 setObject:v8 forKeyedSubscript:@"os_version"];

  v9 = [(OSAProxyConfiguration *)self uiCountryCode];
  [v3 setObject:v9 forKeyedSubscript:@"UI_country_code"];

  v10 = [(OSAProxyConfiguration *)self systemId];
  [v3 setObject:v10 forKeyedSubscript:@"system_ID"];

  v11 = [(OSAProxyConfiguration *)self crashReporterKey];
  [v3 setObject:v11 forKeyedSubscript:@"crashreporter_key"];

  v12 = [(OSAProxyConfiguration *)self awdReporterKey];
  [v3 setObject:v12 forKeyedSubscript:@"awd_device_ID"];

  v13 = [(OSAProxyConfiguration *)self internalKey];
  [v3 setObject:v13 forKeyedSubscript:@"internal_key"];

  v14 = [(OSAProxyConfiguration *)self releaseType];
  [v3 setObject:v14 forKeyedSubscript:@"release_type"];

  if ([(OSAProxyConfiguration *)self isComputeController])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isComputeController"];
  }

  v15 = [(OSAProxyConfiguration *)self seedGroup];
  [v3 setValue:v15 forKey:@"SeedGroup"];

  v16 = [(OSAProxyConfiguration *)self experimentGroup];
  [v3 setValue:v16 forKey:@"ExperimentGroup"];

  v17 = [(OSAProxyConfiguration *)self automatedDeviceGroup];
  [v3 setValue:v17 forKey:@"AutomatedDeviceGroup"];

  v18 = [(OSAProxyConfiguration *)self automatedContextURL];
  [v3 setValue:v18 forKey:@"AutomatedContextURL"];

  v19 = [(OSAProxyConfiguration *)self currentTaskingIDByRouting];
  [v3 setValue:v19 forKey:@"currentTaskingIDByRouting"];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(OSAProxyConfiguration *)self metadata];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v5;
}

- (BOOL)isConfigEnabled:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"eOS"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"eOS"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isFile:(id)a3 validForSubmission:(id)a4 reasonableSize:(int64_t)a5 to:(id)a6 internalTypes:(id)a7 result:(const char *)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (!a8)
  {
    [OSAProxyConfiguration isFile:validForSubmission:reasonableSize:to:internalTypes:result:];
  }

  v18 = v17;
  *a8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v15 stringValue];

    v15 = v19;
  }

  v20 = +[OSASystemConfiguration sharedInstance];
  if ([v20 optInApple])
  {
    LOBYTE(v21) = 1;
  }

  else if ([v16 isEqualToString:@"ca1"])
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = [v16 isEqualToString:@"ca1-ohttp"] ^ 1;
  }

  v22 = getxattr([v14 UTF8String], "DnUOverride", 0, 0, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 length])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v57 = v14;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' invalid for submission: no type", buf, 0xCu);
    }

    LOBYTE(v26) = 0;
    v27 = "rejected-invalid";
    goto LABEL_19;
  }

  v51 = a5;
  v53 = self;
  v55 = v16;
  v23 = getxattr([v14 UTF8String], "DoNotSubmit", 0, 0, 0, 0);
  v24 = +[OSASystemConfiguration sharedInstance];
  if ([v24 appleInternal])
  {
    v25 = [v18 containsObject:v15];

    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v14;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' allowed for submission for testing", buf, 0xCu);
      }

      LOBYTE(v26) = 1;
      v16 = v55;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v54 = v18;
  v30 = +[OSASystemConfiguration sharedInstance];
  v31 = [v30 getLogBlacklist];
  v32 = [v31 containsObject:v15];

  if (!v32)
  {
    v16 = v55;
    if (v23 >= 1)
    {
      v18 = v54;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v57 = v14;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' tagged DoNotSubmit", buf, 0xCu);
      }

      LOBYTE(v26) = 0;
      v27 = "rejected-doNotSubmit";
LABEL_19:
      *a8 = v27;
      goto LABEL_20;
    }

    if (v22 > 0)
    {
      v33 = 1;
    }

    else
    {
      v33 = v21;
    }

    if ((v33 & 1) == 0)
    {
      v18 = v54;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v57 = v14;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' not submittable on opted out device", buf, 0xCu);
      }

      LOBYTE(v26) = 0;
      v27 = "rejected-optout";
      goto LABEL_19;
    }

    v34 = +[OSASystemConfiguration sharedInstance];
    v35 = [v34 getPropsForLogType:v15];

    if (!v35)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v57 = v14;
        v58 = 2114;
        v59 = v15;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' invalid for submission: unknown type %{public}@", buf, 0x16u);
      }

      v38 = "rejected-unregistered";
      v18 = v54;
      goto LABEL_79;
    }

    if (![(OSAProxyConfiguration *)v53 isConfigEnabled:v35])
    {
      v18 = v54;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v57 = v14;
        v58 = 2114;
        v59 = v15;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' type %{public}@ invalid for platform", buf, 0x16u);
      }

      v38 = "rejected-platform";
      goto LABEL_79;
    }

    if ([v55 isEqualToString:@"<transfer>"])
    {
      v36 = [v35 objectForKeyedSubscript:@"disabled"];
      if (!v36)
      {
        v37 = [v35 objectForKeyedSubscript:@"watchSync"];

        if (!v37)
        {
          goto LABEL_70;
        }

LABEL_60:
        v26 = 1;
LABEL_71:
        v48 = [v35 objectForKeyedSubscript:@"limit"];
        v49 = [v48 intValue];

        if (v49)
        {
          v50 = v49;
        }

        else
        {
          v50 = 0x100000;
        }

        if (!v26)
        {
          v18 = v54;
          goto LABEL_80;
        }

        v18 = v54;
        if (v50 >= v52)
        {
LABEL_80:

          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v57 = v14;
          v58 = 2048;
          v59 = v52;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' is too large (%lld) for submission", buf, 0x16u);
        }

        v38 = "rejected-size";
LABEL_79:
        LOBYTE(v26) = 0;
        *a8 = v38;
        goto LABEL_80;
      }
    }

    else
    {
      v39 = [v55 isEqualToString:@"<sync>"];
      v40 = [v35 objectForKeyedSubscript:@"disabled"];
      v36 = v40;
      if (!v39)
      {
        if (v40)
        {
          v41 = 0;
        }

        else
        {
          v43 = +[OSASystemConfiguration sharedInstance];
          if ([v43 appleInternal])
          {
            v41 = 1;
          }

          else
          {
            v45 = [v35 objectForKeyedSubscript:@"gm"];
            v41 = v45 != 0;
          }
        }

        v46 = [v35 objectForKeyedSubscript:@"routing"];
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = @"da3";
        }

        if (([(__CFString *)v47 isEqualToString:v55]& 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138544130;
          v57 = v14;
          v58 = 2114;
          v59 = v15;
          v60 = 2114;
          v61 = v55;
          v62 = 2114;
          v63 = v47;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Warning: Logfile '%{public}@' type %{public}@ routing %{public}@ does not match config %{public}@", buf, 0x2Au);
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      if (!v40)
      {
        v42 = +[OSASystemConfiguration sharedInstance];
        if ([v42 appleInternal])
        {

          goto LABEL_60;
        }

        v44 = [v35 objectForKeyedSubscript:@"gm"];

        if (v44)
        {
          goto LABEL_60;
        }

LABEL_70:
        v26 = 0;
        *a8 = "rejected-config";
        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  v16 = v55;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v57 = v14;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' blacklisted from submission", buf, 0xCu);
  }

  LOBYTE(v26) = 0;
  *a8 = "rejected-blacklist";
  v18 = v54;
LABEL_20:

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

@end