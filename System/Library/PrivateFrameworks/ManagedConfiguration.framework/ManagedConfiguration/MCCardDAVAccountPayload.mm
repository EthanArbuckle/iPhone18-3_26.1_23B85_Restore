@interface MCCardDAVAccountPayload
- (BOOL)containsSensitiveUserInformation;
- (MCCardDAVAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSArray)contactsAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCCardDAVAccountPayload

- (MCCardDAVAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v62.receiver = self;
  v62.super_class = MCCardDAVAccountPayload;
  v10 = [(MCPayload *)&v62 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_16;
  }

  v61 = 0;
  v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVAccountDescription" isRequired:0 outError:&v61];
  v12 = v61;
  accountDescription = v10->_accountDescription;
  v10->_accountDescription = v11;

  if (v12)
  {
    goto LABEL_7;
  }

  v60 = 0;
  v14 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVUsername" isRequired:0 outError:&v60];
  v12 = v60;
  username = v10->_username;
  v10->_username = v14;

  if (v12)
  {
    goto LABEL_7;
  }

  v59 = 0;
  v16 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVPrincipalURL" isRequired:0 outError:&v59];
  v12 = v59;
  principalURL = v10->_principalURL;
  v10->_principalURL = v16;

  if (v12)
  {
    goto LABEL_7;
  }

  v58 = 0;
  v18 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CardDAVUseSSL" isRequired:0 outError:&v58];
  v12 = v58;
  useSSLNum = v10->_useSSLNum;
  v10->_useSSLNum = v18;

  if (v12)
  {
    goto LABEL_7;
  }

  v10->_useSSL = [(NSNumber *)v10->_useSSLNum BOOLValue];
  v57 = 0;
  v20 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CardDAVPort" isRequired:0 outError:&v57];
  v12 = v57;
  portNum = v10->_portNum;
  v10->_portNum = v20;

  if (v12)
  {
    goto LABEL_7;
  }

  v10->_port = [(NSNumber *)v10->_portNum intValue];
  v56 = 0;
  v23 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CommunicationServiceRules" isRequired:0 outError:&v56];
  v35 = v56;
  if (v35)
  {
    v12 = v35;
LABEL_21:

LABEL_7:
    v22 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v23 = v22;
    if (a5)
    {
      v24 = v22;
      *a5 = v23;
    }

    v25 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v23 MCVerboseDescription];
      *buf = 138543618;
      v64 = v27;
      v65 = 2114;
      v66 = v29;
      _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v55 = 0;
  v36 = [MCCommunicationServiceRulesUtilities validatedCommunicationServiceRules:v23 outError:&v55];
  v12 = v55;
  communicationServiceRules = v10->_communicationServiceRules;
  v10->_communicationServiceRules = v36;

  if (v12)
  {
    goto LABEL_21;
  }

  v54 = 0;
  v38 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v54];
  v12 = v54;
  VPNUUID = v10->_VPNUUID;
  v10->_VPNUUID = v38;

  if (v12)
  {
    goto LABEL_21;
  }

  if ([v9 isStub])
  {
    v51 = 0;
    v40 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVHostName" isRequired:0 outError:&v51];
    v12 = v51;
    hostname = v10->_hostname;
    v10->_hostname = v40;

    if (v12)
    {
      goto LABEL_21;
    }

    v50 = 0;
    v42 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVAccountPersistentUUID" isRequired:0 outError:&v50];
    v12 = v50;
    accountPersistentUUID = v10->_accountPersistentUUID;
    v10->_accountPersistentUUID = v42;

    if (v12)
    {
      goto LABEL_21;
    }

    v49 = 0;
    v44 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v49];
    v12 = v49;
    v45 = 152;
  }

  else
  {
    v53 = 0;
    v46 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVHostName" isRequired:1 outError:&v53];
    v12 = v53;
    v47 = v10->_hostname;
    v10->_hostname = v46;

    if (v12)
    {
      goto LABEL_21;
    }

    v52 = 0;
    v44 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CardDAVPassword" isRequired:0 outError:&v52];
    v12 = v52;
    v45 = 112;
  }

  v48 = *(&v10->super.super.isa + v45);
  *(&v10->super.super.isa + v45) = v44;

  if (v12)
  {
    goto LABEL_21;
  }

LABEL_12:

  if ([v8 count])
  {
    v30 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v31 = v30;
      v32 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v64 = v32;
      v65 = 2114;
      v66 = v8;
      _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_16:
  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)verboseDescription
{
  v7.receiver = self;
  v7.super_class = MCCardDAVAccountPayload;
  v3 = [(MCPayload *)&v7 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_accountDescription)
  {
    [v4 appendFormat:@"\naccountDescription   : %@", self->_accountDescription];
  }

  if (self->_hostname)
  {
    [v4 appendFormat:@"\nURL                  : %@", self->_hostname];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"\nusername             : %@", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"\npassword             : (set)"];
  }

  if (self->_principalURL)
  {
    [v4 appendFormat:@"\nprincipalURL         : %@", self->_principalURL];
  }

  if (self->_useSSL)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 appendFormat:@"\nuseSSL               : %@", v5];
  if (self->_port)
  {
    [v4 appendFormat:@"\nport                 : %d", self->_port];
  }

  if (self->_VPNUUID)
  {
    [v4 appendFormat:@"\nVPNUUID              : %@", self->_VPNUUID];
  }

  if (self->_accountPersistentUUID)
  {
    [v4 appendFormat:@"\naccountPersistentUUID: %@", self->_accountPersistentUUID];
  }

  if (self->_acAccountIdentifier)
  {
    [v4 appendFormat:@"\nACAccountIdentifier  : %@", self->_acAccountIdentifier];
  }

  return v4;
}

