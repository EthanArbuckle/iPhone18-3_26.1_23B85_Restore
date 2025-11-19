@interface PDPaymentFPANCardImportManager
- (PDPaymentFPANCardImportManager)initWithWebService:(id)a3 webServiceQueue:(id)a4 databaseManager:(id)a5;
- (void)_associateCredentialsForItem:(id)a3;
- (void)_cleanupQueueResources;
- (void)_popEligibilityQueue;
- (void)_processEligibilityItem:(id)a3;
- (void)processFPANCredentialEligibility:(id)a3 completion:(id)a4;
@end

@implementation PDPaymentFPANCardImportManager

- (PDPaymentFPANCardImportManager)initWithWebService:(id)a3 webServiceQueue:(id)a4 databaseManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PDPaymentFPANCardImportManager;
  v12 = [(PDPaymentFPANCardImportManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webService, a3);
    objc_storeStrong(&v13->_webServiceQueue, a4);
    objc_storeStrong(&v13->_databaseManager, a5);
  }

  return v13;
}

- (void)processFPANCredentialEligibility:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075CF4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)_processEligibilityItem:(id)a3
{
  v4 = a3;
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

    [(PDPaymentFPANCardImportManager *)self _associateCredentialsForItem:v4];
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
    v10 = v4;
    dispatch_async(webServiceQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_associateCredentialsForItem:(id)a3
{
  v4 = a3;
  webServiceQueue = self->_webServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000768B8;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(webServiceQueue, v7);
}

@end