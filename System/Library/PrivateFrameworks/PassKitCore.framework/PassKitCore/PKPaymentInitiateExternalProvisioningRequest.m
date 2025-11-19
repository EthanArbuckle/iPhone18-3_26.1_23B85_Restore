@interface PKPaymentInitiateExternalProvisioningRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentInitiateExternalProvisioningRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = @"devices";
  v21 = a4;
  cardIdentifier = self->_cardIdentifier;
  v22 = @"cards";
  v23 = cardIdentifier;
  v24 = @"initiateExternalProvisioning";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:&v20 count:5];
  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 version:@"2" endpointComponents:v13 queryParameters:0 appleAccountInformation:v10, v20, v21, v22, v23, v24, v25];

  [v14 setHTTPMethod:@"POST"];
  [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v15 setObject:self->_externalDestinationDevices forKeyedSubscript:@"deviceSerialNumbers"];
  v16 = [(PKPaymentInitiateExternalProvisioningRequestDPANAuthorization *)self->_authorization dictionaryRepresentation];

  [v15 setObject:v16 forKeyedSubscript:@"authorization"];
  v17 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
  [v14 setHTTPBody:v17];

  v18 = [v14 copy];

  return v18;
}

@end