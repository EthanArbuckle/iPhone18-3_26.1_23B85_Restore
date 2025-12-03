@interface PKContactInformationRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKContactInformationRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v5 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:l endpointComponents:&unk_1F23B4280 queryParameters:0 appleAccountInformation:information];
  [v5 setHTTPMethod:@"GET"];
  v6 = [v5 copy];

  return v6;
}

@end