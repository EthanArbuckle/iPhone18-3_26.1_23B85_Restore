@interface PKPaymentUnregisterRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 companionSerialNumber:(id)a5 appleAccountInformation:(id)a6;
@end

@implementation PKPaymentUnregisterRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 companionSerialNumber:(id)a5 appleAccountInformation:(id)a6
{
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v19[0] = @"devices";
  v19[1] = a4;
  v11 = MEMORY[0x1E695DEC8];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v11 arrayWithObjects:v19 count:2];

  v16 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v14 endpointComponents:v15 queryParameters:0 appleAccountInformation:v12];

  [v16 setHTTPMethod:@"DELETE"];
  [v16 setCachePolicy:1];
  if (v10)
  {
    [v16 setValue:v10 forHTTPHeaderField:@"X-Companion-Serial-Number"];
  }

  v17 = [v16 copy];

  return v17;
}

@end