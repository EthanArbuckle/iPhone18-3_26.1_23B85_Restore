@interface NPKRemoteAdminConnectionServiceAgent
- (BOOL)shouldStartConsistencyCheck;
- (BOOL)synchronizeWithTSM;
- (NPKRemoteAdminConnectionServiceAgent)initWithCompanionPaymentPassDatabase:(id)a3;
- (NPKRemoteAdminConnectionServiceAgentDelegate)delegate;
- (NSArray)secureElementApplets;
- (id)paymentApplications;
- (id)paymentPasses;
- (id)sharedPaymentWebServiceContext;
- (void)_checkCompanionMigrationReregistrationState;
- (void)_handleCompanionPaymentPassDatabaseChanged:(id)a3;
- (void)_handleKeybagStatusChanged;
- (void)_handleMigrationReregisterTask;
- (void)_handleUpdatedTransitAppletState:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_savePaymentWebServiceBackgroundContext;
- (void)_savePaymentWebServiceContext;
- (void)_scheduleConsistencyCheck:(id)a3 pluggedIn:(BOOL)a4 backoffLevel:(id)a5;
- (void)_scheduleMigrationReregisterForDate:(id)a3;
- (void)_setupBackgroundWebServiceWithCompletion:(id)a3;
- (void)_unregisterWebServiceWithDiagnosticReason:(id)a3 completion:(id)a4;
- (void)_updatePassWithTypeIdentifier:(id)a3;
- (void)accountProvisioningController:(id)a3 displayableError:(id)a4;
- (void)accountProvisioningControllerUpdatedState:(id)a3;
- (void)archiveWebServiceBackgroundContext:(id)a3;
- (void)archiveWebServiceContext:(id)a3;
- (void)balanceReminderForBalance:(id)a3 pass:(id)a4 completion:(id)a5;
- (void)checkCompanionPeerPaymentRegistrationState;
- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)connect;
- (void)dealloc;
- (void)deleteCardsWithAIDs:(id)a3 completion:(id)a4;
- (void)deprovisionPass:(id)a3;
- (void)deviceStateWithCompletion:(id)a3;
- (void)didDownloadPaymentPass:(id)a3;
- (void)dumpRemoteLogsWithCompletion:(id)a3;
- (void)handleAppletState:(id)a3 forUniqueID:(id)a4;
- (void)handleBalanceReminderUpdate:(id)a3 balance:(id)a4 forUniqueID:(id)a5;
- (void)handleBalanceUpdate:(id)a3 forUniqueID:(id)a4;
- (void)handleCompanionMigration;
- (void)handleCompanionPeerPaymentRegistration;
- (void)handleCredentialsUpdate:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6;
- (void)handleDeletePaymentTransactionWithIdentifier:(id)a3 passUniqueIdentifier:(id)a4;
- (void)handleDeletionForPaymentPass:(id)a3 uniqueID:(id)a4 completion:(id)a5;
- (void)handleDownloadAllPaymentPasses;
- (void)handleGizmoAddedPaymentPass:(id)a3;
- (void)handlePaymentTransactions:(id)a3 appletStates:(id)a4 forUniqueIDs:(id)a5;
- (void)handlePaymentWebServiceContextFromWatch:(id)a3;
- (void)handlePendingUnpairingWithCompletion:(id)a3;
- (void)handlePendingiCloudSignoutWithCompletion:(id)a3;
- (void)handlePreconditionNotMetWithUniqueIDs:(id)a3 preconditionDescription:(id)a4 shouldUnregister:(BOOL)a5;
- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4;
- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5;
- (void)handlePushToken:(id)a3;
- (void)handleRemoveTransactionsWithIdentifiers:(id)a3;
- (void)handleRequestedActions:(id)a3 completion:(id)a4;
- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)a3;
- (void)handleUpdatedPeerPaymentWebServiceContext:(id)a3 account:(id)a4;
- (void)handleUpdatedSharedPaymentWebServiceContext:(id)a3;
- (void)initiateConsistencyCheckWithCompletion:(id)a3;
- (void)markAllAppletsForDeletionWithCompletion:(id)a3;
- (void)noteForegroundVerificationObserverActive:(BOOL)a3 withObserver:(id)a4;
- (void)paymentWebService:(id)a3 didDownloadPass:(id)a4;
- (void)paymentWebService:(id)a3 didDownloadPassRemoteAssets:(id)a4 completion:(id)a5;
- (void)paymentWebService:(id)a3 didDownloadSerialNumbersForInstalledPasses:(id)a4 inRegion:(id)a5;
- (void)paymentWebService:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6;
- (void)paymentWebService:(id)a3 willCreateSessionWithConfiguration:(id)a4;
- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)a3;
- (void)performConsistencyCheckWithCompletion:(id)a3;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)provisionPassForAccountIdentifier:(id)a3 makeDefault:(BOOL)a4 completion:(id)a5;
- (void)provisionPassForRemoteCredentialWithType:(int64_t)a3 andIdentifier:(id)a4 completion:(id)a5;
- (void)redownloadAllPaymentPassesWithCompletion:(id)a3;
- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)remoteAdminAvailabilityRequest:(id)a3;
- (void)remoteAdminPerformRequest:(id)a3;
- (void)requestAutomaticProvisioningForCompanionPaymentPass:(id)a3;
- (void)retrieveTransactionsForPassWithUniqueID:(id)a3;
- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)sendPaymentOptionsDefaultsToWatch;
- (void)sendWebServiceContextToWatch;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setNewAuthRandom:(id)a3;
- (void)setSecureElementApplets:(id)a3;
- (void)showPaymentSetupForAppDisplayName:(id)a3;
- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4;
- (void)updateRegionSupportIfNecessary;
- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4;
- (void)verificationObserverDidTimeout:(id)a3;
@end

