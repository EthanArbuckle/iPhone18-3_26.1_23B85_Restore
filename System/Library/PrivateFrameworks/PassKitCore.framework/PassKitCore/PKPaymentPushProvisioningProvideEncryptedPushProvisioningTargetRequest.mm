@interface PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest
- (PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest)initWithEncryptedPushProvisioningTarget:(id)a3 sharingInstanceIdentifier:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)requestBody;
@end

@implementation PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest

- (PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest)initWithEncryptedPushProvisioningTarget:(id)a3 sharingInstanceIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_encryptedPushProvisioningTarget, a3);
    objc_storeStrong(&v10->_sharingInstanceIdentifier, a4);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  v20 = a4;
  v21 = @"pushProvisioningTarget";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v19, v20, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  v15 = [(PKPaymentPushProvisioningProvideEncryptedPushProvisioningTargetRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:v15];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

- (id)requestBody
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(PKEncryptedPushProvisioningTarget *)self->_encryptedPushProvisioningTarget asWebServiceDictionary];
  v5 = [v3 initWithDictionary:v4];

  [v5 setObject:self->_sharingInstanceIdentifier forKeyedSubscript:@"sharingInstanceIdentifier"];
  v6 = [v5 copy];

  return v6;
}

@end