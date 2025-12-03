@interface DMTWiFiCertificateReferencesValidator
- (BOOL)validateProfile:(id)profile error:(id *)error;
@end

@implementation DMTWiFiCertificateReferencesValidator

- (BOOL)validateProfile:(id)profile error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [profileCopy payloadsOfType:@"com.apple.wifi.managed"];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v26 = profileCopy;
    payloadsByUUID = 0;
    v10 = *v33;
    v27 = v6;
    v24 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        if (!payloadsByUUID)
        {
          payloadsByUUID = [v26 payloadsByUUID];
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        certificateAnchorUUID = [v12 certificateAnchorUUID];
        v14 = [certificateAnchorUUID countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(certificateAnchorUUID);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              v19 = [payloadsByUUID objectForKeyedSubscript:v18];

              if (!v19)
              {
                if (errorCopy)
                {
                  v36[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
                  v36[1] = @"PayloadCertificateAnchorUUID[]";
                  v37[0] = @"PayloadCertificateAnchorUUID[]";
                  v37[1] = v18;
                  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
                  *errorCopy = DMTErrorWithCodeAndUserInfo(76, v21);
                }

                v20 = 0;
                profileCopy = v26;
                v6 = v27;
                goto LABEL_23;
              }
            }

            v15 = [certificateAnchorUUID countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v6 = v27;
        v10 = v24;
      }

      v8 = [v27 countByEnumeratingWithState:&v32 objects:v39 count:16];
      v20 = 1;
      profileCopy = v26;
    }

    while (v8);
  }

  else
  {
    payloadsByUUID = 0;
    v20 = 1;
  }

LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end