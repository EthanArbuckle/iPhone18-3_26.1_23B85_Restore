@interface MCEmailAccountPayloadBase
- (BOOL)containsSensitiveUserInformation;
- (MCEmailAccountPayloadBase)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
- (void)addSMIMEEncryptionPayloadKeysTo:(id)a3;
@end

@implementation MCEmailAccountPayloadBase

- (MCEmailAccountPayloadBase)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v80.receiver = self;
  v80.super_class = MCEmailAccountPayloadBase;
  v9 = [(MCPayload *)&v80 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    v79 = 0;
    v10 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"PreventMove" isRequired:0 outError:&v79];
    v11 = v79;
    preventMoveNum = v9->_preventMoveNum;
    v9->_preventMoveNum = v10;

    if (!v11)
    {
      v9->_preventMove = [(NSNumber *)v9->_preventMoveNum BOOLValue];
      v78 = 0;
      v13 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"PreventAppSheet" isRequired:0 outError:&v78];
      v11 = v78;
      preventAppSheetNum = v9->_preventAppSheetNum;
      v9->_preventAppSheetNum = v13;

      if (!v11)
      {
        v9->_preventAppSheet = [(NSNumber *)v9->_preventAppSheetNum BOOLValue];
        v77 = 0;
        v15 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMESigningEnabled" isRequired:0 outError:&v77];
        v11 = v77;
        SMIMESigningEnabled = v9->_SMIMESigningEnabled;
        v9->_SMIMESigningEnabled = v15;

        if (!v11)
        {
          v76 = 0;
          v17 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMESigningUserOverrideable" isRequired:0 outError:&v76];
          v11 = v76;
          v9->_SMIMESigningUserOverrideable = [v17 BOOLValue];

          if (!v11)
          {
            v75 = 0;
            v18 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEncryptByDefault" isRequired:0 outError:&v75];
            v11 = v75;
            SMIMEEncryptionEnabled = v9->_SMIMEEncryptionEnabled;
            v9->_SMIMEEncryptionEnabled = v18;

            if (!v11)
            {
              v74 = 0;
              v11 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEncryptionEnabled" isRequired:0 outError:&v74];
              v20 = v74;
              if (v20)
              {
                v21 = v20;
              }

              else
              {
                if (!v9->_SMIMEEncryptionEnabled)
                {
                  objc_storeStrong(&v9->_SMIMEEncryptionEnabled, v11);
                }

                v73 = 0;
                v58 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEncryptByDefaultUserOverrideable" isRequired:0 outError:&v73];
                v21 = v73;
                v9->_SMIMEEncryptByDefaultUserOverrideable = [v58 BOOLValue];

                if (!v21)
                {
                  v72 = 0;
                  v59 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"disableMailRecentsSyncing" isRequired:0 outError:&v72];
                  v21 = v72;
                  isRecentsSyncingDisabledNum = v9->_isRecentsSyncingDisabledNum;
                  v9->_isRecentsSyncingDisabledNum = v59;

                  if (!v21)
                  {
                    v9->_isRecentsSyncingDisabled = [(NSNumber *)v9->_isRecentsSyncingDisabledNum BOOLValue];
                    v71 = 0;
                    v60 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"allowMailDrop" isRequired:0 outError:&v71];
                    v21 = v71;
                    isMailDropEnabledNum = v9->_isMailDropEnabledNum;
                    v9->_isMailDropEnabledNum = v60;

                    if (!v21)
                    {
                      v9->_isMailDropEnabled = [(NSNumber *)v9->_isMailDropEnabledNum BOOLValue];
                      v70 = 0;
                      v24 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v70];
                      v21 = v70;
                      VPNUUID = v9->_VPNUUID;
                      v9->_VPNUUID = v24;

                      if (!v21)
                      {
                        v69 = 0;
                        v26 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEnableEncryptionPerMessageSwitch" isRequired:0 outError:&v69];
                        v27 = v69;
                        SMIMEPerMessageSwitchEnabledNum = v9->_SMIMEPerMessageSwitchEnabledNum;
                        v9->_SMIMEPerMessageSwitchEnabledNum = v26;

                        if (!v27)
                        {
                          v68 = 0;
                          v29 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEnablePerMessageSwitch" isRequired:0 outError:&v68];
                          v30 = v68;
                          if (v30)
                          {
                            v27 = v30;
                          }

                          else
                          {
                            v31 = v9->_SMIMEPerMessageSwitchEnabledNum;
                            if (!v31)
                            {
                              objc_storeStrong(&v9->_SMIMEPerMessageSwitchEnabledNum, v29);
                              v31 = v9->_SMIMEPerMessageSwitchEnabledNum;
                            }

                            v9->_SMIMEPerMessageSwitchEnabled = [(NSNumber *)v31 BOOLValue];
                            v67 = 0;
                            v32 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMESigningCertificateUUIDUserOverrideable" isRequired:0 outError:&v67];
                            v33 = v67;
                            v9->_SMIMESigningIdentityUserOverrideable = [v32 BOOLValue];

                            if (!v33)
                            {
                              v66 = 0;
                              v34 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEncryptionCertificateUUIDUserOverrideable" isRequired:0 outError:&v66];
                              v33 = v66;
                              v9->_SMIMEEncryptionIdentityUserOverrideable = [v34 BOOLValue];

                              if (!v33)
                              {
                                v44 = [(MCPayload *)v9 profile];
                                v45 = [v44 isStub];

                                if (v45)
                                {
                                  v65 = 0;
                                  v46 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEnabled" isRequired:0 outError:&v65];
                                  v33 = v65;
                                  SMIMEEnabledNum = v9->_SMIMEEnabledNum;
                                  v9->_SMIMEEnabledNum = v46;

                                  if (!v33)
                                  {
                                    v9->_SMIMEEnabled = [(NSNumber *)v9->_SMIMEEnabledNum BOOLValue];
                                    v64 = 0;
                                    v48 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMESigningIdentityPersistentID" isRequired:0 outError:&v64];
                                    v33 = v64;
                                    SMIMESigningIdentityPersistentID = v9->_SMIMESigningIdentityPersistentID;
                                    v9->_SMIMESigningIdentityPersistentID = v48;

                                    if (!v33)
                                    {
                                      v63 = 0;
                                      v50 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SMIMEEncryptionIdentityPersistentID" isRequired:0 outError:&v63];
                                      v33 = v63;
                                      SMIMEEncryptionIdentityPersistentID = v9->_SMIMEEncryptionIdentityPersistentID;
                                      v9->_SMIMEEncryptionIdentityPersistentID = v50;

                                      if (!v33)
                                      {
LABEL_31:

                                        goto LABEL_32;
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  v62 = 0;
                                  v52 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SMIMESigningCertificateUUID" isRequired:0 outError:&v62];
                                  v33 = v62;
                                  SMIMESigningIdentityUUID = v9->_SMIMESigningIdentityUUID;
                                  v9->_SMIMESigningIdentityUUID = v52;

                                  if (!v33)
                                  {
                                    v61 = 0;
                                    v54 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SMIMEEncryptionCertificateUUID" isRequired:0 outError:&v61];
                                    v33 = v61;
                                    SMIMEEncryptionIdentityUUID = v9->_SMIMEEncryptionIdentityUUID;
                                    v56 = 136;
                                    v9->_SMIMEEncryptionIdentityUUID = v54;

                                    if (!v33)
                                    {
                                      if (v9->_SMIMEEncryptionIdentityUUID && !v9->_SMIMEEncryptionEnabled)
                                      {
                                        v9->_SMIMEEncryptionEnabled = MEMORY[0x1E695E118];
                                      }

                                      if ([(NSNumber *)v9->_SMIMESigningEnabled BOOLValue]|| [(NSNumber *)v9->_SMIMEEncryptionEnabled BOOLValue]|| v9->_SMIMESigningIdentityUUID || *(&v9->super.super.isa + v57) || v9->_SMIMESigningUserOverrideable || v9->_SMIMESigningIdentityUserOverrideable || v9->_SMIMEEncryptionIdentityUserOverrideable || v9->_SMIMEEncryptByDefaultUserOverrideable)
                                      {
                                        v9->_SMIMEEnabled = 1;
                                      }

                                      goto LABEL_31;
                                    }
                                  }
                                }
                              }
                            }

                            v27 = v33;
                          }
                        }

                        v21 = v27;
                      }
                    }
                  }
                }
              }

              v11 = v21;
            }
          }
        }
      }
    }

    v35 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11, v56];
    v29 = v35;
    if (a5)
    {
      v36 = v35;
      *a5 = v29;
    }

    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = objc_opt_class();
      v40 = v39;
      v41 = [v29 MCVerboseDescription];
      *buf = 138543618;
      v82 = v39;
      v83 = 2114;
      v84 = v41;
      _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_31;
  }

