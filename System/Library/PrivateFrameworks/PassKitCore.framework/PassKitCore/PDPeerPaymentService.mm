@interface PDPeerPaymentService
- (PDPeerPaymentService)initWithConnection:(id)connection server:(id)server;
- (id)_displayNameForAddress:(id)address;
- (void)_notifyPendingRequestsChangedObservers;
- (void)_notifyRecurringPaymentsChangedObservers;
- (void)_notifyUserInfoChangedObservers;
- (void)_removeAllNotificationsForPeerPaymentPendingRequests;
- (void)_removeAllNotificationsForPeerPaymentRecurringPayments;
- (void)_removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:(id)tokens;
- (void)_removeNotificationsForPeerPaymentRecurringPaymentsWithIdentifiers:(id)identifiers;
- (void)_scheduleNotificationsForPeerPaymentPendingRequests:(id)requests;
- (void)accountWithCompletion:(id)completion;
- (void)balanceForPass:(id)pass completion:(id)completion;
- (void)checkTLKsMissingWithCompletion:(id)completion;
- (void)cloudStoreStatusWithCompletion:(id)completion;
- (void)counterpartImageDataForTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)counterpartImageDataWithCompletion:(id)completion;
- (void)counterpartImageDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)deleteAccountWithCompletion:(id)completion;
- (void)deleteAllCounterpartImageDataWithCompletion:(id)completion;
- (void)deleteAllRecurringPaymentsWithCompletion:(id)completion;
- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion;
- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion;
- (void)deletePreferencesWithCompletion:(id)completion;
- (void)deleteRecurringPaymentsForIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteUserInfoWithCompletion:(id)completion;
- (void)downloadPassIfNecessaryWithCompletion:(id)completion;
- (void)encryptData:(id)data usingCertificateWithDestination:(unint64_t)destination completion:(id)completion;
- (void)encryptionCertificateForDestination:(unint64_t)destination forceUpdate:(BOOL)update completion:(id)completion;
- (void)fetchUserInfoWithCompletion:(id)completion;
- (void)hasRecurringPayments:(id)payments;
- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler;
- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)identifier memo:(id)memo counterpartAppearanceData:(id)data completion:(id)completion;
- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)identifier amount:(id)amount currency:(id)currency senderName:(id)name completion:(id)completion;
- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests shouldScheduleNotifications:(BOOL)notifications completion:(id)completion;
- (void)insertOrUpdateRecurringPayments:(id)payments completion:(id)completion;
- (void)insertOrUpdateUserInfo:(id)info completion:(id)completion;
- (void)lastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier;
- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion;
- (void)peerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion;
- (void)performRecurringPaymentAction:(unint64_t)action identifier:(id)identifier completion:(id)completion;
- (void)preferencesWithCompletion:(id)completion;
- (void)presentIdentityVerificationFlowWithResponseData:(id)data orientation:(id)orientation completion:(id)completion;
- (void)presentPeerPaymentTermsAndConditionsWithTermsURL:(id)l termsIdentifier:(id)identifier passUniqueID:(id)d orientation:(id)orientation completion:(id)completion;
- (void)presentReceiverFlowWithOrientation:(id)orientation host:(unint64_t)host completion:(id)completion;
- (void)presentRegistrationFlowWithAccount:(id)account amount:(id)amount state:(unint64_t)state senderAddress:(id)address orientation:(id)orientation hostSceneIdentifier:(id)identifier hostSceneBundleIdentifier:(id)bundleIdentifier completion:(id)self0;
- (void)presentSenderFlowWithHost:(unint64_t)host userInfo:(id)info completion:(id)completion;
- (void)receivedPeerPaymentMessageData:(id)data handler:(id)handler;
- (void)recurringPaymentsWithCompletion:(id)completion;
- (void)registerDeviceWithCompletion:(id)completion;
- (void)registerDeviceWithForceReregister:(BOOL)reregister completion:(id)completion;
- (void)registerDeviceWithRegistrationURL:(id)l pushToken:(id)token forceReregister:(BOOL)reregister completion:(id)completion;
- (void)registrationStatusWithCompletion:(id)completion;
- (void)remoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion;
- (void)reportFailureDiagnostic:(id)diagnostic completion:(id)completion;
- (void)resetApplePayManateeViewWithCompletion:(id)completion;
- (void)setIdsSharingManager:(id)manager;
- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier handler:(id)handler;
- (void)setPeerPaymentAccountManager:(id)manager;
- (void)setPeerPaymentWebServiceCoordinator:(id)coordinator;
- (void)setPreferences:(id)preferences completion:(id)completion;
- (void)unregisterDeviceWithCompletion:(id)completion;
- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)completion;
- (void)updateAccountWithCompletion:(id)completion;
- (void)updateAssociatedAccountsWithCompletion:(id)completion;
- (void)updateAutoReloadAmount:(id)amount threshold:(id)threshold identifier:(id)identifier completion:(id)completion;
- (void)updateMessageReceivedDate:(id)date forTransactionWithIdentifier:(id)identifier handler:(id)handler;
- (void)updateMockAccountBalanceByAddingAmount:(id)amount completion:(id)completion;
- (void)updatePreferencesWithCompletion:(id)completion;
- (void)updateRecurringPaymentMemo:(id)memo identifier:(id)identifier completion:(id)completion;
- (void)updateRecurringPaymentStatus:(unint64_t)status identifier:(id)identifier completion:(id)completion;
- (void)updateRecurringPaymentsWithCompletion:(id)completion;
- (void)userInfoWithCompletion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy fetchSharedPeerPaymentWebServiceContextWithHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy setSharedPeerPaymentWebServiceContext:(id)context withCompletion:(id)completion;
@end