@implementation NPKRemoteAdminConnectionServiceAgent

- (NPKRemoteAdminConnectionServiceAgent)initWithCompanionPaymentPassDatabase:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = NPKRemoteAdminConnectionServiceAgent;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)&v39 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = pk_General_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = pk_General_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v41 = "[NPKRemoteAdminConnectionServiceAgent initWithCompanionPaymentPassDatabase:]";
          v42 = 2082;
          v43 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NPKCompanionAgent/NPKRemoteAdminConnectionServiceAgent.m";
          v44 = 2048;
          v45 = 102;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil companion payment pass DB passed to [NPKRemoteAdminConnectionServiceAgent initWithCompanionPaymentPassDatabase])", buf, 0x20u);
        }
      }

      _NPKAssertAbort();
    }

    [(NPKRemoteAdminConnectionServiceAgent *)v5 setCompanionPaymentPassDatabase:v4];
    v9 = [[NPKPaymentWebServiceCompanionTargetDevice alloc] initWithContext:1 responseQueue:&_dispatch_main_q];
    [v9 setDelegate:v5];
    v10 = NPKPaymentWebServiceContextPath();
    v11 = [PKPaymentWebServiceContext contextWithArchive:v10];

    v12 = NPKPairedDeviceSecureElementIdentifiers();
    v13 = NPKValidatePaymentWebServiceContextAgainstWatchSEIDs();

    if ((v13 & 1) == 0)
    {
      v14 = pk_Payment_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Not loading invalid web service context (%@); starting fresh instead", buf, 0xCu);
        }
      }

      v17 = objc_alloc_init(PKPaymentWebServiceContext);

      v11 = v17;
    }

    v18 = [[PKPaymentWebService alloc] initWithContext:v11 targetDevice:v9 archiver:v9];
    [(NPKRemoteAdminConnectionServiceAgent *)v5 setWebService:v18];
    [(NPKRemoteAdminConnectionServiceAgent *)v5 setTargetDevice:v9];
    v19 = [(NPKRemoteAdminConnectionServiceAgent *)v5 companionPaymentPassDatabase];
    v20 = [v19 uniqueIDs];
    v21 = [v20 count] == 0;

    if (!v21)
    {
      [(NPKRemoteAdminConnectionServiceAgent *)v5 _setupBackgroundWebServiceWithCompletion:0];
    }

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v5 selector:"_handleCompanionPaymentPassDatabaseChanged:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.Changed" object:v4];

    [(NPKRemoteAdminConnectionServiceAgent *)v5 connect];
    v23 = dispatch_queue_create("SecureElementAppletsQueue", 0);
    secureElementAppletsQueue = v5->_secureElementAppletsQueue;
    v5->_secureElementAppletsQueue = v23;

    v25 = [(NPKRemoteAdminConnectionServiceAgent *)v5 companionPaymentPassDatabase];
    v26 = [v25 uniqueIDs];
    if ([v26 count])
    {
      v27 = PDScheduledActivityExists();

      if (v27)
      {
LABEL_25:
        v31 = [NPSDomainAccessor alloc];
        v32 = [v31 initWithDomain:NPKDefaultsDomain];
        domainAccessor = v5->_domainAccessor;
        v5->_domainAccessor = v32;

        v5->_lockStateToken = -1;
        objc_initWeak(buf, v5);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10002D284;
        handler[3] = &unk_100071248;
        objc_copyWeak(&v38, buf);
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v5->_lockStateToken, &_dispatch_main_q, handler);

        [(NPKRemoteAdminConnectionServiceAgent *)v5 _checkCompanionMigrationReregistrationState];
        v34 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
        verificationForegroundObservers = v5->_verificationForegroundObservers;
        v5->_verificationForegroundObservers = v34;

        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);

        goto LABEL_26;
      }

      v25 = [NSDate dateWithTimeIntervalSinceNow:600.0];
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: No consistency check background task; scheduling one for %@", buf, 0xCu);
        }
      }

      [(NPKRemoteAdminConnectionServiceAgent *)v5 scheduleConsistencyCheck:v25 pluggedIn:0 backoffLevel:&off_100073F30];
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_26:

  return v5;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_lockStateToken))
  {
    notify_cancel(self->_lockStateToken);
    self->_lockStateToken = -1;
  }

  v3.receiver = self;
  v3.super_class = NPKRemoteAdminConnectionServiceAgent;
  [(NPKRemoteAdminConnectionServiceAgent *)&v3 dealloc];
}

