@interface PKPeerPaymentAccountResponse
- (PKPeerPaymentAccountResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentAccountResponse

- (PKPeerPaymentAccountResponse)initWithData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKPeerPaymentAccountResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [PKPeerPaymentAccount alloc];
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = [(PKPeerPaymentAccount *)v7 initWithDictionary:v6 lastUpdated:v8];

      account = v4->_account;
      v4->_account = v9;
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end