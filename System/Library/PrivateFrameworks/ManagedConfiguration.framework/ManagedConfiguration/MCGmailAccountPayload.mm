@interface MCGmailAccountPayload
+ (id)typeStrings;
- (MCGmailAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSArray)mailAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCGmailAccountPayload

+ (id)typeStrings
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.google-oauth";
  v5[1] = @"com.apple.gmail";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCGmailAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v56.receiver = self;
  v56.super_class = MCGmailAccountPayload;
  v10 = [(MCPayload *)&v56 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_15;
  }

  v55 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CommunicationServiceRules" isRequired:0 outError:&v55];
  v12 = v55;
  if (v12)
  {
    v13 = v12;
    goto LABEL_6;
  }

  v54 = 0;
  v14 = [MCCommunicationServiceRulesUtilities validatedCommunicationServiceRules:v11 outError:&v54];
  v13 = v54;
  communicationServiceRules = v10->_communicationServiceRules;
  v10->_communicationServiceRules = v14;

  if (v13)
  {
    goto LABEL_6;
  }

  v53 = 0;
  v16 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v53];
  v13 = v53;
  VPNUUID = v10->_VPNUUID;
  v10->_VPNUUID = v16;

  if (v13)
  {
    goto LABEL_6;
  }

  if ([profileCopy isStub])
  {
    v49 = 0;
    v31 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AccountName" isRequired:0 outError:&v49];
    v13 = v49;
    accountName = v10->_accountName;
    v10->_accountName = v31;

    if (v13)
    {
      goto LABEL_6;
    }

    v48 = 0;
    v33 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AccountDescription" isRequired:0 outError:&v48];
    v13 = v48;
    accountDescription = v10->_accountDescription;
    v10->_accountDescription = v33;

    if (v13)
    {
      goto LABEL_6;
    }

    v47 = 0;
    v35 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAddress" isRequired:0 outError:&v47];
    v13 = v47;
    emailAddress = v10->_emailAddress;
    v10->_emailAddress = v35;

    if (v13)
    {
      goto LABEL_6;
    }

    v46 = 0;
    v37 = &v46;
    v38 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v46];
    v39 = &OBJC_IVAR___MCGmailAccountPayload__acAccountIdentifier;
  }

  else
  {
    v52 = 0;
    v40 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AccountName" isRequired:0 outError:&v52];
    v13 = v52;
    v41 = v10->_accountName;
    v10->_accountName = v40;

    if (v13)
    {
      goto LABEL_6;
    }

    v51 = 0;
    v42 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AccountDescription" isRequired:0 outError:&v51];
    v13 = v51;
    v43 = v10->_accountDescription;
    v10->_accountDescription = v42;

    if (v13)
    {
      goto LABEL_6;
    }

    v50 = 0;
    v37 = &v50;
    v38 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAddress" isRequired:1 outError:&v50];
    v39 = &OBJC_IVAR___MCGmailAccountPayload__emailAddress;
  }

  v13 = *v37;
  v44 = *v39;
  v45 = *(&v10->super.super.isa + v44);
  *(&v10->super.super.isa + v44) = v38;

  if (v13)
  {
LABEL_6:
    v18 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v19 = v18;
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

    v21 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = objc_opt_class();
      v24 = v23;
      mCVerboseDescription = [v19 MCVerboseDescription];
      *buf = 138543618;
      v58 = v23;
      v59 = 2114;
      v60 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v26 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v58 = friendlyName;
      v59 = 2114;
      v60 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_15:
  v29 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v12.receiver = self;
  v12.super_class = MCGmailAccountPayload;
  stubDictionary = [(MCPayload *)&v12 stubDictionary];
  v4 = stubDictionary;
  accountName = self->_accountName;
  if (accountName)
  {
    [stubDictionary setObject:accountName forKeyedSubscript:@"AccountName"];
  }

  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [v4 setObject:accountDescription forKeyedSubscript:@"AccountDescription"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v4 setObject:emailAddress forKeyedSubscript:@"EmailAddress"];
  }

  communicationServiceRules = self->_communicationServiceRules;
  if (communicationServiceRules)
  {
    [v4 setObject:communicationServiceRules forKeyedSubscript:@"CommunicationServiceRules"];
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

- (id)verboseDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = MCGmailAccountPayload;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v5 = [v3 initWithFormat:@"%@\n", verboseDescription];

  if ([(NSString *)self->_accountDescription length])
  {
    [v5 appendFormat:@"Acct Desc           : %@\n", self->_accountDescription];
  }

  if ([(NSString *)self->_accountName length])
  {
    [v5 appendFormat:@"Name                : %@\n", self->_accountName];
  }

  if ([(NSString *)self->_emailAddress length])
  {
    [v5 appendFormat:@"Email               : %@\n", self->_emailAddress];
  }

  if (self->_VPNUUID)
  {
    [v5 appendFormat:@"VPNUUID             : %@\n", self->_VPNUUID];
  }

  if (self->_acAccountIdentifier)
  {
    [v5 appendFormat:@"ACAccountIdentifier : %@\n", self->_acAccountIdentifier];
  }

  return v5;
}

- (id)restrictions
{
  communicationServiceRules = [(MCGmailAccountPayload *)self communicationServiceRules];
  v3 = [MCCommunicationServiceRulesUtilities restrictionsForValidatedCommunicationServiceRules:communicationServiceRules];

  return v3;
}

- (id)subtitle1Label
{
  emailAddress = [(MCGmailAccountPayload *)self emailAddress];
  if (emailAddress)
  {
    v3 = @"GOOGLE_ACCOUNT_EMAIL_COLON";
  }

  else
  {
    v3 = @"GOOGLE_ACCOUNT_EMAIL_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self->_VPNUUID)
  {
    v5 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v7 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:VPNUUID localizedKey:v7];

    [v4 addObject:v8];
  }

  if ([v4 count])
  {
    v9 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v9];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (NSArray)mailAccountIdentifiers
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