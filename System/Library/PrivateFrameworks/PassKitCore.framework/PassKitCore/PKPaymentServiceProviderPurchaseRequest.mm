@interface PKPaymentServiceProviderPurchaseRequest
- (PKPaymentServiceProviderPurchaseRequest)initWithPurchaseIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentServiceProviderPurchaseRequest

- (PKPaymentServiceProviderPurchaseRequest)initWithPurchaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPaymentServiceProviderPurchaseRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    purchaseIdentifier = v5->_purchaseIdentifier;
    v5->_purchaseIdentifier = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v14[2] = *MEMORY[0x1E69E9840];
  purchaseIdentifier = self->_purchaseIdentifier;
  v14[0] = @"purchase";
  v14[1] = purchaseIdentifier;
  v7 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v10 = [v7 arrayWithObjects:v14 count:2];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy];

  [v11 setHTTPMethod:@"POST"];
  v12 = [v11 copy];

  return v12;
}

@end