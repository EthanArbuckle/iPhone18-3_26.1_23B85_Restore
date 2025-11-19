@interface PKPaymentProductsActionRequest
- (PKPaymentProductsActionRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentProductsActionRequest

- (PKPaymentProductsActionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentProductsActionRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentProductsActionRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_action forKey:{@"action", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  productIdentifier = self->_productIdentifier;
  if (productIdentifier && v9 && self->_action)
  {
    v23[0] = @"devices";
    v23[1] = v9;
    v23[2] = @"products";
    v23[3] = productIdentifier;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v12 queryParameters:0 appleAccountInformation:v10];

    [v13 setHTTPMethod:@"POST"];
    v14 = objc_opt_class();
    action = self->_action;
    v21 = @"action";
    v22 = action;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v17 = [v14 _HTTPBodyWithDictionary:v16];
    [v13 setHTTPBody:v17];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Missing values requied for request: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

@end