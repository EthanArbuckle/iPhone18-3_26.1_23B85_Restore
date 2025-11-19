@interface PKPaymentServiceProviderPerformActionResponse
- (PKPaymentServiceProviderPerformActionResponse)initWithData:(id)a3;
@end

@implementation PKPaymentServiceProviderPerformActionResponse

- (PKPaymentServiceProviderPerformActionResponse)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentServiceProviderPerformActionResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [[PKServiceProviderPurchase alloc] initWithDictionary:v6];

      updatedPurchase = v4->_updatedPurchase;
      v4->_updatedPurchase = v7;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_opt_class();
        *buf = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v13 = v12;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      updatedPurchase = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end