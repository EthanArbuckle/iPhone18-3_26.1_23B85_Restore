@interface PKApplyWebServiceApplyStepInfo
- (PKApplyWebServiceApplyStepInfo)initWithJSONObject:(id)a3 featureApplication:(id)a4;
- (void)_handleCertificates:(id)a3;
@end

@implementation PKApplyWebServiceApplyStepInfo

- (PKApplyWebServiceApplyStepInfo)initWithJSONObject:(id)a3 featureApplication:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v58 = a4;
  v67.receiver = self;
  v67.super_class = PKApplyWebServiceApplyStepInfo;
  v7 = [(PKApplyWebServiceApplyStepInfo *)&v67 init];
  if (v7)
  {
    v8 = [v6 PKStringForKey:@"contextType"];
    v7->_contextType = PKApplyContextTypeFromString(v8);

    contextType = v7->_contextType;
    if (contextType <= 2)
    {
      if (!contextType)
      {
        [(PKApplyWebServiceApplyStepInfo *)v7 _handleCertificates:v6];
        v18 = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFieldsByPage"];
        v19 = [MEMORY[0x1E695DF70] array];
        v20 = [v6 PKDictionaryForKey:@"requiredFieldOptions"];
        v21 = [v6 PKStringForKey:@"identifier"];
        v22 = v21;
        v55 = v7;
        v56 = v6;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [v6 PKStringForKey:@"contextIdentifier"];
        }

        v44 = v23;

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v11 = v18;
        v45 = [(PKApplyDocumentUploadPage *)v11 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = 0;
          v48 = *v64;
          do
          {
            v49 = 0;
            v50 = v47;
            do
            {
              if (*v64 != v48)
              {
                objc_enumerationMutation(v11);
              }

              v51 = [[PKApplyRequiredFieldsPage alloc] initWithDictionary:*(*(&v63 + 1) + 8 * v49) fieldOptions:v20 featureApplication:v58];
              v47 = v50 + 1;
              [(PKDynamicProvisioningPageContent *)v51 setPageNumber:v50];
              [(PKDynamicProvisioningPageContent *)v51 setIdentifier:v44];
              [v19 safelyAddObject:v51];

              ++v49;
              ++v50;
            }

            while (v46 != v49);
            v46 = [(PKApplyDocumentUploadPage *)v11 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v46);
        }

        coreIDVSessionID = v19;
        v52 = [v19 copy];
        v7 = v55;
        pages = v55->_pages;
        v55->_pages = v52;

        v6 = v56;
        goto LABEL_7;
      }

      if (contextType == 1)
      {
        v36 = [[PKDynamicProvisioningPageContent alloc] initWithDictonary:v6];
        v11 = v36;
        if (v36)
        {
          v70 = v36;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          v38 = v7->_pages;
          v7->_pages = v37;
        }

        v39 = [v6 PKStringForKey:@"coreIDVTier"];
        coreIDVTier = v7->_coreIDVTier;
        v7->_coreIDVTier = v39;

        v41 = [v6 PKStringForKey:@"coreIDVServiceProviderName"];
        coreIDVServiceProviderName = v7->_coreIDVServiceProviderName;
        v7->_coreIDVServiceProviderName = v41;

        v43 = [v6 PKStringForKey:@"coreIDVSessionID"];
        coreIDVSessionID = v7->_coreIDVSessionID;
        v7->_coreIDVSessionID = v43;
        goto LABEL_7;
      }

      if (contextType != 2)
      {
        goto LABEL_9;
      }

      [(PKApplyWebServiceApplyStepInfo *)v7 _handleCertificates:v6];
      v17 = [[PKApplyDocumentUploadPage alloc] initWithJSONObject:v6];
      v11 = v17;
      if (!v17)
      {
        goto LABEL_8;
      }

      v71 = v17;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v71;
    }

    else
    {
      if ((contextType - 3) >= 6)
      {
        if (contextType == 9)
        {
          v24 = [v6 PKDictionaryForKey:@"requiredFieldOptions"];
          v25 = [v6 PKStringForKey:@"verificationType"];
          v26 = PKApplyVerificationTypeFromString(v25);

          v27 = [v6 PKIntegerForKey:@"verificationCodeLength"];
          coreIDVSessionID = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFieldsByPage"];
          v28 = [MEMORY[0x1E695DF70] array];
          if ([coreIDVSessionID count])
          {
            v29 = v24;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v30 = coreIDVSessionID;
            v31 = [(PKApplyVerificationPage *)v30 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v31)
            {
              v32 = v31;
              v54 = coreIDVSessionID;
              v57 = v6;
              v33 = *v60;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v60 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = [[PKApplyVerificationPage alloc] initWithDictionary:*(*(&v59 + 1) + 8 * i) type:v26 codeLength:v27 fieldOptions:v29];
                  [v28 safelyAddObject:v35];
                }

                v32 = [(PKApplyVerificationPage *)v30 countByEnumeratingWithState:&v59 objects:v69 count:16];
              }

              while (v32);
              v6 = v57;
              coreIDVSessionID = v54;
            }
          }

          else
          {
            v29 = v24;
            v30 = [[PKApplyVerificationPage alloc] initWithDictionary:v6 type:v26 codeLength:v27 fieldOptions:v24];
            [v28 safelyAddObject:v30];
          }

          if ([v28 count])
          {
            objc_storeStrong(&v7->_pages, v28);
          }

          v11 = v29;
          goto LABEL_7;
        }

        if (contextType != 10)
        {
          goto LABEL_9;
        }
      }

      v10 = [[PKDynamicProvisioningPageContent alloc] initWithDictonary:v6];
      v11 = v10;
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      v68 = v10;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v68;
    }

    v14 = [v12 arrayWithObjects:v13 count:1];
    coreIDVSessionID = v7->_pages;
    v7->_pages = v14;
LABEL_7:

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)_handleCertificates:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 PKArrayContaining:objc_opt_class() forKey:{@"encryptionCertificates", 0}];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v16 + 1) + 8 * v10) options:0];
        [v5 safelyAddObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  encryptionCertificates = self->_encryptionCertificates;
  self->_encryptionCertificates = v12;

  v14 = [v4 PKStringForKey:@"encryptionVersion"];
  encryptionVersion = self->_encryptionVersion;
  self->_encryptionVersion = v14;
}

@end