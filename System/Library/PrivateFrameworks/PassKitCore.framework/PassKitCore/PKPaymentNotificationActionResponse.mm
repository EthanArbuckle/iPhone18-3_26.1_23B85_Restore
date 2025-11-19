@interface PKPaymentNotificationActionResponse
- (PKPaymentNotificationActionResponse)initWithData:(id)a3;
@end

@implementation PKPaymentNotificationActionResponse

- (PKPaymentNotificationActionResponse)initWithData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKPaymentNotificationActionResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKStringForKey:@"requestId"];
      requestID = v4->_requestID;
      v4->_requestID = v6;

      v8 = [v5 PKDictionaryForKey:@"aps"];
      aps = v4->_aps;
      v4->_aps = v8;

      v10 = [v5 PKStringForKey:@"action"];
      action = v4->_action;
      v4->_action = v10;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = objc_opt_class();
        *buf = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v16 = v15;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      action = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end