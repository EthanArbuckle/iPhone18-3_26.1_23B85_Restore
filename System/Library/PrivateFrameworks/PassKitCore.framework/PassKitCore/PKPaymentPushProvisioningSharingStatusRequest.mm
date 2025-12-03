@interface PKPaymentPushProvisioningSharingStatusRequest
- (PKPaymentPushProvisioningSharingStatusRequest)initWithEncryptedProvisioningTarget:(id)target;
- (PKPaymentPushProvisioningSharingStatusRequest)initWithProvisioningSharingIdentifier:(id)identifier cardCardConfigurationIdentifer:(id)identifer;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
@end

@implementation PKPaymentPushProvisioningSharingStatusRequest

- (PKPaymentPushProvisioningSharingStatusRequest)initWithProvisioningSharingIdentifier:(id)identifier cardCardConfigurationIdentifer:(id)identifer
{
  identifierCopy = identifier;
  identiferCopy = identifer;
  v9 = [(PKOverlayableWebServiceRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharingIdentifier, identifier);
    objc_storeStrong(&v10->_cardConfigurationIdentifer, identifer);
    encryptedProvisioningTarget = v10->_encryptedProvisioningTarget;
    v10->_encryptedProvisioningTarget = 0;
  }

  return v10;
}

- (PKPaymentPushProvisioningSharingStatusRequest)initWithEncryptedProvisioningTarget:(id)target
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = PKPaymentPushProvisioningSharingStatusRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptedProvisioningTarget, target);
    sharingIdentifier = v7->_sharingIdentifier;
    v7->_sharingIdentifier = 0;
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v20[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  informationCopy = information;
  v11 = [identifierCopy length];
  if (lCopy && v11)
  {
    v20[0] = @"devices";
    v20[1] = identifierCopy;
    v20[2] = @"provisioningSharingStatus";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

    [v13 setHTTPMethod:@"POST"];
    v14 = objc_opt_class();
    requestBody = [(PKPaymentPushProvisioningSharingStatusRequest *)self requestBody];
    v16 = [v14 _HTTPBodyWithDictionary:requestBody];
    [v13 setHTTPBody:v16];

    v17 = [v13 copy];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0x1CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: No device identifier or URL for request", v19, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)requestBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  encryptedProvisioningTarget = self->_encryptedProvisioningTarget;
  if (encryptedProvisioningTarget)
  {
    asWebServiceDictionary = [(PKEncryptedPushProvisioningTarget *)encryptedProvisioningTarget asWebServiceDictionary];
    [v3 addEntriesFromDictionary:asWebServiceDictionary];
  }

  sharingIdentifier = self->_sharingIdentifier;
  if (sharingIdentifier)
  {
    [v3 setObject:sharingIdentifier forKeyedSubscript:@"sharingInstanceIdentifier"];
  }

  cardConfigurationIdentifer = self->_cardConfigurationIdentifer;
  if (cardConfigurationIdentifer)
  {
    [v3 setObject:cardConfigurationIdentifer forKeyedSubscript:@"cardConfigurationIdentifier"];
  }

  v8 = [v3 copy];

  return v8;
}

@end