@interface PDPeerPaymentService
- (PDPeerPaymentService)initWithConnection:(id)a3 server:(id)a4;
- (id)_displayNameForAddress:(id)a3;
- (void)_notifyPendingRequestsChangedObservers;
- (void)_notifyRecurringPaymentsChangedObservers;
- (void)_notifyUserInfoChangedObservers;
- (void)_removeAllNotificationsForPeerPaymentPendingRequests;
- (void)_removeAllNotificationsForPeerPaymentRecurringPayments;
- (void)_removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:(id)a3;
- (void)_removeNotificationsForPeerPaymentRecurringPaymentsWithIdentifiers:(id)a3;
- (void)_scheduleNotificationsForPeerPaymentPendingRequests:(id)a3;
- (void)accountWithCompletion:(id)a3;
- (void)balanceForPass:(id)a3 completion:(id)a4;
- (void)checkTLKsMissingWithCompletion:(id)a3;
- (void)cloudStoreStatusWithCompletion:(id)a3;
- (void)counterpartImageDataForTransactionWithIdentifier:(id)a3 completion:(id)a4;
- (void)counterpartImageDataWithCompletion:(id)a3;
- (void)counterpartImageDataWithIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteAccountWithCompletion:(id)a3;
- (void)deleteAllCounterpartImageDataWithCompletion:(id)a3;
- (void)deleteAllRecurringPaymentsWithCompletion:(id)a3;
- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)a3;
- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)a3 completion:(id)a4;
- (void)deletePreferencesWithCompletion:(id)a3;
- (void)deleteRecurringPaymentsForIdentifiers:(id)a3 completion:(id)a4;
- (void)deleteUserInfoWithCompletion:(id)a3;
- (void)downloadPassIfNecessaryWithCompletion:(id)a3;
- (void)encryptData:(id)a3 usingCertificateWithDestination:(unint64_t)a4 completion:(id)a5;
- (void)encryptionCertificateForDestination:(unint64_t)a3 forceUpdate:(BOOL)a4 completion:(id)a5;
- (void)fetchUserInfoWithCompletion:(id)a3;
- (void)hasRecurringPayments:(id)a3;
- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)a3;
- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)a3 memo:(id)a4 counterpartAppearanceData:(id)a5 completion:(id)a6;
- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)a3 amount:(id)a4 currency:(id)a5 senderName:(id)a6 completion:(id)a7;
- (void)insertOrUpdatePeerPaymentPendingRequests:(id)a3 shouldScheduleNotifications:(BOOL)a4 completion:(id)a5;
- (void)insertOrUpdateRecurringPayments:(id)a3 completion:(id)a4;
- (void)insertOrUpdateUserInfo:(id)a3 completion:(id)a4;
- (void)lastUsedAlternateFundingSourcePassUniqueIdentifier:(id)a3;
- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)a3;
- (void)peerPaymentPendingRequestsForRequestTokens:(id)a3 completion:(id)a4;
- (void)performRecurringPaymentAction:(unint64_t)a3 identifier:(id)a4 completion:(id)a5;
- (void)preferencesWithCompletion:(id)a3;
- (void)presentIdentityVerificationFlowWithResponseData:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)presentPeerPaymentTermsAndConditionsWithTermsURL:(id)a3 termsIdentifier:(id)a4 passUniqueID:(id)a5 orientation:(id)a6 completion:(id)a7;
- (void)presentReceiverFlowWithOrientation:(id)a3 host:(unint64_t)a4 completion:(id)a5;
- (void)presentRegistrationFlowWithAccount:(id)a3 amount:(id)a4 state:(unint64_t)a5 senderAddress:(id)a6 orientation:(id)a7 hostSceneIdentifier:(id)a8 hostSceneBundleIdentifier:(id)a9 completion:(id)a10;
- (void)presentSenderFlowWithHost:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5;
- (void)receivedPeerPaymentMessageData:(id)a3 handler:(id)a4;
- (void)recurringPaymentsWithCompletion:(id)a3;
- (void)registerDeviceWithCompletion:(id)a3;
- (void)registerDeviceWithForceReregister:(BOOL)a3 completion:(id)a4;
- (void)registerDeviceWithRegistrationURL:(id)a3 pushToken:(id)a4 forceReregister:(BOOL)a5 completion:(id)a6;
- (void)registrationStatusWithCompletion:(id)a3;
- (void)remoteRegistrationRequest:(id)a3 forHandle:(id)a4 completion:(id)a5;
- (void)reportFailureDiagnostic:(id)a3 completion:(id)a4;
- (void)resetApplePayManateeViewWithCompletion:(id)a3;
- (void)setIdsSharingManager:(id)a3;
- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)a3 handler:(id)a4;
- (void)setPeerPaymentAccountManager:(id)a3;
- (void)setPeerPaymentWebServiceCoordinator:(id)a3;
- (void)setPreferences:(id)a3 completion:(id)a4;
- (void)unregisterDeviceWithCompletion:(id)a3;
- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)a3;
- (void)updateAccountWithCompletion:(id)a3;
- (void)updateAssociatedAccountsWithCompletion:(id)a3;
- (void)updateAutoReloadAmount:(id)a3 threshold:(id)a4 identifier:(id)a5 completion:(id)a6;
- (void)updateMessageReceivedDate:(id)a3 forTransactionWithIdentifier:(id)a4 handler:(id)a5;
- (void)updateMockAccountBalanceByAddingAmount:(id)a3 completion:(id)a4;
- (void)updatePreferencesWithCompletion:(id)a3;
- (void)updateRecurringPaymentMemo:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)updateRecurringPaymentStatus:(unint64_t)a3 identifier:(id)a4 completion:(id)a5;
- (void)updateRecurringPaymentsWithCompletion:(id)a3;
- (void)userInfoWithCompletion:(id)a3;
- (void)usingSynchronousProxy:(BOOL)a3 fetchSharedPeerPaymentWebServiceContextWithHandler:(id)a4;
- (void)usingSynchronousProxy:(BOOL)a3 setSharedPeerPaymentWebServiceContext:(id)a4 withCompletion:(id)a5;
@end

