@interface PKPaymentPushProvisioningSharingStatusResponse
- (PKPaymentPushProvisioningSharingStatusResponse)initWithData:(id)data;
@end

@implementation PKPaymentPushProvisioningSharingStatusResponse

- (PKPaymentPushProvisioningSharingStatusResponse)initWithData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKPaymentPushProvisioningSharingStatusResponse;
  v3 = [(PKWebServiceResponse *)&v13 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject PKStringForKey:@"status"];
      v4->_sharingStatus = PKPushProvisioningSharingStatusFromString(v6);
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = objc_opt_class();
        *buf = 138543618;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        v11 = v10;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end