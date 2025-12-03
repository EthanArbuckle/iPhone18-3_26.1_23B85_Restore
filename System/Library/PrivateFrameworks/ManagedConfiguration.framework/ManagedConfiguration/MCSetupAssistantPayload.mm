@interface MCSetupAssistantPayload
+ (id)typeStrings;
- (MCSetupAssistantPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
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

- (MCSetupAssistantPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = MCSetupAssistantPayload;
  v9 = [(MCPayload *)&v27 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v26 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SkipSetupItems" isRequired:0 outError:&v26];
    v11 = v26;
    if (v11)
    {

      v12 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v10 = v12;
      if (error)
      {
        v13 = v12;
        *error = v10;
      }

      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = objc_opt_class();
        v17 = v16;
        mCVerboseDescription = [v10 MCVerboseDescription];
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = mCVerboseDescription;
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

    if ([dictionaryCopy count])
    {
      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v29 = friendlyName;
        v30 = 2114;
        v31 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSDictionary)configuration
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  skipKeys = [(MCSetupAssistantPayload *)self skipKeys];
  v5 = [skipKeys copy];
  [dictionary setObject:v5 forKeyedSubscript:@"SkipSetupItems"];

  v6 = [dictionary copy];

  return v6;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSetupAssistantPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  configuration = [(MCSetupAssistantPayload *)self configuration];
  [stubDictionary addEntriesFromDictionary:configuration];

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MCSetupAssistantPayload;
  verboseDescription = [(MCPayload *)&v8 verboseDescription];
  skipKeys = [(MCSetupAssistantPayload *)self skipKeys];
  v6 = [v3 stringWithFormat:@"%@ %p: Skip keys:%@", verboseDescription, self, skipKeys];

  return v6;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  skipKeys = [(MCSetupAssistantPayload *)self skipKeys];
  v5 = MCLocalizedString(@"SETUP_ASSISTANT_SKIP_KEYS");
  v6 = [MCKeyValueSection sectionWithLocalizedArray:skipKeys title:v5 footer:0];

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