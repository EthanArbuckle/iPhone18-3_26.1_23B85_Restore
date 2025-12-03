@interface PKPaymentConfigurationResponse
- (PKPaymentConfigurationResponse)initWithData:(id)data;
@end

@implementation PKPaymentConfigurationResponse

- (PKPaymentConfigurationResponse)initWithData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKPaymentConfigurationResponse;
  v3 = [(PKWebServiceResponse *)&v19 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject objectForKey:@"data"];
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
        data = v4->_data;
        v4->_data = v7;
      }

      v9 = [jSONObject objectForKey:@"signature"];
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
        signature = v4->_signature;
        v4->_signature = v10;
      }

      v12 = [jSONObject objectForKey:@"version"];
      version = v4->_version;
      v4->_version = v12;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_opt_class();
        *buf = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        v17 = v16;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end