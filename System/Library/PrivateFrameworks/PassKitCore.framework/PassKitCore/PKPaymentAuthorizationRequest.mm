@interface PKPaymentAuthorizationRequest
- (PKPaymentAuthorizationRequest)initWithPaymentRequest:(id)request;
@end

@implementation PKPaymentAuthorizationRequest

- (PKPaymentAuthorizationRequest)initWithPaymentRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PKPaymentAuthorizationRequest;
  v6 = [(PKPaymentAuthorizationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentRequest, request);
  }

  return v7;
}

@end