@interface PKPaymentAugmentBaseRequest
- (PKPaymentAugmentBaseRequest)initWithPaymentPass:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)bodyDictionary;
@end

@implementation PKPaymentAugmentBaseRequest

- (PKPaymentAugmentBaseRequest)initWithPaymentPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAugmentBaseRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKPaymentAugmentBaseRequest *)self pass];
  v12 = [v11 passTypeIdentifier];
  v13 = [v11 serialNumber];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", v9, 0}];

  if (!self->_type)
  {
    [v14 addObject:@"passes"];
    [v14 addObject:v12];
    [v14 addObject:v13];
  }

  v15 = [(PKPaymentAugmentBaseRequest *)self endpointComponents];
  if ([v15 count])
  {
    [v14 addObjectsFromArray:v15];
  }

  v16 = [v14 copy];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v10 endpointComponents:v16 queryParameters:0 appleAccountInformation:v8];

  [v17 setHTTPMethod:@"POST"];
  v18 = objc_opt_class();
  v19 = [(PKPaymentAugmentBaseRequest *)self bodyDictionary];
  v20 = [v18 _HTTPBodyWithDictionary:v19];
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
    v7 = [(PKSecureElementPass *)pass issuerCountryCode];
    [v4 setObject:v7 forKey:@"issuerCountryCode"];
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v4 setObject:currencyCode forKey:@"currencyCode"];
  }

  applet = self->_applet;
  if (applet)
  {
    v10 = [(PKSecureElementApplet *)applet jsonDictionaryRepresentation];
    [v4 setObject:v10 forKey:@"appletInfo"];
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