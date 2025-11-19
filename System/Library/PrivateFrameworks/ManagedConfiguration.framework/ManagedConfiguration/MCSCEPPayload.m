@interface MCSCEPPayload
- (MCSCEPPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCSCEPPayload

- (MCSCEPPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v110 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v105.receiver = self;
  v105.super_class = MCSCEPPayload;
  v10 = [(MCCertificatePayload *)&v105 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_29;
  }

  if (([v9 isStub] & 1) == 0)
  {
    v104 = 0;
    v14 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v104];
    v12 = v104;
    v16 = [v14 mutableCopy];
    v17 = v16;
    if (v12)
    {

      goto LABEL_24;
    }

    v103 = 0;
    v18 = @"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD";
    v19 = 2002;
    v20 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v16 key:@"URL" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v103];
    v12 = v103;
    URLString = v10->_URLString;
    v10->_URLString = v20;

    v29 = [v17 objectForKey:@"Keysize"];
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v30 = [v29 intValue];
        v10->_keySize = v30;
        if (v30 == 1024)
        {
          v38 = 0x1E77CF000uLL;
        }

        else
        {
          v38 = 0x1E77CF000;
          if (v30 != 2048 && v30 != 4096)
          {
            v39 = MEMORY[0x1E696ABC0];
            v40 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD", v31, v32, v33, v34, v35, v36, v37, @"Keysize");
            v41 = [v39 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v40 errorType:@"MCFatalError"];

            v38 = 0x1E77CF000;
            v12 = v41;
          }
        }

        if (v12)
        {
          goto LABEL_21;
        }

        v57 = *(v38 + 1640);
        v102 = 0;
        v58 = [v57 removeOptionalNonZeroLengthStringInDictionary:v17 key:@"Name" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v102];
        v12 = v102;
        CAInstanceName = v10->_CAInstanceName;
        v10->_CAInstanceName = v58;

        v88 = v14;
        if (v12)
        {
          goto LABEL_36;
        }

        v101 = 0;
        v60 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v17 key:@"Challenge" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v101];
        v12 = v101;
        challenge = v10->_challenge;
        v10->_challenge = v60;

        if (v12)
        {
          goto LABEL_36;
        }

        v100 = 0;
        v62 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"Subject" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v100];
        v12 = v100;
        subject = v10->_subject;
        v10->_subject = v62;

        if (v12)
        {
          goto LABEL_36;
        }

        v99 = 0;
        v64 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"SubjectAltName" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v99];
        v12 = v99;
        subjectAltName = v10->_subjectAltName;
        v10->_subjectAltName = v64;

        if (v12)
        {
          goto LABEL_36;
        }

        v98 = 0;
        v66 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"CAFingerprint" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v98];
        v12 = v98;
        CAFingerprint = v10->_CAFingerprint;
        v10->_CAFingerprint = v66;

        if (v12)
        {
          goto LABEL_36;
        }

        v97 = 0;
        v68 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"GetCACaps" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v97];
        v12 = v97;
        CACaps = v10->_CACaps;
        v10->_CACaps = v68;

        if (v12 || (v71 = v29, v96 = 0, v76 = v17, [MCProfile removeOptionalObjectInDictionary:v17 key:@"Key Usage" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v96], v79 = objc_claimAutoreleasedReturnValue(), v12 = v96, (v90 = v79) == 0))
        {
LABEL_36:
          v70 = 0;
          v10->_usageFlags = 1;
        }

        else
        {
          v80 = [v79 unsignedIntValue];
          v10->_usageFlags = v80;
          if ((v80 & 0xFFFFFFFA) != 0)
          {
            v91 = MEMORY[0x1E696ABC0];
            v72 = [v9 friendlyName];
            v77 = MCErrorArray(@"SCEP_ERROR_INVALID_USAGE_FLAG_P_FIELD", v81, v82, v83, v84, v85, v86, v87, v72);
            v92 = [v91 MCErrorWithDomain:@"MCSCEPErrorDomain" code:22000 descriptionArray:v77 errorType:@"MCFatalError"];

            v73 = 0;
            v12 = v92;
            goto LABEL_49;
          }

          v70 = v79;
        }

        v71 = v29;
        if (v12)
        {
          v72 = 0;
          v73 = 0;
          goto LABEL_51;
        }

        v90 = v70;
        v95 = 0;
        v72 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"Retries" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v95];
        v74 = v95;
        if (v74)
        {
          v12 = v74;
          v73 = 0;
LABEL_50:
          v70 = v90;
LABEL_51:

          if (!v73)
          {
            goto LABEL_23;
          }

          goto LABEL_4;
        }

        if (v72)
        {
          v75 = [v72 unsignedIntValue];
        }

        else
        {
          v75 = 3;
        }

        v10->_retries = v75;
        v94 = 0;
        v76 = v17;
        v77 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"RetryDelay" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v94];
        v12 = v94;
        v73 = v12 == 0;
        if (!v12)
        {
          if (v77)
          {
            v78 = [v77 unsignedIntValue];
          }

          else
          {
            v78 = 10;
          }

          v10->_retryDelay = v78;
          v73 = 1;
        }

