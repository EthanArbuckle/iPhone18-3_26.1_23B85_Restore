@interface PKPeerPaymentPerformActionResponse
- (PKPeerPaymentPerformActionResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentPerformActionResponse

- (PKPeerPaymentPerformActionResponse)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPeerPaymentPerformActionResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v4->_success = [v6 PKBoolForKey:@"success"];
      v7 = [v6 PKStringForKey:@"status"];

      v8 = PKPaymentTransactionStatusFromString(v7);
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v9 = -1;
      }

      else
      {
        v9 = v8;
      }

      v4->_status = v9;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end