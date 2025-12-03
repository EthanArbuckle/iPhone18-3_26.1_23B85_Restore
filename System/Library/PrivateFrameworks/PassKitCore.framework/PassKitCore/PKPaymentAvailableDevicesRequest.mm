@interface PKPaymentAvailableDevicesRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentAvailableDevicesRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v4 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:l endpointComponents:&unk_1F23B4220 queryParameters:0 appleAccountInformation:information];
  [v4 setHTTPMethod:@"GET"];
  v5 = [v4 copy];

  return v5;
}

@end