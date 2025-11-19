@interface PDDeviceRegistrationServiceCoordinator
- (PDDeviceRegistrationServiceCoordinator)initWithPaymentWebServiceCoordinator:(id)a3 peerPaymentWebServiceCoordinator:(id)a4;
- (void)dealloc;
- (void)notePasscodeChanged;
- (void)performDeviceRegistrationForReason:(id)a3 brokerURL:(id)a4 action:(int64_t)a5 forceApplePayRegister:(BOOL)a6 forcePeerPaymentRegister:(BOOL)a7 completion:(id)a8;
- (void)performRegistrationForMemberOfRegions:(id)a3 force:(BOOL)a4 withReason:(id)a5 completion:(id)a6;
- (void)performRegistrationForRegion:(id)a3 force:(BOOL)a4 withReason:(id)a5 completion:(id)a6;
@end

@implementation PDDeviceRegistrationServiceCoordinator

- (PDDeviceRegistrationServiceCoordinator)initWithPaymentWebServiceCoordinator:(id)a3 peerPaymentWebServiceCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = PDDeviceRegistrationServiceCoordinator;
  v9 = [(PDDeviceRegistrationServiceCoordinator *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentWebServiceCoordinator, a3);
    [(PDPaymentWebServiceCoordinator *)v10->_paymentWebServiceCoordinator registerObserver:v10];
    objc_storeStrong(&v10->_peerPaymentWebServiceCoordinator, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.passd.registration.service", v11);
    workQueue = v10->_workQueue;
    v10->_workQueue = v12;

    v14 = objc_alloc_init(NSMutableArray);
    registrationTasks = v10->_registrationTasks;
    v10->_registrationTasks = v14;

    v16 = [v7 sharedWebService];
    v17 = [v16 _appleAccountInformation];
    if ([v17 aidaAccountAvailable])
    {
      PKDisableAutomaticRegistration();
    }
  }

  return v10;
}

- (void)dealloc
{
  [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PDDeviceRegistrationServiceCoordinator;
  [(PDDeviceRegistrationServiceCoordinator *)&v3 dealloc];
}

- (void)notePasscodeChanged
{
  if (PKPasscodeEnabled())
  {
    v3 = +[PDSetupAssistantCompleteMonitor hasCompletedSetupAssistant];
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RegistrationService: Passcode changed and device has passcode. Attempting to register for Apple Pay.", v7, 2u);
      }

      [(PDDeviceRegistrationServiceCoordinator *)self performDeviceRegistrationForReason:@"passcode changed" brokerURL:0 action:0 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:0];
    }

    else
    {
      if (v5)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RegistrationService: Passcode changed but still in buddy - skipping registration", v8, 2u);
      }
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RegistrationService: Passcode changed but disabled - skipping registration", buf, 2u);
    }
  }
}

- (void)performRegistrationForMemberOfRegions:(id)a3 force:(BOOL)a4 withReason:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005AC568;
  block[3] = &unk_10083C678;
  v18 = v11;
  v19 = v10;
  v22 = a4;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(workQueue, block);
}

- (void)performRegistrationForRegion:(id)a3 force:(BOOL)a4 withReason:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005AC68C;
  block[3] = &unk_10083C678;
  v18 = v11;
  v19 = v10;
  v22 = a4;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(workQueue, block);
}

- (void)performDeviceRegistrationForReason:(id)a3 brokerURL:(id)a4 action:(int64_t)a5 forceApplePayRegister:(BOOL)a6 forcePeerPaymentRegister:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  workQueue = self->_workQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002173C;
  v21[3] = &unk_10083C6A0;
  v24 = v16;
  v25 = a5;
  v21[4] = self;
  v22 = v15;
  v26 = a6;
  v27 = a7;
  v23 = v14;
  v18 = v14;
  v19 = v16;
  v20 = v15;
  dispatch_async(workQueue, v21);
}

@end