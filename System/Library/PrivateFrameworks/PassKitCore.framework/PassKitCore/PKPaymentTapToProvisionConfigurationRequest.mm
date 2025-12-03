@interface PKPaymentTapToProvisionConfigurationRequest
- (PKPaymentTapToProvisionConfigurationRequest)init;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentTapToProvisionConfigurationRequest

- (PKPaymentTapToProvisionConfigurationRequest)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentTapToProvisionConfigurationRequest;
  return [(PKOverlayableWebServiceRequest *)&v3 init];
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = @"devices";
  identifierCopy = identifier;
  v18 = @"tapToProvisionConfiguration";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v16 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"4" endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v16, identifierCopy, v18, v19];

  [v13 setHTTPMethod:@"GET"];
  v14 = [v13 copy];

  return v14;
}

@end