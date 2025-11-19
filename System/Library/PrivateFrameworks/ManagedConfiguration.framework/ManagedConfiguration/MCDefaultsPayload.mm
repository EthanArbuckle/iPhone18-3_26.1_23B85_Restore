@interface MCDefaultsPayload
- (BOOL)isAllowedToWriteDefaults;
- (MCDefaultsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)defaultsForDomain:(id)a3;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCDefaultsPayload

- (BOOL)isAllowedToWriteDefaults
{
  v8 = 0;
  v3 = [(MCPayload *)self profile];
  v4 = [v3 signatureVersion];

  v5 = [(MCPayload *)self profile];
  v6 = [v5 signerCertificates];
  [MCProfile evaluateTrustOfCertificateChain:v6 signatureVersion:v4 outIsAllowedToWriteDefaults:&v8];

  LOBYTE(v5) = v8;
  return v5;
}

- (MCDefaultsPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v65.receiver = self;
  v65.super_class = MCDefaultsPayload;
  v10 = [(MCPayload *)&v65 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_51;
  }

  v64 = 0;
  v11 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v64];
  v12 = v64;
  if (v12)
  {
    goto LABEL_42;
  }

  v13 = [(MCPayload *)v10 profile];
  v14 = [v13 isStub];

  if ((v14 & 1) == 0 && v11 && ![(MCDefaultsPayload *)v10 isAllowedToWriteDefaults])
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = [v9 friendlyName];
    defaultsByDomain = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v33, v34, v35, v36, v37, v38, v39, v32);
    v40 = [v31 MCErrorWithDomain:@"MCDefaultsErrorDomain" code:10001 descriptionArray:defaultsByDomain errorType:@"MCFatalError"];
    v12 = [v40 MCCopyAsPrimaryError];

    v15 = v32;
    goto LABEL_40;
  }

  if ([v11 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    defaultsByDomain = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
    v12 = [defaultsByDomain MCCopyAsPrimaryError];
    goto LABEL_40;
  }

  v57 = v9;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v16)
  {
LABEL_28:

    v9 = v57;
    goto LABEL_39;
  }

  v17 = v16;
  v18 = *v61;
  v56 = v11;
  v59 = v15;
LABEL_12:
  v19 = 0;
  while (1)
  {
    if (*v61 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v60 + 1) + 8 * v19);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MCPayload badFieldTypeErrorWithField:@"PayloadContent"];
      v12 = [v21 MCCopyAsPrimaryError];
      goto LABEL_38;
    }

    v21 = [v20 objectForKey:@"DefaultsDomainName"];
    if (!v21)
    {
      v26 = [(MCPayload *)v10 profile];
      v27 = [v26 isStub];

      if ((v27 & 1) == 0)
      {
        v22 = [MCPayload missingFieldErrorWithField:@"DefaultsDomainName" underlyingError:0];
        v12 = [v22 MCCopyAsPrimaryError];
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v22 = [v20 objectForKey:@"DefaultsData"];
    if (!v22)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
      goto LABEL_35;
    }

    v23 = v59;
    v24 = [(NSDictionary *)v59 objectForKey:v21];
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v42 = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
        v12 = [v42 MCCopyAsPrimaryError];

        goto LABEL_36;
      }

      v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
      [v25 addEntriesFromDictionary:v22];

      v22 = v25;
      v23 = v59;
    }

    [(NSDictionary *)v23 setObject:v22 forKey:v21];

LABEL_26:
    if (v17 == ++v19)
    {
      v17 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
      v11 = v56;
      v15 = v59;
      if (v17)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  v28 = [(MCPayload *)v10 profile];
  v29 = [v28 isStub];

  if (v29)
  {
    goto LABEL_26;
  }

  v41 = [MCPayload missingFieldErrorWithField:@"DefaultsData" underlyingError:0];
LABEL_35:
  v24 = v41;
  v12 = [v41 MCCopyAsPrimaryError];
LABEL_36:

LABEL_37:
LABEL_38:
  v11 = v56;
  v9 = v57;
  v15 = v59;

  if (v12)
  {
    goto LABEL_41;
  }

LABEL_39:
  v15 = v15;
  v12 = 0;
  defaultsByDomain = v10->_defaultsByDomain;
  v10->_defaultsByDomain = v15;
LABEL_40:

LABEL_41:
  if (v12)
  {
LABEL_42:
    v43 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v44 = v43;
    if (a5)
    {
      v45 = v43;
      *a5 = v44;
    }

    v46 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
      v48 = objc_opt_class();
      v49 = v48;
      v50 = [v44 MCVerboseDescription];
      *buf = 138543618;
      v67 = v48;
      v68 = 2114;
      v69 = v50;
      _os_log_impl(&dword_1A795B000, v47, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([v8 count])
  {
    v51 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v52 = v51;
      v53 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v67 = v53;
      v68 = 2114;
      v69 = v8;
      _os_log_impl(&dword_1A795B000, v52, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_51:
  v54 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = MCDefaultsPayload;
  v17 = [(MCPayload *)&v22 stubDictionary];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MCDefaultsPayload *)self domains];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(MCDefaultsPayload *)self domains];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(MCDefaultsPayload *)self defaultsForDomain:v11];
        v13 = v12;
        if (v12)
        {
          v23[0] = @"DefaultsDomainName";
          v23[1] = @"DefaultsData";
          v24[0] = v11;
          v24[1] = v12;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v8);
  }

  [v17 setObject:v5 forKey:@"PayloadContent"];
  v15 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCDefaultsPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_defaultsByDomain)
  {
    [v4 appendFormat:@"\ndefaults: %@", self->_defaultsByDomain];
  }

  return v4;
}

- (id)defaultsForDomain:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_defaultsByDomain objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"DEFAULTS_DESCRIPTION_SINGULAR_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

@end