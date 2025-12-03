@interface PKPeerPaymentEncryptionCertificatesResponse
- (PKPeerPaymentEncryptionCertificatesResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentEncryptionCertificatesResponse

- (PKPeerPaymentEncryptionCertificatesResponse)initWithData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKPeerPaymentEncryptionCertificatesResponse;
  v3 = [(PKWebServiceResponse *)&v12 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [[PKPeerPaymentEncryptionCertificate alloc] initWithDictionary:v6];

      p_super = &v4->_certificate->super;
      v4->_certificate = v7;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed PKPeerPaymentEncryptionCertificatesResponse: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v4;
}

@end