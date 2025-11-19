@interface PKPaymentDeleteRequest
- (PKPaymentDeleteRequest)initWithPaymentPass:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentDeleteRequest

- (PKPaymentDeleteRequest)initWithPaymentPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentDeleteRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKPass *)self->_pass passTypeIdentifier];
  if (v8 && (v9 = v8, [(PKPass *)self->_pass serialNumber], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v19[0] = @"passes";
    v11 = [(PKPass *)self->_pass passTypeIdentifier];
    v19[1] = v11;
    v12 = [(PKPass *)self->_pass serialNumber];
    v19[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v13 queryParameters:0 appleAccountInformation:v7];

    [v14 setHTTPMethod:@"DELETE"];
    v15 = [v14 copy];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PKPass *)self->_pass passTypeIdentifier];
      v17 = [(PKPass *)self->_pass serialNumber];
      *buf = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentDeleteRequest: endpoint component was nil. exiting early. passTypeIdentifier: %@, serialNumber: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

@end