@interface PKPaymentRequestPassUpdateResponse
- (PKPaymentRequestPassUpdateResponse)initWithData:(id)data;
@end

@implementation PKPaymentRequestPassUpdateResponse

- (PKPaymentRequestPassUpdateResponse)initWithData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPaymentRequestPassUpdateResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject PKStringForKey:@"passURL"];
      passURL = v4->_passURL;
      v4->_passURL = v6;

      v8 = [jSONObject PKStringForKey:@"appletState"];
      if ([v8 isEqualToString:@"upgradePending"])
      {
        v9 = 1;
      }

      else
      {
        v15 = [v8 isEqualToString:@"upgradeCompleted"];
        v9 = 2;
        if (!v15)
        {
          v9 = 0;
        }
      }

      v4->_appletState = v9;
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        *buf = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v14 = v13;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v8 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end