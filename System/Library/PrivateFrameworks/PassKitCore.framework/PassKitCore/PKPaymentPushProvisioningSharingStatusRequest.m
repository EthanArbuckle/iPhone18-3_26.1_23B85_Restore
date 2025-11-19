@interface PKPaymentPushProvisioningSharingStatusRequest
- (PKPaymentPushProvisioningSharingStatusRequest)initWithEncryptedProvisioningTarget:(id)a3;
- (PKPaymentPushProvisioningSharingStatusRequest)initWithProvisioningSharingIdentifier:(id)a3 cardCardConfigurationIdentifer:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)requestBody;
@end

@implementation PKPaymentPushProvisioningSharingStatusRequest

- (PKPaymentPushProvisioningSharingStatusRequest)initWithProvisioningSharingIdentifier:(id)a3 cardCardConfigurationIdentifer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKOverlayableWebServiceRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharingIdentifier, a3);
    objc_storeStrong(&v10->_cardConfigurationIdentifer, a4);
    encryptedProvisioningTarget = v10->_encryptedProvisioningTarget;
    v10->_encryptedProvisioningTarget = 0;
  }

  return v10;
}

- (PKPaymentPushProvisioningSharingStatusRequest)initWithEncryptedProvisioningTarget:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PKPaymentPushProvisioningSharingStatusRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_encryptedProvisioningTarget, a3);
    sharingIdentifier = v7->_sharingIdentifier;
    v7->_sharingIdentifier = 0;
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 length];
  if (v8 && v11)
  {
    v20[0] = @"devices";
    v20[1] = v9;
    v20[2] = @"provisioningSharingStatus";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v12 queryParameters:0 appleAccountInformation:v10];

    [v13 setHTTPMethod:@"POST"];
    v14 = objc_opt_class();
    v15 = [(PKPaymentPushProvisioningSharingStatusRequest *)self requestBody];
    v16 = [v14 _HTTPBodyWithDictionary:v15];
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
    v5 = [(PKEncryptedPushProvisioningTarget *)encryptedProvisioningTarget asWebServiceDictionary];
    [v3 addEntriesFromDictionary:v5];
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