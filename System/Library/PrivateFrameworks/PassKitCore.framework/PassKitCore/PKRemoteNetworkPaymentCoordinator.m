@interface PKRemoteNetworkPaymentCoordinator
- (PKRemoteNetworkPaymentCoordinator)init;
- (PKRemoteNetworkPaymentCoordinatorDelegate)delegate;
- (void)handleRemoteNetworkPaymentCoordinatorComplete;
- (void)handleRemoteNetworkPaymentCoordinatorDidPresentPaymentSheet:(BOOL)a3;
@end

@implementation PKRemoteNetworkPaymentCoordinator

- (PKRemoteNetworkPaymentCoordinator)init
{
  v6.receiver = self;
  v6.super_class = PKRemoteNetworkPaymentCoordinator;
  v2 = [(PKRemoteNetworkPaymentCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PKRemoteNetworkPaymentCoordinator);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    [(_PKRemoteNetworkPaymentCoordinator *)v2->_underlying setWrapper:v2];
  }

  return v2;
}

- (void)handleRemoteNetworkPaymentCoordinatorComplete
{
  v3 = [(PKRemoteNetworkPaymentCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKRemoteNetworkPaymentCoordinator *)self delegate];
    [v5 remoteNetworkPaymentCoordinatorDidComplete:self];
  }
}

- (void)handleRemoteNetworkPaymentCoordinatorDidPresentPaymentSheet:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKRemoteNetworkPaymentCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKRemoteNetworkPaymentCoordinator *)self delegate];
    [v7 remoteNetworkPaymentCoordinator:self didPresentPaymentSheet:v3];
  }
}

- (PKRemoteNetworkPaymentCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end