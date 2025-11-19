@interface PKPeerPaymentWebServiceBadRequestResponse
- (PKPeerPaymentWebServiceBadRequestResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentWebServiceBadRequestResponse

- (PKPeerPaymentWebServiceBadRequestResponse)initWithData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPeerPaymentWebServiceBadRequestResponse;
  v3 = [(PKWebServiceResponse *)&v14 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKStringForKey:@"errorCode"];
      v7 = v6;
      if (v6)
      {
        [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject integerValue](v6, "integerValue")}];
      }

      else
      {
        [v5 PKNumberForKey:@"errorCode"];
      }
      v10 = ;
      objc_storeStrong(&v4->_errorCode, v10);

      v11 = [v5 PKStringForKey:@"debugDescription"];
      serverDebugDescription = v4->_serverDebugDescription;
      v4->_serverDebugDescription = v11;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v4;
}

@end