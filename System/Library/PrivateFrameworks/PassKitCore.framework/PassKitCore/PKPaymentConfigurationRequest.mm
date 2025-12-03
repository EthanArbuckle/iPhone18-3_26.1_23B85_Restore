@interface PKPaymentConfigurationRequest
- (id)_requestWithServiceURL:(id)l;
@end

@implementation PKPaymentConfigurationRequest

- (id)_requestWithServiceURL:(id)l
{
  v3 = [(PKPaymentWebServiceRequest *)self _murlRequestWithURL:l];
  v4 = [v3 copy];

  return v4;
}

@end