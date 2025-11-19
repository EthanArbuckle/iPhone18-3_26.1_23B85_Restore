@interface PKProvisioningContext
- (PKGroupsController)groupsController;
- (PKPaymentWebService)destinationDeviceWebService;
- (PKPaymentWebService)managingDeviceWebService;
- (PKProvisioningContext)initWithEnvironment:(int64_t)a3 provisioningController:(id)a4 groupsController:(id)a5 managingDeviceWebService:(id)a6 destinationDeviceWebService:(id)a7;
@end

@implementation PKProvisioningContext

- (PKProvisioningContext)initWithEnvironment:(int64_t)a3 provisioningController:(id)a4 groupsController:(id)a5 managingDeviceWebService:(id)a6 destinationDeviceWebService:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PKProvisioningContext;
  v17 = [(PKProvisioningContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_environment = a3;
    objc_storeStrong(&v17->_provisioningController, a4);
    objc_storeWeak(&v18->_groupsController, v14);
    objc_storeWeak(&v18->_managingDeviceWebService, v15);
    objc_storeWeak(&v18->_destinationDeviceWebService, v16);
  }

  return v18;
}

- (PKGroupsController)groupsController
{
  WeakRetained = objc_loadWeakRetained(&self->_groupsController);

  return WeakRetained;
}

- (PKPaymentWebService)managingDeviceWebService
{
  WeakRetained = objc_loadWeakRetained(&self->_managingDeviceWebService);

  return WeakRetained;
}

- (PKPaymentWebService)destinationDeviceWebService
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationDeviceWebService);

  return WeakRetained;
}

@end