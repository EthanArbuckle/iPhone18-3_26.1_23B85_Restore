@interface PKRetrieveMerchantTokensRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKRetrieveMerchantTokensRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v21[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v21[0] = @"passes";
  passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
  v21[1] = passTypeIdentifier;
  serialNumber = [(PKPass *)self->_pass serialNumber];
  v21[2] = serialNumber;
  v21[3] = @"merchantTokens";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  stringValue = [(NSNumber *)self->_pageNumber stringValue];
  [dictionary setObject:stringValue forKeyedSubscript:@"pageNumber"];

  stringValue2 = [(NSNumber *)self->_pageSize stringValue];
  [dictionary setObject:stringValue2 forKeyedSubscript:@"pageSize"];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  primaryAccountIdentifier = [(PKSecureElementPass *)self->_pass primaryAccountIdentifier];
  [v15 setObject:primaryAccountIdentifier forKeyedSubscript:@"fpanId"];

  merchantTokenId = self->_merchantTokenId;
  if (merchantTokenId)
  {
    [v15 setObject:merchantTokenId forKeyedSubscript:@"merchantTokenId"];
  }

  v18 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v11 queryParameters:dictionary appleAccountInformation:informationCopy];
  [v18 setHTTPMethod:@"POST"];
  v19 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
  [v18 setHTTPBody:v19];

  return v18;
}

@end