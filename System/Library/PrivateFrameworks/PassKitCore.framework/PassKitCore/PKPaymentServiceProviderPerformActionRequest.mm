@interface PKPaymentServiceProviderPerformActionRequest
- (PKPaymentServiceProviderPerformActionRequest)initWithAction:(id)action purchase:(id)purchase;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentServiceProviderPerformActionRequest

- (PKPaymentServiceProviderPerformActionRequest)initWithAction:(id)action purchase:(id)purchase
{
  actionCopy = action;
  purchaseCopy = purchase;
  v12.receiver = self;
  v12.super_class = PKPaymentServiceProviderPerformActionRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v12 init];
  if (v8)
  {
    v9 = [actionCopy copy];
    action = v8->_action;
    v8->_action = v9;

    objc_storeStrong(&v8->_purchase, purchase);
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v14[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"purchase";
  purchase = self->_purchase;
  informationCopy = information;
  lCopy = l;
  identifier = [(PKServiceProviderPurchase *)purchase identifier];
  v14[1] = identifier;
  v14[2] = @"action";
  v14[3] = self->_action;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy];

  [v11 setHTTPMethod:@"POST"];
  v12 = [v11 copy];

  return v12;
}

@end