- (void)remoteAdminPerformRequest:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: No longer implemented!", v6, 2u);
    }
  }
}

- (void)remoteAdminAvailabilityRequest:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: No longer implemented!", v6, 2u);
    }
  }
}

- (void)handlePreconditionNotMetWithUniqueIDs:(id)a3 preconditionDescription:(id)a4 shouldUnregister:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  v11 = [v10 uniqueIDs];

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = v9;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v11;
      v30 = 1024;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Precondition (%@) not met with unique IDs: %@ (current %@, should unregister %d)", buf, 0x26u);
    }
  }

  v15 = [v11 mutableCopy];
  v16 = [NSSet setWithArray:v8];
  [v15 minusSet:v16];

  if (![v15 count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002D690;
    v21[3] = &unk_100072258;
    v17 = dispatch_group_create();
    v22 = v17;
    v23 = self;
    [v8 enumerateObjectsUsingBlock:v21];
    if (v5)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10002D75C;
      v18[3] = &unk_100070E90;
      v19 = v9;
      v20 = self;
      dispatch_group_notify(v17, &_dispatch_main_q, v18);
    }
  }
}

- (void)handlePaymentTransactions:(id)a3 appletStates:(id)a4 forUniqueIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002D9B0;
  v21[3] = &unk_100072280;
  v21[4] = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v21];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_10002D9BC;
  v19[4] = sub_10002D9CC;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_10002D9BC;
  v17[4] = sub_10002D9CC;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002D9D4;
  v12[3] = &unk_1000722A8;
  v11 = v10;
  v15 = v19;
  v16 = v17;
  v13 = v11;
  v14 = self;
  [v8 enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (void)handleAppletState:(id)a3 forUniqueID:(id)a4
{
  if (a4)
  {
    [(NPKRemoteAdminConnectionServiceAgent *)self _handleUpdatedTransitAppletState:a3 forPassWithUniqueID:?];
  }
}

- (void)handleRemoveTransactionsWithIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[NPKGizmoDatabase sharedDatabase];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[NPKGizmoDatabase sharedDatabase];
        v12 = [v11 transactionWithIdentifier:v10];

        if (v12)
        {
          v13 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
          v14 = [v12 transactionSourceIdentifier];
          v15 = [v12 identifier];
          [v13 transactionSourceIdentifier:v14 didRemoveTransactionWithIdentifier:v15];
        }

        [v4 removeTransactionWithIdentifier:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)_handleUpdatedTransitAppletState:(id)a3 forPassWithUniqueID:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [v8 paymentPassWithUniqueIdentifier:v6 didUpdateWithTransitAppletState:v7];
  }
}

- (void)handleBalanceUpdate:(id)a3 forUniqueID:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [v8 paymentPassWithUniqueIdentifier:v6 didUpdateWithBalances:v7];
  }
}

- (void)handleBalanceReminderUpdate:(id)a3 balance:(id)a4 forUniqueID:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [v11 paymentPassWithUniqueIdentifier:v8 didUpdateBalanceReminder:v10 forBalance:v9];
  }
}

- (void)handleCredentialsUpdate:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && ([(NPKRemoteAdminConnectionServiceAgent *)self delegate], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [v15 paymentPassWithUniqueIdentifier:v11 didUpdateWithCredentials:v10 forPaymentApplicationIdentifier:v12 completion:v13];
  }

  else if (v13)
  {
    v16 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];

    if (!v16)
    {
      v17 = pk_General_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v19 = pk_General_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315138;
          v21 = "[NPKRemoteAdminConnectionServiceAgent handleCredentialsUpdate:forUniqueID:paymentApplicationIdentifier:completion:]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: cannot handle credentials update due to nil delegate in %s", &v20, 0xCu);
        }
      }
    }

    v13[2](v13, 0);
  }
}

- (void)handlePushToken:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      v9 = [v8 context];
      v10 = [v9 pushToken];
      *buf = 138412546;
      v29 = v4;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle push token: %@ (current %@)", buf, 0x16u);
    }
  }

  if (v4)
  {
    v11 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    v12 = [v11 context];
    v13 = [v12 pushToken];
    v14 = [v13 isEqualToString:v4];

    if ((v14 & 1) == 0)
    {
      v15 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      v16 = [v15 context];
      [v16 setPushToken:v4];

      v17 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      v18 = [v17 context];
      v19 = [v18 registrationDate];

      if (v19)
      {
        v20 = pk_Payment_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = pk_Payment_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
            v24 = [v23 context];
            v25 = [v24 pushToken];
            *buf = 138412290;
            v29 = v25;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Re-registering with push token %@", buf, 0xCu);
          }
        }

        v26 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10002E618;
        v27[3] = &unk_1000722D0;
        v27[4] = self;
        [v26 registerDeviceWithCompletion:v27];
      }

      else
      {
        [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
      }
    }
  }
}

- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle payment pass update with identifier: %@", &v8, 0xCu);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self _updatePassWithTypeIdentifier:v4];
}

- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NPKGizmoDatabase sharedDatabase];
  v8 = [v7 passForUniqueID:v6];
  v9 = [v8 paymentPass];

  v10 = [v9 npkDevicePaymentApplicationForAID:v5];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: unique ID %@ aid %@ pass %p application %@", &v15, 0x2Au);
    }
  }

  if (v9)
  {
    v14 = +[NPKGizmoDatabase sharedDatabase];
    [v14 setPreferredPaymentApplication:v10 forPaymentPass:v9];
  }
}

- (void)archiveWebServiceContext:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service context", v7, 2u);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
}

- (void)archiveWebServiceBackgroundContext:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service background context", v7, 2u);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceBackgroundContext];
}

- (void)setNewAuthRandom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if (NPKProtectedDataAvailable())
    {
      v5 = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
      v6 = [v5 uniqueIDs];
      v7 = [v6 count] == 0;
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7);
    v4 = v8;
  }
}

- (void)handlePaymentWebServiceContextFromWatch:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  if ([v5 needsRegistration])
  {

LABEL_4:
    v7 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    [v7 setContext:v4];

    [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
    notify_post([NPKSharedPaymentWebServiceChangedDarwinNotification UTF8String]);
    goto LABEL_5;
  }

  v6 = [v4 registrationDate];

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring web service from watch because we are already registered and it is not", v11, 2u);
    }
  }

LABEL_5:
}

- (void)sendWebServiceContextToWatch
{
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v3 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v4 = [v3 context];
  [v5 sendWebServiceContextToWatch:v4];
}

- (void)showPaymentSetupForAppDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
  [v5 didReceivePaymentSetupRequestForApplicationName:v4];
}

- (void)sendPaymentOptionsDefaultsToWatch
{
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v7 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
    [v7 sendPaymentOptionsDefaultsToWatch];

    v8 = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
    [v8 setBool:0 forKey:NPKNeedsPaymentOptionsDefault];
  }

  else
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Device is locked; not sending transaction defaults to watch", buf, 2u);
      }
    }

    v6 = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
    [v6 setBool:1 forKey:NPKNeedsPaymentOptionsDefault];
  }
}

- (void)_handleKeybagStatusChanged
{
  v3 = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
  v4 = [v3 BOOLForKey:NPKNeedsPaymentOptionsDefault];

  if (v4)
  {

    [(NPKRemoteAdminConnectionServiceAgent *)self sendPaymentOptionsDefaultsToWatch];
  }
}

- (void)handleUpdatedPeerPaymentWebServiceContext:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NPKPeerPaymentWebServiceContextPath();
  [v6 archiveAtPath:v7];

  v8 = NPKSecureArchiveObject();

  v9 = NPKPeerPaymentAccountPath();
  [v8 writeToFile:v9 atomically:1];

  notify_post([NPKSharedPeerPaymentWebServiceChangedDarwinNotification UTF8String]);
  v10 = [NPKPeerPaymentAccountChangedDarwinNotification UTF8String];

  notify_post(v10);
}

- (void)handleDownloadAllPaymentPasses
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002EFAC;
  v2[3] = &unk_100071000;
  v2[4] = self;
  [(NPKRemoteAdminConnectionServiceAgent *)self _setupBackgroundWebServiceWithCompletion:v2];
}

- (void)checkCompanionPeerPaymentRegistrationState
{
  v2 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
  [v2 didReceiveCheckCompanionPeerPaymentState];
}

- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4
{
  v12 = a3;
  v6 = a4;
  verificationObserver = self->_verificationObserver;
  if (verificationObserver)
  {
    [(PKPaymentVerificationObserver *)verificationObserver setDelegate:0];
    [(PKPaymentVerificationObserver *)self->_verificationObserver stop];
  }

  v8 = [v12 uniqueID];
  v9 = [NSString stringWithFormat:@"%@-%@", @"passd", v8];

  v10 = [[PKPaymentVerificationObserver alloc] initWithPaymentPass:v12 verificationChannel:v6 identifier:v9];
  v11 = self->_verificationObserver;
  self->_verificationObserver = v10;

  [(PKPaymentVerificationObserver *)self->_verificationObserver setDelegate:self];
  [(PKPaymentVerificationObserver *)self->_verificationObserver startObservingVerificationSourceWithTimeout:120.0];
}

