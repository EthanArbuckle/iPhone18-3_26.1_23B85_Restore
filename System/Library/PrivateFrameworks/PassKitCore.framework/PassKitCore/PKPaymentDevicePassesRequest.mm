@interface PKPaymentDevicePassesRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentDevicePassesRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v19[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  informationCopy = information;
  v19[0] = @"passes";
  v19[1] = @"devices";
  v19[2] = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  updatedSince = self->_updatedSince;
  if (updatedSince)
  {
    v17 = @"passesUpdatedSince";
    v18 = updatedSince;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v11 queryParameters:v13 appleAccountInformation:informationCopy];
  }

  else
  {
    v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v11 queryParameters:0 appleAccountInformation:informationCopy];
  }

  [v14 setHTTPMethod:@"GET"];
  v15 = [v14 copy];

  return v15;
}

@end