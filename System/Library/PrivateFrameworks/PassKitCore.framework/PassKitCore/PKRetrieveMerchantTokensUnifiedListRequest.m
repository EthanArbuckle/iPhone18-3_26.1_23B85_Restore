@interface PKRetrieveMerchantTokensUnifiedListRequest
- (id)_urlRequestWithServiceURL:(id)a3 secureElementID:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKRetrieveMerchantTokensUnifiedListRequest

- (id)_urlRequestWithServiceURL:(id)a3 secureElementID:(id)a4 appleAccountInformation:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v15 = @"devices";
    v16 = a4;
    v17 = @"merchantTokens";
    v8 = MEMORY[0x1E695DEC8];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [v8 arrayWithObjects:&v15 count:3];

    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 version:@"1" endpointComponents:v12 queryParameters:MEMORY[0x1E695E0F8] appleAccountInformation:v9, v15, v16, v17, v18];

    [v13 setHTTPMethod:@"POST"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end