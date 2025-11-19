@interface PKPeerPaymentUpdateUserInfoResponse
- (PKPeerPaymentUpdateUserInfoResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentUpdateUserInfoResponse

- (PKPeerPaymentUpdateUserInfoResponse)initWithData:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = PKPeerPaymentUpdateUserInfoResponse;
  v3 = [(PKWebServiceResponse *)&v58 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 PKStringForKey:@"state"];
      v4->_state = PKPeerPaymentUpdateUserInfoResponseStateFromString(v7);

      v8 = [v6 PKDictionaryForKey:@"userInfo"];
      if ([v8 count])
      {
        v9 = [[PKPeerPaymentUserInfo alloc] initWithDictionary:v8];
        userInfo = v4->_userInfo;
        v4->_userInfo = v9;
      }

      v47 = v8;
      v11 = [v6 PKStringForKey:@"title"];
      title = v4->_title;
      v4->_title = v11;

      v13 = [v6 PKStringForKey:@"subtitle"];
      subtitle = v4->_subtitle;
      v4->_subtitle = v13;

      v15 = [v6 PKDictionaryForKey:@"learnMore"];
      if ([v15 count])
      {
        v16 = [[PKDynamicProvisioningPageLearnMoreContent alloc] initWithDictionary:v15];
        learnMore = v4->_learnMore;
        v4->_learnMore = v16;
      }

      v49 = v4;
      v18 = [v6 PKArrayContaining:objc_opt_class() forKey:@"requiredFieldsByPage"];
      v19 = [MEMORY[0x1E695DF70] array];
      v48 = v6;
      v20 = [v6 PKDictionaryForKey:@"requiredFieldOptions"];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v55;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v55 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [[PKPeerPaymentRequiredFieldsPage alloc] initWithDictionary:*(*(&v54 + 1) + 8 * i) fieldOptions:v20];
            [v19 safelyAddObject:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v23);
      }

      v46 = v15;

      v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
      requiredFieldsByPage = v49->_requiredFieldsByPage;
      v49->_requiredFieldsByPage = v27;

      v49->_useDeviceValidation = [v48 PKBoolForKey:@"useDeviceValidation"];
      v29 = [MEMORY[0x1E695DF70] array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v30 = [v48 PKArrayContaining:objc_opt_class() forKey:@"encryptionCertificates"];
      v31 = [v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v51;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v51 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v50 + 1) + 8 * j) options:0];
            [v29 safelyAddObject:v35];
          }

          v32 = [v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v32);
      }

      v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
      v4 = v49;
      encryptionCertificates = v49->_encryptionCertificates;
      v49->_encryptionCertificates = v36;

      v38 = v48;
      v39 = [v48 PKStringForKey:@"encryptionVersion"];
      encryptionVersion = v49->_encryptionVersion;
      v49->_encryptionVersion = v39;
    }

    else
    {
      v38 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138543618;
        v60 = v42;
        v61 = 2114;
        v62 = v44;
        _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end