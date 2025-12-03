@interface DMTWiFiPayload
- (DMTWiFiPayload)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTWiFiPayload

- (DMTWiFiPayload)initWithDictionary:(id)dictionary error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = DMTWiFiPayload;
  v7 = [(DMTConfigurationPrimitive *)&v49 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v7->_autoJoin = DMTValidateProfileBoolean(dictionaryCopy, @"AutoJoin", 1, 1, error);
    v8 = DMTValidateProfileString(dictionaryCopy, @"EncryptionType", 1, error);
    encryptionType = v7->_encryptionType;
    v7->_encryptionType = v8;

    v10 = DMTValidateProfileString(dictionaryCopy, @"SSID_STR", 1, error);
    ssid = v7->_ssid;
    v7->_ssid = v10;

    v12 = DMTValidateProfileDictionary(dictionaryCopy, @"EAPClientConfiguration", 1, error);
    eapClientConfiguration = v7->_eapClientConfiguration;
    v7->_eapClientConfiguration = v12;

    if (!*error)
    {
      v17 = v7->_eapClientConfiguration;
      if (v17)
      {
        v18 = DMTValidateProfileArray(v17, @"AcceptEAPTypes", 0, error);
        acceptEAPTypes = v7->_acceptEAPTypes;
        v7->_acceptEAPTypes = v18;

        v20 = v7->_acceptEAPTypes;
        if (!v20)
        {
          goto LABEL_3;
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v20;
        v21 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v46;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v46 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v45 + 1) + 8 * i);
              if (v25)
              {
                v26 = v25;
                v27 = CFGetTypeID(v25);
                TypeID = CFNumberGetTypeID();

                if (v27 == TypeID)
                {
                  continue;
                }
              }

              *error = DMTErrorWithCodeAndUserInfo(71, &unk_285B5BED8);

              goto LABEL_3;
            }

            v22 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v29 = DMTValidateProfileArray(v7->_eapClientConfiguration, @"PayloadCertificateAnchorUUID", 1, error);
        certificateAnchorUUID = v7->_certificateAnchorUUID;
        v7->_certificateAnchorUUID = v29;

        if (*error)
        {
          goto LABEL_3;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v31 = v7->_certificateAnchorUUID;
        v32 = [(NSArray *)v31 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v42;
          while (2)
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v42 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v41 + 1) + 8 * j);
              if (v36)
              {
                v37 = v36;
                v38 = CFGetTypeID(v36);
                v39 = CFStringGetTypeID();

                if (v38 == v39)
                {
                  continue;
                }
              }

              *error = DMTErrorWithCodeAndUserInfo(71, &unk_285B5BF00);

              goto LABEL_3;
            }

            v33 = [(NSArray *)v31 countByEnumeratingWithState:&v41 objects:v50 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }
      }

      v14 = v7;
      goto LABEL_4;
    }
  }

LABEL_3:
  v14 = 0;
LABEL_4:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end