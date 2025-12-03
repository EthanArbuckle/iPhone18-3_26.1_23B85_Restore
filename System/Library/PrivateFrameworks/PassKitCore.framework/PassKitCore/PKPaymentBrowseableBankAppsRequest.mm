@interface PKPaymentBrowseableBankAppsRequest
- (PKPaymentBrowseableBankAppsRequest)initWithRegion:(id)region;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentBrowseableBankAppsRequest

- (PKPaymentBrowseableBankAppsRequest)initWithRegion:(id)region
{
  regionCopy = region;
  v9.receiver = self;
  v9.super_class = PKPaymentBrowseableBankAppsRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [regionCopy copy];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v20[1] = *MEMORY[0x1E69E9840];
  region = self->_region;
  v19 = @"region";
  v20[0] = region;
  v9 = MEMORY[0x1E695DF20];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v13 = [v9 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18[0] = @"devices";
  v18[1] = identifierCopy;
  v18[2] = @"partners";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v14 queryParameters:v13 appleAccountInformation:informationCopy];

  [v15 setHTTPMethod:@"GET"];
  v16 = [v15 copy];

  return v16;
}

@end