@interface PKPaymentIssuerProvisioningCertificatesResponse
- (PKPaymentIssuerProvisioningCertificatesResponse)initWithData:(id)data;
@end

@implementation PKPaymentIssuerProvisioningCertificatesResponse

- (PKPaymentIssuerProvisioningCertificatesResponse)initWithData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PKPaymentIssuerProvisioningCertificatesResponse;
  v3 = [(PKWebServiceResponse *)&v29 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject objectForKeyedSubscript:@"certificates"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [jSONObject objectForKeyedSubscript:@"nonce"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || !v7)
        {
          v24 = v7;
          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v6 = v6;
          v9 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v26;
            do
            {
              v12 = 0;
              do
              {
                if (*v26 != v11)
                {
                  objc_enumerationMutation(v6);
                }

                v13 = *(*(&v25 + 1) + 8 * v12);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
                  if (v14)
                  {
                    [v8 addObject:v14];
                  }
                }

                ++v12;
              }

              while (v10 != v12);
              v10 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
            }

            while (v10);
          }

          if ([v8 count])
          {
            v15 = [v8 copy];
            certificates = v4->_certificates;
            v4->_certificates = v15;
          }

          v7 = v24;
          pk_decodeHexadecimal = [v24 pk_decodeHexadecimal];
          v18 = [pk_decodeHexadecimal copy];
          nonce = v4->_nonce;
          v4->_nonce = v18;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (!v4->_certificates || !v4->_nonce)
    {
      v20 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@.", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  return v4;
}

@end