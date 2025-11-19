@interface PKPaymentNonceResponse
- (PKPaymentNonceResponse)initWithData:(id)a3;
@end

@implementation PKPaymentNonceResponse

- (PKPaymentNonceResponse)initWithData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPaymentNonceResponse;
  v3 = [(PKPaymentAugmentBaseResponse *)&v14 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"nOnce"];
      v7 = [v6 pk_decodeHexadecimal];
      p_super = &v4->_nonceData->super;
      v4->_nonceData = v7;
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
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v12 = v11;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end