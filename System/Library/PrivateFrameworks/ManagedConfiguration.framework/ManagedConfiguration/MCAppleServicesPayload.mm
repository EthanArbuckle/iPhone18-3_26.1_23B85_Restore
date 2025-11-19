@interface MCAppleServicesPayload
+ (id)typeStrings;
- (MCAppleServicesPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCAppleServicesPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.security.appleservices";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCAppleServicesPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v52.receiver = self;
  v52.super_class = MCAppleServicesPayload;
  v9 = [(MCPayload *)&v52 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v51 = 0;
  v11 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PinningAdditions" isRequired:0 outError:&v51];
  v12 = v51;
  if (v12)
  {
    goto LABEL_31;
  }

  if (!v11)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v13)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v15 = *v48;
  v44 = *MEMORY[0x1E697B368];
  v43 = *MEMORY[0x1E697B370];
  v42 = v11;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v48 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v47 + 1) + 8 * i);
      v18 = [v17 objectForKeyedSubscript:@"Algorithm"];
      if (!v18)
      {
        v26 = [objc_opt_class() missingFieldErrorWithField:@"Algorithm" underlyingError:0];
LABEL_24:
        v12 = v26;
        goto LABEL_28;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = [MCPayload badFieldTypeErrorWithField:@"Algorithm"];
        goto LABEL_24;
      }

      v18 = v18;
      if ([v18 isEqualToString:@"sha256"])
      {
        v19 = [v17 objectForKeyedSubscript:@"Hash"];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53[0] = v44;
            v53[1] = v43;
            v54[0] = v18;
            v54[1] = v19;
            v20 = MEMORY[0x1E695DF20];
            v21 = v19;
            v22 = [v20 dictionaryWithObjects:v54 forKeys:v53 count:2];

            [v10 addObject:v22];
            goto LABEL_17;
          }

          v27 = [MCPayload badFieldTypeErrorWithField:@"Hash"];
        }

        else
        {
          v27 = [objc_opt_class() missingFieldErrorWithField:@"Hash" underlyingError:0];
        }

        v12 = v27;

LABEL_28:
        v11 = v42;
        goto LABEL_29;
      }

      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [(MCPayload *)v9 friendlyName];
        *buf = 138412546;
        v56 = v25;
        v57 = 2112;
        v58 = v18;
        _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_DEFAULT, "Payload %@ has an unsupported hash algorithm %@. The hash will be ignored.", buf, 0x16u);
      }

LABEL_17:
    }

    v14 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    v12 = 0;
    v11 = v42;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  objc_storeStrong(&v9->_hashDictionaries, v10);
  if (v12)
  {
LABEL_31:
    v28 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
    v29 = v28;
    if (a5)
    {
      v30 = v28;
      *a5 = v29;
    }

    v31 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = v10;
      v34 = v11;
      v35 = objc_opt_class();
      obja = v35;
      v36 = [v29 MCVerboseDescription];
      *buf = 138412546;
      v56 = v35;
      v11 = v34;
      v10 = v33;
      v57 = 2112;
      v58 = v36;
      _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "%@ Can't parse payload: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  if ([v8 count])
  {
    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      v39 = [(MCPayload *)v9 friendlyName];
      *buf = 138412546;
      v56 = v39;
      v57 = 2112;
      v58 = v8;
      _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_INFO, "Payload “%@” contains ignored fields. They are: %@", buf, 0x16u);
    }
  }

LABEL_40:
  v40 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = MCAppleServicesPayload;
  v16 = [(MCPayload *)&v22 stubDictionary];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_hashDictionaries, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_hashDictionaries;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = *MEMORY[0x1E697B368];
    v8 = *MEMORY[0x1E697B370];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v23[0] = @"Algorithm";
        v11 = [v10 objectForKeyedSubscript:v7];
        v23[1] = @"Hash";
        v24[0] = v11;
        v12 = [v10 objectForKeyedSubscript:v8];
        v24[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        [v3 addObject:v13];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v5);
  }

  [v16 setObject:v3 forKeyedSubscript:@"PinningAdditions"];
  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCAppleServicesPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_hashDictionaries)
  {
    [v4 appendFormat:@"\nhashDictionaries:\n%@", self->_hashDictionaries];
  }

  return v4;
}

- (id)subtitle1Label
{
  v2 = [(NSArray *)self->_hashDictionaries count];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = @"APPLE_SERVICES_PINNING_ADDITION_SINGULAR";
    }

    else
    {
      v3 = @"APPLE_SERVICES_PINNING_ADDITION_PLURAL";
    }

    v2 = MCLocalizedString(v3);
  }

  return v2;
}

@end