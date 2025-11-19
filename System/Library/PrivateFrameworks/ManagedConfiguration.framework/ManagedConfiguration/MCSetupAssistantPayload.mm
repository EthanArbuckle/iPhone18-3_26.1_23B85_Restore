@interface MCSetupAssistantPayload
+ (id)typeStrings;
- (MCSetupAssistantPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSDictionary)configuration;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCSetupAssistantPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.SetupAssistant.managed";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCSetupAssistantPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v27.receiver = self;
  v27.super_class = MCSetupAssistantPayload;
  v9 = [(MCPayload *)&v27 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v26 = 0;
    v10 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SkipSetupItems" isRequired:0 outError:&v26];
    v11 = v26;
    if (v11)
    {

      v12 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v10 = v12;
      if (a5)
      {
        v13 = v12;
        *a5 = v10;
      }

      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [v10 MCVerboseDescription];
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      skipKeys = v9;
      v9 = 0;
    }

    else
    {
      v20 = [v10 copy];
      skipKeys = v9->_skipKeys;
      v9->_skipKeys = v20;
    }

    if ([v8 count])
    {
      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        v23 = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v8;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSDictionary)configuration
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCSetupAssistantPayload *)self skipKeys];
  v5 = [v4 copy];
  [v3 setObject:v5 forKeyedSubscript:@"SkipSetupItems"];

  v6 = [v3 copy];

  return v6;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSetupAssistantPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCSetupAssistantPayload *)self configuration];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MCSetupAssistantPayload;
  v4 = [(MCPayload *)&v8 verboseDescription];
  v5 = [(MCSetupAssistantPayload *)self skipKeys];
  v6 = [v3 stringWithFormat:@"%@ %p: Skip keys:%@", v4, self, v5];

  return v6;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = [(MCSetupAssistantPayload *)self skipKeys];
  v5 = MCLocalizedString(@"SETUP_ASSISTANT_SKIP_KEYS");
  v6 = [MCKeyValueSection sectionWithLocalizedArray:v4 title:v5 footer:0];

  if (v6)
  {
    [v3 addObject:v6];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end