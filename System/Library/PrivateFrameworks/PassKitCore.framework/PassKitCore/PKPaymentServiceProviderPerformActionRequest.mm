@interface PKPaymentServiceProviderPerformActionRequest
- (PKPaymentServiceProviderPerformActionRequest)initWithAction:(id)a3 purchase:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentServiceProviderPerformActionRequest

- (PKPaymentServiceProviderPerformActionRequest)initWithAction:(id)a3 purchase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentServiceProviderPerformActionRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    action = v8->_action;
    v8->_action = v9;

    objc_storeStrong(&v8->_purchase, a4);
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v14[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"purchase";
  purchase = self->_purchase;
  v7 = a4;
  v8 = a3;
  v9 = [(PKServiceProviderPurchase *)purchase identifier];
  v14[1] = v9;
  v14[2] = @"action";
  v14[3] = self->_action;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v10 queryParameters:0 appleAccountInformation:v7];

  [v11 setHTTPMethod:@"POST"];
  v12 = [v11 copy];

  return v12;
}

@end