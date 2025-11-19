@interface PKAuxiliaryCapabilityRegistrationStateRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKAuxiliaryCapabilityRegistrationStateRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = @"devices";
  v16 = a4;
  v17 = @"registrationState";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v15 count:3];

  v13 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v15, v16, v17, v18];

  [v13 setHTTPMethod:@"GET"];

  return v13;
}

@end