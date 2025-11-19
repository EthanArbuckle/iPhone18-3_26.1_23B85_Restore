@interface PKPaymentUpdateRegistrationDataRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentUpdateRegistrationDataRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"devices";
  v16[1] = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:v16 count:2];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9];

  [v13 setHTTPMethod:@"GET"];
  v14 = [v13 copy];

  return v14;
}

@end