@interface MCSharedDeviceConfigurationPayload
+ (id)typeStrings;
- (MCSharedDeviceConfigurationPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSDictionary)configuration;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCSharedDeviceConfigurationPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.shareddeviceconfiguration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCSharedDeviceConfigurationPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v33.receiver = self;
  v33.super_class = MCSharedDeviceConfigurationPayload;
  v9 = [(MCPayload *)&v33 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v32 = 0;
    v10 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"LockScreenFootnote" isRequired:0 outError:&v32];
    v11 = v32;
    lockScreenFootnote = v9->_lockScreenFootnote;
    v9->_lockScreenFootnote = v10;

    if (v11)
    {
      goto LABEL_7;
    }

    if (!v9->_lockScreenFootnote)
    {
      v31 = 0;
      v15 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IfLostReturnToMessage" isRequired:0 outError:&v31];
      v11 = v31;
      v16 = v9->_lockScreenFootnote;
      v9->_lockScreenFootnote = v15;

      if (v11)
      {
        goto LABEL_7;
      }
    }

    v30 = 0;
    v13 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"AssetTagInformation" isRequired:0 outError:&v30];
    v11 = v30;
    assetTagInformation = v9->_assetTagInformation;
    v9->_assetTagInformation = v13;

    if (v11)
    {
LABEL_7:
      v17 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v18 = v17;
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = v22;
        v24 = [v18 MCVerboseDescription];
        *buf = 138543618;
        v35 = v22;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    if ([v8 count])
    {
      v25 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v26 = v25;
        v27 = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v35 = v27;
        v36 = 2114;
        v37 = v8;
        _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSDictionary)configuration
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
  [v3 setObject:v4 forKeyedSubscript:@"LockScreenFootnote"];

  v5 = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
  [v3 setObject:v5 forKeyedSubscript:@"AssetTagInformation"];

  return v3;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSharedDeviceConfigurationPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCSharedDeviceConfigurationPayload *)self configuration];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    v7 = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
    v8 = MCLocalizedString(@"LOCK_SCREEN_FOOTNOTE");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:v7 localizedKey:v8];

    [v3 addObject:v9];
  }

  v10 = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [MCKeyValue alloc];
    v13 = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
    v14 = MCLocalizedString(@"ASSET_TAG_INFORMATION");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:v13 localizedKey:v14];

    [v3 addObject:v15];
  }

  if ([v3 count])
  {
    v16 = [MCKeyValueSection sectionWithKeyValues:v3];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end