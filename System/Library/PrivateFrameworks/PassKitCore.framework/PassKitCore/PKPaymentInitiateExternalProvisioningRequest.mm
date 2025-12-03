@interface PKPaymentInitiateExternalProvisioningRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentInitiateExternalProvisioningRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = @"devices";
  identifierCopy = identifier;
  cardIdentifier = self->_cardIdentifier;
  v22 = @"cards";
  v23 = cardIdentifier;
  v24 = @"initiateExternalProvisioning";
  v9 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v13 = [v9 arrayWithObjects:&v20 count:5];
  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"2" endpointComponents:v13 queryParameters:0 appleAccountInformation:informationCopy, v20, identifierCopy, v22, v23, v24, v25];

  [v14 setHTTPMethod:@"POST"];
  [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v15 setObject:self->_externalDestinationDevices forKeyedSubscript:@"deviceSerialNumbers"];
  dictionaryRepresentation = [(PKPaymentInitiateExternalProvisioningRequestDPANAuthorization *)self->_authorization dictionaryRepresentation];

  [v15 setObject:dictionaryRepresentation forKeyedSubscript:@"authorization"];
  v17 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
  [v14 setHTTPBody:v17];

  v18 = [v14 copy];

  return v18;
}

@end