- (void)paymentWebService:(id)a3 didDownloadPass:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F1F4;
  block[3] = &unk_100070FA8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)paymentWebService:(id)a3 didDownloadPassRemoteAssets:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F608;
  v11[3] = &unk_100072320;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)paymentWebService:(id)a3 didDownloadSerialNumbersForInstalledPasses:(id)a4 inRegion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Payment web service downloaded serial numbers for installed passes: %@ region: %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F8E8;
  v13[3] = &unk_100070E90;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002FE14;
  v5[3] = &unk_100070E90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)paymentWebService:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6
{
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Payment web service registered credential %@", &v10, 0xCu);
    }
  }
}

- (void)paymentWebService:(id)a3 willCreateSessionWithConfiguration:(id)a4
{
  v4 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment web service will create session with configuration. Configuring source application bundle identifier.", v8, 2u);
    }
  }

  [v4 set_sourceApplicationBundleIdentifier:@"com.apple.Bridge"];
}

- (void)_updatePassWithTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Update pass with type identifier %@", buf, 0xCu);
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003012C;
  v8[3] = &unk_100071000;
  v8[4] = self;
  [(NPKRemoteAdminConnectionServiceAgent *)self _setupBackgroundWebServiceWithCompletion:v8];
}

- (void)_savePaymentWebServiceContext
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      v7 = [v6 context];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service context %@", &v11, 0xCu);
    }
  }

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v9 = [v8 context];
  v10 = NPKPaymentWebServiceContextPath();
  [v9 archiveAtPath:v10];
}

- (void)_savePaymentWebServiceBackgroundContext
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      v7 = [v6 backgroundContext];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service background context %@", &v11, 0xCu);
    }
  }

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v9 = [v8 backgroundContext];
  v10 = NPKPaymentWebServiceBackgroundContextPath();
  [v9 archiveAtPath:v10];
}

- (void)updateRegionSupportIfNecessary
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Updating region support", buf, 2u);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000304E8;
  v8 = v7[3] = &unk_1000714C8;
  v6 = v8;
  [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:v6 completion:v7];
}

- (void)_unregisterWebServiceWithDiagnosticReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Unregistering and removing web service…", buf, 2u);
    }
  }

  v11 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v12 = [v11 targetDevice];
  [v11 invalidateBackgroundSession];
  [v11 setArchiver:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100030868;
  v31[3] = &unk_100071620;
  v13 = v11;
  v32 = v13;
  v14 = v7;
  v33 = v14;
  v15 = objc_retainBlock(v31);
  if (([v13 needsRegistration] & 1) == 0)
  {
    v16 = MGCopyAnswer();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100030944;
    v27[3] = &unk_100072398;
    v28 = v13;
    v29 = v16;
    v30 = v15;
    v17 = v16;
    [v28 diagnosticSessionWithReason:v6 sessionHandler:v27];
  }

  v18 = +[NSFileManager defaultManager];
  v19 = NPKPaymentWebServiceContextPath();
  [v18 removeItemAtPath:v19 error:0];

  v20 = +[NSFileManager defaultManager];
  v21 = NPKPaymentWebServiceBackgroundContextPath();
  [v20 removeItemAtPath:v21 error:0];

  v22 = objc_alloc_init(PKPaymentWebServiceContext);
  v23 = [[PKPaymentWebService alloc] initWithContext:v22 targetDevice:v12 archiver:v12];
  [v23 configurePaymentServiceWithCompletion:&stru_1000723D8];
  [(NPKRemoteAdminConnectionServiceAgent *)self setWebService:v23];
  if ([v13 needsRegistration])
  {
    v24 = pk_Payment_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Notice: Unregister of web service not needed.", buf, 2u);
      }
    }

    (v15[2])(v15);
  }

  notify_post([NPKSharedPaymentWebServiceChangedDarwinNotification UTF8String]);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v4 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service activate accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413314;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 1024;
      v25 = v8;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: IDS service did send with success: %@ %@ %@ %d %@", &v18, 0x30u);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v19, 0x34u);
    }
  }
}

- (void)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030FF0;
  block[3] = &unk_100071000;
  block[4] = self;
  if (qword_10007D5C8 != -1)
  {
    dispatch_once(&qword_10007D5C8, block);
  }

  PDScheduledActivityClientRegister();
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Handling background task: %@", &v10, 0xCu);
    }
  }

  if ([v5 isEqualToString:@"ConsistencyCheck"])
  {
    v9 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleConsistencyCheck:v9 pluggedIn:1 backoffLevel:0];

    [(NPKRemoteAdminConnectionServiceAgent *)self performConsistencyCheckWithCompletion:&stru_100072440];
  }

  else if ([v5 isEqualToString:@"MigrationReregister"])
  {
    [(NPKRemoteAdminConnectionServiceAgent *)self _handleMigrationReregisterTask];
  }
}