@implementation PDPeerPaymentService

- (PDPeerPaymentService)initWithConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PDPeerPaymentService;
  v8 = [(PDPeerPaymentService *)&v17 initWithConnection:v6];
  if (v8)
  {
    v9 = [[PKEntitlementWhitelist alloc] initWithConnection:v6];
    whitelist = v8->_whitelist;
    v8->_whitelist = v9;

    v11 = sub_10000444C(v7);
    v12 = sub_100004440(v11);
    remoteInterfacePresenter = v8->_remoteInterfacePresenter;
    v8->_remoteInterfacePresenter = v12;

    v14 = PKPeerPaymentServiceInterface();
    [v6 setRemoteObjectInterface:v14];

    v15 = PDPeerPaymentServiceInterface();
    [v6 setExportedInterface:v15];

    [v6 setExportedObject:v8];
  }

  return v8;
}

- (void)dealloc
{
  [(PDPeerPaymentAccountManager *)self->_peerPaymentAccountManager unregisterObserver:self];
  [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PDPeerPaymentService;
  [(PDPeerPaymentService *)&v3 dealloc];
}

- (void)setIdsSharingManager:(id)a3
{
  v5 = a3;
  if (self->_idsSharingManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_idsSharingManager, a3);
    v5 = v6;
  }
}

