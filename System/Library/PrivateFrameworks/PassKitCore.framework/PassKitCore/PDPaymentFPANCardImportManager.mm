@interface PDPaymentFPANCardImportManager
- (PDPaymentFPANCardImportManager)initWithWebService:(id)service webServiceQueue:(id)queue databaseManager:(id)manager;
- (void)_associateCredentialsForItem:(id)item;
- (void)_cleanupQueueResources;
- (void)_popEligibilityQueue;
- (void)_processEligibilityItem:(id)item;
- (void)processFPANCredentialEligibility:(id)eligibility completion:(id)completion;
@end

@implementation PDPaymentFPANCardImportManager

- (PDPaymentFPANCardImportManager)initWithWebService:(id)service webServiceQueue:(id)queue databaseManager:(id)manager
{
  serviceCopy = service;
  queueCopy = queue;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PDPaymentFPANCardImportManager;
  v12 = [(PDPaymentFPANCardImportManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webService, service);
    objc_storeStrong(&v13->_webServiceQueue, queue);
    objc_storeStrong(&v13->_databaseManager, manager);
  }

  return v13;
}

- (void)processFPANCredentialEligibility:(id)eligibility completion:(id)completion
{
  eligibilityCopy = eligibility;
  completionCopy = completion;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075CF4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = eligibilityCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eligibilityCopy;
  dispatch_async(v8, block);
}

- (void)_popEligibilityQueue
{
  v3 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076010;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_cleanupQueueResources
{
  eligibilityItems = self->_eligibilityItems;
  self->_eligibilityItems = 0;

  provisioningController = self->_provisioningController;
  self->_provisioningController = 0;
}

- (void)_processEligibilityItem:(id)item
{
  itemCopy = item;
  provisioningController = self->_provisioningController;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (provisioningController)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Safari Import: Provisioning controller exists, associating immediately", buf, 2u);
    }

    [(PDPaymentFPANCardImportManager *)self _associateCredentialsForItem:itemCopy];
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Safari Import: Creating provisioning controller", buf, 2u);
    }

    objc_initWeak(buf, self);
    webServiceQueue = self->_webServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000762F0;
    block[3] = &unk_100840820;
    block[4] = self;
    objc_copyWeak(&v11, buf);
    v10 = itemCopy;
    dispatch_async(webServiceQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_associateCredentialsForItem:(id)item
{
  itemCopy = item;
  webServiceQueue = self->_webServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000768B8;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(webServiceQueue, v7);
}

@end