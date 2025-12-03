@interface PKAMPCardInfoForMerchantRequest
- (PKAMPCardInfoForMerchantRequest)initWithMerchantIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKAMPCardInfoForMerchantRequest

- (PKAMPCardInfoForMerchantRequest)initWithMerchantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKAMPCardInfoForMerchantRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = @"devices";
  identifierCopy = identifier;
  merchantIdentifier = self->_merchantIdentifier;
  v19 = @"merchant";
  v20 = merchantIdentifier;
  v21 = @"cardInfo";
  v9 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v13 = [v9 arrayWithObjects:&v17 count:5];

  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v13 queryParameters:0 appleAccountInformation:informationCopy, v17, identifierCopy, v19, v20, v21, v22];

  [v14 setHTTPMethod:@"GET"];
  [v14 setCachePolicy:1];
  v15 = [v14 copy];

  return v15;
}

@end