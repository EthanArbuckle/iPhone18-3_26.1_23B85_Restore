@interface PKPaymentRegisterCredentialResponse
- (PKPaymentRegisterCredentialResponse)initWithData:(id)data;
@end

@implementation PKPaymentRegisterCredentialResponse

- (PKPaymentRegisterCredentialResponse)initWithData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PKPaymentRegisterCredentialResponse;
  v3 = [(PKWebServiceResponse *)&v24 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x1E695DFF8];
      v7 = [jSONObject PKStringForKey:@"passURL"];
      v8 = [v6 URLWithString:v7];
      passURL = v4->_passURL;
      v4->_passURL = v8;

      if (v4->_passURL)
      {
        v10 = [jSONObject PKStringForKey:@"ktsSignature"];
        pk_decodeHexadecimal = [v10 pk_decodeHexadecimal];
        credentialAttestation = v4->_credentialAttestation;
        v4->_credentialAttestation = pk_decodeHexadecimal;

        v13 = [jSONObject PKDictionaryForKey:@"vehicleMobilizationData"];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [jSONObject PKDictionaryForKey:@"keyData"];
        }

        v21 = v15;

        v22 = [[PKSubcredentialEncryptedContainer alloc] initWithDictionary:v21];
        p_super = &v4->_vehicleMobilizationEncryptedContainer->super;
        v4->_vehicleMobilizationEncryptedContainer = v22;
        goto LABEL_13;
      }

      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: Response missing pass url", buf, 2u);
      }
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = objc_opt_class();
        *buf = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v20 = v19;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }
    }

    v21 = v4;
    v4 = 0;
LABEL_13:
  }

  return v4;
}

@end