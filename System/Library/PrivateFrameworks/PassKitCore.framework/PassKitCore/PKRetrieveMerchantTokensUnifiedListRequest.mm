@interface PKRetrieveMerchantTokensUnifiedListRequest
- (id)_urlRequestWithServiceURL:(id)l secureElementID:(id)d appleAccountInformation:(id)information;
@end

@implementation PKRetrieveMerchantTokensUnifiedListRequest

- (id)_urlRequestWithServiceURL:(id)l secureElementID:(id)d appleAccountInformation:(id)information
{
  v18 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v15 = @"devices";
    dCopy = d;
    v17 = @"merchantTokens";
    v8 = MEMORY[0x1E695DEC8];
    informationCopy = information;
    dCopy2 = d;
    lCopy = l;
    v12 = [v8 arrayWithObjects:&v15 count:3];

    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v12 queryParameters:MEMORY[0x1E695E0F8] appleAccountInformation:informationCopy, v15, dCopy, v17, v18];

    [v13 setHTTPMethod:@"POST"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end