@interface PKPeerPaymentPendingRequestPerformActionResponse
- (PKPeerPaymentPendingRequestPerformActionResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentPendingRequestPerformActionResponse

- (PKPeerPaymentPendingRequestPerformActionResponse)initWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPeerPaymentPendingRequestPerformActionResponse;
  v3 = [(PKWebServiceResponse *)&v14 initWithData:data];
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

      status = v4->_status;
      v4->_status = v7;
    }

    else
    {
      status = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(status, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_1AD337000, status, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end