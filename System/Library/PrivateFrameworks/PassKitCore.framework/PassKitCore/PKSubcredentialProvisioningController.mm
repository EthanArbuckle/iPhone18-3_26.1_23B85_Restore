@interface PKSubcredentialProvisioningController
- (PKSubcredentialProvisioningControllerDelegate)delegate;
@end

@implementation PKSubcredentialProvisioningController

- (PKSubcredentialProvisioningControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end