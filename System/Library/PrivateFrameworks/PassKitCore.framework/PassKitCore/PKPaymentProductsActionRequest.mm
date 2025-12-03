@interface PKPaymentProductsActionRequest
- (PKPaymentProductsActionRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentProductsActionRequest

- (PKPaymentProductsActionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentProductsActionRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentProductsActionRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_action forKey:{@"action", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  informationCopy = information;
  productIdentifier = self->_productIdentifier;
  if (productIdentifier && identifierCopy && self->_action)
  {
    v23[0] = @"devices";
    v23[1] = identifierCopy;
    v23[2] = @"products";
    v23[3] = productIdentifier;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

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