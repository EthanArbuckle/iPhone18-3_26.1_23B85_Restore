@interface PKPaymentProvisioningTracker
- (BOOL)isCanceled;
- (PKPaymentProvisioningTracker)initWithPaymentProvisioningController:(id)controller;
- (void)cancel;
- (void)dealloc;
@end

@implementation PKPaymentProvisioningTracker

- (PKPaymentProvisioningTracker)initWithPaymentProvisioningController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PKPaymentProvisioningTracker;
  v5 = [(PKPaymentProvisioningTracker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    [controllerCopy _noteProvisioningDidBegin];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _noteProvisioningDidEnd];

  v4.receiver = self;
  v4.super_class = PKPaymentProvisioningTracker;
  [(PKPaymentProvisioningTracker *)&v4 dealloc];
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained _noteProvisioningDidEnd];

  objc_storeWeak(&self->_controller, 0);
}

- (BOOL)isCanceled
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v3 = WeakRetained == 0;

  return v3;
}

@end