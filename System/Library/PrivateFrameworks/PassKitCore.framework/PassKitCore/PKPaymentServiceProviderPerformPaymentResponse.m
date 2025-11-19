@interface PKPaymentServiceProviderPerformPaymentResponse
- (PKPaymentServiceProviderPerformPaymentResponse)initWithData:(id)a3;
@end

@implementation PKPaymentServiceProviderPerformPaymentResponse

- (PKPaymentServiceProviderPerformPaymentResponse)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentServiceProviderPerformPaymentResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKDictionaryForKey:@"purchase"];
      if (v6)
      {
        v7 = [[PKServiceProviderPurchase alloc] initWithDictionary:v6];
        p_super = &v4->_purchase->super;
        v4->_purchase = v7;
LABEL_12:

        return v4;
      }

      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Malformed PKPaymentServiceProviderPerformPaymentResponse: expected purchase dictionary, however we received %@", buf, 0xCu);
      }

      p_super = &v4->super.super.super;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v12 = v11;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
    }

    v4 = 0;
    goto LABEL_12;
  }

  return v4;
}

@end