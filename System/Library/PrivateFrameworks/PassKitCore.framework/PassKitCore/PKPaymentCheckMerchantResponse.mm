@interface PKPaymentCheckMerchantResponse
- (PKPaymentCheckMerchantResponse)initWithData:(id)a3;
@end

@implementation PKPaymentCheckMerchantResponse

- (PKPaymentCheckMerchantResponse)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentCheckMerchantResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:@"registered"];
      v7 = v6;
      if (v6)
      {
        v4->_isRegistered = [(PKPaymentCheckMerchantResponse *)v6 BOOLValue];
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Malformed PKPaymentCheckMerchantResponse: expected registered element, none found", buf, 2u);
        }
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v12 = v11;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v7 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end