- (void)setPeerPaymentAccountManager:(id)a3
{
  v5 = a3;
  peerPaymentAccountManager = self->_peerPaymentAccountManager;
  if (peerPaymentAccountManager != v5)
  {
    v7 = v5;
    if (peerPaymentAccountManager)
    {
      [(PDPeerPaymentAccountManager *)peerPaymentAccountManager unregisterObserver:self];
    }

    objc_storeStrong(&self->_peerPaymentAccountManager, a3);
    peerPaymentAccountManager = [(PDPeerPaymentAccountManager *)self->_peerPaymentAccountManager registerObserver:self];
    v5 = v7;
  }

  _objc_release_x1(peerPaymentAccountManager, v5);
}

- (void)setPeerPaymentWebServiceCoordinator:(id)a3
{
  v5 = a3;
  peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
  if (peerPaymentWebServiceCoordinator != v5)
  {
    v7 = v5;
    if (peerPaymentWebServiceCoordinator)
    {
      [(PDPeerPaymentWebServiceCoordinator *)peerPaymentWebServiceCoordinator unregisterObserver:self];
    }

    objc_storeStrong(&self->_peerPaymentWebServiceCoordinator, a3);
    peerPaymentWebServiceCoordinator = [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator registerObserver:self];
    v5 = v7;
  }

  _objc_release_x1(peerPaymentWebServiceCoordinator, v5);
}

- (void)usingSynchronousProxy:(BOOL)a3 fetchSharedPeerPaymentWebServiceContextWithHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess]& 1) != 0)
    {
      if (v4)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator sharedPeerPaymentWebService];
        v9 = [v8 context];
        v6[2](v6, v9);

        objc_autoreleasePoolPop(v7);
      }

      else
      {
        v11 = PDDefaultQueue();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100139140;
        v12[3] = &unk_10083C820;
        v12[4] = self;
        v13 = v6;
        dispatch_async(v11, v12);
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[PDPeerPaymentService usingSynchronousProxy:fetchSharedPeerPaymentWebServiceContextWithHandler:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
      }

      v6[2](v6, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 setSharedPeerPaymentWebServiceContext:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess]& 1) != 0)
  {
    if (v6)
    {
      v10 = objc_autoreleasePoolPush();
      [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator updateSharedWebServiceContext:v8];
      if (v9)
      {
        v9[2](v9);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v12 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100139380;
      block[3] = &unk_10083D320;
      block[4] = self;
      v14 = v8;
      v15 = v9;
      dispatch_async(v12, block);
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPeerPaymentService usingSynchronousProxy:setSharedPeerPaymentWebServiceContext:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)accountWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001394F0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)preferencesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139734;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAccountWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139974;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAssociatedAccountsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139BB4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139DF4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updatePreferencesWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013A034;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateMockAccountBalanceByAddingAmount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013A29C;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)deleteAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A4D8;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)deletePreferencesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A714;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)setPreferences:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013A974;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)registrationStatusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013ABBC;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)presentIdentityVerificationFlowWithResponseData:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013AF10;
    v17[3] = &unk_1008482C0;
    v17[4] = self;
    v18 = v9;
    v19 = v10;
    v11 = objc_retainBlock(v17);
    v12 = v11;
    if (v8)
    {
      (v11[2])(v11, v8);
    }

    else
    {
      v14 = [(PDPeerPaymentService *)self peerPaymentWebServiceCoordinator];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10013B0A8;
      v15[3] = &unk_1008482E8;
      v16 = v12;
      [v14 identityVerificationResponseWithCompletion:v15];
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[PDPeerPaymentService presentIdentityVerificationFlowWithResponseData:orientation:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)presentRegistrationFlowWithAccount:(id)a3 amount:(id)a4 state:(unint64_t)a5 senderAddress:(id)a6 orientation:(id)a7 hostSceneIdentifier:(id)a8 hostSceneBundleIdentifier:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v23 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013B34C;
    block[3] = &unk_100848310;
    block[4] = self;
    v26 = v16;
    v27 = v17;
    v33 = a5;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    dispatch_async(v23, block);
  }

  else
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[PDPeerPaymentService presentRegistrationFlowWithAccount:amount:state:senderAddress:orientation:hostSceneIdentifier:hostSceneBundleIdentifier:completion:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

- (void)presentPeerPaymentTermsAndConditionsWithTermsURL:(id)a3 termsIdentifier:(id)a4 passUniqueID:(id)a5 orientation:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v17 = PDDefaultQueue();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013B654;
    v19[3] = &unk_10083DD98;
    v20 = v12;
    v21 = v13;
    v22 = self;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    dispatch_async(v17, v19);
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[PDPeerPaymentService presentPeerPaymentTermsAndConditionsWithTermsURL:termsIdentifier:passUniqueID:orientation:completion:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }
}

