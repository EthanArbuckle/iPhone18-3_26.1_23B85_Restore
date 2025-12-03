@interface PKPaymentRemoteContentPassActionRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number appleAccountInformation:(id)information;
@end

@implementation PKPaymentRemoteContentPassActionRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number appleAccountInformation:(id)information
{
  v28[7] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  numberCopy = number;
  action = self->_action;
  informationCopy = information;
  lCopy = l;
  appletData = [(PKPaymentPassAction *)action appletData];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = v19;
  if (appletData)
  {
    [v19 setObject:appletData forKey:@"appletData"];
  }

  v28[0] = @"devices";
  v28[1] = identifierCopy;
  v28[2] = @"passes";
  v28[3] = typeIdentifierCopy;
  v28[4] = numberCopy;
  v28[5] = @"actions";
  identifier = [(PKPaymentPassAction *)self->_action identifier];
  v28[6] = identifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:7];
  v22 = v27 = identifierCopy;
  v23 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v22 queryParameters:0 appleAccountInformation:informationCopy];

  v24 = [objc_opt_class() _HTTPBodyWithDictionary:v20];
  [v23 setHTTPBody:v24];

  [v23 setHTTPMethod:@"POST"];
  v25 = [v23 copy];

  return v25;
}

@end