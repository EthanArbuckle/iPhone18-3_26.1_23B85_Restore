@interface MCChaperonePayload
+ (id)typeStrings;
- (MCChaperonePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)verboseDescription;
@end

@implementation MCChaperonePayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.chaperone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCChaperonePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v47.receiver = self;
  v47.super_class = MCChaperonePayload;
  v10 = [(MCPayload *)&v47 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10)
  {
    if ([v9 isStub])
    {
      v46 = 0;
      v11 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowNonChaperonePairing" isRequired:0 outError:&v46];
      v12 = v46;
      v13 = *(v10 + 13);
      *(v10 + 13) = v11;

      if (!v12)
      {
        *(v10 + 96) = [*(v10 + 13) BOOLValue];
        v45 = 0;
        v14 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"PairingCertificate" isRequired:0 outError:&v45];
        v12 = v45;
        v15 = *(v10 + 11);
        *(v10 + 11) = v14;

        if (!v12)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v16 = [v10 organization];
      v17 = [v16 length];

      if (v17)
      {
        v44 = 0;
        v18 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowNonChaperonePairing" isRequired:0 outError:&v44];
        v12 = v44;
        v19 = *(v10 + 13);
        *(v10 + 13) = v18;

        if (!v12)
        {
          *(v10 + 96) = [*(v10 + 13) BOOLValue];
          v43 = 0;
          v20 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"PairingCertificate" isRequired:1 outError:&v43];
          v12 = v43;
          v21 = *(v10 + 11);
          *(v10 + 11) = v20;

          if (!v12)
          {
            v22 = SecCertificateCreateWithData(0, *(v10 + 11));
            if (v22)
            {
              CFRelease(v22);
              goto LABEL_17;
            }

            v33 = MEMORY[0x1E696ABC0];
            v34 = [v10 friendlyName];
            v42 = MCErrorArray(@"CHAPERONE_BAD_CERT_DATA_P_PAYLOAD", v35, v36, v37, v38, v39, v40, v41, v34);
            v12 = [v33 MCErrorWithDomain:@"MCSupervisedErrorDomain" code:29003 descriptionArray:v42 errorType:@"MCFatalError"];

            if (!v12)
            {
              goto LABEL_17;
            }
          }
        }
      }

      else
      {
        v12 = [MCProfile missingFieldErrorWithField:@"PayloadOrganization"];
        if (!v12)
        {
          goto LABEL_17;
        }
      }
    }

    v23 = [v10 malformedPayloadErrorWithError:v12];
    v24 = v23;
    if (a5)
    {
      v25 = v23;
      *a5 = v24;
    }

    v26 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = v28;
      v30 = [v24 MCVerboseDescription];
      *buf = 138543618;
      v49 = v28;
      v50 = 2114;
      v51 = v30;
      _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

LABEL_17:

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCChaperonePayload;
  v3 = [(MCPayload *)&v8 stubDictionary];
  v4 = v3;
  pairingCertificateData = self->_pairingCertificateData;
  if (pairingCertificateData)
  {
    [v3 setObject:pairingCertificateData forKey:@"PairingCertificate"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_nonChaperonePairingAllowed];
  [v4 setObject:v6 forKey:@"AllowNonChaperonePairing"];

  return v4;
}

- (id)subtitle1Label
{
  v2 = [(MCPayload *)self organization];
  if (v2)
  {
    v3 = MCLocalizedString(@"CHAPERONE_DETAIL_ORG_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)subtitle2Description
{
  if (self->_nonChaperonePairingAllowed)
  {
    v2 = @"CHAPERONE_PAIRING_ALLOWED";
  }

  else
  {
    v2 = @"CHAPERONE_PAIRING_PROHIBITED";
  }

  v3 = MCLocalizedString(v2);

  return v3;
}

- (id)verboseDescription
{
  v8.receiver = self;
  v8.super_class = MCChaperonePayload;
  v3 = [(MCPayload *)&v8 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = MCStringForBool(self->_pairingCertificateData != 0);
  [v4 appendFormat:@"Pairing Cert present          : %@\n", v5];

  v6 = MCStringForBool(self->_nonChaperonePairingAllowed);
  [v4 appendFormat:@"Non-Supervised pairing allowed: %@\n", v6];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MCPayload *)self organization];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    v7 = [(MCPayload *)self organization];
    v8 = MCLocalizedString(@"ORGANIZATION");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:v7 localizedKey:v8];

    [v3 addObject:v9];
  }

  v10 = [MCKeyValue alloc];
  v11 = MCLocalizedStringForBool(self->_pairingCertificateData != 0);
  v12 = MCLocalizedString(@"PAIRING_CERTIFICATE_PRESENT");
  v13 = [(MCKeyValue *)v10 initWithLocalizedString:v11 localizedKey:v12];
  [v3 addObject:v13];

  if (self->_nonChaperonePairingAllowedNum)
  {
    v14 = [MCKeyValue alloc];
    v15 = MCLocalizedStringForBool([(NSNumber *)self->_nonChaperonePairingAllowedNum BOOLValue]);
    v16 = MCLocalizedString(@"NON_SUPERVISED_PAIRING_ALLOWED");
    v17 = [(MCKeyValue *)v14 initWithLocalizedString:v15 localizedKey:v16];

    [v3 addObject:v17];
  }

  v18 = [MCKeyValueSection sectionWithKeyValues:v3];
  v22[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end