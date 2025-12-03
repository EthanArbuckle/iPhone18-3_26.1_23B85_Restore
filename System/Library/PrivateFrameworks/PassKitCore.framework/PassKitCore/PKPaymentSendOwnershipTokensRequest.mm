@interface PKPaymentSendOwnershipTokensRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier deviceMetadata:(id)metadata appleAccountInformation:(id)information;
@end

@implementation PKPaymentSendOwnershipTokensRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier deviceMetadata:(id)metadata appleAccountInformation:(id)information
{
  v39[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  metadataCopy = metadata;
  informationCopy = information;
  v39[0] = @"devices";
  v39[1] = identifierCopy;
  v39[2] = @"ownershipTokens";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v14 queryParameters:0 appleAccountInformation:informationCopy];

  [v15 setHTTPMethod:@"POST"];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (metadataCopy)
  {
    dictionaryRepresentation = [metadataCopy dictionaryRepresentation];
    [v16 setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  reason = self->_reason;
  v32 = identifierCopy;
  v33 = lCopy;
  v31 = informationCopy;
  if (reason > 2)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E79DB118[reason];
  }

  [v16 setObject:v19 forKey:@"reason"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = self->_passOwnershipTokens;
  v22 = [(NSSet *)v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        dictionaryRepresentation2 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
        [v20 addObject:dictionaryRepresentation2];
      }

      v23 = [(NSSet *)v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  if ([v20 count])
  {
    v27 = [v20 copy];
    [v16 setObject:v27 forKey:@"ownershipTokens"];
  }

  v28 = [objc_opt_class() _HTTPBodyWithDictionary:v16];
  [v15 setHTTPBody:v28];

  v29 = [v15 copy];

  return v29;
}

@end