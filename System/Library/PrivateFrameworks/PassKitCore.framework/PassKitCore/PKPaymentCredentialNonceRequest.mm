@interface PKPaymentCredentialNonceRequest
- (PKPaymentCredentialNonceRequest)initWithPaymentPass:(id)pass deviceIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentCredentialNonceRequest

- (PKPaymentCredentialNonceRequest)initWithPaymentPass:(id)pass deviceIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (passCopy && identifierCopy)
  {
    v19.receiver = self;
    v19.super_class = PKPaymentCredentialNonceRequest;
    v10 = [(PKOverlayableWebServiceRequest *)&v19 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_paymentPass, pass);
      v12 = [v9 copy];
      deviceIdentifier = v11->_deviceIdentifier;
      v11->_deviceIdentifier = v12;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "not nil";
      if (passCopy)
      {
        v17 = "not nil";
      }

      else
      {
        v17 = "nil";
      }

      if (!v9)
      {
        v16 = "nil";
      }

      *buf = 136315394;
      v21 = v17;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't make nonce request: Pass is %s. Device ID is %s", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v19[4] = *MEMORY[0x1E69E9840];
  deviceIdentifier = self->_deviceIdentifier;
  v19[0] = @"devices";
  v19[1] = deviceIdentifier;
  v19[2] = @"nOnce";
  v19[3] = @"paymentCredential";
  v7 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v10 = [v7 arrayWithObjects:v19 count:4];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy];

  [v11 setHTTPMethod:@"POST"];
  v17[0] = @"passSerialNumber";
  serialNumber = [(PKPass *)self->_paymentPass serialNumber];
  v17[1] = @"passTypeIdentifier";
  v18[0] = serialNumber;
  passTypeIdentifier = [(PKPass *)self->_paymentPass passTypeIdentifier];
  v18[1] = passTypeIdentifier;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v14];
  [v11 setHTTPBody:v15];

  return v11;
}

@end