- (void)_handleCompanionPaymentPassDatabaseChanged:(id)a3
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:a3, 180.0];
  [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleConsistencyCheck:v4 pluggedIn:0 backoffLevel:&off_100073F30];
}

- (void)initiateConsistencyCheckWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003136C;
  v5[3] = &unk_100071D90;
  v6 = a3;
  v4 = v6;
  [(NPKRemoteAdminConnectionServiceAgent *)self performConsistencyCheckWithCompletion:v5];
}

- (void)performConsistencyCheckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Starting consistency check process", buf, 2u);
    }
  }

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031494;
  v10[3] = &unk_100072468;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 secureElementAppletsWithCompletion:v10];
}

- (void)redownloadAllPaymentPassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Redownloading all payment passes", buf, 2u);
    }
  }

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  v9 = [v8 outstandingDeletionStore];
  [v9 clearStore];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100031950;
  v11[3] = &unk_100071620;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(NPKRemoteAdminConnectionServiceAgent *)self _setupBackgroundWebServiceWithCompletion:v11];
}

- (void)dumpRemoteLogsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031A64;
  v7[3] = &unk_100071D90;
  v8 = v4;
  v6 = v4;
  [v5 dumpLogsWithCompletion:v7];
}

- (void)deleteCardsWithAIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v7);
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Delete cards with AIDs: %@ completion: %@", buf, 0x16u);
    }
  }

  v12 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100031CF0;
  v14[3] = &unk_100071D90;
  v15 = v7;
  v13 = v7;
  [v12 removeAIDsFromSecureElement:v6 withCompletion:v14];
}

- (void)handleDeletionForPaymentPass:(id)a3 uniqueID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v11 handlePendingRemovalOfPaymentPass:v10 uniqueID:v9 completion:v8];
}

- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v11 handlePreferredAID:v10 forPassWithUniqueID:v9 completion:v8];
}

- (void)handleCompanionMigration
{
  NPKSetCompanionMigrationNeeded();
  v3 = +[NSDate date];
  [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleMigrationReregisterForDate:v3];
}

- (void)deprovisionPass:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:v4];
  v6 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000320A8;
  v11[3] = &unk_100072490;
  v12 = v4;
  v7 = v4;
  [v6 deprovisionForRequest:v5 completion:v11];

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v9 = [v8 context];
  v10 = [v7 uniqueID];
  [v9 removeVerificationRequestRecordForUniqueID:v10];

  [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
}

- (void)handlePendingUnpairingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling pending unpairing", v8, 2u);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self _unregisterWebServiceWithDiagnosticReason:@"Pending unpairing" completion:v4];
}

- (void)handlePendingiCloudSignoutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling pending iCloud signout", buf, 2u);
    }
  }

  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v8 handleCompanioniCloudSignout];

  if (NPKPairedOrPairingDeviceIsTinker())
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[NPKRemoteAdminConnectionServiceAgent handlePendingiCloudSignoutWithCompletion:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Guardian companion is iCloud signing out. %s", buf, 0xCu);
      }
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v12 = dispatch_group_create();
    v13 = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
    v14 = [v13 uniqueIDs];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100032558;
    v21[3] = &unk_100071130;
    v15 = v12;
    v22 = v15;
    v23 = self;
    [v14 enumerateObjectsUsingBlock:v21];
    dispatch_group_enter(v15);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100032624;
    v19[3] = &unk_100071000;
    v20 = v15;
    v16 = v15;
    [(NPKRemoteAdminConnectionServiceAgent *)self _unregisterWebServiceWithDiagnosticReason:@"Pending iCloud signout" completion:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003262C;
    v17[3] = &unk_100070E08;
    v18 = v4;
    dispatch_group_notify(v16, &_dispatch_main_q, v17);
  }
}

- (BOOL)synchronizeWithTSM
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Synchronizing with TSM", buf, 2u);
    }
  }

  v6 = dispatch_group_create();
  v7 = dispatch_semaphore_create(0);
  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 1;
  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v9 = [v8 context];
  v10 = [v9 TSMPushTopics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100032880;
  v18[3] = &unk_1000724E0;
  v11 = v6;
  v19 = v11;
  v20 = self;
  v21 = buf;
  [v10 enumerateObjectsUsingBlock:v18];

  v12 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100032A8C;
  v15[3] = &unk_100070F30;
  v16 = v7;
  v17 = buf;
  v15[4] = self;
  v13 = v7;
  dispatch_group_notify(v11, v12, v15);

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v7) = v23[24];

  _Block_object_dispose(buf, 8);
  return v7;
}

- (void)didDownloadPaymentPass:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032D8C;
  v5[3] = &unk_100070E90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_sync(&_dispatch_main_q, v5);
}

