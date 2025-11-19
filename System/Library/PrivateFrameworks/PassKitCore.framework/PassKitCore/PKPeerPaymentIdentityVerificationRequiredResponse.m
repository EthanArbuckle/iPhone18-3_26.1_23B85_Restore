@interface PKPeerPaymentIdentityVerificationRequiredResponse
- (PKPeerPaymentIdentityVerificationRequiredResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentIdentityVerificationRequiredResponse

- (PKPeerPaymentIdentityVerificationRequiredResponse)initWithData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKPeerPaymentIdentityVerificationRequiredResponse;
  v3 = [(PKWebServiceResponse *)&v13 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKStringForKey:@"prerequisiteIdentifier"];
      prerequisiteIdentifier = v4->_prerequisiteIdentifier;
      v4->_prerequisiteIdentifier = v6;
    }

    else
    {
      prerequisiteIdentifier = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(prerequisiteIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_1AD337000, prerequisiteIdentifier, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end