@interface PKPaymentRequestPassUpdateRequest
- (PKPaymentRequestPassUpdateRequest)initWithPaymentPass:(id)pass updateRequest:(id)request;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentRequestPassUpdateRequest

- (PKPaymentRequestPassUpdateRequest)initWithPaymentPass:(id)pass updateRequest:(id)request
{
  passCopy = pass;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = PKPaymentRequestPassUpdateRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, pass);
    objc_storeStrong(&v10->_request, request);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  informationCopy = information;
  if (identifierCopy && ([(PKPass *)self->_pass passTypeIdentifier], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, [(PKPass *)self->_pass serialNumber], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [(PKPass *)self->_pass passTypeIdentifier:@"devices"];
    v25[3] = v14;
    serialNumber = [(PKPass *)self->_pass serialNumber];
    v25[4] = serialNumber;
    v25[5] = @"passUpgrade";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];
    v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v16 queryParameters:0 appleAccountInformation:informationCopy];

    [v17 setHTTPMethod:@"POST"];
    v18 = objc_opt_class();
    fields = [(PKPassUpgradeRequest *)self->_request fields];
    v20 = [v18 _HTTPBodyWithDictionary:fields];
    [v17 setHTTPBody:v20];

    v21 = [v17 copy];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
      serialNumber2 = [(PKPass *)self->_pass serialNumber];
      *buf = 138412802;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = passTypeIdentifier;
      v30 = 2112;
      v31 = serialNumber2;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentRequestPassUpdateRequest: endpoint component was nil, exiting early. deviceIdentifier: %@, passTypeIdentifier: %@, serialNumber: %@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

@end