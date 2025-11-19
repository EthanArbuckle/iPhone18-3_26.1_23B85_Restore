@interface PKNearbyPeerPaymentReceiverCoordinator
- (PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3;
@end

@implementation PKNearbyPeerPaymentReceiverCoordinator

- (PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKNearbyPeerPaymentReceiverCoordinator;
  v5 = [(PKNearbyPeerPaymentReceiverCoordinator *)&v9 init];
  if (v5)
  {
    v6 = [[_PKNearbyPeerPaymentReceiverCoordinator alloc] initWithSenderMetadata:v4];
    internalCoordinator = v5->_internalCoordinator;
    v5->_internalCoordinator = v6;
  }

  return v5;
}

@end