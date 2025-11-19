@interface MCLoggingPayload
+ (id)typeStrings;
- (BOOL)isAllowedToWriteLogging;
- (MCLoggingPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)stubDictionary;
- (id)title;
@end

@implementation MCLoggingPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.system.logging";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isAllowedToWriteLogging
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

- (MCLoggingPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v69.receiver = self;
  v69.super_class = MCLoggingPayload;
  v10 = [(MCPayload *)&v69 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_41;
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v68 = 0;
  v12 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Processes" isRequired:0 outError:&v68];
  v13 = v68;
  if (v13)
  {
    v14 = v13;

LABEL_32:
    v49 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
    v50 = v49;
    if (a5)
    {
      v51 = v49;
      *a5 = v50;
    }

    v52 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v53 = v52;
      v54 = objc_opt_class();
      v55 = v54;
      v56 = [v50 MCVerboseDescription];
      *buf = 138543618;
      v71 = v54;
      v72 = 2114;
      v73 = v56;
      _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_37;
  }

  if (v12)
  {
    [v11 setObject:v12 forKey:@"Processes"];
  }

  v64 = v11;
  v67 = 0;
  v15 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Subsystems" isRequired:0 outError:&v67];
  v14 = v67;
  if (!v14)
  {
    if (v15)
    {
      [v64 setObject:v15 forKey:@"Subsystems"];
    }

    v66 = 0;
    v16 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"System" isRequired:0 outError:&v66];
    v17 = v66;
    if (v17)
    {
      v14 = v17;
      v18 = v16;
LABEL_30:

      goto LABEL_31;
    }

    v19 = [(MCPayload *)v10 profile];
    v20 = [v19 isStub];

    if (v20)
    {
      v18 = v16;
    }

    else
    {
      if (v16)
      {
        v21 = [v16 mutableCopy];
      }

      else
      {
        v21 = [MEMORY[0x1E695DF90] dictionary];
      }

      v18 = v21;
      v22 = [v21 objectForKey:@"Enable-Logging"];

      if (!v22)
      {
        [v18 setValue:MEMORY[0x1E695E118] forKey:@"Enable-Logging"];
      }
    }

    if (v18)
    {
      [v64 setObject:v18 forKey:@"System"];
    }

    v23 = [(MCPayload *)v10 profile];
    v24 = [v23 isStub];

    if (v24)
    {
      goto LABEL_22;
    }

    v65 = 0;
    v27 = MCOSLogValidateProfilePayload(v64, &v65);
    loggingPayload = v65;
    if (v27)
    {
      if ([(MCLoggingPayload *)v10 isAllowedToWriteLogging])
      {

LABEL_22:
        v25 = [v64 copy];
        v14 = 0;
        loggingPayload = v10->_loggingPayload;
        v10->_loggingPayload = v25;
LABEL_29:

        goto LABEL_30;
      }

      v39 = MEMORY[0x1E696ABC0];
      v63 = [v9 friendlyName];
      v47 = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v40, v41, v42, v43, v44, v45, v46, v63);
      v48 = v39;
      v38 = v47;
      v62 = [v48 MCErrorWithDomain:@"MCLoggingSettingsErrorDomain" code:49000 descriptionArray:? errorType:?];
      v14 = [v62 MCCopyAsPrimaryError];
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      v63 = [(MCPayload *)v10 identifier];
      v36 = MCErrorArray(@"ERROR_LOGGING_INVALID_CONFIGURATION_P_ID", v29, v30, v31, v32, v33, v34, v35, v63);
      v37 = v28;
      v38 = v36;
      v14 = [v37 MCErrorWithDomain:@"MCLoggingSettingsErrorDomain" code:49001 descriptionArray:? underlyingError:? errorType:?];
    }

    goto LABEL_29;
  }

LABEL_31:

  if (v14)
  {
    goto LABEL_32;
  }

LABEL_37:
  if ([v8 count])
  {
    v57 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v58 = v57;
      v59 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v71 = v59;
      v72 = 2114;
      v73 = v8;
      _os_log_impl(&dword_1A795B000, v58, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_41:
  v60 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v5.receiver = self;
  v5.super_class = MCLoggingPayload;
  v3 = [(MCPayload *)&v5 stubDictionary];
  [v3 addEntriesFromDictionary:self->_loggingPayload];

  return v3;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"LOGGING_DESCRIPTION_SINGULAR_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

@end