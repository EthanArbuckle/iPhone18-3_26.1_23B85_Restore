@interface PKAMPCardInfoForMerchantRequest
- (PKAMPCardInfoForMerchantRequest)initWithMerchantIdentifier:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKAMPCardInfoForMerchantRequest

- (PKAMPCardInfoForMerchantRequest)initWithMerchantIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAMPCardInfoForMerchantRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = @"devices";
  v18 = a4;
  merchantIdentifier = self->_merchantIdentifier;
  v19 = @"merchant";
  v20 = merchantIdentifier;
  v21 = @"cardInfo";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:&v17 count:5];

  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 endpointComponents:v13 queryParameters:0 appleAccountInformation:v10, v17, v18, v19, v20, v21, v22];

  [v14 setHTTPMethod:@"GET"];
  [v14 setCachePolicy:1];
  v15 = [v14 copy];

  return v15;
}

@end