@interface MCEASAccountPayload
- (BOOL)containsSensitiveUserInformation;
- (BOOL)mustNotUseSynchronizableCredential;
- (MCEASAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSString)emailAddress;
- (id)calendarAccountIdentifiers;
- (id)contactsAccountIdentifiers;
- (id)mailAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCEASAccountPayload

- (MCEASAccountPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v140 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v135.receiver = self;
  v135.super_class = MCEASAccountPayload;
  v10 = [(MCEmailAccountPayloadBase *)&v135 initWithDictionary:v8 profile:v9 outError:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_24;
  }

  v12 = [(MCPayload *)v10 displayName];
  accountDescription = v11->_accountDescription;
  v11->_accountDescription = v12;

  v134 = 0;
  v14 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserName" isRequired:0 outError:&v134];
  v15 = v134;
  username = v11->_username;
  v11->_username = v14;

  if (v15)
  {
    goto LABEL_15;
  }

  v133 = 0;
  v17 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EmailAddress" isRequired:0 outError:&v133];
  v15 = v133;
  emailAddress = v11->_emailAddress;
  v11->_emailAddress = v17;

  if (v15)
  {
    goto LABEL_15;
  }

  v132 = 0;
  v19 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SSL" isRequired:0 outError:&v132];
  v15 = v132;
  useSSL = v11->_useSSL;
  v11->_useSSL = v19;

  if (v15)
  {
    goto LABEL_15;
  }

  v131 = 0;
  v21 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OAuth" isRequired:0 outError:&v131];
  v15 = v131;
  useOAuth = v11->_useOAuth;
  v11->_useOAuth = v21;

  if (v15)
  {
    goto LABEL_15;
  }

  if (![(NSNumber *)v11->_useOAuth BOOLValue])
  {
    goto LABEL_13;
  }

  v130 = 0;
  v23 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OAuthSignInURL" isRequired:0 outError:&v130];
  v15 = v130;
  OAuthSignInURL = v11->_OAuthSignInURL;
  v11->_OAuthSignInURL = v23;

  if (v15)
  {
    goto LABEL_15;
  }

  if (v11->_OAuthSignInURL)
  {
    v25 = [MEMORY[0x1E695DFF8] URLWithString:?];

    if (!v25)
    {
      v15 = [MCPayload badFieldValueErrorWithField:@"OAuthSignInURL"];
      if (!v15)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  v129 = 0;
  v26 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OAuthTokenRequestURL" isRequired:0 outError:&v129];
  v15 = v129;
  OAuthTokenRequestURL = v11->_OAuthTokenRequestURL;
  v11->_OAuthTokenRequestURL = v26;

  if (v15)
  {
    goto LABEL_15;
  }

  if (!v11->_OAuthTokenRequestURL || ([MEMORY[0x1E695DFF8] URLWithString:?], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
LABEL_13:
    v128 = 0;
    v29 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"MailNumberOfPastDaysToSync" isRequired:0 outError:&v128];
    v15 = v128;
    mailNumberOfPastDaysToSync = v11->_mailNumberOfPastDaysToSync;
    v11->_mailNumberOfPastDaysToSync = v29;

    if (v15)
    {
      goto LABEL_15;
    }

    v127 = 0;
    v31 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SyncDefaultFoldersOnly" isRequired:0 outError:&v127];
    v15 = v127;
    syncDefaultFoldersOnlyNum = v11->_syncDefaultFoldersOnlyNum;
    v11->_syncDefaultFoldersOnlyNum = v31;

    if (v15)
    {
      goto LABEL_15;
    }

    v11->_syncDefaultFoldersOnly = [(NSNumber *)v11->_syncDefaultFoldersOnlyNum BOOLValue];
    v126 = 0;
    v46 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CommunicationServiceRules" isRequired:0 outError:&v126];
    v47 = v126;
    if (v47)
    {
      v15 = v47;
      goto LABEL_31;
    }

    v125 = 0;
    v48 = [MCCommunicationServiceRulesUtilities validatedCommunicationServiceRules:v46 outError:&v125];
    v15 = v125;
    communicationServiceRules = v11->_communicationServiceRules;
    v11->_communicationServiceRules = v48;

    if (v15 || (v124 = 0, [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableMail" isRequired:0 outError:&v124], v50 = objc_claimAutoreleasedReturnValue(), v15 = v124, enableMailNum = v11->_enableMailNum, v11->_enableMailNum = v50, enableMailNum, v15))
    {
LABEL_31:

      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_15:
      v33 = [(MCPayload *)v11 malformedPayloadErrorWithError:v15];
      v34 = v33;
      if (a5)
      {
        v35 = v33;
        *a5 = v34;
      }

      v36 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        v38 = objc_opt_class();
        v39 = v38;
        v40 = [v34 MCVerboseDescription];
        *buf = 138543618;
        v137 = v38;
        v138 = 2114;
        v139 = v40;
        _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_20;
    }

    v123 = 0;
    v103 = v8;
    v52 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableContacts" isRequired:0 outError:&v123];
    v53 = v123;
    enableContactsNum = v11->_enableContactsNum;
    v11->_enableContactsNum = v52;

    if (v53)
    {
      goto LABEL_49;
    }

    v122 = 0;
    v55 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableCalendars" isRequired:0 outError:&v122];
    v53 = v122;
    enableCalendarsNum = v11->_enableCalendarsNum;
    v11->_enableCalendarsNum = v55;

    if (v53)
    {
      goto LABEL_49;
    }

    v121 = 0;
    v57 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableReminders" isRequired:0 outError:&v121];
    v53 = v121;
    enableRemindersNum = v11->_enableRemindersNum;
    v11->_enableRemindersNum = v57;

    if (v53)
    {
      goto LABEL_49;
    }

    v120 = 0;
    v59 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableNotes" isRequired:0 outError:&v120];
    v53 = v120;
    enableNotesNum = v11->_enableNotesNum;
    v11->_enableNotesNum = v59;

    if (v53)
    {
      goto LABEL_49;
    }

    if (![(MCEASAccountPayload *)v11 enableMail]&& ![(MCEASAccountPayload *)v11 enableContacts]&& ![(MCEASAccountPayload *)v11 enableCalendars]&& ![(MCEASAccountPayload *)v11 enableReminders]&& ![(MCEASAccountPayload *)v11 enableNotes])
    {
      v78 = MEMORY[0x1E696ABC0];
      v79 = MCErrorArray(@"EAS_NO_SERVICES_ENABLED", v61, v62, v63, v64, v65, v66, v67, 0);
      v15 = [v78 MCErrorWithDomain:@"MCEASErrorDomain" code:21009 descriptionArray:v79 underlyingError:0 errorType:@"MCFatalError"];

      goto LABEL_50;
    }

    v119 = 0;
    v68 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableMailUserOverridable" isRequired:0 outError:&v119];
    v53 = v119;
    enableMailUserOverridableNum = v11->_enableMailUserOverridableNum;
    v11->_enableMailUserOverridableNum = v68;

    if (v53)
    {
      goto LABEL_49;
    }

    v118 = 0;
    v70 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableContactsUserOverridable" isRequired:0 outError:&v118];
    v53 = v118;
    enableContactsUserOverridableNum = v11->_enableContactsUserOverridableNum;
    v11->_enableContactsUserOverridableNum = v70;

    if (v53)
    {
      goto LABEL_49;
    }

    v117 = 0;
    v72 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableCalendarsUserOverridable" isRequired:0 outError:&v117];
    v53 = v117;
    enableCalendarsUserOverridableNum = v11->_enableCalendarsUserOverridableNum;
    v11->_enableCalendarsUserOverridableNum = v72;

    if (v53)
    {
      goto LABEL_49;
    }

    v116 = 0;
    v74 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableRemindersUserOverridable" isRequired:0 outError:&v116];
    v53 = v116;
    enableRemindersUserOverridableNum = v11->_enableRemindersUserOverridableNum;
    v11->_enableRemindersUserOverridableNum = v74;

    if (v53 || (v115 = 0, [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableNotesUserOverridable" isRequired:0 outError:&v115], v76 = objc_claimAutoreleasedReturnValue(), v53 = v115, enableNotesUserOverridableNum = v11->_enableNotesUserOverridableNum, v11->_enableNotesUserOverridableNum = v76, enableNotesUserOverridableNum, v53))
    {
LABEL_49:
      v15 = v53;
LABEL_50:
      v8 = v103;
      goto LABEL_31;
    }

    if ([v9 isStub])
    {
      v107 = 0;
      v80 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Host" isRequired:0 outError:&v107];
      v53 = v107;
      hostname = v11->_hostname;
      v11->_hostname = v80;

      if (v53)
      {
        goto LABEL_49;
      }

      v106 = 0;
      v82 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"EASAccountPersistentUUID" isRequired:0 outError:&v106];
      v53 = v106;
      accountPersistentUUID = v11->_accountPersistentUUID;
      v11->_accountPersistentUUID = v82;

      if (v53)
      {
        goto LABEL_49;
      }

      v105 = 0;
      v84 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EASAccountCertificatePersistentID" isRequired:0 outError:&v105];
      v53 = v105;
      certificatePersistentID = v11->_certificatePersistentID;
      v11->_certificatePersistentID = v84;

      if (v53)
      {
        goto LABEL_49;
      }

      v104 = 0;
      v86 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v104];
      v53 = v104;
      acAccountIdentifier = v11->_acAccountIdentifier;
      v11->_acAccountIdentifier = v86;

      if (v53)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ([(NSNumber *)v11->_useOAuth BOOLValue])
      {
        v88 = v11->_OAuthSignInURL != 0;
      }

      else
      {
        v88 = 1;
      }

      v114 = 0;
      v89 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Host" isRequired:v88 outError:&v114];
      v53 = v114;
      v90 = v11->_hostname;
      v11->_hostname = v89;

      if (v53)
      {
        goto LABEL_49;
      }

      v113 = 0;
      v91 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Password" isRequired:0 outError:&v113];
      v53 = v113;
      password = v11->_password;
      v11->_password = v91;

      if (v53)
      {
        goto LABEL_49;
      }

      v112 = 0;
      v93 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Certificate" isRequired:0 outError:&v112];
      v53 = v112;
      embeddedCertificate = v11->_embeddedCertificate;
      v11->_embeddedCertificate = v93;

      if (v53)
      {
        goto LABEL_49;
      }

      v111 = 0;
      v95 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CertificateName" isRequired:0 outError:&v111];
      v53 = v111;
      embeddedCertificateName = v11->_embeddedCertificateName;
      v11->_embeddedCertificateName = v95;

      if (v53)
      {
        goto LABEL_49;
      }

      v110 = 0;
      v97 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"CertificatePassword" isRequired:0 outError:&v110];
      v53 = v110;
      embeddedCertificatePassword = v11->_embeddedCertificatePassword;
      v11->_embeddedCertificatePassword = v97;

      if (v53)
      {
        goto LABEL_49;
      }

      v109 = 0;
      v99 = [v103 MCValidateAndRemoveNonZeroLengthStringWithKey:@"PayloadCertificateUUID" isRequired:0 outError:&v109];
      v53 = v109;
      certificateUUID = v11->_certificateUUID;
      v11->_certificateUUID = v99;

      if (v53)
      {
        goto LABEL_49;
      }

      v108 = 0;
      v101 = [v103 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"OverridePreviousPassword" isRequired:0 outError:&v108];
      v102 = v108;
      if (v102)
      {
        v15 = v102;

        goto LABEL_50;
      }

      v11->_overridePreviousPassword = [v101 BOOLValue];
    }

    v15 = 0;
    goto LABEL_50;
  }

  v15 = [MCPayload badFieldValueErrorWithField:@"OAuthTokenRequestURL"];
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_20:
  if ([v8 count])
  {
    v41 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v42 = v41;
      v43 = [(MCPayload *)v11 friendlyName];
      *buf = 138543618;
      v137 = v43;
      v138 = 2114;
      v139 = v8;
      _os_log_impl(&dword_1A795B000, v42, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_24:
  v44 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)verboseDescription
{
  v33.receiver = self;
  v33.super_class = MCEASAccountPayload;
  v3 = [(MCEmailAccountPayloadBase *)&v33 verboseDescription];
  v4 = [v3 mutableCopy];

  if (self->_accountDescription)
  {
    [v4 appendFormat:@"Description : %@\n", self->_accountDescription];
  }

  if (self->_hostname)
  {
    [v4 appendFormat:@"Host        : %@\n", self->_hostname];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"Username    : %@\n", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"Password    : (set)\n"];
  }

  if (self->_emailAddress)
  {
    [v4 appendFormat:@"Email       : %@\n", self->_emailAddress];
  }

  v5 = [(MCEASAccountPayload *)self useSSL];

  if (v5)
  {
    v6 = [(MCEASAccountPayload *)self useSSL];
    v7 = MCStringForBool([v6 BOOLValue]);
    [v4 appendFormat:@"useSSL      : %@\n", v7];
  }

  v8 = [(MCEASAccountPayload *)self useOAuth];

  if (v8)
  {
    v9 = [(MCEASAccountPayload *)self useOAuth];
    v10 = MCStringForBool([v9 BOOLValue]);
    [v4 appendFormat:@"useOAuth    : %@\n", v10];
  }

  if (self->_OAuthSignInURL)
  {
    [v4 appendFormat:@"OAuthSignInURL: %@\n", self->_OAuthSignInURL];
  }

  if (self->_OAuthTokenRequestURL)
  {
    [v4 appendFormat:@"OAuthTokenRequestURL: %@\n", self->_OAuthTokenRequestURL];
  }

  mailNumberOfPastDaysToSync = self->_mailNumberOfPastDaysToSync;
  if (mailNumberOfPastDaysToSync)
  {
    [v4 appendFormat:@"Sync # days : %d\n", -[NSNumber intValue](mailNumberOfPastDaysToSync, "intValue")];
  }

  if (self->_embeddedCertificate)
  {
    [v4 appendFormat:@"Certificate : Embedded\n"];
  }

  if (self->_certificateUUID)
  {
    [v4 appendFormat:@"Certificate : %@\n", self->_certificateUUID];
  }

  if (self->_certificatePersistentID)
  {
    [v4 appendFormat:@"Certificate : %@\n", self->_certificatePersistentID];
  }

  if (self->_accountPersistentUUID)
  {
    [v4 appendFormat:@"PersistentUUID: %@\n", self->_accountPersistentUUID];
  }

  if (self->_syncDefaultFoldersOnly)
  {
    [v4 appendFormat:@"SyncDefaultFoldersOnly : Yes\n"];
  }

  if (self->_acAccountIdentifier)
  {
    [v4 appendFormat:@"ACAccountIdentifier : %@\n", self->_acAccountIdentifier];
  }

  enableMailNum = self->_enableMailNum;
  if (enableMailNum)
  {
    v13 = MCStringForBool([(NSNumber *)enableMailNum BOOLValue]);
    [v4 appendFormat:@"Enable Mail     : %@\n", v13];
  }

  enableContactsNum = self->_enableContactsNum;
  if (enableContactsNum)
  {
    v15 = MCStringForBool([(NSNumber *)enableContactsNum BOOLValue]);
    [v4 appendFormat:@"Enable Contacts : %@\n", v15];
  }

  enableCalendarsNum = self->_enableCalendarsNum;
  if (enableCalendarsNum)
  {
    v17 = MCStringForBool([(NSNumber *)enableCalendarsNum BOOLValue]);
    [v4 appendFormat:@"Enable Calendars: %@\n", v17];
  }

  enableRemindersNum = self->_enableRemindersNum;
  if (enableRemindersNum)
  {
    v19 = MCStringForBool([(NSNumber *)enableRemindersNum BOOLValue]);
    [v4 appendFormat:@"Enable Reminders: %@\n", v19];
  }

  enableNotesNum = self->_enableNotesNum;
  if (enableNotesNum)
  {
    v21 = MCStringForBool([(NSNumber *)enableNotesNum BOOLValue]);
    [v4 appendFormat:@"Enable Notes    : %@\n", v21];
  }

  enableMailUserOverridableNum = self->_enableMailUserOverridableNum;
  if (enableMailUserOverridableNum)
  {
    v23 = MCStringForBool([(NSNumber *)enableMailUserOverridableNum BOOLValue]);
    [v4 appendFormat:@"Enable Mail is user-overridable     : %@\n", v23];
  }

  enableContactsUserOverridableNum = self->_enableContactsUserOverridableNum;
  if (enableContactsUserOverridableNum)
  {
    v25 = MCStringForBool([(NSNumber *)enableContactsUserOverridableNum BOOLValue]);
    [v4 appendFormat:@"Enable Contacts is user-overridable : %@\n", v25];
  }

  enableCalendarsUserOverridableNum = self->_enableCalendarsUserOverridableNum;
  if (enableCalendarsUserOverridableNum)
  {
    v27 = MCStringForBool([(NSNumber *)enableCalendarsUserOverridableNum BOOLValue]);
    [v4 appendFormat:@"Enable Calendars is user-overridable: %@\n", v27];
  }

  enableRemindersUserOverridableNum = self->_enableRemindersUserOverridableNum;
  if (enableRemindersUserOverridableNum)
  {
    v29 = MCStringForBool([(NSNumber *)enableRemindersUserOverridableNum BOOLValue]);
    [v4 appendFormat:@"Enable Reminders is user-overridable: %@\n", v29];
  }

  enableNotesUserOverridableNum = self->_enableNotesUserOverridableNum;
  if (enableNotesUserOverridableNum)
  {
    v31 = MCStringForBool([(NSNumber *)enableNotesUserOverridableNum BOOLValue]);
    [v4 appendFormat:@"Enable Notes is user-overridable    : %@\n", v31];
  }

  return v4;
}

- (id)stubDictionary
{
  v30.receiver = self;
  v30.super_class = MCEASAccountPayload;
  v3 = [(MCEmailAccountPayloadBase *)&v30 stubDictionary];
  v4 = v3;
  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [v3 setObject:accountDescription forKey:@"PayloadDisplayName"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"Host"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"UserName"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v4 setObject:emailAddress forKey:@"EmailAddress"];
  }

  useSSL = self->_useSSL;
  if (useSSL)
  {
    [v4 setObject:useSSL forKey:@"SSL"];
  }

  useOAuth = self->_useOAuth;
  if (useOAuth)
  {
    [v4 setObject:useOAuth forKey:@"OAuth"];
  }

  OAuthSignInURL = self->_OAuthSignInURL;
  if (OAuthSignInURL)
  {
    [v4 setObject:OAuthSignInURL forKey:@"OAuthSignInURL"];
  }

  OAuthTokenRequestURL = self->_OAuthTokenRequestURL;
  if (OAuthTokenRequestURL)
  {
    [v4 setObject:OAuthTokenRequestURL forKey:@"OAuthTokenRequestURL"];
  }

  mailNumberOfPastDaysToSync = self->_mailNumberOfPastDaysToSync;
  if (mailNumberOfPastDaysToSync)
  {
    [v4 setObject:mailNumberOfPastDaysToSync forKey:@"MailNumberOfPastDaysToSync"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_syncDefaultFoldersOnly];
  [v4 setObject:v14 forKey:@"SyncDefaultFoldersOnly"];

  accountPersistentUUID = self->_accountPersistentUUID;
  if (accountPersistentUUID)
  {
    [v4 setObject:accountPersistentUUID forKey:@"EASAccountPersistentUUID"];
  }

  acAccountIdentifier = self->_acAccountIdentifier;
  if (acAccountIdentifier)
  {
    [v4 setObject:acAccountIdentifier forKey:@"ACAccountIdentifier"];
  }

  certificatePersistentID = self->_certificatePersistentID;
  if (certificatePersistentID)
  {
    [v4 setObject:certificatePersistentID forKey:@"EASAccountCertificatePersistentID"];
  }

  communicationServiceRules = self->_communicationServiceRules;
  if (communicationServiceRules)
  {
    [v4 setObject:communicationServiceRules forKey:@"CommunicationServiceRules"];
  }

  enableMailNum = self->_enableMailNum;
  if (enableMailNum)
  {
    [v4 setObject:enableMailNum forKey:@"EnableMail"];
  }

  enableContactsNum = self->_enableContactsNum;
  if (enableContactsNum)
  {
    [v4 setObject:enableContactsNum forKey:@"EnableContacts"];
  }

  enableCalendarsNum = self->_enableCalendarsNum;
  if (enableCalendarsNum)
  {
    [v4 setObject:enableCalendarsNum forKey:@"EnableCalendars"];
  }

  enableRemindersNum = self->_enableRemindersNum;
  if (enableRemindersNum)
  {
    [v4 setObject:enableRemindersNum forKey:@"EnableReminders"];
  }

  enableNotesNum = self->_enableNotesNum;
  if (enableNotesNum)
  {
    [v4 setObject:enableNotesNum forKey:@"EnableNotes"];
  }

  enableMailUserOverridableNum = self->_enableMailUserOverridableNum;
  if (enableMailUserOverridableNum)
  {
    [v4 setObject:enableMailUserOverridableNum forKey:@"EnableMailUserOverridable"];
  }

  enableContactsUserOverridableNum = self->_enableContactsUserOverridableNum;
  if (enableContactsUserOverridableNum)
  {
    [v4 setObject:enableContactsUserOverridableNum forKey:@"EnableContactsUserOverridable"];
  }

  enableCalendarsUserOverridableNum = self->_enableCalendarsUserOverridableNum;
  if (enableCalendarsUserOverridableNum)
  {
    [v4 setObject:enableCalendarsUserOverridableNum forKey:@"EnableCalendarsUserOverridable"];
  }

  enableRemindersUserOverridableNum = self->_enableRemindersUserOverridableNum;
  if (enableRemindersUserOverridableNum)
  {
    [v4 setObject:enableRemindersUserOverridableNum forKey:@"EnableRemindersUserOverridable"];
  }

  enableNotesUserOverridableNum = self->_enableNotesUserOverridableNum;
  if (enableNotesUserOverridableNum)
  {
    [v4 setObject:enableNotesUserOverridableNum forKey:@"EnableNotesUserOverridable"];
  }

  return v4;
}

- (id)restrictions
{
  v2 = [(MCEASAccountPayload *)self communicationServiceRules];
  v3 = [MCCommunicationServiceRulesUtilities restrictionsForValidatedCommunicationServiceRules:v2];

  return v3;
}

- (NSString)emailAddress
{
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v4 = [(NSString *)emailAddress copy];
  }

  else
  {
    v5 = [(MCEASAccountPayload *)self username];
    if (v5 && (v6 = v5, [(MCEASAccountPayload *)self hostname], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(MCEASAccountPayload *)self username];
      v10 = [(MCEASAccountPayload *)self hostname];
      v4 = [v8 stringWithFormat:@"%@@%@", v9, v10];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)subtitle1Label
{
  v2 = [(MCEASAccountPayload *)self hostname];
  if (v2)
  {
    v3 = @"EAS_SERVER_NAME_COLON";
  }

  else
  {
    v3 = @"EAS_SERVER_NAME_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  v3 = [(MCEASAccountPayload *)self emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCEASAccountPayload *)self hostname];

    if (v5)
    {
      v3 = MCLocalizedString(@"EAS_EMAIL_ADDRESS_COLON");
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
  v3 = [(MCEASAccountPayload *)self emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCEASAccountPayload *)self hostname];

    if (v5)
    {
      v3 = [(MCEASAccountPayload *)self emailAddress];
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
  v3 = objc_opt_new();
  if (self->_accountDescription)
  {
    v4 = [MCKeyValue alloc];
    accountDescription = self->_accountDescription;
    v6 = MCLocalizedString(@"ACCOUNT_DESCRIPTION");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:accountDescription localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_emailAddress)
  {
    v8 = [MCKeyValue alloc];
    emailAddress = self->_emailAddress;
    v10 = MCLocalizedString(@"EXCHANGE_EMAIL_ADDRESS");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:emailAddress localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_hostname)
  {
    v12 = [MCKeyValue alloc];
    hostname = self->_hostname;
    v14 = MCLocalizedString(@"HOSTNAME");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:hostname localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_username)
  {
    v16 = [MCKeyValue alloc];
    username = self->_username;
    v18 = MCLocalizedString(@"USERNAME");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:username localizedKey:v18];

    [v3 addObject:v19];
  }

  if (self->_password)
  {
    v20 = [MCKeyValue alloc];
    v21 = MCLocalizedString(@"PRESENT");
    v22 = MCLocalizedString(@"PASSWORD");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_useSSL)
  {
    v24 = [MCKeyValue alloc];
    v25 = MCLocalizedStringForBool([(NSNumber *)self->_useSSL BOOLValue]);
    v26 = MCLocalizedString(@"USES_SSL");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:v25 localizedKey:v26];

    [v3 addObject:v27];
  }

  if (self->_useOAuth)
  {
    v28 = [MCKeyValue alloc];
    v29 = MCLocalizedStringForBool([(NSNumber *)self->_useOAuth BOOLValue]);
    v30 = MCLocalizedString(@"USES_OAUTH");
    v31 = [(MCKeyValue *)v28 initWithLocalizedString:v29 localizedKey:v30];

    [v3 addObject:v31];
  }

  if (self->_OAuthSignInURL)
  {
    v32 = [MCKeyValue alloc];
    OAuthSignInURL = self->_OAuthSignInURL;
    v34 = MCLocalizedString(@"OAUTH_SIGN_IN_URL");
    v35 = [(MCKeyValue *)v32 initWithLocalizedString:OAuthSignInURL localizedKey:v34];

    [v3 addObject:v35];
  }

  if (self->_OAuthTokenRequestURL)
  {
    v36 = [MCKeyValue alloc];
    OAuthTokenRequestURL = self->_OAuthTokenRequestURL;
    v38 = MCLocalizedString(@"OAUTH_TOKEN_REQUEST_URL");
    v39 = [(MCKeyValue *)v36 initWithLocalizedString:OAuthTokenRequestURL localizedKey:v38];

    [v3 addObject:v39];
  }

  if (self->_mailNumberOfPastDaysToSync)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_mailNumberOfPastDaysToSync];
    v41 = [MCKeyValue alloc];
    v42 = MCLocalizedString(@"EXCHANGE_PAST_DAYS_TO_SYNC");
    v43 = [(MCKeyValue *)v41 initWithLocalizedString:v40 localizedKey:v42];

    [v3 addObject:v43];
  }

  if (self->_syncDefaultFoldersOnlyNum)
  {
    v44 = [MCKeyValue alloc];
    v45 = MCLocalizedStringForBool([(NSNumber *)self->_syncDefaultFoldersOnlyNum BOOLValue]);
    v46 = MCLocalizedString(@"EXCHANGE_SYNC_DEFAULT_FOLDERS_ONLY");
    v47 = [(MCKeyValue *)v44 initWithLocalizedString:v45 localizedKey:v46];

    [v3 addObject:v47];
  }

  if (self->_enableMailNum)
  {
    v48 = [MCKeyValue alloc];
    v49 = MCLocalizedStringForBool([(NSNumber *)self->_enableMailNum BOOLValue]);
    v50 = MCLocalizedString(@"EXCHANGE_ENABLE_MAIL");
    v51 = [(MCKeyValue *)v48 initWithLocalizedString:v49 localizedKey:v50];

    [v3 addObject:v51];
  }

  if (self->_enableContactsNum)
  {
    v52 = [MCKeyValue alloc];
    v53 = MCLocalizedStringForBool([(NSNumber *)self->_enableContactsNum BOOLValue]);
    v54 = MCLocalizedString(@"EXCHANGE_ENABLE_CONTACTS");
    v55 = [(MCKeyValue *)v52 initWithLocalizedString:v53 localizedKey:v54];

    [v3 addObject:v55];
  }

  if (self->_enableCalendarsNum)
  {
    v56 = [MCKeyValue alloc];
    v57 = MCLocalizedStringForBool([(NSNumber *)self->_enableCalendarsNum BOOLValue]);
    v58 = MCLocalizedString(@"EXCHANGE_ENABLE_CALENDARS");
    v59 = [(MCKeyValue *)v56 initWithLocalizedString:v57 localizedKey:v58];

    [v3 addObject:v59];
  }

  if (self->_enableRemindersNum)
  {
    v60 = [MCKeyValue alloc];
    v61 = MCLocalizedStringForBool([(NSNumber *)self->_enableRemindersNum BOOLValue]);
    v62 = MCLocalizedString(@"EXCHANGE_ENABLE_REMINDERS");
    v63 = [(MCKeyValue *)v60 initWithLocalizedString:v61 localizedKey:v62];

    [v3 addObject:v63];
  }

  if (self->_enableNotesNum)
  {
    v64 = [MCKeyValue alloc];
    v65 = MCLocalizedStringForBool([(NSNumber *)self->_enableNotesNum BOOLValue]);
    v66 = MCLocalizedString(@"EXCHANGE_ENABLE_NOTES");
    v67 = [(MCKeyValue *)v64 initWithLocalizedString:v65 localizedKey:v66];

    [v3 addObject:v67];
  }

  if (self->_enableMailUserOverridableNum)
  {
    v68 = [MCKeyValue alloc];
    v69 = MCLocalizedStringForBool([(NSNumber *)self->_enableMailUserOverridableNum BOOLValue]);
    v70 = MCLocalizedString(@"EXCHANGE_ENABLE_MAIL_USER_OVERRIDABLE");
    v71 = [(MCKeyValue *)v68 initWithLocalizedString:v69 localizedKey:v70];

    [v3 addObject:v71];
  }

  if (self->_enableContactsUserOverridableNum)
  {
    v72 = [MCKeyValue alloc];
    v73 = MCLocalizedStringForBool([(NSNumber *)self->_enableContactsUserOverridableNum BOOLValue]);
    v74 = MCLocalizedString(@"EXCHANGE_ENABLE_CONTACTS_USER_OVERRIDABLE");
    v75 = [(MCKeyValue *)v72 initWithLocalizedString:v73 localizedKey:v74];

    [v3 addObject:v75];
  }

  if (self->_enableCalendarsUserOverridableNum)
  {
    v76 = [MCKeyValue alloc];
    v77 = MCLocalizedStringForBool([(NSNumber *)self->_enableCalendarsUserOverridableNum BOOLValue]);
    v78 = MCLocalizedString(@"EXCHANGE_ENABLE_CALENDARS_USER_OVERRIDABLE");
    v79 = [(MCKeyValue *)v76 initWithLocalizedString:v77 localizedKey:v78];

    [v3 addObject:v79];
  }

  if (self->_enableRemindersUserOverridableNum)
  {
    v80 = [MCKeyValue alloc];
    v81 = MCLocalizedStringForBool([(NSNumber *)self->_enableRemindersUserOverridableNum BOOLValue]);
    v82 = MCLocalizedString(@"EXCHANGE_ENABLE_REMINDERS_USER_OVERRIDABLE");
    v83 = [(MCKeyValue *)v80 initWithLocalizedString:v81 localizedKey:v82];

    [v3 addObject:v83];
  }

  if (self->_enableNotesUserOverridableNum)
  {
    v84 = [MCKeyValue alloc];
    v85 = MCLocalizedStringForBool([(NSNumber *)self->_enableNotesUserOverridableNum BOOLValue]);
    v86 = MCLocalizedString(@"EXCHANGE_ENABLE_NOTES_USER_OVERRIDABLE");
    v87 = [(MCKeyValue *)v84 initWithLocalizedString:v85 localizedKey:v86];

    [v3 addObject:v87];
  }

  if (self->_certificatePersistentID)
  {
    v88 = [(MCPayload *)self profile];
    v89 = [v88 subjectSummaryFromCertificateWithPersistentID:self->_certificatePersistentID];
  }

  else
  {
    if (!self->_certificateUUID)
    {
      goto LABEL_49;
    }

    v88 = [(MCPayload *)self profile];
    v89 = [v88 subjectSummaryFromCertificatePayloadWithUUID:self->_certificateUUID];
  }

  v90 = v89;

  if (v90)
  {
    v91 = [MCKeyValue alloc];
    v92 = MCLocalizedString(@"EXCHANGE_CERTIFICATE");
    v93 = [(MCKeyValue *)v91 initWithLocalizedString:v90 localizedKey:v92];

    [v3 addObject:v93];
  }

LABEL_49:
  v94 = objc_opt_new();
  if ([v3 count])
  {
    v95 = [MCKeyValueSection sectionWithKeyValues:v3];
    [v94 addObject:v95];
  }

  v98.receiver = self;
  v98.super_class = MCEASAccountPayload;
  v96 = [(MCEmailAccountPayloadBase *)&v98 payloadDescriptionKeyValueSections];
  [v94 addObjectsFromArray:v96];

  if (![v94 count])
  {

    v94 = 0;
  }

  return v94;
}

- (BOOL)containsSensitiveUserInformation
{
  v10.receiver = self;
  v10.super_class = MCEASAccountPayload;
  if ([(MCEmailAccountPayloadBase *)&v10 containsSensitiveUserInformation])
  {
    return 1;
  }

  v4 = [(MCEASAccountPayload *)self password];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MCEASAccountPayload *)self embeddedCertificate];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = [(MCEASAccountPayload *)self embeddedCertificateName];
      if (v6)
      {
        v3 = 1;
      }

      else
      {
        v7 = [(MCEASAccountPayload *)self embeddedCertificatePassword];
        if (v7)
        {
          v3 = 1;
        }

        else
        {
          v8 = [(MCEASAccountPayload *)self certificateUUID];
          if (v8)
          {
            v3 = 1;
          }

          else
          {
            v3 = [(MCEASAccountPayload *)self hasCertificate];
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)mustNotUseSynchronizableCredential
{
  v3 = [(MCEASAccountPayload *)self password];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MCEASAccountPayload *)self useOAuth];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (id)mailAccountIdentifiers
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

- (id)contactsAccountIdentifiers
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

- (id)calendarAccountIdentifiers
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