@implementation PDPeerPaymentService

- (PDPeerPaymentService)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v17.receiver = self;
  v17.super_class = PDPeerPaymentService;
  v8 = [(PDPeerPaymentService *)&v17 initWithConnection:connectionCopy];
  if (v8)
  {
    v9 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    whitelist = v8->_whitelist;
    v8->_whitelist = v9;

    v11 = sub_10000444C(serverCopy);
    v12 = sub_100004440(v11);
    remoteInterfacePresenter = v8->_remoteInterfacePresenter;
    v8->_remoteInterfacePresenter = v12;

    v14 = PKPeerPaymentServiceInterface();
    [connectionCopy setRemoteObjectInterface:v14];

    v15 = PDPeerPaymentServiceInterface();
    [connectionCopy setExportedInterface:v15];

    [connectionCopy setExportedObject:v8];
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

- (void)setIdsSharingManager:(id)manager
{
  managerCopy = manager;
  if (self->_idsSharingManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_idsSharingManager, manager);
    managerCopy = v6;
  }
}

- (void)setPeerPaymentAccountManager:(id)manager
{
  managerCopy = manager;
  peerPaymentAccountManager = self->_peerPaymentAccountManager;
  if (peerPaymentAccountManager != managerCopy)
  {
    v7 = managerCopy;
    if (peerPaymentAccountManager)
    {
      [(PDPeerPaymentAccountManager *)peerPaymentAccountManager unregisterObserver:self];
    }

    objc_storeStrong(&self->_peerPaymentAccountManager, manager);
    peerPaymentAccountManager = [(PDPeerPaymentAccountManager *)self->_peerPaymentAccountManager registerObserver:self];
    managerCopy = v7;
  }

  _objc_release_x1(peerPaymentAccountManager, managerCopy);
}

- (void)setPeerPaymentWebServiceCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
  if (peerPaymentWebServiceCoordinator != coordinatorCopy)
  {
    v7 = coordinatorCopy;
    if (peerPaymentWebServiceCoordinator)
    {
      [(PDPeerPaymentWebServiceCoordinator *)peerPaymentWebServiceCoordinator unregisterObserver:self];
    }

    objc_storeStrong(&self->_peerPaymentWebServiceCoordinator, coordinator);
    peerPaymentWebServiceCoordinator = [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator registerObserver:self];
    coordinatorCopy = v7;
  }

  _objc_release_x1(peerPaymentWebServiceCoordinator, coordinatorCopy);
}

