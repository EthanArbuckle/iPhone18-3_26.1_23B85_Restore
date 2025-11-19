@interface PKDeleteMerchantTokenRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKDeleteMerchantTokenRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  merchantTokenId = self->_merchantTokenId;
  v13[0] = @"merchantTokens";
  v13[1] = merchantTokenId;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:v13 count:2];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v9 version:@"1" endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"DELETE"];

  return v11;
}

@end