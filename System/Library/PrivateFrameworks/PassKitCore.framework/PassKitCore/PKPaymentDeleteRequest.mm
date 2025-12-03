@interface PKPaymentDeleteRequest
- (PKPaymentDeleteRequest)initWithPaymentPass:(id)pass;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentDeleteRequest

- (PKPaymentDeleteRequest)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKPaymentDeleteRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
  if (passTypeIdentifier && (v9 = passTypeIdentifier, [(PKPass *)self->_pass serialNumber], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v19[0] = @"passes";
    passTypeIdentifier2 = [(PKPass *)self->_pass passTypeIdentifier];
    v19[1] = passTypeIdentifier2;
    serialNumber = [(PKPass *)self->_pass serialNumber];
    v19[2] = serialNumber;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v13 queryParameters:0 appleAccountInformation:informationCopy];

    [v14 setHTTPMethod:@"DELETE"];
    v15 = [v14 copy];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      passTypeIdentifier3 = [(PKPass *)self->_pass passTypeIdentifier];
      serialNumber2 = [(PKPass *)self->_pass serialNumber];
      *buf = 138412546;
      v21 = passTypeIdentifier3;
      v22 = 2112;
      v23 = serialNumber2;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentDeleteRequest: endpoint component was nil. exiting early. passTypeIdentifier: %@, serialNumber: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

@end