- (void)usingSynchronousProxy:(BOOL)proxy fetchSharedPeerPaymentWebServiceContextWithHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess]& 1) != 0)
    {
      if (proxyCopy)
      {
        v7 = objc_autoreleasePoolPush();
        sharedPeerPaymentWebService = [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator sharedPeerPaymentWebService];
        context = [sharedPeerPaymentWebService context];
        handlerCopy[2](handlerCopy, context);

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
        v13 = handlerCopy;
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy setSharedPeerPaymentWebServiceContext:(id)context withCompletion:(id)completion
{
  proxyCopy = proxy;
  contextCopy = context;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess]& 1) != 0)
  {
    if (proxyCopy)
    {
      v10 = objc_autoreleasePoolPush();
      [(PDPeerPaymentWebServiceCoordinator *)self->_peerPaymentWebServiceCoordinator updateSharedWebServiceContext:contextCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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
      v14 = contextCopy;
      v15 = completionCopy;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)accountWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001394F0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)preferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139734;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139974;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAssociatedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139BB4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100139DF4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updatePreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013A034;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)updateMockAccountBalanceByAddingAmount:(id)amount completion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013A29C;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = amountCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)deleteAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A4D8;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)deletePreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013A714;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)setPreferences:(id)preferences completion:(id)completion
{
  preferencesCopy = preferences;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013A974;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = preferencesCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = preferencesCopy;
  dispatch_async(v8, block);
}

- (void)registrationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013ABBC;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)presentIdentityVerificationFlowWithResponseData:(id)data orientation:(id)orientation completion:(id)completion
{
  dataCopy = data;
  orientationCopy = orientation;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013AF10;
    v17[3] = &unk_1008482C0;
    v17[4] = self;
    v18 = orientationCopy;
    v19 = completionCopy;
    v11 = objc_retainBlock(v17);
    v12 = v11;
    if (dataCopy)
    {
      (v11[2])(v11, dataCopy);
    }

    else
    {
      peerPaymentWebServiceCoordinator = [(PDPeerPaymentService *)self peerPaymentWebServiceCoordinator];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10013B0A8;
      v15[3] = &unk_1008482E8;
      v16 = v12;
      [peerPaymentWebServiceCoordinator identityVerificationResponseWithCompletion:v15];
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)presentRegistrationFlowWithAccount:(id)account amount:(id)amount state:(unint64_t)state senderAddress:(id)address orientation:(id)orientation hostSceneIdentifier:(id)identifier hostSceneBundleIdentifier:(id)bundleIdentifier completion:(id)self0
{
  accountCopy = account;
  amountCopy = amount;
  addressCopy = address;
  orientationCopy = orientation;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v23 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013B34C;
    block[3] = &unk_100848310;
    block[4] = self;
    v26 = accountCopy;
    v27 = amountCopy;
    stateCopy = state;
    v28 = addressCopy;
    v29 = orientationCopy;
    v30 = identifierCopy;
    v31 = bundleIdentifierCopy;
    v32 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)presentPeerPaymentTermsAndConditionsWithTermsURL:(id)l termsIdentifier:(id)identifier passUniqueID:(id)d orientation:(id)orientation completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  orientationCopy = orientation;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v17 = PDDefaultQueue();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013B654;
    v19[3] = &unk_10083DD98;
    v20 = lCopy;
    v21 = identifierCopy;
    selfCopy = self;
    v23 = dCopy;
    v24 = orientationCopy;
    v25 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)receivedPeerPaymentMessageData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10013B900;
    v11[3] = &unk_10083D320;
    v11[4] = self;
    v12 = dataCopy;
    v13 = handlerCopy;
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

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)updateMessageReceivedDate:(id)date forTransactionWithIdentifier:(id)identifier handler:(id)handler
{
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v11 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013BEC0;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = dateCopy;
    v16 = identifierCopy;
    v17 = handlerCopy;
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

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)balanceForPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    peerPaymentWebServiceCoordinator = [(PDPeerPaymentService *)self peerPaymentWebServiceCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013C1D4;
    v9[3] = &unk_10083D6B8;
    v10 = passCopy;
    v11 = completionCopy;
    [peerPaymentWebServiceCoordinator accountWithPreventingServerFetch:1 completion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)lastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C3A4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = identifierCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013C5C8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = handlerCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)downloadPassIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C844;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)registerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013C9D8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)registerDeviceWithForceReregister:(BOOL)reregister completion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v7 = dispatch_get_global_queue(21, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013CBE4;
    v9[3] = &unk_100848388;
    v9[4] = self;
    reregisterCopy = reregister;
    v10 = completionCopy;
    v8 = v9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v13 = v8;
    dispatch_async(v7, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)registerDeviceWithRegistrationURL:(id)l pushToken:(id)token forceReregister:(BOOL)reregister completion:(id)completion
{
  lCopy = l;
  tokenCopy = token;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013CE48;
    v15[3] = &unk_100840BF8;
    v15[4] = self;
    v16 = lCopy;
    v17 = tokenCopy;
    reregisterCopy = reregister;
    v18 = completionCopy;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)unregisterDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013CFE4;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D1DC;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = handlerCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)cloudStoreStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D3D8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)checkTLKsMissingWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D5D0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)resetApplePayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013D7C8;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)remoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion
{
  requestCopy = request;
  handleCopy = handle;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013DA04;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = requestCopy;
    v15 = handleCopy;
    v16 = completionCopy;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)peerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion
{
  tokensCopy = tokens;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013DC00;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = tokensCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = tokensCopy;
  dispatch_async(v8, block);
}

- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013DE40;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests shouldScheduleNotifications:(BOOL)notifications completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013E0B4;
  v14[3] = &unk_10083E128;
  v14[4] = self;
  v15 = requestsCopy;
  v16 = completionCopy;
  notificationsCopy = notifications;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = completionCopy;
  v13 = requestsCopy;
  dispatch_async(v10, block);
}

- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion
{
  tokensCopy = tokens;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013E570;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = tokensCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = tokensCopy;
  dispatch_async(v8, block);
}

- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013E7B0;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)recurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013E9F4;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)updateAutoReloadAmount:(id)amount threshold:(id)threshold identifier:(id)identifier completion:(id)completion
{
  amountCopy = amount;
  thresholdCopy = threshold;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = dispatch_get_global_queue(21, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013ECA4;
  v20[3] = &unk_10083FD78;
  v20[4] = self;
  v21 = amountCopy;
  v22 = thresholdCopy;
  v23 = identifierCopy;
  v24 = completionCopy;
  v15 = v20;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v26 = v15;
  v16 = completionCopy;
  v17 = identifierCopy;
  v18 = thresholdCopy;
  v19 = amountCopy;
  dispatch_async(v14, block);
}

- (void)updateRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013EEE8;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)insertOrUpdateRecurringPayments:(id)payments completion:(id)completion
{
  paymentsCopy = payments;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013F150;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = paymentsCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = paymentsCopy;
  dispatch_async(v8, block);
}

- (void)deleteRecurringPaymentsForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013F3B0;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifiersCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifiersCopy;
  dispatch_async(v8, block);
}

- (void)deleteAllRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F5F0;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)performRecurringPaymentAction:(unint64_t)action identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013F860;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = completionCopy;
  actionCopy = action;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = completionCopy;
  v13 = identifierCopy;
  dispatch_async(v10, block);
}

- (void)updateRecurringPaymentMemo:(id)memo identifier:(id)identifier completion:(id)completion
{
  memoCopy = memo;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013FAF4;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = memoCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = memoCopy;
  dispatch_async(v11, block);
}

- (void)updateRecurringPaymentStatus:(unint64_t)status identifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013FD68;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = completionCopy;
  statusCopy = status;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = completionCopy;
  v13 = identifierCopy;
  dispatch_async(v10, block);
}

- (void)hasRecurringPayments:(id)payments
{
  paymentsCopy = payments;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013FFAC;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = paymentsCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = paymentsCopy;
  dispatch_async(v5, block);
}

- (void)_removeNotificationsForPeerPaymentRecurringPaymentsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notifications for peer payment recurring payment identifiers: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = identifiersCopy;
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

- (void)encryptionCertificateForDestination:(unint64_t)destination forceUpdate:(BOOL)update completion:(id)completion
{
  completionCopy = completion;
  v9 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014040C;
  v12[3] = &unk_10083F440;
  v13 = completionCopy;
  destinationCopy = destination;
  updateCopy = update;
  v12[4] = self;
  v10 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v17 = v10;
  v11 = completionCopy;
  dispatch_async(v9, block);
}

