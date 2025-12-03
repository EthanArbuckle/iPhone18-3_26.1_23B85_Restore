@interface PKNearbyPeerPaymentReceiverCoordinator
- (PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)metadata;
@end

@implementation PKNearbyPeerPaymentReceiverCoordinator

- (PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = PKNearbyPeerPaymentReceiverCoordinator;
  v5 = [(PKNearbyPeerPaymentReceiverCoordinator *)&v9 init];
  if (v5)
  {
    v6 = [[_PKNearbyPeerPaymentReceiverCoordinator alloc] initWithSenderMetadata:metadataCopy];
    internalCoordinator = v5->_internalCoordinator;
    v5->_internalCoordinator = v6;
  }

  return v5;
}

@end