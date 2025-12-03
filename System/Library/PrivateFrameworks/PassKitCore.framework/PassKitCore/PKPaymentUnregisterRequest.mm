@interface PKPaymentUnregisterRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier companionSerialNumber:(id)number appleAccountInformation:(id)information;
@end

@implementation PKPaymentUnregisterRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier companionSerialNumber:(id)number appleAccountInformation:(id)information
{
  v19[2] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v19[0] = @"devices";
  v19[1] = identifier;
  v11 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v15 = [v11 arrayWithObjects:v19 count:2];

  v16 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v15 queryParameters:0 appleAccountInformation:informationCopy];

  [v16 setHTTPMethod:@"DELETE"];
  [v16 setCachePolicy:1];
  if (numberCopy)
  {
    [v16 setValue:numberCopy forHTTPHeaderField:@"X-Companion-Serial-Number"];
  }

  v17 = [v16 copy];

  return v17;
}

@end