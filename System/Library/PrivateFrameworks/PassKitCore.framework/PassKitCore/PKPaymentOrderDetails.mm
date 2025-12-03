@interface PKPaymentOrderDetails
- (PKPaymentOrderDetails)initWithCoder:(id)coder;
- (PKPaymentOrderDetails)initWithOrderTypeIdentifier:(NSString *)orderTypeIdentifier orderIdentifier:(NSString *)orderIdentifier webServiceURL:(NSURL *)webServiceURL authenticationToken:(NSString *)authenticationToken;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOrderDetails

- (PKPaymentOrderDetails)initWithOrderTypeIdentifier:(NSString *)orderTypeIdentifier orderIdentifier:(NSString *)orderIdentifier webServiceURL:(NSURL *)webServiceURL authenticationToken:(NSString *)authenticationToken
{
  v10 = orderTypeIdentifier;
  v11 = orderIdentifier;
  v12 = webServiceURL;
  v13 = authenticationToken;
  v22.receiver = self;
  v22.super_class = PKPaymentOrderDetails;
  v14 = [(PKPaymentOrderDetails *)&v22 init];
  if (v14)
  {
    v15 = [(NSString *)v10 copy];
    v16 = v14->_orderTypeIdentifier;
    v14->_orderTypeIdentifier = v15;

    v17 = [(NSString *)v11 copy];
    v18 = v14->_orderIdentifier;
    v14->_orderIdentifier = v17;

    objc_storeStrong(&v14->_webServiceURL, webServiceURL);
    v19 = [(NSString *)v13 copy];
    v20 = v14->_authenticationToken;
    v14->_authenticationToken = v19;
  }

  return v14;
}

- (PKPaymentOrderDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPaymentOrderDetails;
  v5 = [(PKPaymentOrderDetails *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderTypeIdentifier"];
    orderTypeIdentifier = v5->_orderTypeIdentifier;
    v5->_orderTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderIdentifier"];
    orderIdentifier = v5->_orderIdentifier;
    v5->_orderIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webServiceURL"];
    webServiceURL = v5->_webServiceURL;
    v5->_webServiceURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
    authenticationToken = v5->_authenticationToken;
    v5->_authenticationToken = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  orderTypeIdentifier = self->_orderTypeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:orderTypeIdentifier forKey:@"orderTypeIdentifier"];
  [coderCopy encodeObject:self->_orderIdentifier forKey:@"orderIdentifier"];
  [coderCopy encodeObject:self->_webServiceURL forKey:@"webServiceURL"];
  [coderCopy encodeObject:self->_authenticationToken forKey:@"authenticationToken"];
}

@end