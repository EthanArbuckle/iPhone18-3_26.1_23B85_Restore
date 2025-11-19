@interface PKPeerPaymentPassDetailsResponse
- (PKPeerPaymentPassDetailsResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentPassDetailsResponse

- (PKPeerPaymentPassDetailsResponse)initWithData:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PKPeerPaymentPassDetailsResponse;
  v3 = [(PKWebServiceResponse *)&v24 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 PKStringForKey:@"provisioningIdentifier"];
      provisioningIdentifier = v4->_provisioningIdentifier;
      v4->_provisioningIdentifier = v7;

      v4->_cardType = [v6 PKIntegerForKey:@"cardType"];
      v4->_status = [v6 PKIntegerForKey:@"status"];
      v9 = [v6 PKURLForKey:@"passURL"];
      passURL = v4->_passURL;
      v4->_passURL = v9;

      v11 = [v6 PKStringForKey:@"passTypeIdentifier"];
      passTypeIdentifier = v4->_passTypeIdentifier;
      v4->_passTypeIdentifier = v11;

      v13 = [v6 PKStringForKey:@"passSerialNumber"];
      passSerialNumber = v4->_passSerialNumber;
      v4->_passSerialNumber = v13;

      v15 = [v6 PKStringForKey:@"ownershipTokenIdentifier"];

      ownershipTokenIdentifier = v4->_ownershipTokenIdentifier;
      v4->_ownershipTokenIdentifier = v15;

      v17 = [[PKPaymentRemoteCredential alloc] initWithIdentifier:v4->_provisioningIdentifier status:v4->_status credentialType:v4->_cardType passURL:v4->_passURL];
      p_super = &v4->_remoteCredential->super.super;
      v4->_remoteCredential = v17;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138543618;
        v26 = v20;
        v27 = 2114;
        v28 = v22;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end