@interface MCGlobalEthernetPayload
+ (id)nonPrivateEAPKeys;
- (BOOL)_eapConfigIsValid:(id)valid error:(id *)error;
- (BOOL)_payloadIsValid:(id)valid error:(id *)error;
- (MCGlobalEthernetPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_eapPasswordFromConfig:(id)config isRequired:(BOOL *)required;
- (id)_eapUsernameFromConfig:(id)config isRequired:(BOOL *)required;
- (id)eapSettingsSection;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCGlobalEthernetPayload

- (MCGlobalEthernetPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = MCGlobalEthernetPayload;
  v9 = [(MCPayload *)&v42 initWithDictionary:dictionaryCopy profile:profile outError:error];
  v10 = v9;
  if (v9)
  {
    v41 = 0;
    [(MCGlobalEthernetPayload *)v9 _payloadIsValid:dictionaryCopy error:&v41];
    v11 = v41;
    if (v11)
    {
      v12 = v11;
      v13 = 0;
    }

    else
    {
      v40 = 0;
      v13 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPClientConfiguration" isRequired:1 outError:&v40];
      v12 = v40;
      if (!v12)
      {
        if (v13)
        {
          v39 = 0;
          v14 = [(MCGlobalEthernetPayload *)v10 _eapConfigIsValid:v13 error:&v39];
          v12 = v39;
          if (v14)
          {
            v15 = [(MCGlobalEthernetPayload *)v10 _eapUsernameFromConfig:v13 isRequired:&v10->_usernameRequired];
            username = v10->_username;
            v10->_username = v15;

            v17 = [(MCGlobalEthernetPayload *)v10 _eapPasswordFromConfig:v13 isRequired:&v10->_passwordRequired];
            password = v10->_password;
            v10->_password = v17;

            v19 = [v13 mutableCopy];
            v20 = [v13 objectForKey:@"AcceptEAPTypes"];
            eapTypes = v10->_eapTypes;
            v10->_eapTypes = v20;

            v38 = v12;
            v22 = [v19 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PayloadCertificateAnchorUUID" isRequired:0 outError:&v38];
            v23 = v38;

            payloadCertificateAnchorUUIDs = v10->_payloadCertificateAnchorUUIDs;
            v10->_payloadCertificateAnchorUUIDs = v22;

            if (v23)
            {
              v12 = v23;
            }

            else
            {
              v37 = 0;
              v25 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"PayloadCertificateUUID" isRequired:0 outError:&v37];
              v12 = v37;
              certificateUUID = v10->_certificateUUID;
              v10->_certificateUUID = v25;

              if (!v12)
              {
                objc_storeStrong(&v10->_eapClientConfiguration, v19);
              }
            }
          }
        }
      }

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v27 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v28 = v27;
    if (error)
    {
      v29 = v27;
      *error = v28;
    }

    v30 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = v32;
      mCVerboseDescription = [v28 MCVerboseDescription];
      *buf = 138543618;
      v44 = v32;
      v45 = 2114;
      v46 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
LABEL_18:
    v10 = v10;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_payloadIsValid:(id)valid error:(id *)error
{
  validCopy = valid;
  v7 = [validCopy mutableCopy];
  v8 = [v7 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Interface" isRequired:1 outError:error];
  interface = self->_interface;
  self->_interface = v8;

  if (!self->_interface || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(NSString *)self->_interface isEqualToString:@"GlobalEthernet"])
  {
    if (error)
    {
      v16 = [MCPayload badFieldValueErrorWithField:@"Interface"];
LABEL_10:
      v15 = v16;
      isSystemMode = 0;
      goto LABEL_11;
    }

LABEL_14:
    isSystemMode = 0;
    goto LABEL_15;
  }

  v10 = [validCopy objectForKey:@"SetupModes"];
  setupModes = self->_setupModes;
  self->_setupModes = v10;

  v12 = self->_setupModes;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v16 = [MCPayload badFieldTypeErrorWithField:@"SetupModes"];
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  self->_isSystemMode = 0;
  v13 = self->_setupModes;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__MCGlobalEthernetPayload__payloadIsValid_error___block_invoke;
  v18[3] = &unk_1E77D25F8;
  v18[4] = self;
  [(NSArray *)v13 enumerateObjectsUsingBlock:v18];
  isSystemMode = self->_isSystemMode;
  if (error && !isSystemMode)
  {
    v15 = [MCPayload badFieldValueErrorWithField:@"SetupModes"];
LABEL_11:
    *error = v15;
  }

LABEL_15:

  return isSystemMode;
}

void __49__MCGlobalEthernetPayload__payloadIsValid_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isEqualToString:@"System"])
  {
    *(*(a1 + 32) + 90) = 1;
    *a4 = 1;
  }
}

- (id)_eapUsernameFromConfig:(id)config isRequired:(BOOL *)required
{
  configCopy = config;
  v6 = configCopy;
  if (configCopy)
  {
    v7 = [configCopy objectForKey:@"AcceptEAPTypes"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:13];
      v9 = [v7 containsObject:v8];

      if (required)
      {
        if ((v9 & 1) == 0)
        {
          *required = 1;
        }
      }
    }

    v10 = [v6 objectForKey:@"UserName"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_eapPasswordFromConfig:(id)config isRequired:(BOOL *)required
{
  configCopy = config;
  v6 = configCopy;
  if (configCopy)
  {
    v7 = [configCopy objectForKey:@"AcceptEAPTypes"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:13];
      v9 = [v7 containsObject:v8];

      if (required)
      {
        if ((v9 & 1) == 0)
        {
          *required = 1;
        }
      }
    }

    v10 = [v6 objectForKey:@"UserPassword"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_eapConfigIsValid:(id)valid error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = [valid mutableCopy];
  v64 = 0;
  v7 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserName" isRequired:0 outError:&v64];
  v8 = v64;
  if (v8 || (v63 = 0, v9 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserPassword" isRequired:0 outError:&v63], (v8 = v63) != 0))
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
LABEL_4:
    v13 = 0;
LABEL_5:
    v14 = 0;
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v62 = 0;
  v12 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"AcceptEAPTypes" isRequired:1 outError:&v62];
  v19 = v62;
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1AA5998];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = v12;
  v21 = [v12 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v59;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v59 != v23)
        {
          objc_enumerationMutation(v12);
        }

        if (![v20 containsObject:*(*(&v58 + 1) + 8 * i)])
        {
          v10 = [MCPayload badFieldValueErrorWithField:@"AcceptEAPTypes"];

          v15 = 0;
          v14 = 0;
          v13 = 0;
          goto LABEL_27;
        }
      }

      v22 = [v12 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v57 = 0;
  v25 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PayloadCertificateUUID" isRequired:0 outError:&v57];
  v19 = v57;
  if (v19)
  {
    goto LABEL_11;
  }

  v56 = 0;
  v26 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"TLSTrustedCertificates" isRequired:0 outError:&v56];
  v19 = v56;
  if (v19 || (v55 = 0, v27 = [v6 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"TLSTrustedServerNames" isRequired:0 outError:&v55], (v19 = v55) != 0) || (v54 = 0, v28 = objc_msgSend(v6, "MCValidateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"TLSCertificateIsRequired", 0, &v54), (v19 = v54) != 0))
  {
LABEL_11:
    v10 = v19;
    v11 = 0;
    goto LABEL_4;
  }

  v53 = 0;
  v13 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TTLSInnerAuthentication" isRequired:0 outError:&v53];
  v29 = v53;
  if (v29)
  {
    v10 = v29;
    v11 = 0;
    goto LABEL_5;
  }

  if (v13)
  {
    v33 = MEMORY[0x1E695DFD8];
    v70[0] = @"PAP";
    v70[1] = @"CHAP";
    v70[2] = @"MSCHAP";
    v70[3] = @"MSCHAPv2";
    v70[4] = @"EAP";
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:5];
    v35 = [v33 setWithArray:v34];

    if (![v35 containsObject:v13])
    {
      v10 = [MCPayload badFieldValueErrorWithField:@"TTLSInnerAuthentication"];

      v15 = 0;
      v14 = 0;
      goto LABEL_27;
    }
  }

  v52 = 0;
  v14 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TLSMinimumVersion" isRequired:0 outError:&v52];
  v36 = v52;
  if (v36)
  {
    v10 = v36;
    v11 = 0;
    goto LABEL_6;
  }

  v51 = 0;
  v15 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TLSMaximumVersion" isRequired:0 outError:&v51];
  v37 = v51;
  if (v37)
  {
LABEL_52:
    v10 = v37;
    goto LABEL_28;
  }

  if (v14 | v15)
  {
    v69[0] = @"1.0";
    v69[1] = @"1.1";
    v69[2] = @"1.2";
    v69[3] = @"1.3";
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
    v46 = [MEMORY[0x1E695DFD8] setWithArray:?];
    if (v14 && ([v46 containsObject:v14] & 1) == 0)
    {
      v43 = @"TLSMinimumVersion";
    }

    else
    {
      if (!v15)
      {
LABEL_48:

        goto LABEL_49;
      }

      if ([v46 containsObject:v15])
      {
        if (v14)
        {
          v45 = [v38 indexOfObject:v14];
          if (v45 > [v38 indexOfObject:v15])
          {
            v39 = [MCPayload conflictingFieldValueErrorWithUnderlyingError:0, @"TLSMinimumVersion", @"TLSMaximumVersion", v14, v15, 0];
LABEL_56:
            v10 = v39;

            goto LABEL_27;
          }
        }

        goto LABEL_48;
      }

      v43 = @"TLSMaximumVersion";
    }

    v39 = [MCPayload badFieldValueErrorWithField:v43];
    goto LABEL_56;
  }

LABEL_49:
  v50 = 0;
  v40 = [v6 MCValidateAndRemoveNonZeroLengthStringWithKey:@"OuterIdentity" isRequired:0 outError:&v50];
  v37 = v50;
  if (v37)
  {
    goto LABEL_52;
  }

  v49 = 0;
  v41 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPFASTUsePAC" isRequired:0 outError:&v49];
  v37 = v49;
  if (v37)
  {
    goto LABEL_52;
  }

  v48 = 0;
  v42 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPFASTProvisionPAC" isRequired:0 outError:&v48];
  v37 = v48;
  if (v37)
  {
    goto LABEL_52;
  }

  v47 = 0;
  v44 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EAPFASTProvisionPACAnonymously" isRequired:0 outError:&v47];
  v10 = v47;
LABEL_27:
  if (v10)
  {
LABEL_28:
    v11 = 0;
    goto LABEL_7;
  }

  if ([v6 count])
  {
    v30 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      friendlyName = [(MCPayload *)self friendlyName];
      *buf = 138543618;
      v66 = friendlyName;
      v67 = 2114;
      v68 = v6;
      _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_DEFAULT, "Payload “%{public}@” contains unexpected fields in EAP Configuration. They are: %{public}@", buf, 0x16u);
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_7:
  if (error)
  {
    v16 = v10;
    *error = v10;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)stubDictionary
{
  v17.receiver = self;
  v17.super_class = MCGlobalEthernetPayload;
  stubDictionary = [(MCPayload *)&v17 stubDictionary];
  v4 = stubDictionary;
  interface = self->_interface;
  if (interface)
  {
    [stubDictionary setObject:interface forKey:@"Interface"];
  }

  setupModes = self->_setupModes;
  if (setupModes)
  {
    [v4 setObject:setupModes forKey:@"SetupModes"];
  }

  certificateUUID = self->_certificateUUID;
  if (certificateUUID)
  {
    [v4 setObject:certificateUUID forKey:@"PayloadCertificateUUID"];
  }

  eapClientConfiguration = self->_eapClientConfiguration;
  if (eapClientConfiguration)
  {
    v9 = [(NSDictionary *)eapClientConfiguration mutableCopy];
    v10 = v9;
    payloadCertificateAnchorUUIDs = self->_payloadCertificateAnchorUUIDs;
    if (payloadCertificateAnchorUUIDs)
    {
      [v9 setObject:payloadCertificateAnchorUUIDs forKeyedSubscript:@"PayloadCertificateAnchorUUID"];
    }

    v12 = self->_eapClientConfiguration;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__MCGlobalEthernetPayload_stubDictionary__block_invoke;
    v15[3] = &unk_1E77D2318;
    v16 = v10;
    v13 = v10;
    [(NSDictionary *)v12 enumerateKeysAndObjectsUsingBlock:v15];
    [v4 setObject:v13 forKeyedSubscript:@"EAPClientConfiguration"];
  }

  return v4;
}

void __41__MCGlobalEthernetPayload_stubDictionary__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[MCGlobalEthernetPayload nonPrivateEAPKeys];
  v4 = [v3 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setObject:@"(present)" forKeyedSubscript:v5];
  }
}

+ (id)nonPrivateEAPKeys
{
  if (nonPrivateEAPKeys_onceToken != -1)
  {
    +[MCGlobalEthernetPayload nonPrivateEAPKeys];
  }

  v3 = nonPrivateEAPKeys_keys;

  return v3;
}

void __44__MCGlobalEthernetPayload_nonPrivateEAPKeys__block_invoke()
{
  v5[11] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"AcceptEAPTypes";
  v5[1] = @"PayloadCertificateAnchorUUID";
  v5[2] = @"TLSTrustedCertificates";
  v5[3] = @"TLSTrustedServerNames";
  v5[4] = @"TLSCertificateIsRequired";
  v5[5] = @"TTLSInnerAuthentication";
  v5[6] = @"TLSMinimumVersion";
  v5[7] = @"TLSMaximumVersion";
  v5[8] = @"EAPFASTUsePAC";
  v5[9] = @"EAPFASTProvisionPAC";
  v5[10] = @"EAPFASTProvisionPACAnonymously";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:11];
  v2 = [v0 setWithArray:v1];
  v3 = nonPrivateEAPKeys_keys;
  nonPrivateEAPKeys_keys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)eapSettingsSection
{
  v3 = objc_opt_new();
  v4 = [(NSDictionary *)self->_eapClientConfiguration objectForKey:@"UserName"];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MCKeyValue alloc];
    v7 = MCLocalizedString(@"PRESENT");
    v8 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_USERNAME");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:v7 localizedKey:v8];

    [v3 addObject:v9];
  }

  v10 = [(NSDictionary *)self->_eapClientConfiguration objectForKey:@"UserPassword"];

  if (v10 && [v10 length])
  {
    v11 = [MCKeyValue alloc];
    v12 = MCLocalizedString(@"PRESENT");
    v13 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_PASSWORD");
    v14 = [(MCKeyValue *)v11 initWithLocalizedString:v12 localizedKey:v13];

    [v3 addObject:v14];
  }

  certificateUUID = [(MCGlobalEthernetPayload *)self certificateUUID];

  if (certificateUUID)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedString(@"PRESENT");
    v18 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_IDENTITY");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  payloadCertificateAnchorUUIDs = [(MCGlobalEthernetPayload *)self payloadCertificateAnchorUUIDs];
  v21 = [payloadCertificateAnchorUUIDs count];

  if (v21)
  {
    v22 = [MCKeyValue alloc];
    v23 = MCLocalizedString(@"PRESENT");
    v24 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_TRUSTED_SERVER_CERTS");
    v25 = [(MCKeyValue *)v22 initWithLocalizedString:v23 localizedKey:v24];

    [v3 addObject:v25];
  }

  v26 = [(NSDictionary *)self->_eapClientConfiguration objectForKey:@"TLSTrustedServerNames"];
  if ([v26 count])
  {
    v27 = [MCKeyValue alloc];
    v28 = MCLocalizedString(@"PRESENT");
    v29 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_TRUSTED_SERVER_NAMES");
    v30 = [(MCKeyValue *)v27 initWithLocalizedString:v28 localizedKey:v29];

    [v3 addObject:v30];
  }

  v31 = [(NSDictionary *)self->_eapClientConfiguration objectForKey:@"TLSMinimumVersion"];
  if (v31)
  {
    v32 = [MCKeyValue alloc];
    v33 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_TLS_MIN_VERSION");
    v34 = [(MCKeyValue *)v32 initWithLocalizedString:v31 localizedKey:v33];

    [v3 addObject:v34];
  }

  v35 = [(NSDictionary *)self->_eapClientConfiguration objectForKey:@"TLSMaximumVersion"];

  if (v35)
  {
    v36 = [MCKeyValue alloc];
    v37 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_TLS_MAX_VERSION");
    v38 = [(MCKeyValue *)v36 initWithLocalizedString:v35 localizedKey:v37];

    [v3 addObject:v38];
  }

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if ([(MCGlobalEthernetPayload *)self isSystemMode])
  {
    v5 = [MCKeyValue alloc];
    v6 = MCLocalizedString(@"GLOBAL_ETHERNET_SETUP_MODE");
    v7 = [(MCKeyValue *)v5 initWithLocalizedString:@"System" localizedKey:v6];

    [v4 addObject:v7];
  }

  eapClientConfiguration = self->_eapClientConfiguration;
  if (eapClientConfiguration)
  {
    allKeys = [(NSDictionary *)eapClientConfiguration allKeys];
    v10 = [allKeys count];

    if (v10)
    {
      eapSettingsSection = [(MCGlobalEthernetPayload *)self eapSettingsSection];
      if ([eapSettingsSection count])
      {
        [v4 addObjectsFromArray:eapSettingsSection];
      }
    }
  }

  if ([v4 count])
  {
    v12 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v12];
  }

  eapTypes = [(MCGlobalEthernetPayload *)self eapTypes];
  v14 = [eapTypes count];

  if (v14)
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    eapTypes2 = [(MCGlobalEthernetPayload *)self eapTypes];
    v17 = [eapTypes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = *v28;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(eapTypes2);
        }

        intValue = [*(*(&v27 + 1) + 8 * i) intValue];
        if (intValue <= 20)
        {
          v22 = @"EAP-TLS";
          if (intValue == 13)
          {
            goto LABEL_27;
          }

          if (intValue == 17)
          {
            v22 = @"LEAP";
            goto LABEL_27;
          }
        }

        else
        {
          switch(intValue)
          {
            case 21:
              v22 = @"EAP-TTLS";
              goto LABEL_27;
            case 43:
              v22 = @"EAP-FAST";
              goto LABEL_27;
            case 25:
              v22 = @"PEAP";
              goto LABEL_27;
          }
        }

        v22 = @"Unknown";
LABEL_27:
        [array addObject:v22];
      }

      v18 = [eapTypes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v18)
      {
LABEL_29:

        v23 = MCLocalizedString(@"GLOBAL_ETHERNET_EAP_TYPES");
        v24 = [MCKeyValueSection sectionWithLocalizedArray:array title:v23 footer:0];

        [v3 addObject:v24];
        break;
      }
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = MCGlobalEthernetPayload;
  verboseDescription = [(MCPayload *)&v15 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if ([(MCGlobalEthernetPayload *)self isSystemMode])
  {
    [v5 appendString:@"Setup Mode : System\n"];
  }

  interface = [(MCGlobalEthernetPayload *)self interface];

  if (interface)
  {
    interface2 = [(MCGlobalEthernetPayload *)self interface];
    [v5 appendFormat:@"Interface : %@\n", interface2];
  }

  displayName = [(MCPayload *)self displayName];

  if (displayName)
  {
    displayName2 = [(MCPayload *)self displayName];
    [v5 appendFormat:@"Display Name : %@\n", displayName2];
  }

  v10 = [(MCPayload *)self description];

  if (v10)
  {
    v11 = [(MCPayload *)self description];
    [v5 appendFormat:@"Description: %@\n", v11];
  }

  eapClientConfiguration = [(MCGlobalEthernetPayload *)self eapClientConfiguration];

  if (eapClientConfiguration)
  {
    eapClientConfiguration2 = [(MCGlobalEthernetPayload *)self eapClientConfiguration];
    [v5 appendFormat:@"EAP Configuration : %@\n", eapClientConfiguration2];
  }

  return v5;
}

@end