- (id)paymentPasses
{
  v2 = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  v3 = [v2 uniqueIDs];
  v4 = [v3 allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100033298;
  v11[3] = &unk_100072558;
  v12 = v2;
  v5 = v2;
  v6 = [v4 npkComprehension:v11];
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: unique IDs: %@ paymentPasses: %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)deviceStateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000333BC;
    v9[3] = &unk_100072580;
    v9[4] = self;
    v10 = v4;
    [v5 secureElementAppletsWithCompletion:v9];

    v6 = v10;
  }

  else
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_4;
    }

    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: No completion provided for device state, aborting.", buf, 2u);
    }
  }

LABEL_4:
}

- (BOOL)shouldStartConsistencyCheck
{
  v2 = NPKIsPairedDeviceStandalone();
  if (v2)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Not performing consistency check for for standalone device", v7, 2u);
      }
    }
  }

  return v2 ^ 1;
}

- (void)handleRequestedActions:(id)a3 completion:(id)a4
{
  v19 = self;
  v5 = a3;
  v21 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 actions];
        v12 = [v10 deviceCredential];
        if ([v12 type])
        {
          v13 = 0;
        }

        else
        {
          v13 = v11 == 8;
        }

        if (v13)
        {
          v17 = [v12 address];
          v16 = [v17 appletIdentifier];

          [0 safelyAddObject:v16];
        }

        else
        {
          v14 = pk_General_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (!v15)
          {
            goto LABEL_15;
          }

          v16 = pk_General_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Consistency check requested an unsupported action: %@", buf, 0xCu);
          }
        }

LABEL_15:
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  if ([0 count])
  {
    v18 = [v20 targetDevice];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003398C;
    v22[3] = &unk_100071D90;
    v23 = v21;
    [v18 removeAIDsFromSecureElement:0 withCompletion:v22];
  }
}

- (id)paymentApplications
{
  v3 = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementIDs];
  v4 = +[NSMutableArray array];
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self paymentPasses];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100033C40;
  v15 = &unk_1000725A8;
  v6 = v4;
  v16 = v6;
  v7 = v3;
  v17 = v7;
  [v5 enumerateObjectsUsingBlock:&v12];

  v8 = pk_Payment_log();
  LODWORD(v5) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: SEIDs %@ payment applications %@", buf, 0x16u);
    }
  }

  v10 = [v6 copy];

  return v10;
}

- (void)setSecureElementApplets:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementAppletsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033D64;
  v7[3] = &unk_100070E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSArray)secureElementApplets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10002D9BC;
  v11 = sub_10002D9CC;
  v12 = 0;
  v3 = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementAppletsQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033EC4;
  v6[3] = &unk_100070DB8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v8 registerCredentialsWithIdentifiers:v7 completion:v6];
}

- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v8 revokeCredentialsWithIdentifiers:v7 completion:v6];
}

- (void)_scheduleConsistencyCheck:(id)a3 pluggedIn:(BOOL)a4 backoffLevel:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000340D4;
  v10[3] = &unk_1000725F8;
  v11 = a3;
  v12 = self;
  v14 = a4;
  v13 = a5;
  v8 = v13;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)retrieveTransactionsForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v5 retrieveTransactionsForPassWithUniqueID:v4];
}

- (void)handleDeletePaymentTransactionWithIdentifier:(id)a3 passUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v8 handleDeletePaymentTransactionWithIdentifier:v7 passUniqueIdentifier:v6];
}

- (void)markAllAppletsForDeletionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v5 markAllAppletsForDeletionWithCompletion:v4];
}

- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v14 setBalanceReminder:v13 forBalance:v12 pass:v11 completion:v10];
}

- (void)balanceReminderForBalance:(id)a3 pass:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v11 balanceReminderForBalance:v10 pass:v9 completion:v8];
}

- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v11 commutePlanReminderForCommutePlan:v10 pass:v9 withCompletion:v8];
}

- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v14 setCommutePlanReminder:v13 forCommutePlan:v12 pass:v11 completion:v10];
}

- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000347EC;
  block[3] = &unk_100070FA8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)verificationObserverDidTimeout:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034BC0;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)noteForegroundVerificationObserverActive:(BOOL)a3 withObserver:(id)a4
{
  v4 = a3;
  v6 = a4;
  verificationForegroundObservers = self->_verificationForegroundObservers;
  if (v4)
  {
    [(NSHashTable *)verificationForegroundObservers addObject:v6];
  }

  else
  {
    [(NSHashTable *)verificationForegroundObservers removeObject:v6];
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_verificationForegroundObservers;
      v12[0] = 67109634;
      v12[1] = v4;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: After handling active %d for observer %@, all observers is now %@", v12, 0x1Cu);
    }
  }
}

- (void)handleUpdatedSharedPaymentWebServiceContext:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle updated shared payment web service context: %@", &v9, 0xCu);
    }
  }

  if (v4)
  {
    v8 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    [v8 setContext:v4];

    [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
  }
}

