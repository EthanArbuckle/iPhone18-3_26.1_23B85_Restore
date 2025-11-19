@interface PKAuxiliaryCapabilityRegisterResponse
- (PKAuxiliaryCapabilityRegisterResponse)initWithData:(id)a3;
- (id)_retrieveCertificateChainFromJSONObject:(id)a3 withParameterName:(id)a4;
@end

@implementation PKAuxiliaryCapabilityRegisterResponse

- (PKAuxiliaryCapabilityRegisterResponse)initWithData:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKAuxiliaryCapabilityRegisterResponse;
  v3 = [(PKWebServiceResponse *)&v20 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [(PKAuxiliaryCapabilityRegisterResponse *)v4 _retrieveCertificateChainFromJSONObject:v5 withParameterName:@"deviceSignatureCertificateChain"];
        deviceSignatureCertificateChain = v4->_deviceSignatureCertificateChain;
        v4->_deviceSignatureCertificateChain = v6;

        v8 = [(PKAuxiliaryCapabilityRegisterResponse *)v4 _retrieveCertificateChainFromJSONObject:v5 withParameterName:@"deviceDecryptionCertificateChain"];
        deviceDecryptionCertificateChain = v4->_deviceDecryptionCertificateChain;
        v4->_deviceDecryptionCertificateChain = v8;

        v10 = [(PKAuxiliaryCapabilityRegisterResponse *)v4 _retrieveCertificateChainFromJSONObject:v5 withParameterName:@"serverDecryptionCertificateChain"];
        serverDecryptionCertificateChain = v4->_serverDecryptionCertificateChain;
        v4->_serverDecryptionCertificateChain = v10;

        v12 = [(PKAuxiliaryCapabilityRegisterResponse *)v4 _retrieveCertificateChainFromJSONObject:v5 withParameterName:@"serverSignatureCertificateChain"];
        serverSignatureCertificateChain = v4->_serverSignatureCertificateChain;
        v4->_serverSignatureCertificateChain = v12;
      }

      else
      {
        v14 = PKLogFacilityTypeGetObject(0x1DuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138543618;
          v22 = v16;
          v23 = 2114;
          v24 = v18;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
        }

        serverSignatureCertificateChain = v4;
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)_retrieveCertificateChainFromJSONObject:(id)a3 withParameterName:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = objc_alloc(MEMORY[0x1E695DEF0]), (v13 = [v12 initWithBase64EncodedString:v11 options:{0, v17}]) == 0))
          {

            v15 = 0;
            goto LABEL_14;
          }

          v14 = v13;
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v5 copy];
  }

  else
  {
    v15 = 0;
    v5 = 0;
  }

LABEL_14:

  return v15;
}

@end