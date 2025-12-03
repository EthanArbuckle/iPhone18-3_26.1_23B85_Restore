@interface MCSingleSignOnPayload
+ (id)typeStrings;
- (MCSingleSignOnPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCSingleSignOnPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.sso";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCSingleSignOnPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v45.receiver = self;
  v45.super_class = MCSingleSignOnPayload;
  v10 = [(MCPayload *)&v45 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_23;
  }

  if ([profileCopy isStub])
  {
    v44 = 0;
    v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Name" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v44];
    v12 = v44;
    humanReadableName = v10->_humanReadableName;
    v10->_humanReadableName = v11;

    if (!v12)
    {
      v43 = 0;
      v14 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"Kerberos" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v43];
      v15 = v43;
      if (!v15)
      {
        v16 = [MCSingleSignOnPayloadKerberosInfo alloc];
        v17 = [v14 mutableCopy];
        v42 = 0;
        v18 = [(MCSingleSignOnPayloadKerberosInfo *)v16 initWithDictionary:v17 profile:profileCopy outError:&v42];
        v12 = v42;
        kerberosInfo = v10->_kerberosInfo;
        v10->_kerberosInfo = v18;

        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_14:
    v26 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v27 = v26;
    if (error)
    {
      v28 = v26;
      *error = v27;
    }

    v29 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = v31;
      mCVerboseDescription = [v27 MCVerboseDescription];
      *buf = 138543618;
      v47 = v31;
      v48 = 2114;
      v49 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_19;
  }

  v41 = 0;
  v20 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"Name" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v41];
  v12 = v41;
  v21 = v10->_humanReadableName;
  v10->_humanReadableName = v20;

  if (v12)
  {
    goto LABEL_14;
  }

  v40 = 0;
  v14 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"Kerberos" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v40];
  v15 = v40;
  if (v15)
  {
LABEL_8:
    v12 = v15;
    goto LABEL_13;
  }

  v22 = [MCSingleSignOnPayloadKerberosInfo alloc];
  v23 = [v14 mutableCopy];
  v39 = 0;
  v24 = [(MCSingleSignOnPayloadKerberosInfo *)v22 initWithDictionary:v23 profile:profileCopy outError:&v39];
  v12 = v39;
  v25 = v10->_kerberosInfo;
  v10->_kerberosInfo = v24;

  if (!v12)
  {
    if (v10->_kerberosInfo)
    {
      v12 = 0;
    }

    else
    {
      v12 = [MCProfile missingFieldErrorWithField:@"Kerberos"];
    }
  }

LABEL_13:

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_19:
  if ([dictionaryCopy count])
  {
    v34 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v47 = friendlyName;
      v48 = 2114;
      v49 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v35, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_23:
  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)verboseDescription
{
  v10.receiver = self;
  v10.super_class = MCSingleSignOnPayload;
  v3 = [(MCPayload *)&v10 description];
  v4 = [v3 mutableCopy];

  humanReadableName = [(MCSingleSignOnPayload *)self humanReadableName];

  if (humanReadableName)
  {
    humanReadableName2 = [(MCSingleSignOnPayload *)self humanReadableName];
    [v4 appendFormat:@"Name          : %@\n", humanReadableName2];
  }

  kerberosInfo = [(MCSingleSignOnPayload *)self kerberosInfo];

  if (kerberosInfo)
  {
    kerberosInfo2 = [(MCSingleSignOnPayload *)self kerberosInfo];
    [v4 appendFormat:@"Kerberos Info:\n%@\n", kerberosInfo2];
  }

  return v4;
}

- (id)stubDictionary
{
  v10.receiver = self;
  v10.super_class = MCSingleSignOnPayload;
  stubDictionary = [(MCPayload *)&v10 stubDictionary];
  humanReadableName = [(MCSingleSignOnPayload *)self humanReadableName];

  if (humanReadableName)
  {
    humanReadableName2 = [(MCSingleSignOnPayload *)self humanReadableName];
    [stubDictionary setObject:humanReadableName2 forKeyedSubscript:@"Name"];
  }

  kerberosInfo = [(MCSingleSignOnPayload *)self kerberosInfo];

  if (kerberosInfo)
  {
    kerberosInfo2 = [(MCSingleSignOnPayload *)self kerberosInfo];
    stubDictionary2 = [kerberosInfo2 stubDictionary];
    [stubDictionary setObject:stubDictionary2 forKeyedSubscript:@"Kerberos"];
  }

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  kerberosInfo = [(MCSingleSignOnPayload *)self kerberosInfo];
  principalName = [kerberosInfo principalName];

  if (principalName)
  {
    v7 = [MCKeyValue alloc];
    principalName2 = [kerberosInfo principalName];
    v9 = MCLocalizedString(@"PRINCIPAL_NAME");
    v10 = [(MCKeyValue *)v7 initWithLocalizedString:principalName2 localizedKey:v9];

    [v4 addObject:v10];
  }

  realm = [kerberosInfo realm];

  if (realm)
  {
    v12 = [MCKeyValue alloc];
    realm2 = [kerberosInfo realm];
    v14 = MCLocalizedString(@"REALM");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:realm2 localizedKey:v14];

    [v4 addObject:v15];
  }

  certificateUUID = [kerberosInfo certificateUUID];

  if (certificateUUID)
  {
    profile = [(MCPayload *)self profile];
    certificateUUID2 = [kerberosInfo certificateUUID];
    v19 = [profile subjectSummaryFromCertificatePayloadWithUUID:certificateUUID2];

    if ([v19 length])
    {
      v20 = [MCKeyValue alloc];
      v21 = MCLocalizedString(@"SSO_CERTIFICATE");
      v22 = [(MCKeyValue *)v20 initWithLocalizedString:v19 localizedKey:v21];

      [v4 addObject:v22];
    }
  }

  if ([v4 count])
  {
    v23 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v23];
  }

  uRLPrefixMatches = [kerberosInfo URLPrefixMatches];
  v25 = [uRLPrefixMatches count];

  if (v25)
  {
    uRLPrefixMatches2 = [kerberosInfo URLPrefixMatches];
    v27 = MCLocalizedString(@"URL_PREFIX_MATCHES");
    v28 = [MCKeyValueSection sectionWithLocalizedArray:uRLPrefixMatches2 title:v27 footer:0];

    [v3 addObject:v28];
  }

  appIdentifierMatches = [kerberosInfo appIdentifierMatches];
  v30 = [appIdentifierMatches count];

  if (v30)
  {
    appIdentifierMatches2 = [kerberosInfo appIdentifierMatches];
    v32 = MCLocalizedString(@"APP_MATCHES");
    v33 = [MCKeyValueSection sectionWithLocalizedArray:appIdentifierMatches2 title:v32 footer:0];

    [v3 addObject:v33];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end