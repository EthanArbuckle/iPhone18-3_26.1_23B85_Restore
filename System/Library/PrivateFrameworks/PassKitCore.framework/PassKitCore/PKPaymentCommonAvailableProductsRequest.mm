@interface PKPaymentCommonAvailableProductsRequest
- (PKPaymentCommonAvailableProductsRequest)initWithCoder:(id)a3;
- (PKPaymentCommonAvailableProductsRequest)initWithContentURL:(id)a3 preferredLanguage:(id)a4;
- (id)_urlRequest;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentCommonAvailableProductsRequest

- (PKPaymentCommonAvailableProductsRequest)initWithContentURL:(id)a3 preferredLanguage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentCommonAvailableProductsRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentURL, a3);
    objc_storeStrong(&v10->_preferredLanguage, a4);
  }

  return v10;
}

- (id)_urlRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKPaymentWebServiceRequest *)self targetDevice];
  v5 = [v4 deviceRegion];
  [v3 setObject:v5 forKeyedSubscript:@"region"];

  v6 = [(PKPaymentCommonAvailableProductsRequest *)self preferredLanguage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF58] pk_deviceLanguage];
  }

  v9 = v8;

  [v3 setObject:v9 forKeyedSubscript:@"locale"];
  v10 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:self->_contentURL version:@"4" endpointComponents:&unk_1F23B4238 queryParameters:v3 appleAccountInformation:0];
  [v10 setHTTPMethod:@"GET"];
  [v10 setValue:v9 forHTTPHeaderField:@"Accept-Language"];
  v11 = [v10 copy];

  return v11;
}

- (PKPaymentCommonAvailableProductsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];

  if (v5)
  {
    self = [(PKPaymentCommonAvailableProductsRequest *)self initWithContentURL:v5 preferredLanguage:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentCommonAvailableProductsRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_preferredLanguage forKey:{@"preferredLanguage", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_contentURL forKey:@"contentURL"];
}

@end