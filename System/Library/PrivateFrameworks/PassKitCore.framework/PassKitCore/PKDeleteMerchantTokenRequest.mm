@interface PKDeleteMerchantTokenRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKDeleteMerchantTokenRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v13[2] = *MEMORY[0x1E69E9840];
  merchantTokenId = self->_merchantTokenId;
  v13[0] = @"merchantTokens";
  v13[1] = merchantTokenId;
  v7 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v10 = [v7 arrayWithObjects:v13 count:2];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy];

  [v11 setHTTPMethod:@"DELETE"];

  return v11;
}

@end