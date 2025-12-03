@interface PKAMPCardRegistrationResponse
- (PKAMPCardRegistrationResponse)initWithCardData:(id)data brokerURL:(id)l paymentServicesURL:(id)rL error:(id)error;
- (PKAMPCardRegistrationResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAMPCardRegistrationResponse

- (PKAMPCardRegistrationResponse)initWithCardData:(id)data brokerURL:(id)l paymentServicesURL:(id)rL error:(id)error
{
  dataCopy = data;
  lCopy = l;
  rLCopy = rL;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = PKAMPCardRegistrationResponse;
  v15 = [(PKAMPCardRegistrationResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_cardData, data);
    objc_storeStrong(&v16->_brokerURL, l);
    objc_storeStrong(&v16->_paymentServicesURL, rL);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

- (PKAMPCardRegistrationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAMPCardRegistrationResponse;
  v5 = [(PKAMPCardRegistrationResponse *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardDataKey"];
    cardData = v5->_cardData;
    v5->_cardData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brokerURLKey"];
    brokerURL = v5->_brokerURL;
    v5->_brokerURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentServicesURLKey"];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorKey"];
    error = v5->_error;
    v5->_error = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cardData = self->_cardData;
  coderCopy = coder;
  [coderCopy encodeObject:cardData forKey:@"cardDataKey"];
  [coderCopy encodeObject:self->_brokerURL forKey:@"brokerURLKey"];
  [coderCopy encodeObject:self->_paymentServicesURL forKey:@"paymentServicesURLKey"];
  [coderCopy encodeObject:self->_error forKey:@"errorKey"];
}

@end