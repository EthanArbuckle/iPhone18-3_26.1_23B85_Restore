@interface PKSharedPeerPaymentWebServiceArchiver
- (PKSharedPeerPaymentWebServiceArchiver)initWithPeerPaymentService:(id)a3;
@end

@implementation PKSharedPeerPaymentWebServiceArchiver

- (PKSharedPeerPaymentWebServiceArchiver)initWithPeerPaymentService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSharedPeerPaymentWebServiceArchiver;
  v6 = [(PKSharedPeerPaymentWebServiceArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentService, a3);
  }

  return v7;
}

@end