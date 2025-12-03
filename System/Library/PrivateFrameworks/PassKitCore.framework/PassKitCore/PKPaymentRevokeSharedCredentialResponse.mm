@interface PKPaymentRevokeSharedCredentialResponse
- (PKPaymentRevokeSharedCredentialResponse)initWithData:(id)data;
@end

@implementation PKPaymentRevokeSharedCredentialResponse

- (PKPaymentRevokeSharedCredentialResponse)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentRevokeSharedCredentialResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:data];
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
      p_super = &v4->_passURL->super;
      v4->_passURL = v8;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_opt_class();
        *buf = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v13 = v12;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v7 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end