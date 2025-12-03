@interface MCLoggingPayload
+ (id)typeStrings;
- (BOOL)isAllowedToWriteLogging;
- (MCLoggingPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
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
  profile = [(MCPayload *)self profile];
  signatureVersion = [profile signatureVersion];

  profile2 = [(MCPayload *)self profile];
  signerCertificates = [profile2 signerCertificates];
  [MCProfile evaluateTrustOfCertificateChain:signerCertificates signatureVersion:signatureVersion outIsAllowedToWriteDefaults:&v8];

  LOBYTE(profile2) = v8;
  return profile2;
}

- (MCLoggingPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v69.receiver = self;
  v69.super_class = MCLoggingPayload;
  v10 = [(MCPayload *)&v69 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_41;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v68 = 0;
  v12 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Processes" isRequired:0 outError:&v68];
  v13 = v68;
  if (v13)
  {
    mCCopyAsPrimaryError = v13;

LABEL_32:
    v49 = [(MCPayload *)v10 malformedPayloadErrorWithError:mCCopyAsPrimaryError];
    v50 = v49;
    if (error)
    {
      v51 = v49;
      *error = v50;
    }

    v52 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v53 = v52;
      v54 = objc_opt_class();
      v55 = v54;
      mCVerboseDescription = [v50 MCVerboseDescription];
      *buf = 138543618;
      v71 = v54;
      v72 = 2114;
      v73 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_37;
  }

  if (v12)
  {
    [dictionary setObject:v12 forKey:@"Processes"];
  }

  v64 = dictionary;
  v67 = 0;
  v15 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Subsystems" isRequired:0 outError:&v67];
  mCCopyAsPrimaryError = v67;
  if (!mCCopyAsPrimaryError)
  {
    if (v15)
    {
      [v64 setObject:v15 forKey:@"Subsystems"];
    }

    v66 = 0;
    v16 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"System" isRequired:0 outError:&v66];
    v17 = v66;
    if (v17)
    {
      mCCopyAsPrimaryError = v17;
      v18 = v16;
LABEL_30:

      goto LABEL_31;
    }

    profile = [(MCPayload *)v10 profile];
    isStub = [profile isStub];

    if (isStub)
    {
      v18 = v16;
    }

    else
    {
      if (v16)
      {
        dictionary2 = [v16 mutableCopy];
      }

      else
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      }

      v18 = dictionary2;
      v22 = [dictionary2 objectForKey:@"Enable-Logging"];

      if (!v22)
      {
        [v18 setValue:MEMORY[0x1E695E118] forKey:@"Enable-Logging"];
      }
    }

    if (v18)
    {
      [v64 setObject:v18 forKey:@"System"];
    }

    profile2 = [(MCPayload *)v10 profile];
    isStub2 = [profile2 isStub];

    if (isStub2)
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
        mCCopyAsPrimaryError = 0;
        loggingPayload = v10->_loggingPayload;
        v10->_loggingPayload = v25;
LABEL_29:

        goto LABEL_30;
      }

      v39 = MEMORY[0x1E696ABC0];
      friendlyName = [profileCopy friendlyName];
      v47 = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v40, v41, v42, v43, v44, v45, v46, friendlyName);
      v48 = v39;
      v38 = v47;
      v62 = [v48 MCErrorWithDomain:@"MCLoggingSettingsErrorDomain" code:49000 descriptionArray:? errorType:?];
      mCCopyAsPrimaryError = [v62 MCCopyAsPrimaryError];
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      friendlyName = [(MCPayload *)v10 identifier];
      v36 = MCErrorArray(@"ERROR_LOGGING_INVALID_CONFIGURATION_P_ID", v29, v30, v31, v32, v33, v34, v35, friendlyName);
      v37 = v28;
      v38 = v36;
      mCCopyAsPrimaryError = [v37 MCErrorWithDomain:@"MCLoggingSettingsErrorDomain" code:49001 descriptionArray:? underlyingError:? errorType:?];
    }

    goto LABEL_29;
  }

LABEL_31:

  if (mCCopyAsPrimaryError)
  {
    goto LABEL_32;
  }

LABEL_37:
  if ([dictionaryCopy count])
  {
    v57 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v58 = v57;
      friendlyName2 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v71 = friendlyName2;
      v72 = 2114;
      v73 = dictionaryCopy;
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
  stubDictionary = [(MCPayload *)&v5 stubDictionary];
  [stubDictionary addEntriesFromDictionary:self->_loggingPayload];

  return stubDictionary;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"LOGGING_DESCRIPTION_SINGULAR_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

@end