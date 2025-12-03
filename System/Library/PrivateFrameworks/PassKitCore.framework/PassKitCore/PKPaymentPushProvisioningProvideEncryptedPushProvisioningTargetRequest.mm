@interface PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest
- (PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest)initWithEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
@end

@implementation PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest

- (PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest)initWithEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier
{
  targetCopy = target;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptedPushProvisioningTarget, target);
    objc_storeStrong(&v10->_sharingInstanceIdentifier, identifier);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  identifierCopy = identifier;
  v21 = @"pushProvisioningTarget";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v19, identifierCopy, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  requestBody = [(PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:requestBody];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

- (id)requestBody
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  asWebServiceDictionary = [(PKEncryptedPushProvisioningTarget *)self->_encryptedPushProvisioningTarget asWebServiceDictionary];
  v5 = [v3 initWithDictionary:asWebServiceDictionary];

  [v5 setObject:self->_sharingInstanceIdentifier forKeyedSubscript:@"sharingInstanceIdentifier"];
  v6 = [v5 copy];

  return v6;
}

@end