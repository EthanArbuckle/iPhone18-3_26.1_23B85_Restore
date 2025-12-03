@interface PKPeerPaymentIdentityVerificationResponse
- (PKPeerPaymentIdentityVerificationResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentIdentityVerificationResponse

- (PKPeerPaymentIdentityVerificationResponse)initWithData:(id)data
{
  v107[1] = *MEMORY[0x1E69E9840];
  v96.receiver = self;
  v96.super_class = PKPeerPaymentIdentityVerificationResponse;
  v3 = [(PKWebServiceResponse *)&v96 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v4->_complete = [v6 PKBoolForKey:@"complete"];
      v7 = [v6 PKDictionaryForKey:@"account"];
      if ([v7 count])
      {
        v8 = [PKPeerPaymentAccount alloc];
        date = [MEMORY[0x1E695DF00] date];
        v10 = [(PKPeerPaymentAccount *)v8 initWithDictionary:v7 lastUpdated:date];
        account = v4->_account;
        v4->_account = v10;
      }

      v69 = v7;
      v12 = [v6 PKStringForKey:@"title"];
      title = v4->_title;
      v4->_title = v12;

      v14 = [v6 PKStringForKey:@"subtitle"];
      subtitle = v4->_subtitle;
      v4->_subtitle = v14;

      v16 = [v6 PKStringForKey:@"localizedTitle"];
      localizedTitle = v4->_localizedTitle;
      v4->_localizedTitle = v16;

      v18 = [v6 PKStringForKey:@"localizedDescription"];
      localizedDescription = v4->_localizedDescription;
      v4->_localizedDescription = v18;

      v20 = [v6 PKDictionaryForKey:@"learnMore"];
      if ([v20 count])
      {
        v21 = [[PKDynamicProvisioningPageLearnMoreContent alloc] initWithDictionary:v20];
        learnMore = v4->_learnMore;
        v4->_learnMore = v21;
      }

      v67 = v20;
      v23 = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFieldsByPage"];
      if (!v23)
      {
        v24 = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFields", v67];
        v25 = v24;
        if (v24)
        {
          v105 = @"requiredFields";
          v106 = v24;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          v107[0] = v26;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
        }

        else
        {
          v23 = 0;
        }
      }

      v71 = jSONObject;
      array = [MEMORY[0x1E695DF70] array];
      v76 = [v6 PKDictionaryForKey:@"requiredFieldOptions"];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      obj = v23;
      v32 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v93;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v93 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = [[PKPeerPaymentRequiredFieldsPage alloc] initWithDictionary:*(*(&v92 + 1) + 8 * i) fieldOptions:v76];
            [array safelyAddObject:v36];
          }

          v33 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
        }

        while (v33);
      }

      v37 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
      requiredFieldsByPage = v4->_requiredFieldsByPage;
      v4->_requiredFieldsByPage = v37;

      array2 = [MEMORY[0x1E695DF70] array];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v39 = [v6 PKArrayContaining:objc_opt_class() forKey:@"encryptionCertificates"];
      v40 = [v39 countByEnumeratingWithState:&v88 objects:v103 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v89;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v89 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v88 + 1) + 8 * j) options:0];
            [array2 safelyAddObject:v44];
          }

          v41 = [v39 countByEnumeratingWithState:&v88 objects:v103 count:16];
        }

        while (v41);
      }

      v45 = [MEMORY[0x1E695DEC8] arrayWithArray:array2];
      encryptionCertificates = v4->_encryptionCertificates;
      v4->_encryptionCertificates = v45;

      v47 = [v6 PKStringForKey:@"encryptionVersion"];
      encryptionVersion = v4->_encryptionVersion;
      v72 = v4;
      v4->_encryptionVersion = v47;

      v70 = v6;
      v49 = [v6 objectForKey:@"acceptableDocuments"];
      v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v73 = v49;
      v79 = [v73 countByEnumeratingWithState:&v84 objects:v102 count:16];
      if (v79)
      {
        v75 = *v85;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v85 != v75)
            {
              objc_enumerationMutation(v73);
            }

            v52 = *(*(&v84 + 1) + 8 * k);
            v53 = [v52 objectForKey:@"documentType"];
            v54 = PKPaymentDocumentTypeFromString(v53);

            v55 = [v52 PKIntegerForKey:@"imageWidth"];
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v56 = [v52 PKArrayForKey:@"countryCodes"];
            v57 = [v56 countByEnumeratingWithState:&v80 objects:v101 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v81;
              v60 = v55;
              do
              {
                for (m = 0; m != v58; ++m)
                {
                  if (*v81 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v62 = *(*(&v80 + 1) + 8 * m);
                  v63 = objc_alloc_init(PKDocumentRequest);
                  [(PKDocumentRequest *)v63 setDocumentType:v54];
                  [(PKDocumentRequest *)v63 setCountryCode:v62];
                  [(PKDocumentRequest *)v63 setPreferredWidth:v60];
                  [v50 safelyAddObject:v63];
                }

                v58 = [v56 countByEnumeratingWithState:&v80 objects:v101 count:16];
              }

              while (v58);
            }
          }

          v79 = [v73 countByEnumeratingWithState:&v84 objects:v102 count:16];
        }

        while (v79);
      }

      v64 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
      v4 = v72;
      acceptableDocuments = v72->_acceptableDocuments;
      v72->_acceptableDocuments = v64;

      v27 = v70;
      v72->_useDeviceValidation = [v70 PKBoolForKey:@"useDeviceValidation"];

      jSONObject = v71;
    }

    else
    {
      v27 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v98 = v29;
        v99 = 2114;
        v100 = v31;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end