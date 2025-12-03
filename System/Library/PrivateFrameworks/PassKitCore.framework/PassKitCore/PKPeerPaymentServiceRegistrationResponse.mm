@interface PKPeerPaymentServiceRegistrationResponse
- (PKPeerPaymentServiceRegistrationResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentServiceRegistrationResponse

- (PKPeerPaymentServiceRegistrationResponse)initWithData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKPeerPaymentServiceRegistrationResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKStringForKey:@"deviceIdentifier"];
      deviceIdentifier = v4->_deviceIdentifier;
      v4->_deviceIdentifier = v7;

      v9 = [v6 PKStringForKey:@"peerPaymentServicesPushTopic"];
      peerPaymentServicesPushTopic = v4->_peerPaymentServicesPushTopic;
      v4->_peerPaymentServicesPushTopic = v9;

      v11 = [v6 PKURLForKey:@"peerPaymentServiceURL"];

      p_super = &v4->_peerPaymentServiceURL->super;
      v4->_peerPaymentServiceURL = v11;
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

  return v4;
}

@end