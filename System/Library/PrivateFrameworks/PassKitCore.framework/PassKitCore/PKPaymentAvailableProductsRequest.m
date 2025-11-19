@interface PKPaymentAvailableProductsRequest
- (PKPaymentAvailableProductsRequest)initWithCoder:(id)a3;
- (PKPaymentAvailableProductsRequest)initWithPreferredLanguage:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentAvailableProductsRequest

- (PKPaymentAvailableProductsRequest)initWithPreferredLanguage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAvailableProductsRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferredLanguage, a3);
  }

  return v7;
}

- (PKPaymentAvailableProductsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAvailableProductsRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v6;

    v5->_context = [v4 decodeIntegerForKey:@"context"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentAvailableProductsRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_preferredLanguage forKey:{@"preferredLanguage", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_context forKey:@"context"];
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(PKWebServiceRequest *)self cachePolicyOverride];
  if (v11 == 4 || v11 == 1)
  {
    [(PKWebServiceRequest *)self addDiagnosticReason:@"Ignoring cache"];
  }

  v26[0] = @"devices";
  v26[1] = v8;
  v26[2] = @"products";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v10 version:@"4" endpointComponents:v12 queryParameters:0 appleAccountInformation:v9];

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