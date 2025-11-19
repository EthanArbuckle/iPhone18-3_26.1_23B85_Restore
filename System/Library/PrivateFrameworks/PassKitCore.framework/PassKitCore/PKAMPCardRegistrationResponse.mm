@interface PKAMPCardRegistrationResponse
- (PKAMPCardRegistrationResponse)initWithCardData:(id)a3 brokerURL:(id)a4 paymentServicesURL:(id)a5 error:(id)a6;
- (PKAMPCardRegistrationResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAMPCardRegistrationResponse

- (PKAMPCardRegistrationResponse)initWithCardData:(id)a3 brokerURL:(id)a4 paymentServicesURL:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PKAMPCardRegistrationResponse;
  v15 = [(PKAMPCardRegistrationResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_cardData, a3);
    objc_storeStrong(&v16->_brokerURL, a4);
    objc_storeStrong(&v16->_paymentServicesURL, a5);
    objc_storeStrong(&v16->_error, a6);
  }

  return v16;
}

- (PKAMPCardRegistrationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAMPCardRegistrationResponse;
  v5 = [(PKAMPCardRegistrationResponse *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardDataKey"];
    cardData = v5->_cardData;
    v5->_cardData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brokerURLKey"];
    brokerURL = v5->_brokerURL;
    v5->_brokerURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentServicesURLKey"];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorKey"];
    error = v5->_error;
    v5->_error = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cardData = self->_cardData;
  v5 = a3;
  [v5 encodeObject:cardData forKey:@"cardDataKey"];
  [v5 encodeObject:self->_brokerURL forKey:@"brokerURLKey"];
  [v5 encodeObject:self->_paymentServicesURL forKey:@"paymentServicesURLKey"];
  [v5 encodeObject:self->_error forKey:@"errorKey"];
}

@end