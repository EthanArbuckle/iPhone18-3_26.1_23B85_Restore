@interface MCCertificateTransparencyPayload
+ (BOOL)isValidDomainRule:(id)a3;
+ (id)typeStrings;
- (MCCertificateTransparencyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCCertificateTransparencyPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.security.certificatetransparency";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCCertificateTransparencyPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v87.receiver = self;
  v87.super_class = MCCertificateTransparencyPayload;
  v10 = [(MCPayload *)&v87 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_54;
  }

  v76 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v86 = 0;
  v12 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DisabledForCerts" isRequired:0 outError:&v86];
  v13 = v86;
  if (v13)
  {
    goto LABEL_45;
  }

  v14 = 0x1E696A000uLL;
  if (!v12)
  {
    v29 = 0;
    goto LABEL_30;
  }

  v68 = v9;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v12;
  v15 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (!v15)
  {
    v29 = 0;
    goto LABEL_29;
  }

  v16 = v15;
  v17 = *v83;
  v72 = *MEMORY[0x1E697AFD8];
  v71 = *MEMORY[0x1E697AFE0];
  v69 = v12;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v83 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v82 + 1) + 8 * i);
      v20 = [v19 objectForKeyedSubscript:@"Algorithm"];
      if (!v20)
      {
        v30 = [objc_opt_class() missingFieldErrorWithField:@"Algorithm" underlyingError:0];
LABEL_24:
        v29 = v30;
        v12 = v69;
        goto LABEL_28;
      }

      v21 = *(v14 + 3776);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = [MCPayload badFieldTypeErrorWithField:@"Algorithm"];
        goto LABEL_24;
      }

      v20 = v20;
      if ([v20 isEqualToString:@"sha256"])
      {
        v22 = [v19 objectForKeyedSubscript:@"Hash"];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89[0] = v72;
            v89[1] = v71;
            v90[0] = v20;
            v90[1] = v22;
            v23 = MEMORY[0x1E695DF20];
            v24 = v22;
            v25 = [v23 dictionaryWithObjects:v90 forKeys:v89 count:2];

            [v76 addObject:v25];
            v14 = 0x1E696A000;
            goto LABEL_17;
          }

          v31 = [MCPayload badFieldTypeErrorWithField:@"Hash"];
        }

        else
        {
          v31 = [objc_opt_class() missingFieldErrorWithField:@"Hash" underlyingError:0];
        }

        v29 = v31;

        v12 = v69;
        v14 = 0x1E696A000uLL;
LABEL_28:

        goto LABEL_29;
      }

      v26 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [(MCPayload *)v10 friendlyName];
        *buf = 138412546;
        v92 = v28;
        v93 = 2112;
        v94 = v20;
        _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_DEFAULT, "Payload %@ has an unsupported hash algorithm %@. The hash will be ignored.", buf, 0x16u);

        v14 = 0x1E696A000;
      }

LABEL_17:
    }

    v16 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    v29 = 0;
    v12 = v69;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v9 = v68;
LABEL_30:
  v32 = *(v14 + 3776);
  v81 = v29;
  v33 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DisabledForDomains" isRequired:0 allowZeroLengthString:0 outError:&v81];
  v13 = v81;

  if (v13)
  {

    goto LABEL_45;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v35)
  {
    v36 = v35;
    v70 = v12;
    v37 = *v78;
    while (2)
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v78 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v77 + 1) + 8 * j);
        if (([objc_opt_class() isValidDomainRule:v39] & 1) == 0)
        {
          obja = MEMORY[0x1E696ABC0];
          [v9 friendlyName];
          v41 = v40 = v9;
          v49 = MCErrorArray(@"ERROR_CERTIFICATE_TRANSPARENCY_BAD_DOMAIN", v42, v43, v44, v45, v46, v47, v48, v41);
          v50 = [obja MCErrorWithDomain:@"MCCertificateTransparencyErrorDomain" code:53000 descriptionArray:v49 errorType:@"MCFatalError"];
          v13 = [v50 MCCopyAsPrimaryError];

          v9 = v40;
          goto LABEL_42;
        }

        [v11 addObject:v39];
      }

      v36 = [v34 countByEnumeratingWithState:&v77 objects:v88 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }

    v13 = 0;
LABEL_42:
    v12 = v70;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v10->_hashDictionaries, v76);
  objc_storeStrong(&v10->_domainRules, v11);

  if (v13)
  {
LABEL_45:
    v51 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v52 = v51;
    if (a5)
    {
      v53 = v51;
      *a5 = v52;
    }

    v54 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v55 = v54;
      v56 = objc_opt_class();
      objb = v56;
      [v52 MCVerboseDescription];
      v57 = v10;
      v58 = v8;
      v59 = v11;
      v60 = v12;
      v62 = v61 = v9;
      *buf = 138412546;
      v92 = v56;
      v93 = 2112;
      v94 = v62;
      _os_log_impl(&dword_1A795B000, v55, OS_LOG_TYPE_ERROR, "%@ Can't parse payload: %@", buf, 0x16u);

      v9 = v61;
      v12 = v60;
      v11 = v59;
      v8 = v58;
      v10 = v57;
    }

    v10 = 0;
  }

  if ([v8 count])
  {
    v63 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v64 = v63;
      v65 = [(MCPayload *)v10 friendlyName];
      *buf = 138412546;
      v92 = v65;
      v93 = 2112;
      v94 = v8;
      _os_log_impl(&dword_1A795B000, v64, OS_LOG_TYPE_INFO, "Payload “%@” contains ignored fields. They are: %@", buf, 0x16u);
    }
  }

LABEL_54:
  v66 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)isValidDomainRule:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"."])
  {
    if ([v3 length] == 1)
    {
      v4 = 0;
    }

    else
    {
      [v3 substringFromIndex:1];
      v4 = _CFHostIsDomainTopLevelForCertificatePolicy() == 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)stubDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = MCCertificateTransparencyPayload;
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
    v7 = *MEMORY[0x1E697AFD8];
    v8 = *MEMORY[0x1E697AFE0];
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

  [v16 setObject:v3 forKeyedSubscript:@"DisabledForCerts"];
  [v16 setObject:self->_domainRules forKeyedSubscript:@"DisabledForDomains"];

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCCertificateTransparencyPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_hashDictionaries)
  {
    [v4 appendFormat:@"\nhashDictionaries:\n%@", self->_hashDictionaries];
  }

  if (self->_domainRules)
  {
    [v4 appendFormat:@"\ndomainRules:\n%@", self->_domainRules];
  }

  return v4;
}

- (id)subtitle1Label
{
  v3 = [(NSArray *)self->_hashDictionaries count];
  v4 = [(NSArray *)self->_domainRules count]+ v3;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = @"CERTIFICATE_TRANSPARENCY_EXCEPTION_SINGULAR";
    }

    else
    {
      v5 = @"CERTIFICATE_TRANSPARENCY_EXCEPTION_PLURAL";
    }

    v6 = MCLocalizedString(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end