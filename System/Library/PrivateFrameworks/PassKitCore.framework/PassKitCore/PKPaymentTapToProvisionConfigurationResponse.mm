@interface PKPaymentTapToProvisionConfigurationResponse
- (PKPaymentTapToProvisionConfigurationResponse)initWithData:(id)data;
@end

@implementation PKPaymentTapToProvisionConfigurationResponse

- (PKPaymentTapToProvisionConfigurationResponse)initWithData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKPaymentTapToProvisionConfigurationResponse;
  v3 = [(PKWebServiceResponse *)&v21 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [(PKPaymentTapToProvisionConfigurationResponse *)v6 PKStringForKey:@"nonce"];
      pk_decodeHexadecimal = [v7 pk_decodeHexadecimal];
      nonce = v4->_nonce;
      v4->_nonce = pk_decodeHexadecimal;

      v10 = [(PKPaymentTapToProvisionConfigurationResponse *)v6 PKNumberForKey:@"countryCode"];
      v4->_countryCode = [v10 integerValue];

      v11 = [(PKPaymentTapToProvisionConfigurationResponse *)v6 PKNumberForKey:@"currencyCode"];
      v4->_currencyCode = [v11 integerValue];

      if (v4->_nonce && v4->_countryCode && v4->_currencyCode)
      {
        goto LABEL_13;
      }

      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        *buf = 138412290;
        v23 = v13;
        v14 = v13;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Malformed response: missing required fields inside %@", buf, 0xCu);
      }

      p_super = &v4->super.super.super;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = objc_opt_class();
        *buf = 138543618;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v19 = v18;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
    }

    v4 = 0;
LABEL_13:
  }

  return v4;
}

@end