@interface PKPaymentUpdateRegistrationDataRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentUpdateRegistrationDataRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"devices";
  v16[1] = identifier;
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:v16 count:2];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

  [v13 setHTTPMethod:@"GET"];
  v14 = [v13 copy];

  return v14;
}

@end