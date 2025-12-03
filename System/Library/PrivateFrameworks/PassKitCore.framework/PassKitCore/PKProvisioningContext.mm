@interface PKProvisioningContext
- (PKGroupsController)groupsController;
- (PKPaymentWebService)destinationDeviceWebService;
- (PKPaymentWebService)managingDeviceWebService;
- (PKProvisioningContext)initWithEnvironment:(int64_t)environment provisioningController:(id)controller groupsController:(id)groupsController managingDeviceWebService:(id)service destinationDeviceWebService:(id)webService;
@end

@implementation PKProvisioningContext

- (PKProvisioningContext)initWithEnvironment:(int64_t)environment provisioningController:(id)controller groupsController:(id)groupsController managingDeviceWebService:(id)service destinationDeviceWebService:(id)webService
{
  controllerCopy = controller;
  groupsControllerCopy = groupsController;
  serviceCopy = service;
  webServiceCopy = webService;
  v20.receiver = self;
  v20.super_class = PKProvisioningContext;
  v17 = [(PKProvisioningContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_environment = environment;
    objc_storeStrong(&v17->_provisioningController, controller);
    objc_storeWeak(&v18->_groupsController, groupsControllerCopy);
    objc_storeWeak(&v18->_managingDeviceWebService, serviceCopy);
    objc_storeWeak(&v18->_destinationDeviceWebService, webServiceCopy);
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