- (void)receivedPeerPaymentMessageData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10013B900;
    v11[3] = &unk_10083D320;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    v9 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v15 = v9;
    dispatch_async(v8, block);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1005C1F60(v10);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)updateMessageReceivedDate:(id)a3 forTransactionWithIdentifier:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v11 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013BEC0;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v12 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v19 = v12;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1005C1FA4(v13);
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (void)balanceForPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = [(PDPeerPaymentService *)self peerPaymentWebServiceCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013C1D4;
    v9[3] = &unk_10083D6B8;
    v10 = v6;
    v11 = v7;
    [v8 accountWithPreventingServerFetch:1 completion:v9];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)lastUsedAlternateFundingSourcePassUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C3A4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013C5C8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)downloadPassIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C844;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)registerDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C9D8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)registerDeviceWithForceReregister:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v7 = dispatch_get_global_queue(21, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013CBE4;
    v9[3] = &unk_100848388;
    v9[4] = self;
    v11 = a3;
    v10 = v6;
    v8 = v9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v13 = v8;
    dispatch_async(v7, block);
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)registerDeviceWithRegistrationURL:(id)a3 pushToken:(id)a4 forceReregister:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013CE48;
    v15[3] = &unk_100840BF8;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    v18 = v12;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)unregisterDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013CFE4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D1DC;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)cloudStoreStatusWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D3D8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0, 0);
  }
}

- (void)checkTLKsMissingWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D5D0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)resetApplePayManateeViewWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D7C8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)remoteRegistrationRequest:(id)a3 forHandle:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013DA04;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)peerPaymentPendingRequestsForRequestTokens:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013DC00;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013DE40;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)insertOrUpdatePeerPaymentPendingRequests:(id)a3 shouldScheduleNotifications:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013E0B4;
  v14[3] = &unk_10083E128;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013E570;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013E7B0;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)recurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013E9F4;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)updateAutoReloadAmount:(id)a3 threshold:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(21, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013ECA4;
  v20[3] = &unk_10083FD78;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v20;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v26 = v15;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(v14, block);
}

- (void)updateRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013EEE8;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)insertOrUpdateRecurringPayments:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013F150;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)deleteRecurringPaymentsForIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013F3B0;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)deleteAllRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F5F0;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)performRecurringPaymentAction:(unint64_t)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013F860;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)updateRecurringPaymentMemo:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013FAF4;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)updateRecurringPaymentStatus:(unint64_t)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013FD68;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)hasRecurringPayments:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013FFAC;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)_removeNotificationsForPeerPaymentRecurringPaymentsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notifications for peer payment recurring payment identifiers: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [PDPeerPaymentRecurringPaymentUpcomingPaymentNotification notificationIdentifierForRecurringPaymentIdentifier:*(*(&v12 + 1) + 8 * v10), v12];
        [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationWithIdentifier:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_removeAllNotificationsForPeerPaymentRecurringPayments
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all notifications for peer payment recurring payments", v4, 2u);
  }

  [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationsOfType:73];
}

