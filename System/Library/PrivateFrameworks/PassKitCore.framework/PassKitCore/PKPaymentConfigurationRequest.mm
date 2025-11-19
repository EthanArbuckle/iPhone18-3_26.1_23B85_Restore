@interface PKPaymentConfigurationRequest
- (id)_requestWithServiceURL:(id)a3;
@end

@implementation PKPaymentConfigurationRequest

- (id)_requestWithServiceURL:(id)a3
{
  v3 = [(PKPaymentWebServiceRequest *)self _murlRequestWithURL:a3];
  v4 = [v3 copy];

  return v4;
}

@end