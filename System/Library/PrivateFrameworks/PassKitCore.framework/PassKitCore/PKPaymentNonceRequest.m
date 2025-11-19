@interface PKPaymentNonceRequest
+ (id)nonceRequestWithBaseRequest:(id)a3;
- (id)_legacyGetURLRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentNonceRequest

- (id)_legacyGetURLRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKPaymentAugmentBaseRequest *)self pass];
  v12 = [v11 passTypeIdentifier];
  v13 = [v11 serialNumber];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", v9, 0}];

  if (![(PKPaymentAugmentBaseRequest *)self type])
  {
    [v14 addObject:@"passes"];
    [v14 addObject:v12];
    [v14 addObject:v13];
  }

  v15 = [(PKPaymentNonceRequest *)self endpointComponents];
  if ([v15 count])
  {
    [v14 addObjectsFromArray:v15];
  }

  v16 = [v14 copy];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v10 endpointComponents:v16 queryParameters:0 appleAccountInformation:v8];

  [v17 setHTTPMethod:@"GET"];
  v18 = [v17 copy];

  return v18;
}

+ (id)nonceRequestWithBaseRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentNonceRequest);
  -[PKPaymentAugmentBaseRequest setType:](v4, "setType:", [v3 type]);
  v5 = [v3 pass];
  [(PKPaymentAugmentBaseRequest *)v4 setPass:v5];

  v6 = [v3 paymentApplication];
  [(PKPaymentAugmentBaseRequest *)v4 setPaymentApplication:v6];

  v7 = [v3 applet];
  [(PKPaymentAugmentBaseRequest *)v4 setApplet:v7];

  v8 = [v3 merchantCountryCode];
  [(PKPaymentAugmentBaseRequest *)v4 setMerchantCountryCode:v8];

  v9 = [v3 currencyCode];
  [(PKPaymentAugmentBaseRequest *)v4 setCurrencyCode:v9];

  v10 = [v3 boundInterfaceIdentifier];

  [(PKWebServiceRequest *)v4 setBoundInterfaceIdentifier:v10];

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
  v4 = [v3 SHA256Hash];
  v5 = [v4 hexEncoding];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setValue:v5 forKey:@"merchantId"];
  v10.receiver = self;
  v10.super_class = PKPaymentNonceRequest;
  v7 = [(PKPaymentAugmentBaseRequest *)&v10 bodyDictionary];
  [v6 addEntriesFromDictionary:v7];

  v8 = [v6 copy];

  return v8;
}

@end