- (id)stubDictionary
{
  v16.receiver = self;
  v16.super_class = MCCardDAVAccountPayload;
  v3 = [(MCPayload *)&v16 stubDictionary];
  v4 = v3;
  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [v3 setObject:accountDescription forKey:@"CardDAVAccountDescription"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"CardDAVHostName"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"CardDAVUsername"];
  }

  principalURL = self->_principalURL;
  if (principalURL)
  {
    [v4 setObject:principalURL forKey:@"CardDAVPrincipalURL"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_useSSL];
  [v4 setObject:v9 forKey:@"CardDAVUseSSL"];

  if (self->_port)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 setObject:v10 forKey:@"CardDAVPort"];
  }

  VPNUUID = self->_VPNUUID;
  if (VPNUUID)
  {
    [v4 setObject:VPNUUID forKey:@"VPNUUID"];
  }

  accountPersistentUUID = self->_accountPersistentUUID;
  if (accountPersistentUUID)
  {
    [v4 setObject:accountPersistentUUID forKey:@"CardDAVAccountPersistentUUID"];
  }

  communicationServiceRules = self->_communicationServiceRules;
  if (communicationServiceRules)
  {
    [v4 setObject:communicationServiceRules forKey:@"CommunicationServiceRules"];
  }

  acAccountIdentifier = self->_acAccountIdentifier;
  if (acAccountIdentifier)
  {
    [v4 setObject:acAccountIdentifier forKey:@"ACAccountIdentifier"];
  }

  return v4;
}

- (id)restrictions
{
  v2 = [(MCCardDAVAccountPayload *)self communicationServiceRules];
  v3 = [MCCommunicationServiceRulesUtilities restrictionsForValidatedCommunicationServiceRules:v2];

  return v3;
}

- (id)subtitle1Label
{
  v2 = [(MCCardDAVAccountPayload *)self hostname];
  if (v2)
  {
    v3 = @"CARDDAV_SERVER_NAME_COLON";
  }

  else
  {
    v3 = @"CARDDAV_SERVER_NAME_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  v3 = [(MCCardDAVAccountPayload *)self username];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCCardDAVAccountPayload *)self hostname];

    if (v5)
    {
      v3 = MCLocalizedString(@"CARDDAV_USERNAME_COLON");
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)subtitle2Description
{
  v3 = [(MCCardDAVAccountPayload *)self username];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCCardDAVAccountPayload *)self hostname];

    if (v5)
    {
      v3 = [(MCCardDAVAccountPayload *)self username];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_accountDescription)
  {
    v4 = [MCKeyValue alloc];
    accountDescription = self->_accountDescription;
    v6 = MCLocalizedString(@"ACCOUNT_DESCRIPTION");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:accountDescription localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_hostname)
  {
    v8 = [MCKeyValue alloc];
    hostname = self->_hostname;
    v10 = MCLocalizedString(@"HOSTNAME");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:hostname localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_username)
  {
    v12 = [MCKeyValue alloc];
    username = self->_username;
    v14 = MCLocalizedString(@"USERNAME");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:username localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_password)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedString(@"PRESENT");
    v18 = MCLocalizedString(@"PASSWORD");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  if (self->_principalURL)
  {
    v20 = [MCKeyValue alloc];
    principalURL = self->_principalURL;
    v22 = MCLocalizedString(@"PRINCIPAL_URL");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:principalURL localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_useSSLNum)
  {
    v24 = [MCKeyValue alloc];
    v25 = MCLocalizedStringForBool([(NSNumber *)self->_useSSLNum BOOLValue]);
    v26 = MCLocalizedString(@"USES_SSL");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:v25 localizedKey:v26];

    [v3 addObject:v27];
  }

  portNum = self->_portNum;
  if (portNum)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[NSNumber intValue](portNum, "intValue")];
    v30 = [MCKeyValue alloc];
    v31 = MCLocalizedString(@"PORT");
    v32 = [(MCKeyValue *)v30 initWithLocalizedString:v29 localizedKey:v31];

    [v3 addObject:v32];
  }

  if (self->_VPNUUID)
  {
    v33 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v35 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v36 = [(MCKeyValue *)v33 initWithLocalizedString:VPNUUID localizedKey:v35];

    [v3 addObject:v36];
  }

  if ([v3 count] && (+[MCKeyValueSection sectionWithKeyValues:](MCKeyValueSection, "sectionWithKeyValues:", v3), (v37 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = v37;
    v42[0] = v37;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (BOOL)containsSensitiveUserInformation
{
  v6.receiver = self;
  v6.super_class = MCCardDAVAccountPayload;
  if ([(MCPayload *)&v6 containsSensitiveUserInformation])
  {
    return 1;
  }

  v4 = [(MCCardDAVAccountPayload *)self password];
  v3 = v4 != 0;

  return v3;
}

- (NSArray)contactsAccountIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_acAccountIdentifier)
  {
    v5[0] = self->_acAccountIdentifier;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end