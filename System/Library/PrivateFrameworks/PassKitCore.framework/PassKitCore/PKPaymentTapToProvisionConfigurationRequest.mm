@interface PKPaymentTapToProvisionConfigurationRequest
- (PKPaymentTapToProvisionConfigurationRequest)init;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentTapToProvisionConfigurationRequest

- (PKPaymentTapToProvisionConfigurationRequest)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentTapToProvisionConfigurationRequest;
  return [(PKOverlayableWebServiceRequest *)&v3 init];
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = @"devices";
  v17 = a4;
  v18 = @"tapToProvisionConfiguration";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v16 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 version:@"4" endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v16, v17, v18, v19];

  [v13 setHTTPMethod:@"GET"];
  v14 = [v13 copy];

  return v14;
}

@end