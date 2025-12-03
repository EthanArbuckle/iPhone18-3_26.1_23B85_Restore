@interface PKPaymentAugmentSessionRequest
+ (id)augmentSessionRequestWithBaseRequest:(id)request;
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentAugmentSessionRequest

+ (id)augmentSessionRequestWithBaseRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(PKPaymentAugmentSessionRequest);
  -[PKPaymentAugmentBaseRequest setType:](v4, "setType:", [requestCopy type]);
  pass = [requestCopy pass];
  [(PKPaymentAugmentBaseRequest *)v4 setPass:pass];

  paymentApplication = [requestCopy paymentApplication];
  [(PKPaymentAugmentBaseRequest *)v4 setPaymentApplication:paymentApplication];

  applet = [requestCopy applet];
  [(PKPaymentAugmentBaseRequest *)v4 setApplet:applet];

  merchantCountryCode = [requestCopy merchantCountryCode];
  [(PKPaymentAugmentBaseRequest *)v4 setMerchantCountryCode:merchantCountryCode];

  currencyCode = [requestCopy currencyCode];
  [(PKPaymentAugmentBaseRequest *)v4 setCurrencyCode:currencyCode];

  boundInterfaceIdentifier = [requestCopy boundInterfaceIdentifier];

  [(PKWebServiceRequest *)v4 setBoundInterfaceIdentifier:boundInterfaceIdentifier];

  return v4;
}

- (id)endpointComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:@"augmentSession"];
  [(PKPaymentAugmentBaseRequest *)self type];
  v4 = [v3 copy];

  return v4;
}

- (id)bodyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  merchantIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  [dictionary setObject:merchantIdentifier forKey:@"merchantId"];

  merchantSessionIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantSessionIdentifier];
  [dictionary setObject:merchantSessionIdentifier forKey:@"merchantSessionId"];

  v9.receiver = self;
  v9.super_class = PKPaymentAugmentSessionRequest;
  bodyDictionary = [(PKPaymentAugmentBaseRequest *)&v9 bodyDictionary];
  [dictionary addEntriesFromDictionary:bodyDictionary];

  v7 = [dictionary copy];

  return v7;
}

@end