- (id)sharedPaymentWebServiceContext
{
  v2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v3 = [v2 context];

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Returning shared payment web service context: %@", &v8, 0xCu);
    }
  }

  return v3;
}

- (void)handleGizmoAddedPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  [(NPKRemoteAdminConnectionServiceAgent *)self paymentWebService:v5 didDownloadPass:v4];
}

- (void)handleCompanionPeerPaymentRegistration
{
  v2 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v2 handleCompanionPeerPaymentRegistration];
}

- (void)_setupBackgroundWebServiceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Setting up background web service", v11, 2u);
    }
  }

  v8 = NPKPaymentWebServiceBackgroundContextPath();
  v9 = [PKPaymentWebServiceBackgroundContext contextWithArchive:v8];

  v10 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  [v10 startBackgroundURLSessionWithIdentifier:@"com.apple.NPKCompanionAgent" context:v9 backgroundDelegate:self completion:v4];
}

- (void)_checkCompanionMigrationReregistrationState
{
  v3 = PDScheduledActivityGetCriteria();
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Current companion migration task criteria: %@", &v24, 0xCu);
    }
  }

  if (NPKIsCompanionMigrationNeeded())
  {
    if (!v3)
    {
      v17 = pk_Payment_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v13 = "Warning: Companion migration needed, but no background task scheduled. Scheduling now.";
          goto LABEL_23;
        }

LABEL_24:
      }

LABEL_25:
      PDScheduledActivityRemove();
      v21 = +[NSDate date];
      [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleMigrationReregisterForDate:v21];

      goto LABEL_26;
    }

    v7 = [v3 startDate];
    [v7 timeIntervalSinceNow];
    v9 = v8;

    if (v9 < 0.0)
    {
      v10 = pk_Payment_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v13 = "Notice: Background task scheduled has start date in the past. Scheduling now.";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v24, 2u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v9 > 86400.0)
    {
      if (v20)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v13 = "Notice: Background task scheduled for >1 day away. Scheduling now.";
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v20)
    {
      v22 = pk_Payment_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v3 startDate];
        v24 = 138412290;
        v25 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Background task already scheduled for %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion migration not needed", &v24, 2u);
      }
    }

    PDScheduledActivityRemove();
  }

LABEL_26:
}

- (void)_scheduleMigrationReregisterForDate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035568;
  v5[3] = &unk_100070E90;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_handleMigrationReregisterTask
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Handling migration reregister task", buf, 2u);
    }
  }

  v6 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035774;
  v7[3] = &unk_100072648;
  v7[4] = self;
  [v6 handleCompanionMigrationWithCompletion:v7];
}

- (void)provisionPassForAccountIdentifier:(id)a3 makeDefault:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v6)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) provisionPassForAccountIdentifier %@ makeDefault %@", buf, 0x16u);
    }
  }

  v14 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100035CC4;
  v17[3] = &unk_100072698;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v6;
  v15 = v9;
  v16 = v8;
  [v14 updatedAccountsForProvisioningWithCompletion:v17];
}

- (void)provisionPassForRemoteCredentialWithType:(int64_t)a3 andIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (apple-balance-pass-provisioning) provisionPassForRemoteCredentialType %ld identifier: %@ ", &v14, 0x16u);
    }
  }

  v13 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v13 provisionPassForRemoteCredentialWithType:a3 andIdentifier:v8 completion:v9];
}

- (void)requestAutomaticProvisioningForCompanionPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [v5 requestAutomaticProvisioningForCompanionPaymentPass:v4];
}

- (void)accountProvisioningControllerUpdatedState:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = [(PKAccountProvisioningController *)v4 provisionLocalPassState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) accountProvisioningControllerUpdatedState %lu", &v10, 0xCu);
    }
  }

  if (self->_accountProvisioningController == v4 && [(PKAccountProvisioningController *)v4 provisionLocalPassState]== 3)
  {
    (*(self->_accountPassProvisionCompletion + 2))();
    accountProvisioningController = self->_accountProvisioningController;
    self->_accountProvisioningController = 0;

    accountPassProvisionCompletion = self->_accountPassProvisionCompletion;
    self->_accountPassProvisionCompletion = 0;
  }
}

- (void)accountProvisioningController:(id)a3 displayableError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      v14 = [(PKAccountProvisioningController *)v6 provisionLocalPassState];
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) accountProvisioningController: %lu displayableError %@", &v13, 0x16u);
    }
  }

  if (self->_accountProvisioningController == v6)
  {
    (*(self->_accountPassProvisionCompletion + 2))();
    accountProvisioningController = self->_accountProvisioningController;
    self->_accountProvisioningController = 0;

    accountPassProvisionCompletion = self->_accountPassProvisionCompletion;
    self->_accountPassProvisionCompletion = 0;
  }
}

- (NPKRemoteAdminConnectionServiceAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end