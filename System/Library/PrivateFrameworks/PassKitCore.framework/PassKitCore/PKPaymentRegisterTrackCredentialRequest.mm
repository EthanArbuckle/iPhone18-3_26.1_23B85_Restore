@interface PKPaymentRegisterTrackCredentialRequest
- (PKPaymentRegisterTrackCredentialRequest)initWithCredential:(id)credential registrationData:(id)data metadata:(id)metadata;
- (void)buildRequestBody:(id)body;
@end

@implementation PKPaymentRegisterTrackCredentialRequest

- (PKPaymentRegisterTrackCredentialRequest)initWithCredential:(id)credential registrationData:(id)data metadata:(id)metadata
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = PKPaymentRegisterTrackCredentialRequest;
  v9 = [(PKPaymentRegisterCredentialRequest *)&v16 initWithCredential:credential metadata:metadata];
  if (v9 && (dictionaryFromSubcredentialEncryptedRequest(dataCopy), v10 = objc_claimAutoreleasedReturnValue(), registrationData = v9->_registrationData, v9->_registrationData = v10, registrationData, !v9->_registrationData))
  {
    v13 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Missing registrationData on register request", v15, 2u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (void)buildRequestBody:(id)body
{
  v5.receiver = self;
  v5.super_class = PKPaymentRegisterTrackCredentialRequest;
  bodyCopy = body;
  [(PKPaymentRegisterCredentialRequest *)&v5 buildRequestBody:bodyCopy];
  [bodyCopy setObject:self->_registrationData forKeyedSubscript:{@"keyData", v5.receiver, v5.super_class}];
}

@end