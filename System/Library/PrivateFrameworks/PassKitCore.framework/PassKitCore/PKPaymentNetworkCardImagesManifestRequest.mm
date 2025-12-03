@interface PKPaymentNetworkCardImagesManifestRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentNetworkCardImagesManifestRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v4 = [(PKWebServiceRequest *)self _murlRequestWithURL:l appleAccountInformation:information];
  [v4 setTimeoutInterval:10.0];
  [v4 setHTTPMethod:@"GET"];
  v5 = [v4 copy];

  return v5;
}

@end