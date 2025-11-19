@interface PKPaymentRemotePassesRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentRemotePassesRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v4 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:a3 endpointComponents:&unk_1F23B4250 queryParameters:0 appleAccountInformation:a4];
  [v4 setHTTPMethod:@"GET"];
  v5 = [v4 copy];

  return v5;
}

@end