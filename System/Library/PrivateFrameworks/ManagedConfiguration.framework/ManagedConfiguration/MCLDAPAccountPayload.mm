@interface MCLDAPAccountPayload
- (BOOL)containsSensitiveUserInformation;
- (MCLDAPAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSArray)contactsAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCLDAPAccountPayload

- (MCLDAPAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v51.receiver = self;
  v51.super_class = MCLDAPAccountPayload;
  v10 = [(MCPayload *)&v51 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_22;
  }

  v50 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LDAPAccountDescription" isRequired:0 outError:&v50];
  v12 = v50;
  accountDescription = v10->_accountDescription;
  v10->_accountDescription = v11;

  if (v12)
  {
    goto LABEL_13;
  }

  v49 = 0;
  v14 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LDAPAccountUserName" isRequired:0 outError:&v49];
  v12 = v49;
  username = v10->_username;
  v10->_username = v14;

  if (v12)
  {
    goto LABEL_13;
  }

  v48 = 0;
  v16 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LDAPAccountHostName" isRequired:1 outError:&v48];
  v12 = v48;
  hostname = v10->_hostname;
  v10->_hostname = v16;

  if (v12)
  {
    goto LABEL_13;
  }

  v47 = 0;
  v18 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"LDAPAccountUseSSL" isRequired:0 outError:&v47];
  v12 = v47;
  useSSLNum = v10->_useSSLNum;
  v10->_useSSLNum = v18;

  if (v12)
  {
    goto LABEL_13;
  }

  v10->_useSSL = [(NSNumber *)v10->_useSSLNum BOOLValue];
  v46 = 0;
  v20 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"LDAPSearchSettings" isRequired:0 outError:&v46];
  v12 = v46;
  searchSettings = v10->_searchSettings;
  v10->_searchSettings = v20;

  if (v12)
  {
    goto LABEL_13;
  }

  if ([profileCopy isStub])
  {
    v44 = 0;
    v22 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LDAPAccountPersistentUUID" isRequired:0 outError:&v44];
    v12 = v44;
    accountPersistentUUID = v10->_accountPersistentUUID;
    v10->_accountPersistentUUID = v22;

    if (v12)
    {
LABEL_13:
      v29 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v30 = v29;
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      v32 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v33 = v32;
        v34 = objc_opt_class();
        v35 = v34;
        mCVerboseDescription = [v30 MCVerboseDescription];
        *buf = 138543618;
        v53 = v34;
        v54 = 2114;
        v55 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_18;
    }

    v43 = 0;
    v24 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v43];
    v12 = v43;
    v25 = 152;
  }

  else
  {
    v45 = 0;
    v24 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LDAPAccountPassword" isRequired:0 outError:&v45];
    v12 = v45;
    v25 = 112;
  }

  v26 = *(&v10->super.super.isa + v25);
  *(&v10->super.super.isa + v25) = v24;

  if (v12)
  {
    goto LABEL_13;
  }

  v42 = 0;
  v27 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v42];
  v12 = v42;
  VPNUUID = v10->_VPNUUID;
  v10->_VPNUUID = v27;

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_18:
  if ([dictionaryCopy count])
  {
    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v53 = friendlyName;
      v54 = 2114;
      v55 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_22:
  v40 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)verboseDescription
{
  v7.receiver = self;
  v7.super_class = MCLDAPAccountPayload;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_accountDescription)
  {
    [v4 appendFormat:@"\naccountDescription: %@", self->_accountDescription];
  }

  if (self->_hostname)
  {
    [v4 appendFormat:@"\nhostname: %@", self->_hostname];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"\nusername: %@", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"\npassword: (set)"];
  }

  if (self->_useSSL)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 appendFormat:@"\nuseSSL: %@", v5];
  if (self->_searchSettings)
  {
    [v4 appendFormat:@"\nSearchSettings: %@", self->_searchSettings];
  }

  if (self->_accountPersistentUUID)
  {
    [v4 appendFormat:@"\naccountPersistentUUID: %@", self->_accountPersistentUUID];
  }

  if (self->_VPNUUID)
  {
    [v4 appendFormat:@"\nVPNUUID: %@", self->_VPNUUID];
  }

  if (self->_acAccountIdentifier)
  {
    [v4 appendFormat:@"\nACAccount Identifier: %@", self->_acAccountIdentifier];
  }

  return v4;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCLDAPAccountPayload;
  stubDictionary = [(MCPayload *)&v15 stubDictionary];
  v4 = stubDictionary;
  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [stubDictionary setObject:accountDescription forKey:@"LDAPAccountDescription"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"LDAPAccountHostName"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"LDAPAccountUserName"];
  }

  accountPersistentUUID = self->_accountPersistentUUID;
  if (accountPersistentUUID)
  {
    [v4 setObject:accountPersistentUUID forKey:@"LDAPAccountPersistentUUID"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_useSSL];
  [v4 setObject:v9 forKey:@"LDAPAccountUseSSL"];

  searchSettings = self->_searchSettings;
  if (searchSettings)
  {
    [v4 setObject:searchSettings forKey:@"LDAPSearchSettings"];
  }

  communicationServiceRules = self->_communicationServiceRules;
  if (communicationServiceRules)
  {
    [v4 setObject:communicationServiceRules forKey:@"CommunicationServiceRules"];
  }

  VPNUUID = self->_VPNUUID;
  if (VPNUUID)
  {
    [v4 setObject:VPNUUID forKey:@"VPNUUID"];
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
  communicationServiceRules = [(MCLDAPAccountPayload *)self communicationServiceRules];
  v3 = [MCCommunicationServiceRulesUtilities restrictionsForValidatedCommunicationServiceRules:communicationServiceRules];

  return v3;
}

- (id)subtitle1Label
{
  hostname = [(MCLDAPAccountPayload *)self hostname];
  if (hostname)
  {
    v3 = @"LDAP_SERVER_NAME_COLON";
  }

  else
  {
    v3 = @"LDAP_SERVER_NAME_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  username = [(MCLDAPAccountPayload *)self username];
  if (username)
  {
    v4 = username;
    hostname = [(MCLDAPAccountPayload *)self hostname];

    if (hostname)
    {
      username = MCLocalizedString(@"LDAP_USERNAME_COLON");
    }

    else
    {
      username = 0;
    }
  }

  return username;
}

- (id)subtitle2Description
{
  username = [(MCLDAPAccountPayload *)self username];
  if (username)
  {
    v4 = username;
    hostname = [(MCLDAPAccountPayload *)self hostname];

    if (hostname)
    {
      username = [(MCLDAPAccountPayload *)self username];
    }

    else
    {
      username = 0;
    }
  }

  return username;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self->_accountDescription)
  {
    v5 = [MCKeyValue alloc];
    accountDescription = self->_accountDescription;
    v7 = MCLocalizedString(@"ACCOUNT_DESCRIPTION");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:accountDescription localizedKey:v7];

    [v4 addObject:v8];
  }

  if (self->_hostname)
  {
    v9 = [MCKeyValue alloc];
    hostname = self->_hostname;
    v11 = MCLocalizedString(@"URL");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:hostname localizedKey:v11];

    [v4 addObject:v12];
  }

  if (self->_username)
  {
    v13 = [MCKeyValue alloc];
    username = self->_username;
    v15 = MCLocalizedString(@"USERNAME");
    v16 = [(MCKeyValue *)v13 initWithLocalizedString:username localizedKey:v15];

    [v4 addObject:v16];
  }

  if (self->_password)
  {
    v17 = [MCKeyValue alloc];
    v18 = MCLocalizedString(@"PRESENT");
    v19 = MCLocalizedString(@"PASSWORD");
    v20 = [(MCKeyValue *)v17 initWithLocalizedString:v18 localizedKey:v19];

    [v4 addObject:v20];
  }

  if (self->_useSSLNum)
  {
    v21 = [MCKeyValue alloc];
    v22 = MCLocalizedStringForBool([(NSNumber *)self->_useSSLNum BOOLValue]);
    v23 = MCLocalizedString(@"USES_SSL");
    v24 = [(MCKeyValue *)v21 initWithLocalizedString:v22 localizedKey:v23];

    [v4 addObject:v24];
  }

  if (self->_VPNUUID)
  {
    v25 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v27 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v28 = [(MCKeyValue *)v25 initWithLocalizedString:VPNUUID localizedKey:v27];

    [v4 addObject:v28];
  }

  if ([v4 count])
  {
    v29 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v29];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)containsSensitiveUserInformation
{
  v6.receiver = self;
  v6.super_class = MCLDAPAccountPayload;
  if ([(MCPayload *)&v6 containsSensitiveUserInformation])
  {
    return 1;
  }

  password = [(MCLDAPAccountPayload *)self password];
  v3 = password != 0;

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