@interface PKPaymentNonceRequest
+ (id)nonceRequestWithBaseRequest:(id)request;
- (id)_legacyGetURLRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentNonceRequest

- (id)_legacyGetURLRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  pass = [(PKPaymentAugmentBaseRequest *)self pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  serialNumber = [pass serialNumber];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", identifierCopy, 0}];

  if (![(PKPaymentAugmentBaseRequest *)self type])
  {
    [v14 addObject:@"passes"];
    [v14 addObject:passTypeIdentifier];
    [v14 addObject:serialNumber];
  }

  endpointComponents = [(PKPaymentNonceRequest *)self endpointComponents];
  if ([endpointComponents count])
  {
    [v14 addObjectsFromArray:endpointComponents];
  }

  v16 = [v14 copy];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v16 queryParameters:0 appleAccountInformation:informationCopy];

  [v17 setHTTPMethod:@"GET"];
  v18 = [v17 copy];

  return v18;
}

+ (id)nonceRequestWithBaseRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(PKPaymentNonceRequest);
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
  [v3 addObject:@"nOnce"];
  [(PKPaymentAugmentBaseRequest *)self type];
  v4 = [v3 copy];

  return v4;
}

- (id)bodyDictionary
{
  v3 = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
  sHA256Hash = [v3 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:hexEncoding forKey:@"merchantId"];
  v10.receiver = self;
  v10.super_class = PKPaymentNonceRequest;
  bodyDictionary = [(PKPaymentAugmentBaseRequest *)&v10 bodyDictionary];
  [dictionary addEntriesFromDictionary:bodyDictionary];

  v8 = [dictionary copy];

  return v8;
}

@end