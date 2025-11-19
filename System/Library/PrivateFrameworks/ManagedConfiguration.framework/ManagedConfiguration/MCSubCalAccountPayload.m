@interface MCSubCalAccountPayload
- (BOOL)containsSensitiveUserInformation;
- (MCSubCalAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSArray)calendarAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCSubCalAccountPayload

- (MCSubCalAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v53.receiver = self;
  v53.super_class = MCSubCalAccountPayload;
  v10 = [(MCPayload *)&v53 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_15;
  }

  v52 = 0;
  v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountDescription" isRequired:0 outError:&v52];
  v12 = v52;
  accountDescription = v10->_accountDescription;
  v10->_accountDescription = v11;

  if (v12)
  {
    goto LABEL_6;
  }

  v51 = 0;
  v14 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountUsername" isRequired:0 outError:&v51];
  v12 = v51;
  username = v10->_username;
  v10->_username = v14;

  if (v12)
  {
    goto LABEL_6;
  }

  v50 = 0;
  v16 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SubCalAccountUseSSL" isRequired:0 outError:&v50];
  v12 = v50;
  useSSLNum = v10->_useSSLNum;
  v10->_useSSLNum = v16;

  if (v12)
  {
    goto LABEL_6;
  }

  v10->_useSSL = [(NSNumber *)v10->_useSSLNum BOOLValue];
  v49 = 0;
  v18 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v49];
  v12 = v49;
  VPNUUID = v10->_VPNUUID;
  v10->_VPNUUID = v18;

  if (v12)
  {
    goto LABEL_6;
  }

  if ([v9 isStub])
  {
    v46 = 0;
    v33 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountHostName" isRequired:0 outError:&v46];
    v12 = v46;
    hostname = v10->_hostname;
    v10->_hostname = v33;

    if (v12)
    {
      goto LABEL_6;
    }

    v45 = 0;
    v35 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountPersistentUUID" isRequired:0 outError:&v45];
    v12 = v45;
    accountPersistentUUID = v10->_accountPersistentUUID;
    v10->_accountPersistentUUID = v35;

    if (v12)
    {
      goto LABEL_6;
    }

    v44 = 0;
    v37 = &v44;
    v38 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v44];
    v39 = &OBJC_IVAR___MCSubCalAccountPayload__acAccountIdentifier;
  }

  else
  {
    v48 = 0;
    v40 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountHostName" isRequired:1 outError:&v48];
    v12 = v48;
    v41 = v10->_hostname;
    v10->_hostname = v40;

    if (v12)
    {
LABEL_6:
      v20 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v21 = v20;
      if (a5)
      {
        v22 = v20;
        *a5 = v21;
      }

      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v25 = objc_opt_class();
        v26 = v25;
        v27 = [v21 MCVerboseDescription];
        *buf = 138543618;
        v55 = v25;
        v56 = 2114;
        v57 = v27;
        _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_11;
    }

    v47 = 0;
    v37 = &v47;
    v38 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SubCalAccountPassword" isRequired:0 outError:&v47];
    v39 = &OBJC_IVAR___MCSubCalAccountPayload__password;
  }

  v12 = *v37;
  v42 = *v39;
  v43 = *(&v10->super.super.isa + v42);
  *(&v10->super.super.isa + v42) = v38;

  if (v12)
  {
    goto LABEL_6;
  }

LABEL_11:
  if ([v8 count])
  {
    v28 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v30 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v55 = v30;
      v56 = 2114;
      v57 = v8;
      _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_15:
  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCSubCalAccountPayload;
  v3 = [(MCPayload *)&v6 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_accountDescription)
  {
    [v4 appendFormat:@"\naccountDescription    : %@", self->_accountDescription];
  }

  if (self->_hostname)
  {
    [v4 appendFormat:@"\nURL                   : %@", self->_hostname];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"\nusername              : %@", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"\npassword              : (set)"];
  }

  if (self->_useSSL)
  {
    [v4 appendFormat:@"\nuseSSL                : %@", @"YES"];
  }

  if (self->_accountPersistentUUID)
  {
    [v4 appendFormat:@"\naccountPersistentUUID : %@", self->_accountPersistentUUID];
  }

  if (self->_VPNUUID)
  {
    [v4 appendFormat:@"\nVPNUUID               : %@", self->_VPNUUID];
  }

  if (self->_acAccountIdentifier)
  {
    [v4 appendFormat:@"\nACAccountIdentifier   : %@", self->_acAccountIdentifier];
  }

  return v4;
}

- (id)stubDictionary
{
  v12.receiver = self;
  v12.super_class = MCSubCalAccountPayload;
  v3 = [(MCPayload *)&v12 stubDictionary];
  v4 = v3;
  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [v3 setObject:accountDescription forKey:@"SubCalAccountDescription"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"SubCalAccountHostName"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"SubCalAccountUsername"];
  }

  accountPersistentUUID = self->_accountPersistentUUID;
  if (accountPersistentUUID)
  {
    [v4 setObject:accountPersistentUUID forKey:@"SubCalAccountPersistentUUID"];
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

- (id)subtitle1Label
{
  v2 = [(MCSubCalAccountPayload *)self hostname];
  if (v2)
  {
    v3 = @"SUBCAL_SERVER_NAME_COLON";
  }

  else
  {
    v3 = @"SUBCAL_SERVER_NAME_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  v3 = [(MCSubCalAccountPayload *)self username];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCSubCalAccountPayload *)self hostname];

    if (v5)
    {
      v3 = MCLocalizedString(@"SUBCAL_USERNAME_COLON");
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
  v3 = [(MCSubCalAccountPayload *)self username];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCSubCalAccountPayload *)self hostname];

    if (v5)
    {
      v3 = [(MCSubCalAccountPayload *)self username];
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
  v33[1] = *MEMORY[0x1E69E9840];
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

  if (self->_useSSLNum)
  {
    v20 = [MCKeyValue alloc];
    v21 = MCLocalizedStringForBool([(NSNumber *)self->_useSSLNum BOOLValue]);
    v22 = MCLocalizedString(@"USES_SSL");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_VPNUUID)
  {
    v24 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v26 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:VPNUUID localizedKey:v26];

    [v3 addObject:v27];
  }

  if ([v3 count] && (+[MCKeyValueSection sectionWithKeyValues:](MCKeyValueSection, "sectionWithKeyValues:", v3), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v29 = v28;
    v33[0] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)containsSensitiveUserInformation
{
  v6.receiver = self;
  v6.super_class = MCSubCalAccountPayload;
  if ([(MCPayload *)&v6 containsSensitiveUserInformation])
  {
    return 1;
  }

  v4 = [(MCSubCalAccountPayload *)self password];
  v3 = v4 != 0;

  return v3;
}

- (NSArray)calendarAccountIdentifiers
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