LABEL_32:

  v42 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCEmailAccountPayloadBase;
  v3 = [(MCPayload *)&v15 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_preventMove];
  [v3 setObject:v4 forKey:@"PreventMove"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_preventAppSheet];
  [v3 setObject:v5 forKey:@"PreventAppSheet"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMEEnabled];
  [v3 setObject:v6 forKey:@"SMIMEEnabled"];

  [v3 MCSetObjectIfNotNil:self->_SMIMESigningEnabled forKey:@"SMIMESigningEnabled"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMESigningUserOverrideable];
  [v3 setObject:v7 forKeyedSubscript:@"SMIMESigningUserOverrideable"];

  [v3 MCSetObjectIfNotNil:self->_SMIMEEncryptionEnabled forKey:@"SMIMEEncryptionEnabled"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRecentsSyncingDisabled];
  [v3 setObject:v8 forKey:@"disableMailRecentsSyncing"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMailDropEnabled];
  [v3 setObject:v9 forKey:@"allowMailDrop"];

  [v3 MCSetObjectIfNotNil:self->_VPNUUID forKey:@"VPNUUID"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMEPerMessageSwitchEnabled];
  [v3 setObject:v10 forKeyedSubscript:@"SMIMEEnablePerMessageSwitch"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMEEncryptByDefaultUserOverrideable];
  [v3 setObject:v11 forKeyedSubscript:@"SMIMEEncryptByDefaultUserOverrideable"];

  [v3 MCSetObjectIfNotNil:self->_SMIMESigningIdentityPersistentID forKey:@"SMIMESigningIdentityPersistentID"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMESigningIdentityUserOverrideable];
  [v3 setObject:v12 forKeyedSubscript:@"SMIMESigningCertificateUUIDUserOverrideable"];

  [v3 MCSetObjectIfNotNil:self->_SMIMEEncryptionIdentityPersistentID forKey:@"SMIMEEncryptionIdentityPersistentID"];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_SMIMEEncryptionIdentityUserOverrideable];
  [v3 setObject:v13 forKeyedSubscript:@"SMIMEEncryptionCertificateUUIDUserOverrideable"];

  return v3;
}

