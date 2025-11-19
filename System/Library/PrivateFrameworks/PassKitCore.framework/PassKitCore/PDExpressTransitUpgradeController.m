@interface PDExpressTransitUpgradeController
- (BOOL)hasAttemptedDefaultPassExpressUpgrade;
- (PDExpressTransitUpgradeController)initWithPaymentWebServiceCoordinator:(id)a3 databaseManager:(id)a4 expressPassManager:(id)a5 notificationManager:(id)a6 assertionManager:(id)a7 passUpgradeController:(id)a8;
- (id)_eligibleUpgradeRequestsForPass:(id)a3;
- (id)upgradeablePaymentApplicationIdentifiersForPass:(id)a3;
- (void)_upgradePaymentPass:(id)a3 withRequest:(id)a4 completionHandler:(id)a5;
- (void)checkHasExpressConflicts:(id)a3 completion:(id)a4;
- (void)recordExpressUpgradeAttemptStatus:(int64_t)a3;
- (void)resetDefaultPassExpressUpgradeAttempt;
- (void)upgradePass:(id)a3 completionHandler:(id)a4;
@end

@implementation PDExpressTransitUpgradeController

- (PDExpressTransitUpgradeController)initWithPaymentWebServiceCoordinator:(id)a3 databaseManager:(id)a4 expressPassManager:(id)a5 notificationManager:(id)a6 assertionManager:(id)a7 passUpgradeController:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PDExpressTransitUpgradeController;
  v18 = [(PDExpressTransitUpgradeController *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paymentWebServiceCoordinator, a3);
    objc_storeStrong(&v19->_databaseManager, a4);
    objc_storeStrong(&v19->_expressPassManager, a5);
    objc_storeStrong(&v19->_userNotificationManager, a6);
    objc_storeStrong(&v19->_passUpgradeController, a8);
    objc_storeStrong(&v19->_assertionManager, a7);
  }

  return v19;
}

- (void)checkHasExpressConflicts:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PDExpressTransitUpgradeController *)self _eligibleUpgradeRequestsForPass:v7];
  v9 = [v8 firstObject];

  v10 = [PKExpressPassInformation alloc];
  v11 = [(PDExpressTransitUpgradeController *)self _technologyTest];
  v12 = [v10 initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:v9 paymentPass:v7 withTechologyTest:v11];

  v13 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v12 isNFCExpressEnabled:1 isUWBExpressEnabled:0];
  expressPassManager = self->_expressPassManager;
  v16 = v6;
  v15 = v6;
  sub_1005C4CB4(expressPassManager, v13);
}

- (BOOL)hasAttemptedDefaultPassExpressUpgrade
{
  v2 = +[PKPassPreferencesManager sharedInstance];
  v3 = [v2 hasDoneExpressUpgrade];

  return v3;
}

- (void)resetDefaultPassExpressUpgradeAttempt
{
  v2 = +[PKPassPreferencesManager sharedInstance];
  [v2 setHasDoneExpressUpgrade:0];
}

- (void)recordExpressUpgradeAttemptStatus:(int64_t)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking express upgrade attempt status as %ld", &v6, 0xCu);
  }

  if (a3 == 2)
  {
    v5 = +[PKPassPreferencesManager sharedInstance];
    [v5 setHasDoneExpressUpgrade:1];
  }
}

- (id)upgradeablePaymentApplicationIdentifiersForPass:(id)a3
{
  v3 = [(PDExpressTransitUpgradeController *)self _eligibleUpgradeRequestsForPass:a3];
  v4 = [v3 firstObject];
  v5 = [v4 paymentApplicationIdentifiers];

  return v5;
}

- (void)upgradePass:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10011749C;
  v19 = &unk_1008471D0;
  v20 = self;
  v21 = a4;
  v7 = v21;
  v8 = objc_retainBlock(&v16);
  if (v6)
  {
    v9 = [(PDExpressTransitUpgradeController *)self _eligibleUpgradeRequestsForPass:v6, v16, v17, v18, v19, v20, v21];
    if ([v9 count] < 2)
    {
      v13 = [v9 firstObject];
      if (v13)
      {
        [(PDExpressTransitUpgradeController *)self _upgradePaymentPass:v6 withRequest:v13 completionHandler:v8];
      }

      else
      {
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v6 uniqueID];
          *buf = 138412290;
          v23 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Pass has no express upgrade: %@", buf, 0xCu);
        }

        (v8[2])(v8, v6, 1);
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 uniqueID];
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pass has multiple eligible upgrades: %@", buf, 0xCu);
      }

      (v8[2])(v8, v6, 3);
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Payment pass is nil, skipping upgrade.", buf, 2u);
    }

    (v8[2])(v8, 0, 1);
  }
}

- (id)_eligibleUpgradeRequestsForPass:(id)a3
{
  v4 = a3;
  v5 = +[PKOSVersionRequirement fromDeviceVersion];
  v6 = PKDeviceClass();
  v7 = +[PKSecureElement secureElementIdentifiers];
  v8 = [(PDExpressTransitUpgradeController *)self _technologyTest];
  v9 = [v4 eligibleExpressUpgradeRequestsForDeviceClass:v6 deviceSEIDs:v7 deviceVersion:v5 technologyTest:v8];

  return v9;
}

- (void)_upgradePaymentPass:(id)a3 withRequest:(id)a4 completionHandler:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  objc_initWeak(location, self);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100005AF0;
  v51 = sub_10000B184;
  v10 = +[NSUUID UUID];
  v52 = [v10 UUIDString];

  v11 = dispatch_queue_create("com.apple.passd.pdexpresstransitupgradecontroller.assertionqueue", 0);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100005AF0;
  v45 = sub_10000B184;
  v46 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
  v12 = v42[5];
  v13 = dispatch_time(0, 300000000000);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v14 = v42[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001179C8;
  handler[3] = &unk_1008471F8;
  objc_copyWeak(&v40, location);
  handler[4] = &v47;
  handler[5] = &v41;
  dispatch_source_set_event_handler(v14, handler);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100117A70;
  v33[3] = &unk_100847248;
  v15 = v9;
  v35 = v15;
  v16 = v11;
  v34 = v16;
  v36 = &v41;
  objc_copyWeak(&v38, location);
  v37 = &v47;
  v17 = objc_retainBlock(v33);
  assertionManager = self->_assertionManager;
  v19 = v48[5];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100117BD8;
  v25[3] = &unk_1008472E8;
  v30 = &v41;
  v25[4] = self;
  v20 = v8;
  v26 = v20;
  v21 = v24;
  v27 = v21;
  objc_copyWeak(&v32, location);
  v22 = v17;
  v29 = v22;
  v23 = v16;
  v28 = v23;
  v31 = &v47;
  [(PDAssertionManager *)assertionManager acquireAssertionOfType:1 withIdentifier:v19 reason:@"Pass Upgrade Request" handler:v25];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v40);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  objc_destroyWeak(location);
}

@end