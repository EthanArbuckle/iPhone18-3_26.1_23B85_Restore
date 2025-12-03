@interface PKPaymentAvailableProductsRequest
- (PKPaymentAvailableProductsRequest)initWithCoder:(id)coder;
- (PKPaymentAvailableProductsRequest)initWithPreferredLanguage:(id)language;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentAvailableProductsRequest

- (PKPaymentAvailableProductsRequest)initWithPreferredLanguage:(id)language
{
  languageCopy = language;
  v9.receiver = self;
  v9.super_class = PKPaymentAvailableProductsRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferredLanguage, language);
  }

  return v7;
}

- (PKPaymentAvailableProductsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentAvailableProductsRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v6;

    v5->_context = [coderCopy decodeIntegerForKey:@"context"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentAvailableProductsRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_preferredLanguage forKey:{@"preferredLanguage", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_context forKey:@"context"];
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v26[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationCopy = information;
  lCopy = l;
  cachePolicyOverride = [(PKWebServiceRequest *)self cachePolicyOverride];
  if (cachePolicyOverride == 4 || cachePolicyOverride == 1)
  {
    [(PKWebServiceRequest *)self addDiagnosticReason:@"Ignoring cache"];
  }

  v26[0] = @"devices";
  v26[1] = identifierCopy;
  v26[2] = @"products";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"4" endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

  if (self->_preferredLanguage)
  {
    v14 = [v13 valueForHTTPHeaderField:@"Accept-Language"];
    preferredLanguage = self->_preferredLanguage;
    v16 = v14;
    v17 = preferredLanguage;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if (v16 && v17)
      {
        v19 = [(NSString *)v16 isEqualToString:v17];

        if (v19)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      [v13 setValue:self->_preferredLanguage forHTTPHeaderField:@"Accept-Language"];
    }

LABEL_13:
  }

  context = self->_context;
  if (PKPreferenceBOOLforKey(@"PKDoNotSendProductsContextKey"))
  {
    v21 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 0;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKDoNotSendProductsContextKey set so skipping passed in context value", v25, 2u);
    }

LABEL_20:
    [v13 setHTTPMethod:@"GET"];
    goto LABEL_21;
  }

  if (context != 1)
  {
    if (context)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [v13 setHTTPMethod:@"POST"];
  v24 = [objc_opt_class() _HTTPBodyWithDictionary:&unk_1F23B6328];
  [v13 setHTTPBody:v24];

LABEL_21:
  v22 = [v13 copy];

  return v22;
}

@end