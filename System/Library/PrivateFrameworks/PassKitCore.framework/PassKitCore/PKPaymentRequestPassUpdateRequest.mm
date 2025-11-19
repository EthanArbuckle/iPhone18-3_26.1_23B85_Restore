@interface PKPaymentRequestPassUpdateRequest
- (PKPaymentRequestPassUpdateRequest)initWithPaymentPass:(id)a3 updateRequest:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentRequestPassUpdateRequest

- (PKPaymentRequestPassUpdateRequest)initWithPaymentPass:(id)a3 updateRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentRequestPassUpdateRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, a3);
    objc_storeStrong(&v10->_request, a4);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && ([(PKPass *)self->_pass passTypeIdentifier], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, [(PKPass *)self->_pass serialNumber], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [(PKPass *)self->_pass passTypeIdentifier:@"devices"];
    v25[3] = v14;
    v15 = [(PKPass *)self->_pass serialNumber];
    v25[4] = v15;
    v25[5] = @"passUpgrade";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];
    v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v16 queryParameters:0 appleAccountInformation:v10];

    [v17 setHTTPMethod:@"POST"];
    v18 = objc_opt_class();
    v19 = [(PKPassUpgradeRequest *)self->_request fields];
    v20 = [v18 _HTTPBodyWithDictionary:v19];
    [v17 setHTTPBody:v20];

    v21 = [v17 copy];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(PKPass *)self->_pass passTypeIdentifier];
      v23 = [(PKPass *)self->_pass serialNumber];
      *buf = 138412802;
      v27 = v9;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentRequestPassUpdateRequest: endpoint component was nil, exiting early. deviceIdentifier: %@, passTypeIdentifier: %@, serialNumber: %@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

@end