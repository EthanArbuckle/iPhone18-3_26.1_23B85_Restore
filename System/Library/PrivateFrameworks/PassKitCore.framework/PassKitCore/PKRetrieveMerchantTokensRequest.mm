@interface PKRetrieveMerchantTokensRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKRetrieveMerchantTokensRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v21[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v21[0] = @"passes";
  v9 = [(PKPass *)self->_pass passTypeIdentifier];
  v21[1] = v9;
  v10 = [(PKPass *)self->_pass serialNumber];
  v21[2] = v10;
  v21[3] = @"merchantTokens";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [(NSNumber *)self->_pageNumber stringValue];
  [v12 setObject:v13 forKeyedSubscript:@"pageNumber"];

  v14 = [(NSNumber *)self->_pageSize stringValue];
  [v12 setObject:v14 forKeyedSubscript:@"pageSize"];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [(PKSecureElementPass *)self->_pass primaryAccountIdentifier];
  [v15 setObject:v16 forKeyedSubscript:@"fpanId"];

  merchantTokenId = self->_merchantTokenId;
  if (merchantTokenId)
  {
    [v15 setObject:merchantTokenId forKeyedSubscript:@"merchantTokenId"];
  }

  v18 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v7 version:@"1" endpointComponents:v11 queryParameters:v12 appleAccountInformation:v8];
  [v18 setHTTPMethod:@"POST"];
  v19 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
  [v18 setHTTPBody:v19];

  return v18;
}

@end