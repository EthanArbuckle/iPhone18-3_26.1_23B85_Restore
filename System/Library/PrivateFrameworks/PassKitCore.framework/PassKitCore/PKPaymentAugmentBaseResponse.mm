@interface PKPaymentAugmentBaseResponse
- (PKPaymentAugmentBaseResponse)initWithData:(id)data;
@end

@implementation PKPaymentAugmentBaseResponse

- (PKPaymentAugmentBaseResponse)initWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKPaymentAugmentBaseResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject objectForKey:@"networkMerchantIdentifier"];
      pk_decodeHexadecimal = [v6 pk_decodeHexadecimal];
      networkMerchantIdentifier = v4->_networkMerchantIdentifier;
      v4->_networkMerchantIdentifier = pk_decodeHexadecimal;

      v9 = [jSONObject objectForKey:@"cryptogramType"];
      v4->_cryptogramType = PKPaymentCryptogramTypeFromString(v9);
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
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        v14 = v13;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v9 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end