@interface MCEmailAccountPayload
+ (id)profileNameFromAccountTag:(id)a3;
- (BOOL)containsSensitiveUserInformation;
- (MCEmailAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_authenticationTypeLocalizedString:(id)a3;
- (id)_emailAccountTypeLocalizedString;
- (id)mailAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCEmailAccountPayload

- (MCEmailAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v118[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v111.receiver = self;
  v111.super_class = MCEmailAccountPayload;
  v10 = [(MCEmailAccountPayloadBase *)&v111 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_24;
  }

  if ([v9 isStub])
  {
    v100 = 0;
    v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAccountType" isRequired:0 outError:&v100];
    v12 = v100;
    emailAccountType = v10->_emailAccountType;
    v10->_emailAccountType = v11;

    if (v12)
    {
      goto LABEL_15;
    }

    v99 = 0;
    v14 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerAuthentication" isRequired:0 outError:&v99];
    v12 = v99;
    incomingMailServerAuthentication = v10->_incomingMailServerAuthentication;
    v10->_incomingMailServerAuthentication = v14;

    if (v12)
    {
      goto LABEL_15;
    }

    v98 = 0;
    v16 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerHostName" isRequired:0 outError:&v98];
    v12 = v98;
    incomingMailServerHostname = v10->_incomingMailServerHostname;
    v10->_incomingMailServerHostname = v16;

    if (v12)
    {
      goto LABEL_15;
    }

    v97 = 0;
    v18 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingMailServerAuthentication" isRequired:0 outError:&v97];
    v12 = v97;
    outgoingMailServerAuthentication = v10->_outgoingMailServerAuthentication;
    v10->_outgoingMailServerAuthentication = v18;

    if (v12)
    {
      goto LABEL_15;
    }

    v96 = 0;
    v20 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingMailServerHostName" isRequired:0 outError:&v96];
    v12 = v96;
    outgoingMailServerHostname = v10->_outgoingMailServerHostname;
    v10->_outgoingMailServerHostname = v20;

    if (v12)
    {
      goto LABEL_15;
    }

    v95 = 0;
    v22 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingACAccountIdentifier" isRequired:0 outError:&v95];
    v12 = v95;
    incomingACAccountIdentifier = v10->_incomingACAccountIdentifier;
    v10->_incomingACAccountIdentifier = v22;

    if (v12)
    {
      goto LABEL_15;
    }

    v94 = 0;
    v24 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingACAccountIdentifier" isRequired:0 outError:&v94];
    v12 = v94;
    v25 = 360;
  }

  else
  {
    v110 = 0;
    v26 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAccountType" isRequired:1 outError:&v110];
    v12 = v110;
    v27 = v10->_emailAccountType;
    v10->_emailAccountType = v26;

    if (v12)
    {
      goto LABEL_15;
    }

    v28 = v10->_emailAccountType;
    v118[0] = @"EmailTypePOP";
    v118[1] = @"EmailTypeIMAP";
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
    v109 = 0;
    [MCProfile checkString:v28 isOneOfStrings:v29 key:@"EmailAccountType" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v109];
    v30 = v109;

    v108 = v30;
    v31 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerAuthentication" isRequired:1 outError:&v108];
    v12 = v108;

    v32 = v10->_incomingMailServerAuthentication;
    v10->_incomingMailServerAuthentication = v31;

    if (v12)
    {
      goto LABEL_15;
    }

    v33 = v10->_incomingMailServerAuthentication;
    v117[0] = @"EmailAuthNone";
    v117[1] = @"EmailAuthPassword";
    v117[2] = @"EmailAuthCRAMMD5";
    v117[3] = @"EmailAuthNTLM";
    v117[4] = @"EmailAuthHTTPMD5";
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:5];
    v107 = 0;
    [MCProfile checkString:v33 isOneOfStrings:v34 key:@"IncomingMailServerAuthentication" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v107];
    v35 = v107;

    v106 = v35;
    v36 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerHostName" isRequired:1 outError:&v106];
    v12 = v106;

    v37 = v10->_incomingMailServerHostname;
    v10->_incomingMailServerHostname = v36;

    if (v12)
    {
      goto LABEL_15;
    }

    v105 = 0;
    v38 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingMailServerAuthentication" isRequired:1 outError:&v105];
    v12 = v105;
    v39 = v10->_outgoingMailServerAuthentication;
    v10->_outgoingMailServerAuthentication = v38;

    if (v12)
    {
      goto LABEL_15;
    }

    v40 = v10->_outgoingMailServerAuthentication;
    v116[0] = @"EmailAuthNone";
    v116[1] = @"EmailAuthPassword";
    v116[2] = @"EmailAuthCRAMMD5";
    v116[3] = @"EmailAuthNTLM";
    v116[4] = @"EmailAuthHTTPMD5";
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:5];
    v104 = 0;
    [MCProfile checkString:v40 isOneOfStrings:v41 key:@"OutgoingMailServerAuthentication" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v104];
    v42 = v104;

    v103 = v42;
    v43 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingMailServerHostName" isRequired:1 outError:&v103];
    v12 = v103;

    v44 = v10->_outgoingMailServerHostname;
    v10->_outgoingMailServerHostname = v43;

    if (v12)
    {
      goto LABEL_15;
    }

    v102 = 0;
    v58 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingPassword" isRequired:0 outError:&v102];
    v12 = v102;
    incomingPassword = v10->_incomingPassword;
    v10->_incomingPassword = v58;

    if (v12)
    {
      goto LABEL_15;
    }

    v101 = 0;
    v24 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingPassword" isRequired:0 outError:&v101];
    v12 = v101;
    v25 = 296;
  }

  v60 = *(&v10->super.super.super.isa + v25);
  *(&v10->super.super.super.isa + v25) = v24;

  if (v12)
  {
    goto LABEL_15;
  }

  v93 = 0;
  v61 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAccountDescription" isRequired:0 outError:&v93];
  v12 = v93;
  emailAccountDescription = v10->_emailAccountDescription;
  v10->_emailAccountDescription = v61;

  if (v12)
  {
    goto LABEL_15;
  }

  v92 = 0;
  v63 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAddress" isRequired:0 outError:&v92];
  v12 = v92;
  emailAddress = v10->_emailAddress;
  v10->_emailAddress = v63;

  if (v12)
  {
    goto LABEL_15;
  }

  v91 = 0;
  v65 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAccountName" isRequired:0 outError:&v91];
  v12 = v91;
  emailAccountName = v10->_emailAccountName;
  v10->_emailAccountName = v65;

  if (v12)
  {
    goto LABEL_15;
  }

  v90 = 0;
  v67 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerUsername" isRequired:0 outError:&v90];
  v12 = v90;
  incomingMailServerUsername = v10->_incomingMailServerUsername;
  v10->_incomingMailServerUsername = v67;

  if (v12)
  {
    goto LABEL_15;
  }

  v89 = 0;
  v69 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IncomingMailServerPortNumber" isRequired:0 outError:&v89];
  v12 = v89;
  incomingMailServerPortNumber = v10->_incomingMailServerPortNumber;
  v10->_incomingMailServerPortNumber = v69;

  if (v12)
  {
    goto LABEL_15;
  }

  v88 = 0;
  v71 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IncomingMailServerUseSSL" isRequired:0 outError:&v88];
  v12 = v88;
  incomingMailServerUseSSLNum = v10->_incomingMailServerUseSSLNum;
  v10->_incomingMailServerUseSSLNum = v71;

  if (v12)
  {
    goto LABEL_15;
  }

  v10->_incomingMailServerUseSSL = [(NSNumber *)v10->_incomingMailServerUseSSLNum BOOLValue];
  v87 = 0;
  v73 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"IncomingMailServerIMAPPathPrefix" isRequired:0 outError:&v87];
  v12 = v87;
  incomingMailServerIMAPPathPrefix = v10->_incomingMailServerIMAPPathPrefix;
  v10->_incomingMailServerIMAPPathPrefix = v73;

  if (v12)
  {
    goto LABEL_15;
  }

  v86 = 0;
  v75 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OutgoingPasswordSameAsIncomingPassword" isRequired:0 outError:&v86];
  v12 = v86;
  outgoingPasswordSameAsIncomingPasswordNum = v10->_outgoingPasswordSameAsIncomingPasswordNum;
  v10->_outgoingPasswordSameAsIncomingPasswordNum = v75;

  if (v12)
  {
    goto LABEL_15;
  }

  v10->_outgoingPasswordSameAsIncomingPassword = [(NSNumber *)v10->_outgoingPasswordSameAsIncomingPasswordNum BOOLValue];
  v85 = 0;
  v77 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OutgoingMailServerUsername" isRequired:0 outError:&v85];
  v12 = v85;
  outgoingMailServerUsername = v10->_outgoingMailServerUsername;
  v10->_outgoingMailServerUsername = v77;

  if (v12)
  {
    goto LABEL_15;
  }

  v84 = 0;
  v79 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OutgoingMailServerPortNumber" isRequired:0 outError:&v84];
  v12 = v84;
  outgoingMailServerPortNumber = v10->_outgoingMailServerPortNumber;
  v10->_outgoingMailServerPortNumber = v79;

  if (v12 || (v83 = 0, [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OutgoingMailServerUseSSL" isRequired:0 outError:&v83], v81 = objc_claimAutoreleasedReturnValue(), v12 = v83, outgoingMailServerUseSSLNum = v10->_outgoingMailServerUseSSLNum, v10->_outgoingMailServerUseSSLNum = v81, outgoingMailServerUseSSLNum, v12))
  {
LABEL_15:
    v45 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v46 = v45;
    if (a5)
    {
      v47 = v45;
      *a5 = v46;
    }

    v48 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v49 = v48;
      v50 = objc_opt_class();
      v51 = v50;
      v52 = [v46 MCVerboseDescription];
      *buf = 138543618;
      v113 = v50;
      v114 = 2114;
      v115 = v52;
      _os_log_impl(&dword_1A795B000, v49, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_20;
  }

  v10->_outgoingMailServerUseSSL = [(NSNumber *)v10->_outgoingMailServerUseSSLNum BOOLValue];
LABEL_20:
  if ([v8 count])
  {
    v53 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v54 = v53;
      v55 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v113 = v55;
      v114 = 2114;
      v115 = v8;
      _os_log_impl(&dword_1A795B000, v54, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_24:
  v56 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v25.receiver = self;
  v25.super_class = MCEmailAccountPayload;
  v3 = [(MCEmailAccountPayloadBase *)&v25 stubDictionary];
  v4 = v3;
  emailAccountDescription = self->_emailAccountDescription;
  if (emailAccountDescription)
  {
    [v3 setObject:emailAccountDescription forKey:@"EmailAccountDescription"];
  }

  emailAccountType = self->_emailAccountType;
  if (emailAccountType)
  {
    [v4 setObject:emailAccountType forKey:@"EmailAccountType"];
  }

  incomingMailServerHostname = self->_incomingMailServerHostname;
  if (incomingMailServerHostname)
  {
    [v4 setObject:incomingMailServerHostname forKey:@"IncomingMailServerHostName"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v4 setObject:emailAddress forKey:@"EmailAddress"];
  }

  emailAccountName = self->_emailAccountName;
  if (emailAccountName)
  {
    [v4 setObject:emailAccountName forKey:@"EmailAccountName"];
  }

  incomingMailServerAuthentication = self->_incomingMailServerAuthentication;
  if (incomingMailServerAuthentication)
  {
    [v4 setObject:incomingMailServerAuthentication forKey:@"IncomingMailServerAuthentication"];
  }

  v11 = self->_incomingMailServerHostname;
  if (v11)
  {
    [v4 setObject:v11 forKey:@"IncomingMailServerHostName"];
  }

  incomingMailServerPortNumber = self->_incomingMailServerPortNumber;
  if (incomingMailServerPortNumber)
  {
    [v4 setObject:incomingMailServerPortNumber forKey:@"IncomingMailServerPortNumber"];
  }

  incomingMailServerUseSSLNum = self->_incomingMailServerUseSSLNum;
  if (incomingMailServerUseSSLNum)
  {
    [v4 setObject:incomingMailServerUseSSLNum forKey:@"IncomingMailServerUseSSL"];
  }

  incomingMailServerUsername = self->_incomingMailServerUsername;
  if (incomingMailServerUsername)
  {
    [v4 setObject:incomingMailServerUsername forKey:@"IncomingMailServerUsername"];
  }

  incomingMailServerIMAPPathPrefix = self->_incomingMailServerIMAPPathPrefix;
  if (incomingMailServerIMAPPathPrefix)
  {
    [v4 setObject:incomingMailServerIMAPPathPrefix forKey:@"IncomingMailServerIMAPPathPrefix"];
  }

  incomingACAccountIdentifier = self->_incomingACAccountIdentifier;
  if (incomingACAccountIdentifier)
  {
    [v4 setObject:incomingACAccountIdentifier forKey:@"IncomingACAccountIdentifier"];
  }

  outgoingMailServerAuthentication = self->_outgoingMailServerAuthentication;
  if (outgoingMailServerAuthentication)
  {
    [v4 setObject:outgoingMailServerAuthentication forKey:@"OutgoingMailServerAuthentication"];
  }

  outgoingMailServerHostname = self->_outgoingMailServerHostname;
  if (outgoingMailServerHostname)
  {
    [v4 setObject:outgoingMailServerHostname forKey:@"OutgoingMailServerHostName"];
  }

  outgoingMailServerPortNumber = self->_outgoingMailServerPortNumber;
  if (outgoingMailServerPortNumber)
  {
    [v4 setObject:outgoingMailServerPortNumber forKey:@"OutgoingMailServerPortNumber"];
  }

  outgoingMailServerUseSSLNum = self->_outgoingMailServerUseSSLNum;
  if (outgoingMailServerUseSSLNum)
  {
    [v4 setObject:outgoingMailServerUseSSLNum forKey:@"OutgoingMailServerUseSSL"];
  }

  outgoingMailServerUsername = self->_outgoingMailServerUsername;
  if (outgoingMailServerUsername)
  {
    [v4 setObject:outgoingMailServerUsername forKey:@"OutgoingMailServerUsername"];
  }

  outgoingPasswordSameAsIncomingPasswordNum = self->_outgoingPasswordSameAsIncomingPasswordNum;
  if (outgoingPasswordSameAsIncomingPasswordNum)
  {
    [v4 setObject:outgoingPasswordSameAsIncomingPasswordNum forKey:@"OutgoingPasswordSameAsIncomingPassword"];
  }

  outgoingACAccountIdentifier = self->_outgoingACAccountIdentifier;
  if (outgoingACAccountIdentifier)
  {
    [v4 setObject:outgoingACAccountIdentifier forKey:@"OutgoingACAccountIdentifier"];
  }

  return v4;
}

- (id)verboseDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v14.receiver = self;
  v14.super_class = MCEmailAccountPayload;
  v4 = [(MCEmailAccountPayloadBase *)&v14 verboseDescription];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  v6 = [(MCPayload *)self profile];
  v7 = [v6 isStub];

  if ((v7 & 1) == 0)
  {
    if (self->_emailAccountDescription)
    {
      [v5 appendFormat:@"Acct Desc  : %@\n", self->_emailAccountDescription];
    }

    if (self->_emailAccountName)
    {
      [v5 appendFormat:@"Name       : %@\n", self->_emailAccountName];
    }

    if (self->_emailAccountType)
    {
      [v5 appendFormat:@"Type       : %@\n", self->_emailAccountType];
    }

    if (self->_emailAddress)
    {
      [v5 appendFormat:@"Address    : %@\n", self->_emailAddress];
    }

    if (self->_incomingMailServerAuthentication)
    {
      [v5 appendFormat:@"Incoming server auth     : %@\n", self->_incomingMailServerAuthentication];
    }

    if (self->_incomingMailServerHostname)
    {
      [v5 appendFormat:@"Incoming server hostname : %@\n", self->_incomingMailServerHostname];
    }

    incomingMailServerPortNumber = self->_incomingMailServerPortNumber;
    if (incomingMailServerPortNumber)
    {
      [v5 appendFormat:@"Incoming server port     : %u\n", -[NSNumber unsignedIntValue](incomingMailServerPortNumber, "unsignedIntValue")];
    }

    v9 = MCStringForBool(self->_incomingMailServerUseSSL);
    [v5 appendFormat:@"Incoming server uses SSL : %@\n", v9];

    if (self->_incomingMailServerUsername)
    {
      [v5 appendFormat:@"Incoming server username : %@\n", self->_incomingMailServerUsername];
    }

    if (self->_incomingMailServerIMAPPathPrefix)
    {
      [v5 appendFormat:@"Incoming server IMAP pfx : %@\n", self->_incomingMailServerIMAPPathPrefix];
    }

    if (self->_incomingPassword)
    {
      [v5 appendFormat:@"Incoming server password : (set)\n"];
    }

    if (self->_incomingACAccountIdentifier)
    {
      [v5 appendFormat:@"Incoming ACAccount Identifier : %@\n", self->_incomingACAccountIdentifier];
    }

    if (self->_outgoingPassword)
    {
      [v5 appendFormat:@"Outgoing server password : (set)\n"];
    }

    v10 = MCStringForBool(self->_outgoingPasswordSameAsIncomingPassword);
    [v5 appendFormat:@"Outgoing pwd same as incoming: %@\n", v10];

    if (self->_outgoingMailServerAuthentication)
    {
      [v5 appendFormat:@"Outgoing server auth     : %@\n", self->_outgoingMailServerAuthentication];
    }

    if (self->_outgoingMailServerHostname)
    {
      [v5 appendFormat:@"Outgoing server hostname : %@\n", self->_outgoingMailServerHostname];
    }

    outgoingMailServerPortNumber = self->_outgoingMailServerPortNumber;
    if (outgoingMailServerPortNumber)
    {
      [v5 appendFormat:@"Outgoing server port     : %u\n", -[NSNumber unsignedIntValue](outgoingMailServerPortNumber, "unsignedIntValue")];
    }

    v12 = MCStringForBool(self->_outgoingMailServerUseSSL);
    [v5 appendFormat:@"Outgoing server uses SSL : %@\n", v12];

    if (self->_outgoingMailServerUsername)
    {
      [v5 appendFormat:@"Outgoing server username : %@\n", self->_outgoingMailServerUsername];
    }

    if (self->_outgoingACAccountIdentifier)
    {
      [v5 appendFormat:@"Outgoing ACAccount Identifier : %@\n", self->_outgoingACAccountIdentifier];
    }
  }

  return v5;
}

- (id)subtitle1Label
{
  v2 = [(MCEmailAccountPayload *)self _emailAccountTypeLocalizedString];
  if (v2)
  {
    v3 = @"EMAIL_ACCOUNT_TYPE_COLON";
  }

  else
  {
    v3 = @"EMAIL_ACCOUNT_ACCOUNT_TYPE_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  v3 = [(MCEmailAccountPayload *)self incomingMailServerHostname];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCEmailAccountPayload *)self _emailAccountTypeLocalizedString];

    if (v5)
    {
      v3 = MCLocalizedString(@"EMAIL_ACCOUNT_SERVER_COLON");
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
  v3 = [(MCEmailAccountPayload *)self incomingMailServerHostname];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCEmailAccountPayload *)self _emailAccountTypeLocalizedString];

    if (v5)
    {
      v3 = [(MCEmailAccountPayload *)self incomingMailServerHostname];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_emailAccountTypeLocalizedString
{
  v2 = [(MCEmailAccountPayload *)self emailAccountType];
  v3 = [v2 isEqualToString:@"EmailTypeIMAP"];

  if (v3)
  {
    v4 = @"EMAIL_ACCOUNT_TYPE_IMAP";
  }

  else
  {
    v4 = @"EMAIL_ACCOUNT_TYPE_POP";
  }

  v5 = MCLocalizedString(v4);

  return v5;
}

- (id)_authenticationTypeLocalizedString:(id)a3
{
  v3 = a3;
  v4 = MCLocalizedString(@"AUTHENTICATION_TYPE_NONE");
  if ([v3 isEqualToString:@"EmailAuthPassword"])
  {
    v5 = @"AUTHENTICATION_TYPE_PASSWORD";
  }

  else if ([v3 isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v5 = @"AUTHENTICATION_TYPE_CRAMMD5";
  }

  else if ([v3 isEqualToString:@"EmailAuthNTLM"])
  {
    v5 = @"AUTHENTICATION_TYPE_NTLM";
  }

  else
  {
    if (![v3 isEqualToString:@"EmailAuthHTTPMD5"])
    {
      goto LABEL_10;
    }

    v5 = @"AUTHENTICATION_TYPE_HTTPMD5";
  }

  v6 = MCLocalizedString(v5);

  v4 = v6;
LABEL_10:

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self->_emailAccountDescription)
  {
    v5 = [MCKeyValue alloc];
    emailAccountDescription = self->_emailAccountDescription;
    v7 = MCLocalizedString(@"ACCOUNT_DESCRIPTION");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:emailAccountDescription localizedKey:v7];

    [v4 addObject:v8];
  }

  if (self->_emailAccountName)
  {
    v9 = [MCKeyValue alloc];
    emailAccountName = self->_emailAccountName;
    v11 = MCLocalizedString(@"EMAIL_ACCOUNT_NAME");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:emailAccountName localizedKey:v11];

    [v4 addObject:v12];
  }

  if (self->_emailAccountType)
  {
    v13 = [MCKeyValue alloc];
    v14 = [(MCEmailAccountPayload *)self _emailAccountTypeLocalizedString];
    v15 = MCLocalizedString(@"TYPE");
    v16 = [(MCKeyValue *)v13 initWithLocalizedString:v14 localizedKey:v15];

    [v4 addObject:v16];
  }

  if (self->_emailAddress)
  {
    v17 = [MCKeyValue alloc];
    emailAddress = self->_emailAddress;
    v19 = MCLocalizedString(@"EMAIL_ACCOUNT_ADDRESS");
    v20 = [(MCKeyValue *)v17 initWithLocalizedString:emailAddress localizedKey:v19];

    [v4 addObject:v20];
  }

  if ([v4 count])
  {
    v21 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v21];

    v22 = objc_opt_new();
    v4 = v22;
  }

  if (self->_incomingMailServerHostname)
  {
    v23 = [MCKeyValue alloc];
    incomingMailServerHostname = self->_incomingMailServerHostname;
    v25 = MCLocalizedString(@"EMAIL_ACCOUNT_HOSTNAME");
    v26 = [(MCKeyValue *)v23 initWithLocalizedString:incomingMailServerHostname localizedKey:v25];

    [v4 addObject:v26];
  }

  if (self->_incomingMailServerUsername)
  {
    v27 = [MCKeyValue alloc];
    incomingMailServerUsername = self->_incomingMailServerUsername;
    v29 = MCLocalizedString(@"EMAIL_ACCOUNT_USERNAME");
    v30 = [(MCKeyValue *)v27 initWithLocalizedString:incomingMailServerUsername localizedKey:v29];

    [v4 addObject:v30];
  }

  if (self->_incomingMailServerAuthentication)
  {
    v31 = [MCKeyValue alloc];
    v32 = [(MCEmailAccountPayload *)self _authenticationTypeLocalizedString:self->_incomingMailServerAuthentication];
    v33 = MCLocalizedString(@"EMAIL_ACCOUNT_AUTHENTICATION");
    v34 = [(MCKeyValue *)v31 initWithLocalizedString:v32 localizedKey:v33];

    [v4 addObject:v34];
  }

  if (self->_incomingPassword)
  {
    v35 = [MCKeyValue alloc];
    v36 = MCLocalizedString(@"PASSWORD_SET");
    v37 = MCLocalizedString(@"EMAIL_ACCOUNT_PASSWORD");
    v38 = [(MCKeyValue *)v35 initWithLocalizedString:v36 localizedKey:v37];

    [v4 addObject:v38];
  }

  if (self->_incomingMailServerUseSSLNum)
  {
    v39 = [MCKeyValue alloc];
    v40 = MCLocalizedStringForBool([(NSNumber *)self->_incomingMailServerUseSSLNum BOOLValue]);
    v41 = MCLocalizedString(@"EMAIL_ACCOUNT_SSL");
    v42 = [(MCKeyValue *)v39 initWithLocalizedString:v40 localizedKey:v41];

    [v4 addObject:v42];
  }

  if (self->_incomingMailServerPortNumber)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_incomingMailServerPortNumber];
    v44 = [MCKeyValue alloc];
    v45 = MCLocalizedString(@"EMAIL_ACCOUNT_PORT");
    v46 = [(MCKeyValue *)v44 initWithLocalizedString:v43 localizedKey:v45];

    [v4 addObject:v46];
  }

  if (self->_incomingMailServerIMAPPathPrefix)
  {
    v47 = [MCKeyValue alloc];
    incomingMailServerIMAPPathPrefix = self->_incomingMailServerIMAPPathPrefix;
    v49 = MCLocalizedString(@"EMAIL_ACCOUNT_IMAP_PATH_PREFIX");
    v50 = [(MCKeyValue *)v47 initWithLocalizedString:incomingMailServerIMAPPathPrefix localizedKey:v49];

    [v4 addObject:v50];
  }

  if ([v4 count])
  {
    v51 = [MCKeyValueSection alloc];
    v52 = MCLocalizedString(@"EMAIL_ACCOUNT_INCOMING_MAIL_SERVER");
    v53 = [(MCKeyValueSection *)v51 initWithSectionTitle:v52 footer:0 keyValues:v4];

    [v3 addObject:v53];
    v54 = objc_opt_new();

    v4 = v54;
  }

  if (self->_outgoingMailServerHostname)
  {
    v55 = [MCKeyValue alloc];
    outgoingMailServerHostname = self->_outgoingMailServerHostname;
    v57 = MCLocalizedString(@"EMAIL_ACCOUNT_HOSTNAME");
    v58 = [(MCKeyValue *)v55 initWithLocalizedString:outgoingMailServerHostname localizedKey:v57];

    [v4 addObject:v58];
  }

  if (self->_outgoingMailServerUsername)
  {
    v59 = [MCKeyValue alloc];
    outgoingMailServerUsername = self->_outgoingMailServerUsername;
    v61 = MCLocalizedString(@"EMAIL_ACCOUNT_USERNAME");
    v62 = [(MCKeyValue *)v59 initWithLocalizedString:outgoingMailServerUsername localizedKey:v61];

    [v4 addObject:v62];
  }

  if (self->_outgoingMailServerAuthentication)
  {
    v63 = [MCKeyValue alloc];
    v64 = [(MCEmailAccountPayload *)self _authenticationTypeLocalizedString:self->_outgoingMailServerAuthentication];
    v65 = MCLocalizedString(@"EMAIL_ACCOUNT_AUTHENTICATION");
    v66 = [(MCKeyValue *)v63 initWithLocalizedString:v64 localizedKey:v65];

    [v4 addObject:v66];
  }

  if (self->_outgoingPassword)
  {
    v67 = [MCKeyValue alloc];
    v68 = MCLocalizedString(@"PASSWORD_SET");
    v69 = MCLocalizedString(@"EMAIL_ACCOUNT_PASSWORD");
    v70 = [(MCKeyValue *)v67 initWithLocalizedString:v68 localizedKey:v69];

    [v4 addObject:v70];
  }

  if (self->_outgoingPasswordSameAsIncomingPasswordNum)
  {
    v71 = [MCKeyValue alloc];
    v72 = MCLocalizedStringForBool([(NSNumber *)self->_outgoingPasswordSameAsIncomingPasswordNum BOOLValue]);
    v73 = MCLocalizedString(@"EMAIL_ACCOUNT_OUTGOING_PASSWORD_SAME_AS_INCOMING");
    v74 = [(MCKeyValue *)v71 initWithLocalizedString:v72 localizedKey:v73];

    [v4 addObject:v74];
  }

  if (self->_outgoingMailServerUseSSLNum)
  {
    v75 = [MCKeyValue alloc];
    v76 = MCLocalizedStringForBool([(NSNumber *)self->_outgoingMailServerUseSSLNum BOOLValue]);
    v77 = MCLocalizedString(@"EMAIL_ACCOUNT_SSL");
    v78 = [(MCKeyValue *)v75 initWithLocalizedString:v76 localizedKey:v77];

    [v4 addObject:v78];
  }

  if (self->_outgoingMailServerPortNumber)
  {
    v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_outgoingMailServerPortNumber];
    v80 = [MCKeyValue alloc];
    v81 = MCLocalizedString(@"EMAIL_ACCOUNT_PORT");
    v82 = [(MCKeyValue *)v80 initWithLocalizedString:v79 localizedKey:v81];

    [v4 addObject:v82];
  }

  if ([v4 count])
  {
    v83 = [MCKeyValueSection alloc];
    v84 = MCLocalizedString(@"EMAIL_ACCOUNT_OUTGOING_MAIL_SERVER");
    v85 = [(MCKeyValueSection *)v83 initWithSectionTitle:v84 footer:0 keyValues:v4];

    [v3 addObject:v85];
  }

  v88.receiver = self;
  v88.super_class = MCEmailAccountPayload;
  v86 = [(MCEmailAccountPayloadBase *)&v88 payloadDescriptionKeyValueSections];
  if ([v86 count])
  {
    [v3 addObjectsFromArray:v86];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

+ (id)profileNameFromAccountTag:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"|" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = &stru_1F1A7FAB0;
  }

  else
  {
    v5 = [v3 substringWithRange:{v4 + 1, objc_msgSend(v3, "length") + ~v4}];
  }

  return v5;
}

- (BOOL)containsSensitiveUserInformation
{
  v7.receiver = self;
  v7.super_class = MCEmailAccountPayload;
  if ([(MCEmailAccountPayloadBase *)&v7 containsSensitiveUserInformation])
  {
    return 1;
  }

  v4 = [(MCEmailAccountPayload *)self incomingPassword];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MCEmailAccountPayload *)self outgoingPassword];
    v3 = v5 != 0;
  }

  return v3;
}

- (id)mailAccountIdentifiers
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = v3;
  if (self->_incomingACAccountIdentifier)
  {
    [v3 addObject:?];
  }

  if (self->_outgoingACAccountIdentifier)
  {
    [v4 addObject:?];
  }

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end