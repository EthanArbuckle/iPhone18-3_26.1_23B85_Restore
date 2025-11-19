@interface PKPaymentCredentialNonceRequest
- (PKPaymentCredentialNonceRequest)initWithPaymentPass:(id)a3 deviceIdentifier:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentCredentialNonceRequest

- (PKPaymentCredentialNonceRequest)initWithPaymentPass:(id)a3 deviceIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v19.receiver = self;
    v19.super_class = PKPaymentCredentialNonceRequest;
    v10 = [(PKOverlayableWebServiceRequest *)&v19 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_paymentPass, a3);
      v12 = [v9 copy];
      deviceIdentifier = v11->_deviceIdentifier;
      v11->_deviceIdentifier = v12;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "not nil";
      if (v7)
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

    v14 = 0;
  }

  return v14;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v19[4] = *MEMORY[0x1E69E9840];
  deviceIdentifier = self->_deviceIdentifier;
  v19[0] = @"devices";
  v19[1] = deviceIdentifier;
  v19[2] = @"nOnce";
  v19[3] = @"paymentCredential";
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:v19 count:4];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v9 version:@"1" endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  v17[0] = @"passSerialNumber";
  v12 = [(PKPass *)self->_paymentPass serialNumber];
  v17[1] = @"passTypeIdentifier";
  v18[0] = v12;
  v13 = [(PKPass *)self->_paymentPass passTypeIdentifier];
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v14];
  [v11 setHTTPBody:v15];

  return v11;
}

@end