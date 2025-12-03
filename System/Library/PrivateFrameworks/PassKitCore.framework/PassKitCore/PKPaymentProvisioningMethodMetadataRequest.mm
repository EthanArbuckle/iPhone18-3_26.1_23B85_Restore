@interface PKPaymentProvisioningMethodMetadataRequest
- (PKPaymentProvisioningMethodMetadataRequest)initWithProductIdentifier:(id)identifier provisioningMethod:(id)method;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentProvisioningMethodMetadataRequest

- (PKPaymentProvisioningMethodMetadataRequest)initWithProductIdentifier:(id)identifier provisioningMethod:(id)method
{
  identifierCopy = identifier;
  methodCopy = method;
  v14.receiver = self;
  v14.super_class = PKPaymentProvisioningMethodMetadataRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    productIdentifier = v8->_productIdentifier;
    v8->_productIdentifier = v9;

    v11 = [methodCopy copy];
    provisioningMethod = v8->_provisioningMethod;
    v8->_provisioningMethod = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v17[6] = *MEMORY[0x1E69E9840];
  v17[0] = @"devices";
  v17[1] = identifier;
  productIdentifier = self->_productIdentifier;
  v17[2] = @"products";
  v17[3] = productIdentifier;
  v17[4] = self->_provisioningMethod;
  v17[5] = @"provisioningMethod";
  v9 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v13 = [v9 arrayWithObjects:v17 count:6];

  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v13 queryParameters:0 appleAccountInformation:informationCopy];

  [v14 setHTTPMethod:@"GET"];
  v15 = [v14 copy];

  return v15;
}

@end