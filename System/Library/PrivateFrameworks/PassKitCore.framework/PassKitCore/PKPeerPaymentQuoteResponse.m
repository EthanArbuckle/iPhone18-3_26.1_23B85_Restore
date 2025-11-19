@interface PKPeerPaymentQuoteResponse
- (PKPeerPaymentQuoteResponse)initWithData:(id)a3 productTimeZone:(id)a4;
@end

@implementation PKPeerPaymentQuoteResponse

- (PKPeerPaymentQuoteResponse)initWithData:(id)a3 productTimeZone:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentQuoteResponse;
  v7 = [(PKWebServiceResponse *)&v18 initWithData:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [[PKPeerPaymentQuote alloc] initWithDictionary:v10 productTimeZone:v6];

      p_super = &v8->_quote->super;
      v8->_quote = v11;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v8;
}

@end