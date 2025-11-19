@interface MCDeclarationsPayload
- (MCDeclarationsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)declarationsDictionary;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCDeclarationsPayload

- (MCDeclarationsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30.receiver = self;
  v30.super_class = MCDeclarationsPayload;
  v9 = [(MCPayload *)&v30 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v29 = 0;
    v10 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Declarations" isRequired:1 outError:&v29];
    v11 = v29;
    if (v11)
    {
      v12 = v11;
      v13 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v14 = v13;
      if (a5)
      {
        v15 = v13;
        *a5 = v14;
      }

      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [v14 MCVerboseDescription];
        *buf = 138543618;
        v32 = v18;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
      declarations = v10;
      v10 = v12;
    }

    else
    {
      if ([v8 count])
      {
        v22 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          v24 = [(MCPayload *)v9 friendlyName];
          v25 = [v8 allKeys];
          *buf = 138543618;
          v32 = v24;
          v33 = 2114;
          v34 = v25;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCDeclarationsPayload *)self declarations];
  v5 = [v4 copy];
  [v3 setObject:v5 forKeyedSubscript:@"Declarations"];

  v6 = [v3 copy];

  return v6;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCDeclarationsPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCDeclarationsPayload *)self declarationsDictionary];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MCDeclarationsPayload;
  v4 = [(MCPayload *)&v8 verboseDescription];
  v5 = [(MCDeclarationsPayload *)self declarations];
  v6 = [v3 stringWithFormat:@"%@ %p: Declarations:%@", v4, self, v5];

  return v6;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(MCDeclarationsPayload *)self declarations];
  v6 = [v5 count];

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