- (void)encryptData:(id)data usingCertificateWithDestination:(unint64_t)destination completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014067C;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = dataCopy;
  v16 = completionCopy;
  destinationCopy = destination;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = completionCopy;
  v13 = dataCopy;
  dispatch_async(v10, block);
}

- (void)presentSenderFlowWithHost:(unint64_t)host userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100140944;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    hostCopy = host;
    v13 = infoCopy;
    v14 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)presentReceiverFlowWithOrientation:(id)orientation host:(unint64_t)host completion:(id)completion
{
  orientationCopy = orientation;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100140B9C;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = orientationCopy;
    hostCopy = host;
    v14 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)identifier memo:(id)memo counterpartAppearanceData:(id)data completion:(id)completion
{
  identifierCopy = identifier;
  memoCopy = memo;
  dataCopy = data;
  completionCopy = completion;
  v14 = dispatch_get_global_queue(21, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100140DD8;
  v20[3] = &unk_10083FD78;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = memoCopy;
  v23 = dataCopy;
  v24 = completionCopy;
  v15 = v20;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v26 = v15;
  v16 = completionCopy;
  v17 = dataCopy;
  v18 = memoCopy;
  v19 = identifierCopy;
  dispatch_async(v14, block);
}

- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)identifier amount:(id)amount currency:(id)currency senderName:(id)name completion:(id)completion
{
  identifierCopy = identifier;
  amountCopy = amount;
  currencyCopy = currency;
  nameCopy = name;
  completionCopy = completion;
  v17 = dispatch_get_global_queue(21, 0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001410B4;
  v24[3] = &unk_10083DD98;
  v24[4] = self;
  v25 = identifierCopy;
  v26 = amountCopy;
  v27 = currencyCopy;
  v28 = nameCopy;
  v29 = completionCopy;
  v18 = v24;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v31 = v18;
  v19 = completionCopy;
  v20 = nameCopy;
  v21 = currencyCopy;
  v22 = amountCopy;
  v23 = identifierCopy;
  dispatch_async(v17, block);
}

- (void)counterpartImageDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100141450;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)counterpartImageDataWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001416D0;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)counterpartImageDataForTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100141950;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)deleteAllCounterpartImageDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100141BAC;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)reportFailureDiagnostic:(id)diagnostic completion:(id)completion
{
  diagnosticCopy = diagnostic;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100141E14;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = diagnosticCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056A8;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = diagnosticCopy;
  dispatch_async(v8, block);
}

- (void)userInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100142054;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)fetchUserInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100142288;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)insertOrUpdateUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001424E8;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = infoCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)deleteUserInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10014271C;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000056A8;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (id)_displayNameForAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v4 = +[PKContactResolver defaultContactResolver];
    v5 = [v4 contactForHandle:addressCopy];
    v6 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:addressCopy contact:v5];
    if (!v6)
    {
      v6 = addressCopy;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_scheduleNotificationsForPeerPaymentPendingRequests:(id)requests
{
  requestsCopy = requests;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [requestsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(requestsCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        status = [v10 status];
        v12 = status;
        if (status == v7)
        {
        }

        else
        {
          if (status)
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

          v14 = [status isEqualToString:v7];

          if (!v14)
          {
            goto LABEL_17;
          }
        }

        actions = [v10 actions];
        v16 = [actions containsObject:v8];

        if (!v16)
        {
          continue;
        }

        requestToken = [v10 requestToken];
        v12 = [PDPeerPaymentPendingRequestReceivedUserNotification notificationIdentifierForRequestToken:requestToken];

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

      v5 = [requestsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  peerPaymentAccountManager = [(PDPeerPaymentService *)self peerPaymentAccountManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100142E90;
  v5[3] = &unk_10083DAE0;
  v5[4] = self;
  [peerPaymentAccountManager peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:v5];
}

- (void)_removeNotificationsForPeerPaymentPendingRequestWithRequestTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = tokensCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notifications for peer payment pending requests with tokens: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = tokensCopy;
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