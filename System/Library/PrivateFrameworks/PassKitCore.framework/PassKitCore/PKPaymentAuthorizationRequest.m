@interface PKPaymentAuthorizationRequest
- (PKPaymentAuthorizationRequest)initWithPaymentRequest:(id)a3;
@end

@implementation PKPaymentAuthorizationRequest

- (PKPaymentAuthorizationRequest)initWithPaymentRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentAuthorizationRequest;
  v6 = [(PKPaymentAuthorizationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentRequest, a3);
  }

  return v7;
}

@end