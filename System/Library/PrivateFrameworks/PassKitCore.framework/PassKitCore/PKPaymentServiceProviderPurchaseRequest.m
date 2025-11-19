@interface PKPaymentServiceProviderPurchaseRequest
- (PKPaymentServiceProviderPurchaseRequest)initWithPurchaseIdentifier:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentServiceProviderPurchaseRequest

- (PKPaymentServiceProviderPurchaseRequest)initWithPurchaseIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentServiceProviderPurchaseRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    purchaseIdentifier = v5->_purchaseIdentifier;
    v5->_purchaseIdentifier = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  purchaseIdentifier = self->_purchaseIdentifier;
  v14[0] = @"purchase";
  v14[1] = purchaseIdentifier;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:v14 count:2];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v9 endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  v12 = [v11 copy];

  return v12;
}

@end