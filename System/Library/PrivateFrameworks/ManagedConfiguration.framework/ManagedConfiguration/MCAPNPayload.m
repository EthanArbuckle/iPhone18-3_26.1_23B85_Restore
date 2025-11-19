@interface MCAPNPayload
- (BOOL)_checkForValidContents:(id)a3 outError:(id *)a4;
- (MCAPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_strippedAPNDefaults;
- (id)_validationErrorType:(int64_t)a3 forInvalidKey:(id)a4;
- (id)apnDefaults;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle2Description;
- (id)verboseDescription;
- (void)_finishInitializationWithContents:(id)a3;
@end

@implementation MCAPNPayload

- (id)_validationErrorType:(int64_t)a3 forInvalidKey:(id)a4
{
  v9 = MEMORY[0x1E696ABC0];
  v10 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD", a2, a3, a4, v4, v5, v6, v7, a4);
  v11 = [v9 MCErrorWithDomain:@"MCPayloadErrorDomain" code:a3 descriptionArray:v10 errorType:@"MCFatalError"];

  return v11;
}

- (BOOL)_checkForValidContents:(id)a3 outError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    [MCAPNPayload _checkForValidContents:a2 outError:self];
  }

  v27 = a4;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v7)
  {
    v17 = 0;
    goto LABEL_31;
  }

  v8 = v7;
  v9 = *v35;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v34 + 1) + 8 * i);
      v12 = [v11 objectForKey:@"DefaultsDomainName"];
      if (([v12 isEqualToString:@"com.apple.managedCarrier"] & 1) == 0)
      {
        v21 = @"DefaultsDomainName";
        v22 = self;
        v23 = 2004;
LABEL_28:
        v17 = [(MCAPNPayload *)v22 _validationErrorType:v23 forInvalidKey:v21];
LABEL_30:

        goto LABEL_31;
      }

      v13 = [v11 objectForKey:@"DefaultsData"];
      if (!v13)
      {
        v21 = @"DefaultsData";
        v22 = self;
        v23 = 2002;
        goto LABEL_28;
      }

      v14 = v13;
      v15 = [v13 objectForKey:@"apns"];
      if (!v15)
      {
        v17 = [(MCAPNPayload *)self _validationErrorType:2002 forInvalidKey:@"apns"];

        goto LABEL_30;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v17)
      {
        v18 = *v31;
        while (2)
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [*(*(&v30 + 1) + 8 * j) objectForKey:@"apn"];
            if (!v20)
            {
              v17 = [(MCAPNPayload *)self _validationErrorType:2002 forInvalidKey:@"apn"];
              goto LABEL_21;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      if (v17)
      {
        goto LABEL_31;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    v17 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_31:

  if (v27)
  {
    v24 = v17;
    *v27 = v17;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v17 == 0;
}

- (void)_finishInitializationWithContents:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = [*(*(&v31 + 1) + 8 * v5) objectForKey:@"DefaultsData"];
        v7 = [v6 objectForKey:@"apns"];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            v12 = 0;
            do
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v27 + 1) + 8 * v12);
              v14 = objc_alloc_init(MCAPNInfo);
              v15 = [v13 objectForKey:@"apn"];
              [(MCAPNInfo *)v14 setApnName:v15];

              v16 = [v13 objectForKey:@"username"];
              [(MCAPNInfo *)v14 setUsername:v16];

              v17 = [v13 objectForKey:@"password"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
                [(MCAPNInfo *)v14 setPassword:v18];
              }

              else
              {
                [(MCAPNInfo *)v14 setPassword:v17];
              }

              v19 = [v13 objectForKey:@"proxy"];
              [(MCAPNInfo *)v14 setProxy:v19];

              v20 = [v13 objectForKey:@"proxyPort"];
              [(MCAPNInfo *)v14 setProxyPort:v20];

              [v4 addObject:v14];
              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v10);
        }

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  if ([v4 count])
  {
    objc_storeStrong(&self->_apnInfos, v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (MCAPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31.receiver = self;
  v31.super_class = MCAPNPayload;
  v9 = [(MCPayload *)&v31 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v30 = 0;
    v10 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v30];
    v11 = v30;
    if (!v11 && v10)
    {
      v29 = 0;
      [(MCAPNPayload *)v9 _checkForValidContents:v10 outError:&v29];
      v11 = v29;
    }

    v12 = [(MCPayload *)v9 profile];
    v13 = [v12 isStub];

    if (v13)
    {
      if (v11 || (v28 = 0, [MCProfile removeOptionalObjectInDictionary:v8 key:@"WasInstalled" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v28], v27 = objc_claimAutoreleasedReturnValue(), v11 = v28, !v27))
      {
        v9->_wasInstalled = 1;
      }

      else
      {
        v9->_wasInstalled = [v27 BOOLValue];
      }
    }

    else
    {
      v9->_wasInstalled = 0;
    }

    if (v11)
    {
      v14 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v15 = v14;
      if (a5)
      {
        v16 = v14;
        *a5 = v15;
      }

      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [v15 MCVerboseDescription];
        *buf = 138543618;
        v33 = v19;
        v34 = 2114;
        v35 = v21;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    if ([v8 count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v24 = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v33 = v24;
        v34 = 2114;
        v35 = v8;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (!v11)
    {
      [(MCAPNPayload *)v9 _finishInitializationWithContents:v10];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)apnDefaults
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_apnInfos, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_apnInfos;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) defaultsRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"apns"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_strippedAPNDefaults
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_apnInfos, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_apnInfos;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) strippedDefaultsRepresentation];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"apns"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)stubDictionary
{
  v10.receiver = self;
  v10.super_class = MCAPNPayload;
  v3 = [(MCPayload *)&v10 stubDictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = +[MCAPNPayload apnDomainName];
  [v4 setObject:v5 forKey:@"DefaultsDomainName"];

  v6 = [(MCAPNPayload *)self _strippedAPNDefaults];
  [v4 setObject:v6 forKey:@"DefaultsData"];

  v7 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  [v3 setObject:v7 forKey:@"PayloadContent"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasInstalled];
  [v3 setObject:v8 forKey:@"WasInstalled"];

  return v3;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCAPNPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v3 stringByAppendingFormat:@"\napns: %@", self->_apnInfos];

  return v4;
}

- (id)subtitle1Description
{
  if ([(NSArray *)self->_apnInfos count])
  {
    v3 = [(NSArray *)self->_apnInfos firstObject];
    v4 = [v3 apnName];
  }

  else
  {
    v4 = MCLocalizedString(@"NAME_MISSING");
  }

  return v4;
}

- (id)subtitle2Description
{
  if ([(NSArray *)self->_apnInfos count])
  {
    v3 = [(NSArray *)self->_apnInfos firstObject];
    v4 = [v3 username];
  }

  else
  {
    v4 = MCLocalizedString(@"USERNAME_MISSING");
  }

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_apnInfos;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = objc_opt_new();
        v10 = [v8 apnName];

        if (v10)
        {
          v11 = [MCKeyValue alloc];
          v12 = [v8 apnName];
          v13 = MCLocalizedString(@"APN_NAME");
          v14 = [(MCKeyValue *)v11 initWithLocalizedString:v12 localizedKey:v13];

          [v9 addObject:v14];
        }

        v15 = [v8 username];

        if (v15)
        {
          v16 = [MCKeyValue alloc];
          v17 = [v8 username];
          v18 = MCLocalizedString(@"USERNAME");
          v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

          [v9 addObject:v19];
        }

        v20 = [v8 password];

        if (v20)
        {
          v21 = [MCKeyValue alloc];
          v22 = MCLocalizedString(@"PRESENT");
          v23 = MCLocalizedString(@"PASSWORD");
          v24 = [(MCKeyValue *)v21 initWithLocalizedString:v22 localizedKey:v23];

          [v9 addObject:v24];
        }

        v25 = [v8 proxy];

        if (v25)
        {
          v26 = [MCKeyValue alloc];
          v27 = [v8 proxy];
          v28 = MCLocalizedString(@"PROXY");
          v29 = [(MCKeyValue *)v26 initWithLocalizedString:v27 localizedKey:v28];

          [v9 addObject:v29];
        }

        v30 = [v8 proxyPort];

        if (v30)
        {
          v31 = MEMORY[0x1E696AEC0];
          v32 = [v8 proxyPort];
          v33 = [v31 stringWithFormat:@"%d", objc_msgSend(v32, "intValue")];

          v34 = [MCKeyValue alloc];
          v35 = MCLocalizedString(@"PORT");
          v36 = [(MCKeyValue *)v34 initWithLocalizedString:v33 localizedKey:v35];

          [v9 addObject:v36];
        }

        if ([v9 count])
        {
          v37 = [MCKeyValueSection sectionWithKeyValues:v9];
          [v3 addObject:v37];
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v5);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)installationWarnings
{
  v2 = MCLocalizedString(@"INSTALL_WARNING_CELLULAR_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_CELLULAR");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];

  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];

  return v5;
}

- (void)_checkForValidContents:(uint64_t)a1 outError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MCAPNPayload.m" lineNumber:82 description:@"Invalid argument"];
}

@end