@interface PKAuxiliaryCapabilityRegistrationStateRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKAuxiliaryCapabilityRegistrationStateRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = @"devices";
  identifierCopy = identifier;
  v17 = @"registrationState";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v15 count:3];

  v13 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v15, identifierCopy, v17, v18];

  [v13 setHTTPMethod:@"GET"];

  return v13;
}

@end