- (id)verboseDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v14.receiver = self;
  v14.super_class = MCEmailAccountPayloadBase;
  v4 = [(MCPayload *)&v14 verboseDescription];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  v6 = [(MCPayload *)self profile];
  v7 = [v6 isStub];

  if ((v7 & 1) == 0)
  {
    if (self->_preventMove)
    {
      [v5 appendFormat:@"Prevent Move             : Yes\n"];
    }

    if (self->_preventAppSheet)
    {
      [v5 appendFormat:@"Prevent App Sheet        : Yes\n"];
    }

    if (self->_isRecentsSyncingDisabled)
    {
      [v5 appendFormat:@"Recents sync disabled    : Yes\n"];
    }

    if (self->_isMailDropEnabled)
    {
      [v5 appendFormat:@"Mail Drop enabled        : Yes\n"];
    }

    if (self->_VPNUUID)
    {
      [v5 appendFormat:@"VPNUUID                  : %@\n", self->_VPNUUID];
    }

    v8 = self->_SMIMESigningEnabled || self->_SMIMESigningUserOverrideable || self->_SMIMESigningIdentityUUID || self->_SMIMESigningIdentityPersistentID || self->_SMIMESigningIdentityUserOverrideable;
    if (self->_SMIMEEnabled)
    {
      [v5 appendFormat:@"S/MIME\n"];
      if (self->_SMIMEEnabled)
      {
        [v5 appendFormat:@"  Enabled: Yes\n"];
      }
    }

    if (v8)
    {
      [v5 appendFormat:@"  Signing\n"];
    }

    SMIMESigningEnabled = self->_SMIMESigningEnabled;
    if (SMIMESigningEnabled)
    {
      if ([(NSNumber *)SMIMESigningEnabled BOOLValue])
      {
        v10 = @"Yes";
      }

      else
      {
        v10 = @"No";
      }

      [v5 appendFormat:@"    Enabled               : %@\n", v10];
    }

    if (self->_SMIMESigningUserOverrideable)
    {
      [v5 appendFormat:@"    User Overrideable     : Enabled\n"];
    }

    if (self->_SMIMESigningIdentityUUID)
    {
      [v5 appendFormat:@"    Cert                  : %@\n", self->_SMIMESigningIdentityUUID];
    }

    if (self->_SMIMESigningIdentityPersistentID)
    {
      [v5 appendFormat:@"    Cert                  : Present\n"];
    }

    if (self->_SMIMESigningIdentityUserOverrideable)
    {
      [v5 appendFormat:@"    Cert User Overrideable: Enabled\n"];
    }

    if ([(NSNumber *)self->_SMIMEEncryptionEnabled BOOLValue]|| self->_SMIMEEncryptionIdentityUUID || self->_SMIMEEncryptionIdentityPersistentID || self->_SMIMEEncryptionIdentityUserOverrideable || self->_SMIMEPerMessageSwitchEnabled || self->_SMIMEEncryptByDefaultUserOverrideable)
    {
      [v5 appendFormat:@"  Encryption\n"];
    }

    SMIMEEncryptionEnabled = self->_SMIMEEncryptionEnabled;
    if (SMIMEEncryptionEnabled)
    {
      if ([(NSNumber *)SMIMEEncryptionEnabled BOOLValue])
      {
        v12 = @"Yes";
      }

      else
      {
        v12 = @"No";
      }

      [v5 appendFormat:@"    On by Default            : %@\n", v12];
    }

    if (self->_SMIMEEncryptByDefaultUserOverrideable)
    {
      [v5 appendFormat:@"    Default user overrideable: Yes\n"];
    }

    if (self->_SMIMEEncryptionIdentityUUID)
    {
      [v5 appendFormat:@"    Cert                     : %@\n", self->_SMIMEEncryptionIdentityUUID];
    }

    if (self->_SMIMEEncryptionIdentityPersistentID)
    {
      [v5 appendFormat:@"    Cert                     : Present\n"];
    }

    if (self->_SMIMEEncryptionIdentityUserOverrideable)
    {
      [v5 appendFormat:@"    Cert User Overrideable   : Enabled\n"];
    }

    if (self->_SMIMEPerMessageSwitchEnabled)
    {
      [v5 appendFormat:@"    Per-message switch       : Enabled\n"];
    }
  }

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self->_preventMoveNum)
  {
    v5 = [MCKeyValue alloc];
    v6 = MCLocalizedStringForBool([(NSNumber *)self->_preventMoveNum BOOLValue]);
    v7 = MCLocalizedString(@"EMAIL_ACCOUNT_PREVENT_MOVE");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:v6 localizedKey:v7];
    [v4 addObject:v8];
  }

  if (self->_preventAppSheetNum)
  {
    v9 = [MCKeyValue alloc];
    v10 = MCLocalizedStringForBool([(NSNumber *)self->_preventAppSheetNum BOOLValue]);
    v11 = MCLocalizedString(@"EMAIL_ACCOUNT_PREVENT_APP_SHEET");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:v10 localizedKey:v11];
    [v4 addObject:v12];
  }

  if (self->_isRecentsSyncingDisabledNum)
  {
    v13 = [MCKeyValue alloc];
    v14 = MCLocalizedStringForBool([(NSNumber *)self->_isRecentsSyncingDisabledNum BOOLValue]);
    v15 = MCLocalizedString(@"EMAIL_ACCOUNT_RECENTS_SYNC_DISABLED");
    v16 = [(MCKeyValue *)v13 initWithLocalizedString:v14 localizedKey:v15];
    [v4 addObject:v16];
  }

  if (self->_isMailDropEnabledNum)
  {
    v17 = [MCKeyValue alloc];
    v18 = MCLocalizedStringForBool([(NSNumber *)self->_isMailDropEnabledNum BOOLValue]);
    v19 = MCLocalizedString(@"EMAIL_ACCOUNT_MAIL_DROP_ENABLED");
    v20 = [(MCKeyValue *)v17 initWithLocalizedString:v18 localizedKey:v19];
    [v4 addObject:v20];
  }

  if (self->_VPNUUID)
  {
    v21 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v23 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v24 = [(MCKeyValue *)v21 initWithLocalizedString:VPNUUID localizedKey:v23];

    [v4 addObject:v24];
  }

  if ([v4 count])
  {
    v25 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v25];

    v26 = objc_opt_new();
    v4 = v26;
  }

  if (self->_SMIMEEnabledNum)
  {
    v27 = [MCKeyValue alloc];
    v28 = MCLocalizedStringForBool([(NSNumber *)self->_SMIMEEnabledNum BOOLValue]);
    v29 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENABLED");
    v30 = [(MCKeyValue *)v27 initWithLocalizedString:v28 localizedKey:v29];
    [v4 addObject:v30];
  }

  if (self->_SMIMESigningEnabled)
  {
    v31 = [MCKeyValue alloc];
    v32 = MCLocalizedStringForBool([(NSNumber *)self->_SMIMESigningEnabled BOOLValue]);
    v33 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_SIGNING_ENABLED");
    v34 = [(MCKeyValue *)v31 initWithLocalizedString:v32 localizedKey:v33];
    [v4 addObject:v34];
  }

  if (self->_SMIMESigningUserOverrideable)
  {
    v35 = [MCKeyValue alloc];
    v36 = MCLocalizedStringForBool(self->_SMIMESigningUserOverrideable);
    v37 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_SIGNING_USER_OVERRIDEABLE");
    v38 = [(MCKeyValue *)v35 initWithLocalizedString:v36 localizedKey:v37];
    [v4 addObject:v38];
  }

  if (self->_SMIMESigningIdentityPersistentID)
  {
    v39 = [(MCPayload *)self profile];
    v40 = [v39 subjectSummaryFromCertificateWithPersistentID:self->_SMIMESigningIdentityPersistentID];
  }

  else
  {
    if (!self->_SMIMESigningIdentityUUID)
    {
      goto LABEL_25;
    }

    v39 = [(MCPayload *)self profile];
    v40 = [v39 subjectSummaryFromCertificatePayloadWithUUID:self->_SMIMESigningIdentityUUID];
  }

  v41 = v40;

  if (v41)
  {
    v42 = [MCKeyValue alloc];
    v43 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_SIGNING_IDENTITY");
    v44 = [(MCKeyValue *)v42 initWithLocalizedString:v41 localizedKey:v43];

    [v4 addObject:v44];
  }

