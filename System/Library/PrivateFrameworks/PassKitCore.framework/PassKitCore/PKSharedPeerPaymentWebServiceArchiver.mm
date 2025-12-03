@interface PKSharedPeerPaymentWebServiceArchiver
- (PKSharedPeerPaymentWebServiceArchiver)initWithPeerPaymentService:(id)service;
@end

@implementation PKSharedPeerPaymentWebServiceArchiver

- (PKSharedPeerPaymentWebServiceArchiver)initWithPeerPaymentService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = PKSharedPeerPaymentWebServiceArchiver;
  v6 = [(PKSharedPeerPaymentWebServiceArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentService, service);
  }

  return v7;
}

@end