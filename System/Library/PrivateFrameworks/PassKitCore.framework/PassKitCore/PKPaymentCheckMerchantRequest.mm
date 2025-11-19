@interface PKPaymentCheckMerchantRequest
- (PKPaymentCheckMerchantRequest)initWithMerchantIdentifier:(id)a3 domainName:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3;
@end

@implementation PKPaymentCheckMerchantRequest

- (PKPaymentCheckMerchantRequest)initWithMerchantIdentifier:(id)a3 domainName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentCheckMerchantRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    merchantIdentifier = v8->_merchantIdentifier;
    v8->_merchantIdentifier = v9;

    v11 = [v7 copy];
    domainName = v8->_domainName;
    v8->_domainName = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  merchantIdentifier = self->_merchantIdentifier;
  v5 = a3;
  v6 = [(NSString *)merchantIdentifier dataUsingEncoding:4];
  v7 = [v6 SHA256Hash];
  v8 = [v7 hexEncoding];
  v9 = [v8 uppercaseString];

  v16[0] = @"checkStatus";
  v16[1] = @"merchant";
  v16[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v5 endpointComponents:v10 queryParameters:0 appleAccountInformation:0];

  [v11 setHTTPMethod:@"POST"];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  [v12 setObject:self->_domainName forKey:@"domainName"];
  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
  [v11 setHTTPBody:v13];

  v14 = [v11 copy];

  return v14;
}

@end