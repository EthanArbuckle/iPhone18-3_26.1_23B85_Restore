@interface PKPaymentDeprovisionRequest
- (PKPaymentDeprovisionRequest)initWithPaymentPass:(id)pass;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentDeprovisionRequest

- (PKPaymentDeprovisionRequest)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKPaymentDeprovisionRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v18[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"passes";
  pass = self->_pass;
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  passTypeIdentifier = [(PKPass *)pass passTypeIdentifier];
  v18[1] = passTypeIdentifier;
  serialNumber = [(PKPass *)self->_pass serialNumber];
  v18[2] = serialNumber;
  v18[3] = @"devices";
  v18[4] = identifierCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];

  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v14 queryParameters:0 appleAccountInformation:informationCopy];

  [v15 setHTTPMethod:@"DELETE"];
  v16 = [v15 copy];

  return v16;
}

@end