- (void)encryptionCertificateForDestination:(unint64_t)a3 forceUpdate:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014040C;
  v12[3] = &unk_10083F440;
  v13 = v8;
  v14 = a3;
  v15 = a4;
  v12[4] = self;
  v10 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v17 = v10;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)encryptData:(id)a3 usingCertificateWithDestination:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014067C;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)presentSenderFlowWithHost:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100140944;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v15 = a3;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPeerPaymentService presentSenderFlowWithHost:userInfo:completion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)presentReceiverFlowWithOrientation:(id)a3 host:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100140B9C;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = v8;
    v15 = a4;
    v14 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPeerPaymentService presentReceiverFlowWithOrientation:host:completion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)a3 memo:(id)a4 counterpartAppearanceData:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(21, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100140DD8;
  v20[3] = &unk_10083FD78;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v20;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v26 = v15;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(v14, block);
}

- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)a3 amount:(id)a4 currency:(id)a5 senderName:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = dispatch_get_global_queue(21, 0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001410B4;
  v24[3] = &unk_10083DD98;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v18 = v24;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v31 = v18;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  dispatch_async(v17, block);
}

- (void)counterpartImageDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100141450;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)counterpartImageDataWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001416D0;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)counterpartImageDataForTransactionWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100141950;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)deleteAllCounterpartImageDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100141BAC;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)reportFailureDiagnostic:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100141E14;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)userInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100142054;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)fetchUserInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100142288;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)insertOrUpdateUserInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001424E8;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)deleteUserInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014271C;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (id)_displayNameForAddress:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[PKContactResolver defaultContactResolver];
    v5 = [v4 contactForHandle:v3];
    v6 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:v3 contact:v5];
    if (!v6)
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_scheduleNotificationsForPeerPaymentPendingRequests:(id)a3
{
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = PKPeerPaymentPendingRequestStatusPending;
    v8 = PKPeerPaymentPendingRequestActionReject;
    v19 = v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 status];
        v12 = v11;
        if (v11 == v7)
        {
        }

        else
        {
          if (v11)
          {
            v13 = v7 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {

            goto LABEL_17;
          }

          v14 = [v11 isEqualToString:v7];

          if (!v14)
          {
            goto LABEL_17;
          }
        }

        v15 = [v10 actions];
        v16 = [v15 containsObject:v8];

        if (!v16)
        {
          continue;
        }

        v17 = [v10 requestToken];
        v12 = [PDPeerPaymentPendingRequestReceivedUserNotification notificationIdentifierForRequestToken:v17];

        userNotificationManager = self->_userNotificationManager;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v22[0] = sub_100142B24;
        v22[1] = &unk_100848428;
        v22[2] = self;
        v22[3] = v10;
        [(PDUserNotificationManager *)userNotificationManager userNotificationWithIdentifier:v12 completion:v21];
LABEL_17:
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)_removeAllNotificationsForPeerPaymentPendingRequests
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing all notifications for peer payment pending requests", buf, 2u);
  }

  v4 = [(PDPeerPaymentService *)self peerPaymentAccountManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100142E90;
  v5[3] = &unk_10083DAE0;
  v5[4] = self;
  [v4 peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:v5];
}

- (void)_removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notifications for peer payment pending requests with tokens: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [PDPeerPaymentPendingRequestReceivedUserNotification notificationIdentifierForRequestToken:*(*(&v12 + 1) + 8 * v10), v12];
        [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationWithIdentifier:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_notifyPendingRequestsChangedObservers
{
  v3 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014323C;
  v5[3] = &unk_10083C470;
  v5[4] = self;
  v4 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v7 = v4;
  dispatch_async(v3, block);
}

- (void)_notifyRecurringPaymentsChangedObservers
{
  v3 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014339C;
  v5[3] = &unk_10083C470;
  v5[4] = self;
  v4 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v7 = v4;
  dispatch_async(v3, block);
}

- (void)_notifyUserInfoChangedObservers
{
  v3 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001434FC;
  v5[3] = &unk_10083C470;
  v5[4] = self;
  v4 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v7 = v4;
  dispatch_async(v3, block);
}

@end