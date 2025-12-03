@interface PKPeerPaymentQuoteCertificatesResponse
- (PKPeerPaymentQuoteCertificatesResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentQuoteCertificatesResponse

- (PKPeerPaymentQuoteCertificatesResponse)initWithData:(id)data
{
  v32 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKPeerPaymentQuoteCertificatesResponse;
  v3 = [(PKWebServiceResponse *)&v26 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      array = [MEMORY[0x1E695DF70] array];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v6 PKArrayContaining:objc_opt_class() forKey:@"encryptionCertificates", 0];
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          v12 = 0;
          do
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v22 + 1) + 8 * v12) options:0];
            [array safelyAddObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v10);
      }

      v14 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
      encryptionCertificates = v4->_encryptionCertificates;
      v4->_encryptionCertificates = v14;

      v16 = [v6 PKStringForKey:@"encryptionVersion"];
      encryptionVersion = v4->_encryptionVersion;
      v4->_encryptionVersion = v16;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0xCuLL);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        return v4;
      }

      v18 = objc_opt_class();
      array = NSStringFromClass(v18);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v28 = array;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  return v4;
}

@end