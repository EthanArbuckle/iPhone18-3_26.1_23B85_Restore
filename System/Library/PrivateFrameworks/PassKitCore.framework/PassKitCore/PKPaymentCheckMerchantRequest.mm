@interface PKPaymentCheckMerchantRequest
- (PKPaymentCheckMerchantRequest)initWithMerchantIdentifier:(id)identifier domainName:(id)name;
- (id)_urlRequestWithServiceURL:(id)l;
@end

@implementation PKPaymentCheckMerchantRequest

- (PKPaymentCheckMerchantRequest)initWithMerchantIdentifier:(id)identifier domainName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PKPaymentCheckMerchantRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    merchantIdentifier = v8->_merchantIdentifier;
    v8->_merchantIdentifier = v9;

    v11 = [nameCopy copy];
    domainName = v8->_domainName;
    v8->_domainName = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)l
{
  v16[3] = *MEMORY[0x1E69E9840];
  merchantIdentifier = self->_merchantIdentifier;
  lCopy = l;
  v6 = [(NSString *)merchantIdentifier dataUsingEncoding:4];
  sHA256Hash = [v6 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];
  uppercaseString = [hexEncoding uppercaseString];

  v16[0] = @"checkStatus";
  v16[1] = @"merchant";
  v16[2] = uppercaseString;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:0];

  [v11 setHTTPMethod:@"POST"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_domainName forKey:@"domainName"];
  v13 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v11 setHTTPBody:v13];

  v14 = [v11 copy];

  return v14;
}

@end