LABEL_49:

        v17 = v76;
        goto LABEL_50;
      }

      v89 = v29;
      v42 = v17;
      v43 = v14;
      v18 = @"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD";
      v19 = 2003;
    }

    else
    {
      v89 = 0;
      v42 = v17;
      v43 = v14;
    }

    v44 = MEMORY[0x1E696ABC0];
    v45 = MCErrorArray(v18, v22, v23, v24, v25, v26, v27, v28, @"Keysize");
    v46 = [v44 MCErrorWithDomain:@"MCPayloadErrorDomain" code:v19 descriptionArray:v45 errorType:@"MCFatalError"];

    v12 = v46;
    v14 = v43;
    v17 = v42;
    v29 = v89;
LABEL_21:

    goto LABEL_22;
  }

  v93 = 0;
  v11 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"Keysize" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v93];
  v12 = v93;
  v10->_keySize = [v11 unsignedIntValue];

  if (!v12)
  {
LABEL_4:
    if ([v8 count])
    {
      v13 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v107 = v15;
        v108 = 2114;
        v109 = v8;
        _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);

LABEL_22:
      }
    }

LABEL_23:
    if (!v12)
    {
      goto LABEL_29;
    }
  }

LABEL_24:
  v47 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
  v48 = v47;
  if (a5)
  {
    v49 = v47;
    *a5 = v48;
  }

  v50 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v51 = v50;
    v52 = objc_opt_class();
    v53 = v52;
    v54 = [v48 MCVerboseDescription];
    *buf = 138543618;
    v107 = v52;
    v108 = 2114;
    v109 = v54;
    _os_log_impl(&dword_1A795B000, v51, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_29:

  v55 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSCEPPayload;
  v3 = [(MCCertificatePayload *)&v6 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keySize];
  [v3 setObject:v4 forKey:@"Keysize"];

  return v3;
}

- (id)verboseDescription
{
  v8.receiver = self;
  v8.super_class = MCSCEPPayload;
  v3 = [(MCCertificatePayload *)&v8 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_URLString)
  {
    [v4 appendFormat:@"URL         : %@\n", self->_URLString];
  }

  if (self->_CAInstanceName)
  {
    [v4 appendFormat:@"CA Instance : %@\n", self->_CAInstanceName];
  }

  v5 = [(NSData *)self->_CAFingerprint MCHexString];

  if (v5)
  {
    v6 = [(NSData *)self->_CAFingerprint MCHexString];
    [v4 appendFormat:@"Fingerprint : %@\n", v6];
  }

  if (self->_CACaps)
  {
    [v4 appendFormat:@"CA Caps     : %@\n", self->_CACaps];
  }

  if (self->_challenge)
  {
    [v4 appendFormat:@"Challenge   : (present)\n"];
  }

  if (self->_subject)
  {
    [v4 appendFormat:@"Subject     : %@\n", self->_subject];
  }

  if (self->_subjectAltName)
  {
    [v4 appendFormat:@"Subject Alt : %@\n", self->_subjectAltName];
  }

  [v4 appendFormat:@"Key size    : %u\n", self->_keySize];
  [v4 appendFormat:@"Retries     : %u\n", self->_retries];
  [v4 appendFormat:@"RetryDelay  : %u\n", self->_retryDelay];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_URLString)
  {
    v4 = [MCKeyValue alloc];
    URLString = self->_URLString;
    v6 = MCLocalizedString(@"URL");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:URLString localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_CAInstanceName)
  {
    v8 = [MCKeyValue alloc];
    CAInstanceName = self->_CAInstanceName;
    v10 = MCLocalizedString(@"CA_INSTANCE_NAME");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:CAInstanceName localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_CAFingerprint)
  {
    v12 = [MCKeyValue alloc];
    CAFingerprint = self->_CAFingerprint;
    v14 = MCLocalizedString(@"CA_FINGERPRINT");
    v15 = [(MCKeyValue *)v12 initWithData:CAFingerprint localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_challenge)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedString(@"PRESENT");
    v18 = MCLocalizedString(@"CHALLENGE");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  v20 = MEMORY[0x1E696ADA0];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keySize];
  v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

  v23 = [MCKeyValue alloc];
  v24 = MCLocalizedString(@"KEY_SIZE");
  v25 = [(MCKeyValue *)v23 initWithLocalizedString:v22 localizedKey:v24];
  [v3 addObject:v25];

  v26 = [MCKeyValueSection sectionWithKeyValues:v3];
  v30[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

@end