LABEL_25:
  if (self->_SMIMESigningIdentityUserOverrideable)
  {
    v45 = [MCKeyValue alloc];
    v46 = MCLocalizedStringForBool(self->_SMIMESigningIdentityUserOverrideable);
    v47 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_SIGNING_IDENTITY_USER_OVERRIDEABLE");
    v48 = [(MCKeyValue *)v45 initWithLocalizedString:v46 localizedKey:v47];
    [v4 addObject:v48];
  }

  [(MCEmailAccountPayloadBase *)self addSMIMEEncryptionPayloadKeysTo:v4];
  if ([v4 count])
  {
    v49 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v49];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (void)addSMIMEEncryptionPayloadKeysTo:(id)a3
{
  v34 = a3;
  v4 = [(NSNumber *)self->_SMIMEEncryptionEnabled BOOLValue];
  if (self->_SMIMEEncryptionIdentityPersistentID)
  {
    v5 = [(MCPayload *)self profile];
    v6 = [v5 subjectSummaryFromCertificateWithPersistentID:self->_SMIMEEncryptionIdentityPersistentID];
LABEL_5:
    v7 = v6;

    goto LABEL_6;
  }

  if (self->_SMIMEEncryptionIdentityUUID)
  {
    v5 = [(MCPayload *)self profile];
    v6 = [v5 subjectSummaryFromCertificatePayloadWithUUID:self->_SMIMEEncryptionIdentityUUID];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  if ((v4 & 1) == 0)
  {
    SMIMEPerMessageSwitchEnabled = self->_SMIMEPerMessageSwitchEnabled;
    if (!SMIMEPerMessageSwitchEnabled)
    {
      SMIMEEncryptByDefaultUserOverrideable = self->_SMIMEEncryptByDefaultUserOverrideable;
      if (!(self->_SMIMEEncryptionIdentityUUID | v7) && !SMIMEEncryptByDefaultUserOverrideable)
      {
        goto LABEL_29;
      }

      if (!SMIMEEncryptByDefaultUserOverrideable && !SMIMEPerMessageSwitchEnabled)
      {
        v30 = [MCKeyValue alloc];
        v31 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENCRYPTION_MISCONFIGURED_NOT_ENABLEABLE");
        v32 = @"EMAIL_ACCOUNT_SMIME_ENCRYPTION_ENABLED";
        goto LABEL_27;
      }
    }
  }

  if (!v7 && !self->_SMIMEEncryptionIdentityUserOverrideable)
  {
    v30 = [MCKeyValue alloc];
    v31 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENCRYPTION_MISCONFIGURED_IDENTITY");
    v32 = @"EMAIL_ACCOUNT_SMIME_ENCRYPTION_IDENTITY";
LABEL_27:
    v33 = MCLocalizedString(v32);
    v27 = [(MCKeyValue *)v30 initWithLocalizedString:v31 localizedKey:v33];

    [v34 addObject:v27];
    goto LABEL_28;
  }

  v10 = @"EMAIL_ACCOUNT_SMIME_ENCRYPT_BY_DEFAULT";
  if (!self->_SMIMEEncryptByDefaultUserOverrideable && !self->_SMIMEPerMessageSwitchEnabled)
  {
    v10 = @"EMAIL_ACCOUNT_SMIME_ENCRYPTION_ENABLED";
  }

  v11 = [MCKeyValue alloc];
  v12 = MCLocalizedStringForBool(v4);
  v13 = MCLocalizedString(v10);
  v14 = [(MCKeyValue *)v11 initWithLocalizedString:v12 localizedKey:v13];

  [v34 addObject:v14];
  if (self->_SMIMEEncryptByDefaultUserOverrideable)
  {
    v15 = [MCKeyValue alloc];
    v16 = MCLocalizedStringForBool(self->_SMIMEEncryptByDefaultUserOverrideable);
    v17 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENCRYPT_BY_DEFAULT_USER_OVERRIDEABLE");
    v18 = [(MCKeyValue *)v15 initWithLocalizedString:v16 localizedKey:v17];

    [v34 addObject:v18];
  }

  if (self->_SMIMEPerMessageSwitchEnabled)
  {
    v19 = [MCKeyValue alloc];
    v20 = MCLocalizedStringForBool(self->_SMIMEPerMessageSwitchEnabled);
    v21 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_PER_MESSAGE_SWITCH_ENABLED");
    v22 = [(MCKeyValue *)v19 initWithLocalizedString:v20 localizedKey:v21];

    [v34 addObject:v22];
  }

  if (v7)
  {
    v23 = [MCKeyValue alloc];
    v24 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENCRYPTION_IDENTITY");
    v25 = [(MCKeyValue *)v23 initWithLocalizedString:v7 localizedKey:v24];

    [v34 addObject:v25];
  }

  if (self->_SMIMEEncryptionIdentityUserOverrideable)
  {
    v26 = [MCKeyValue alloc];
    v27 = MCLocalizedStringForBool(self->_SMIMEEncryptionIdentityUserOverrideable);
    v28 = MCLocalizedString(@"EMAIL_ACCOUNT_SMIME_ENCRYPTION_IDENTITY_USER_OVERRIDEABLE");
    v29 = [(MCKeyValue *)v26 initWithLocalizedString:v27 localizedKey:v28];
    [v34 addObject:v29];

LABEL_28:
  }

LABEL_29:
}

- (BOOL)containsSensitiveUserInformation
{
  v9.receiver = self;
  v9.super_class = MCEmailAccountPayloadBase;
  if ([(MCPayload *)&v9 containsSensitiveUserInformation])
  {
    return 1;
  }

  v4 = [(MCEmailAccountPayloadBase *)self SMIMESigningIdentityUUID];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MCEmailAccountPayloadBase *)self SMIMEEncryptionIdentityUUID];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = [(MCEmailAccountPayloadBase *)self SMIMESigningIdentityPersistentID];
      if (v6)
      {
        v3 = 1;
      }

      else
      {
        v7 = [(MCEmailAccountPayloadBase *)self SMIMEEncryptionIdentityPersistentID];
        v3 = v7 != 0;
      }
    }
  }

  return v3;
}

@end