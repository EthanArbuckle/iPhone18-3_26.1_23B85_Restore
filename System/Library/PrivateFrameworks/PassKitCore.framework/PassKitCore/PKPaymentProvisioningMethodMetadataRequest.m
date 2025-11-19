@interface PKPaymentProvisioningMethodMetadataRequest
- (PKPaymentProvisioningMethodMetadataRequest)initWithProductIdentifier:(id)a3 provisioningMethod:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentProvisioningMethodMetadataRequest

- (PKPaymentProvisioningMethodMetadataRequest)initWithProductIdentifier:(id)a3 provisioningMethod:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentProvisioningMethodMetadataRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    productIdentifier = v8->_productIdentifier;
    v8->_productIdentifier = v9;

    v11 = [v7 copy];
    provisioningMethod = v8->_provisioningMethod;
    v8->_provisioningMethod = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v17[6] = *MEMORY[0x1E69E9840];
  v17[0] = @"devices";
  v17[1] = a4;
  productIdentifier = self->_productIdentifier;
  v17[2] = @"products";
  v17[3] = productIdentifier;
  v17[4] = self->_provisioningMethod;
  v17[5] = @"provisioningMethod";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:v17 count:6];

  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 endpointComponents:v13 queryParameters:0 appleAccountInformation:v10];

  [v14 setHTTPMethod:@"GET"];
  v15 = [v14 copy];

  return v15;
}

@end