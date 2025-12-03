@interface PKPaymentCommonAvailableProductsRequest
- (PKPaymentCommonAvailableProductsRequest)initWithCoder:(id)coder;
- (PKPaymentCommonAvailableProductsRequest)initWithContentURL:(id)l preferredLanguage:(id)language;
- (id)_urlRequest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentCommonAvailableProductsRequest

- (PKPaymentCommonAvailableProductsRequest)initWithContentURL:(id)l preferredLanguage:(id)language
{
  lCopy = l;
  languageCopy = language;
  v12.receiver = self;
  v12.super_class = PKPaymentCommonAvailableProductsRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentURL, l);
    objc_storeStrong(&v10->_preferredLanguage, language);
  }

  return v10;
}

- (id)_urlRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  targetDevice = [(PKPaymentWebServiceRequest *)self targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  [v3 setObject:deviceRegion forKeyedSubscript:@"region"];

  preferredLanguage = [(PKPaymentCommonAvailableProductsRequest *)self preferredLanguage];
  v7 = preferredLanguage;
  if (preferredLanguage)
  {
    pk_deviceLanguage = preferredLanguage;
  }

  else
  {
    pk_deviceLanguage = [MEMORY[0x1E695DF58] pk_deviceLanguage];
  }

  v9 = pk_deviceLanguage;

  [v3 setObject:v9 forKeyedSubscript:@"locale"];
  v10 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:self->_contentURL version:@"4" endpointComponents:&unk_1F23B4238 queryParameters:v3 appleAccountInformation:0];
  [v10 setHTTPMethod:@"GET"];
  [v10 setValue:v9 forHTTPHeaderField:@"Accept-Language"];
  v11 = [v10 copy];

  return v11;
}

- (PKPaymentCommonAvailableProductsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];

  if (v5)
  {
    self = [(PKPaymentCommonAvailableProductsRequest *)self initWithContentURL:v5 preferredLanguage:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentCommonAvailableProductsRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_preferredLanguage forKey:{@"preferredLanguage", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_contentURL forKey:@"contentURL"];
}

@end