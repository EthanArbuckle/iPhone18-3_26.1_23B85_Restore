@interface PKPaymentBrowseableBankAppsRequest
- (PKPaymentBrowseableBankAppsRequest)initWithRegion:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentBrowseableBankAppsRequest

- (PKPaymentBrowseableBankAppsRequest)initWithRegion:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentBrowseableBankAppsRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    region = v5->_region;
    v5->_region = v6;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  region = self->_region;
  v19 = @"region";
  v20[0] = region;
  v9 = MEMORY[0x1E695DF20];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18[0] = @"devices";
  v18[1] = v11;
  v18[2] = @"partners";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 endpointComponents:v14 queryParameters:v13 appleAccountInformation:v10];

  [v15 setHTTPMethod:@"GET"];
  v16 = [v15 copy];

  return v16;
}

@end