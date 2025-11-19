@interface PKPaymentNetworkCardImagesManifestRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentNetworkCardImagesManifestRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v4 = [(PKWebServiceRequest *)self _murlRequestWithURL:a3 appleAccountInformation:a4];
  [v4 setTimeoutInterval:10.0];
  [v4 setHTTPMethod:@"GET"];
  v5 = [v4 copy];

  return v5;
}

@end