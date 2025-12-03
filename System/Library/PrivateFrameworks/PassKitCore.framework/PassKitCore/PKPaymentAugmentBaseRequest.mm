@interface PKPaymentAugmentBaseRequest
- (PKPaymentAugmentBaseRequest)initWithPaymentPass:(id)pass;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)bodyDictionary;
@end

@implementation PKPaymentAugmentBaseRequest

- (PKPaymentAugmentBaseRequest)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKPaymentAugmentBaseRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  pass = [(PKPaymentAugmentBaseRequest *)self pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  serialNumber = [pass serialNumber];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", identifierCopy, 0}];

  if (!self->_type)
  {
    [v14 addObject:@"passes"];
    [v14 addObject:passTypeIdentifier];
    [v14 addObject:serialNumber];
  }

  endpointComponents = [(PKPaymentAugmentBaseRequest *)self endpointComponents];
  if ([endpointComponents count])
  {
    [v14 addObjectsFromArray:endpointComponents];
  }

  v16 = [v14 copy];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v16 queryParameters:0 appleAccountInformation:informationCopy];

  [v17 setHTTPMethod:@"POST"];
  v18 = objc_opt_class();
  bodyDictionary = [(PKPaymentAugmentBaseRequest *)self bodyDictionary];
  v20 = [v18 _HTTPBodyWithDictionary:bodyDictionary];
  [v17 setHTTPBody:v20];

  v21 = [v17 copy];

  return v21;
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  merchantCountryCode = self->_merchantCountryCode;
  if (merchantCountryCode)
  {
    [v3 setObject:merchantCountryCode forKey:@"merchantCountryCode"];
  }

  pass = self->_pass;
  if (pass)
  {
    issuerCountryCode = [(PKSecureElementPass *)pass issuerCountryCode];
    [v4 setObject:issuerCountryCode forKey:@"issuerCountryCode"];
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v4 setObject:currencyCode forKey:@"currencyCode"];
  }

  applet = self->_applet;
  if (applet)
  {
    jsonDictionaryRepresentation = [(PKSecureElementApplet *)applet jsonDictionaryRepresentation];
    [v4 setObject:jsonDictionaryRepresentation forKey:@"appletInfo"];
  }

  paymentApplication = self->_paymentApplication;
  if (paymentApplication)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPaymentApplication paymentNetworkIdentifier](paymentApplication, "paymentNetworkIdentifier")}];
    [v4 setObject:v12 forKey:@"paymentNetworkIdentifier"];
  }

  v13 = [v4 copy];

  return v13;
}

@end