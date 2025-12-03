@interface MCDeclarationsPayload
- (MCDeclarationsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)declarationsDictionary;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCDeclarationsPayload

- (MCDeclarationsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = MCDeclarationsPayload;
  v9 = [(MCPayload *)&v30 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v29 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Declarations" isRequired:1 outError:&v29];
    v11 = v29;
    if (v11)
    {
      v12 = v11;
      v13 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v14 = v13;
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = v18;
        mCVerboseDescription = [v14 MCVerboseDescription];
        *buf = 138543618;
        v32 = v18;
        v33 = 2114;
        v34 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
      declarations = v10;
      v10 = v12;
    }

    else
    {
      if ([dictionaryCopy count])
      {
        v22 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          friendlyName = [(MCPayload *)v9 friendlyName];
          allKeys = [dictionaryCopy allKeys];
          *buf = 138543618;
          v32 = friendlyName;
          v33 = 2114;
          v34 = allKeys;
          _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
        }
      }

      v26 = [(NSArray *)v10 copy];
      declarations = v9->_declarations;
      v9->_declarations = v26;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)declarationsDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  declarations = [(MCDeclarationsPayload *)self declarations];
  v5 = [declarations copy];
  [dictionary setObject:v5 forKeyedSubscript:@"Declarations"];

  v6 = [dictionary copy];

  return v6;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCDeclarationsPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  declarationsDictionary = [(MCDeclarationsPayload *)self declarationsDictionary];
  [stubDictionary addEntriesFromDictionary:declarationsDictionary];

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MCDeclarationsPayload;
  verboseDescription = [(MCPayload *)&v8 verboseDescription];
  declarations = [(MCDeclarationsPayload *)self declarations];
  v6 = [v3 stringWithFormat:@"%@ %p: Declarations:%@", verboseDescription, self, declarations];

  return v6;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  declarations = [(MCDeclarationsPayload *)self declarations];
  v6 = [declarations count];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v6];
  v8 = [MCKeyValue alloc];
  if (v6 <= 1)
  {
    v9 = @"DECLARATIONS_SINGULAR_FORMAT";
  }

  else
  {
    v9 = @"DECLARATIONS_PLURAL_FORMAT";
  }

  v10 = MCLocalizedString(v9);
  v11 = [(MCKeyValue *)v8 initWithLocalizedString:v7 localizedKey:v10];

  [v4 addObject:v11];
  if ([v4 count])
  {
    v12 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v12];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end