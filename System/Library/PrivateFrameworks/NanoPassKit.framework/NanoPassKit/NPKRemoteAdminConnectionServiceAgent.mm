@interface NPKRemoteAdminConnectionServiceAgent
- (BOOL)shouldStartConsistencyCheck;
- (BOOL)synchronizeWithTSM;
- (NPKRemoteAdminConnectionServiceAgent)initWithCompanionPaymentPassDatabase:(id)database;
- (NPKRemoteAdminConnectionServiceAgentDelegate)delegate;
- (NSArray)secureElementApplets;
- (id)paymentApplications;
- (id)paymentPasses;
- (id)sharedPaymentWebServiceContext;
- (void)_checkCompanionMigrationReregistrationState;
- (void)_handleCompanionPaymentPassDatabaseChanged:(id)changed;
- (void)_handleKeybagStatusChanged;
- (void)_handleMigrationReregisterTask;
- (void)_handleUpdatedTransitAppletState:(id)state forPassWithUniqueID:(id)d;
- (void)_savePaymentWebServiceBackgroundContext;
- (void)_savePaymentWebServiceContext;
- (void)_scheduleConsistencyCheck:(id)check pluggedIn:(BOOL)in backoffLevel:(id)level;
- (void)_scheduleMigrationReregisterForDate:(id)date;
- (void)_setupBackgroundWebServiceWithCompletion:(id)completion;
- (void)_unregisterWebServiceWithDiagnosticReason:(id)reason completion:(id)completion;
- (void)_updatePassWithTypeIdentifier:(id)identifier;
- (void)accountProvisioningController:(id)controller displayableError:(id)error;
- (void)accountProvisioningControllerUpdatedState:(id)state;
- (void)archiveWebServiceBackgroundContext:(id)context;
- (void)archiveWebServiceContext:(id)context;
- (void)balanceReminderForBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)checkCompanionPeerPaymentRegistrationState;
- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)deleteCardsWithAIDs:(id)ds completion:(id)completion;
- (void)deprovisionPass:(id)pass;
- (void)deviceStateWithCompletion:(id)completion;
- (void)didDownloadPaymentPass:(id)pass;
- (void)dumpRemoteLogsWithCompletion:(id)completion;
- (void)handleAppletState:(id)state forUniqueID:(id)d;
- (void)handleBalanceReminderUpdate:(id)update balance:(id)balance forUniqueID:(id)d;
- (void)handleBalanceUpdate:(id)update forUniqueID:(id)d;
- (void)handleCompanionMigration;
- (void)handleCompanionPeerPaymentRegistration;
- (void)handleCredentialsUpdate:(id)update forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)handleDeletePaymentTransactionWithIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier;
- (void)handleDeletionForPaymentPass:(id)pass uniqueID:(id)d completion:(id)completion;
- (void)handleDownloadAllPaymentPasses;
- (void)handleGizmoAddedPaymentPass:(id)pass;
- (void)handlePaymentTransactions:(id)transactions appletStates:(id)states forUniqueIDs:(id)ds;
- (void)handlePaymentWebServiceContextFromWatch:(id)watch;
- (void)handlePendingUnpairingWithCompletion:(id)completion;
- (void)handlePendingiCloudSignoutWithCompletion:(id)completion;
- (void)handlePreconditionNotMetWithUniqueIDs:(id)ds preconditionDescription:(id)description shouldUnregister:(BOOL)unregister;
- (void)handlePreferredAID:(id)d forPassWithUniqueID:(id)iD;
- (void)handlePreferredAID:(id)d forPassWithUniqueID:(id)iD completion:(id)completion;
- (void)handlePushToken:(id)token;
- (void)handleRemoveTransactionsWithIdentifiers:(id)identifiers;
- (void)handleRequestedActions:(id)actions completion:(id)completion;
- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)identifier;
- (void)handleUpdatedPeerPaymentWebServiceContext:(id)context account:(id)account;
- (void)handleUpdatedSharedPaymentWebServiceContext:(id)context;
- (void)initiateConsistencyCheckWithCompletion:(id)completion;
- (void)markAllAppletsForDeletionWithCompletion:(id)completion;
- (void)noteForegroundVerificationObserverActive:(BOOL)active withObserver:(id)observer;
- (void)paymentWebService:(id)service didDownloadPass:(id)pass;
- (void)paymentWebService:(id)service didDownloadPassRemoteAssets:(id)assets completion:(id)completion;
- (void)paymentWebService:(id)service didDownloadSerialNumbersForInstalledPasses:(id)passes inRegion:(id)region;
- (void)paymentWebService:(id)service didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error;
- (void)paymentWebService:(id)service willCreateSessionWithConfiguration:(id)configuration;
- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)invalid;
- (void)performConsistencyCheckWithCompletion:(id)completion;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)provisionPassForAccountIdentifier:(id)identifier makeDefault:(BOOL)default completion:(id)completion;
- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion;
- (void)redownloadAllPaymentPassesWithCompletion:(id)completion;
- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)remoteAdminAvailabilityRequest:(id)request;
- (void)remoteAdminPerformRequest:(id)request;
- (void)requestAutomaticProvisioningForCompanionPaymentPass:(id)pass;
- (void)retrieveTransactionsForPassWithUniqueID:(id)d;
- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)sendPaymentOptionsDefaultsToWatch;
- (void)sendWebServiceContextToWatch;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion;
- (void)setNewAuthRandom:(id)random;
- (void)setSecureElementApplets:(id)applets;
- (void)showPaymentSetupForAppDisplayName:(id)name;
- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method;
- (void)updateRegionSupportIfNecessary;
- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code;
- (void)verificationObserverDidTimeout:(id)timeout;
@end

@implementation NPKRemoteAdminConnectionServiceAgent

- (NPKRemoteAdminConnectionServiceAgent)initWithCompanionPaymentPassDatabase:(id)database
{
  databaseCopy = database;
  v39.receiver = self;
  v39.super_class = NPKRemoteAdminConnectionServiceAgent;
  v5 = [(NPKRemoteAdminConnectionServiceAgent *)&v39 init];
  if (v5)
  {
    if (!databaseCopy)
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

    [(NPKRemoteAdminConnectionServiceAgent *)v5 setCompanionPaymentPassDatabase:databaseCopy];
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
    companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)v5 companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
    v21 = [uniqueIDs count] == 0;

    if (!v21)
    {
      [(NPKRemoteAdminConnectionServiceAgent *)v5 _setupBackgroundWebServiceWithCompletion:0];
    }

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v5 selector:"_handleCompanionPaymentPassDatabaseChanged:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.Changed" object:databaseCopy];

    [(NPKRemoteAdminConnectionServiceAgent *)v5 connect];
    v23 = dispatch_queue_create("SecureElementAppletsQueue", 0);
    secureElementAppletsQueue = v5->_secureElementAppletsQueue;
    v5->_secureElementAppletsQueue = v23;

    companionPaymentPassDatabase2 = [(NPKRemoteAdminConnectionServiceAgent *)v5 companionPaymentPassDatabase];
    uniqueIDs2 = [companionPaymentPassDatabase2 uniqueIDs];
    if ([uniqueIDs2 count])
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

      companionPaymentPassDatabase2 = [NSDate dateWithTimeIntervalSinceNow:600.0];
      v28 = pk_Payment_log();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        v30 = pk_Payment_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = companionPaymentPassDatabase2;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: No consistency check background task; scheduling one for %@", buf, 0xCu);
        }
      }

      [(NPKRemoteAdminConnectionServiceAgent *)v5 scheduleConsistencyCheck:companionPaymentPassDatabase2 pluggedIn:0 backoffLevel:&off_100073F30];
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

- (void)remoteAdminPerformRequest:(id)request
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

- (void)remoteAdminAvailabilityRequest:(id)request
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

- (void)handlePreconditionNotMetWithUniqueIDs:(id)ds preconditionDescription:(id)description shouldUnregister:(BOOL)unregister
{
  unregisterCopy = unregister;
  dsCopy = ds;
  descriptionCopy = description;
  companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = descriptionCopy;
      v26 = 2112;
      v27 = dsCopy;
      v28 = 2112;
      v29 = uniqueIDs;
      v30 = 1024;
      v31 = unregisterCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Precondition (%@) not met with unique IDs: %@ (current %@, should unregister %d)", buf, 0x26u);
    }
  }

  v15 = [uniqueIDs mutableCopy];
  v16 = [NSSet setWithArray:dsCopy];
  [v15 minusSet:v16];

  if (![v15 count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002D690;
    v21[3] = &unk_100072258;
    v17 = dispatch_group_create();
    v22 = v17;
    selfCopy = self;
    [dsCopy enumerateObjectsUsingBlock:v21];
    if (unregisterCopy)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10002D75C;
      v18[3] = &unk_100070E90;
      v19 = descriptionCopy;
      selfCopy2 = self;
      dispatch_group_notify(v17, &_dispatch_main_q, v18);
    }
  }
}

- (void)handlePaymentTransactions:(id)transactions appletStates:(id)states forUniqueIDs:(id)ds
{
  transactionsCopy = transactions;
  statesCopy = states;
  dsCopy = ds;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002D9B0;
  v21[3] = &unk_100072280;
  v21[4] = self;
  [statesCopy enumerateKeysAndObjectsUsingBlock:v21];
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
  v11 = dsCopy;
  v15 = v19;
  v16 = v17;
  v13 = v11;
  selfCopy = self;
  [transactionsCopy enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (void)handleAppletState:(id)state forUniqueID:(id)d
{
  if (d)
  {
    [(NPKRemoteAdminConnectionServiceAgent *)self _handleUpdatedTransitAppletState:state forPassWithUniqueID:?];
  }
}

- (void)handleRemoveTransactionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = +[NPKGizmoDatabase sharedDatabase];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = identifiersCopy;
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
          delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
          transactionSourceIdentifier = [v12 transactionSourceIdentifier];
          identifier = [v12 identifier];
          [delegate transactionSourceIdentifier:transactionSourceIdentifier didRemoveTransactionWithIdentifier:identifier];
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

- (void)_handleUpdatedTransitAppletState:(id)state forPassWithUniqueID:(id)d
{
  if (d)
  {
    dCopy = d;
    stateCopy = state;
    delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [delegate paymentPassWithUniqueIdentifier:dCopy didUpdateWithTransitAppletState:stateCopy];
  }
}

- (void)handleBalanceUpdate:(id)update forUniqueID:(id)d
{
  if (d)
  {
    dCopy = d;
    updateCopy = update;
    delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [delegate paymentPassWithUniqueIdentifier:dCopy didUpdateWithBalances:updateCopy];
  }
}

- (void)handleBalanceReminderUpdate:(id)update balance:(id)balance forUniqueID:(id)d
{
  if (d)
  {
    dCopy = d;
    balanceCopy = balance;
    updateCopy = update;
    delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [delegate paymentPassWithUniqueIdentifier:dCopy didUpdateBalanceReminder:updateCopy forBalance:balanceCopy];
  }
}

- (void)handleCredentialsUpdate:(id)update forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion
{
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  if (dCopy && ([(NPKRemoteAdminConnectionServiceAgent *)self delegate], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
    [delegate paymentPassWithUniqueIdentifier:dCopy didUpdateWithCredentials:updateCopy forPaymentApplicationIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    delegate2 = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];

    if (!delegate2)
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

    completionCopy[2](completionCopy, 0);
  }
}

- (void)handlePushToken:(id)token
{
  tokenCopy = token;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      context = [webService context];
      pushToken = [context pushToken];
      *buf = 138412546;
      v29 = tokenCopy;
      v30 = 2112;
      v31 = pushToken;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle push token: %@ (current %@)", buf, 0x16u);
    }
  }

  if (tokenCopy)
  {
    webService2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    context2 = [webService2 context];
    pushToken2 = [context2 pushToken];
    v14 = [pushToken2 isEqualToString:tokenCopy];

    if ((v14 & 1) == 0)
    {
      webService3 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      context3 = [webService3 context];
      [context3 setPushToken:tokenCopy];

      webService4 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      context4 = [webService4 context];
      registrationDate = [context4 registrationDate];

      if (registrationDate)
      {
        v20 = pk_Payment_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = pk_Payment_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            webService5 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
            context5 = [webService5 context];
            pushToken3 = [context5 pushToken];
            *buf = 138412290;
            v29 = pushToken3;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Re-registering with push token %@", buf, 0xCu);
          }
        }

        webService6 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10002E618;
        v27[3] = &unk_1000722D0;
        v27[4] = self;
        [webService6 registerDeviceWithCompletion:v27];
      }

      else
      {
        [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
      }
    }
  }
}

- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle payment pass update with identifier: %@", &v8, 0xCu);
    }
  }

  [(NPKRemoteAdminConnectionServiceAgent *)self _updatePassWithTypeIdentifier:identifierCopy];
}

- (void)handlePreferredAID:(id)d forPassWithUniqueID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = +[NPKGizmoDatabase sharedDatabase];
  v8 = [v7 passForUniqueID:iDCopy];
  paymentPass = [v8 paymentPass];

  v10 = [paymentPass npkDevicePaymentApplicationForAID:dCopy];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = iDCopy;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2048;
      v20 = paymentPass;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: unique ID %@ aid %@ pass %p application %@", &v15, 0x2Au);
    }
  }

  if (paymentPass)
  {
    v14 = +[NPKGizmoDatabase sharedDatabase];
    [v14 setPreferredPaymentApplication:v10 forPaymentPass:paymentPass];
  }
}

- (void)archiveWebServiceContext:(id)context
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

- (void)archiveWebServiceBackgroundContext:(id)context
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

- (void)setNewAuthRandom:(id)random
{
  randomCopy = random;
  if (randomCopy)
  {
    v8 = randomCopy;
    if (NPKProtectedDataAvailable())
    {
      companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
      uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
      v7 = [uniqueIDs count] == 0;
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7);
    randomCopy = v8;
  }
}

- (void)handlePaymentWebServiceContextFromWatch:(id)watch
{
  watchCopy = watch;
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  if ([webService needsRegistration])
  {

LABEL_4:
    webService2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    [webService2 setContext:watchCopy];

    [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
    notify_post([NPKSharedPaymentWebServiceChangedDarwinNotification UTF8String]);
    goto LABEL_5;
  }

  registrationDate = [watchCopy registrationDate];

  if (registrationDate)
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
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  context = [webService context];
  [targetDevice sendWebServiceContextToWatch:context];
}

- (void)showPaymentSetupForAppDisplayName:(id)name
{
  nameCopy = name;
  delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
  [delegate didReceivePaymentSetupRequestForApplicationName:nameCopy];
}

- (void)sendPaymentOptionsDefaultsToWatch
{
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
    [targetDevice sendPaymentOptionsDefaultsToWatch];

    domainAccessor = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
    [domainAccessor setBool:0 forKey:NPKNeedsPaymentOptionsDefault];
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

    domainAccessor2 = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
    [domainAccessor2 setBool:1 forKey:NPKNeedsPaymentOptionsDefault];
  }
}

- (void)_handleKeybagStatusChanged
{
  domainAccessor = [(NPKRemoteAdminConnectionServiceAgent *)self domainAccessor];
  v4 = [domainAccessor BOOLForKey:NPKNeedsPaymentOptionsDefault];

  if (v4)
  {

    [(NPKRemoteAdminConnectionServiceAgent *)self sendPaymentOptionsDefaultsToWatch];
  }
}

- (void)handleUpdatedPeerPaymentWebServiceContext:(id)context account:(id)account
{
  accountCopy = account;
  contextCopy = context;
  v7 = NPKPeerPaymentWebServiceContextPath();
  [contextCopy archiveAtPath:v7];

  v8 = NPKSecureArchiveObject();

  v9 = NPKPeerPaymentAccountPath();
  [v8 writeToFile:v9 atomically:1];

  notify_post([NPKSharedPeerPaymentWebServiceChangedDarwinNotification UTF8String]);
  uTF8String = [NPKPeerPaymentAccountChangedDarwinNotification UTF8String];

  notify_post(uTF8String);
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
  delegate = [(NPKRemoteAdminConnectionServiceAgent *)self delegate];
  [delegate didReceiveCheckCompanionPeerPaymentState];
}

- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method
{
  passCopy = pass;
  methodCopy = method;
  verificationObserver = self->_verificationObserver;
  if (verificationObserver)
  {
    [(PKPaymentVerificationObserver *)verificationObserver setDelegate:0];
    [(PKPaymentVerificationObserver *)self->_verificationObserver stop];
  }

  uniqueID = [passCopy uniqueID];
  v9 = [NSString stringWithFormat:@"%@-%@", @"passd", uniqueID];

  v10 = [[PKPaymentVerificationObserver alloc] initWithPaymentPass:passCopy verificationChannel:methodCopy identifier:v9];
  v11 = self->_verificationObserver;
  self->_verificationObserver = v10;

  [(PKPaymentVerificationObserver *)self->_verificationObserver setDelegate:self];
  [(PKPaymentVerificationObserver *)self->_verificationObserver startObservingVerificationSourceWithTimeout:120.0];
}

- (void)paymentWebService:(id)service didDownloadPass:(id)pass
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F1F4;
  block[3] = &unk_100070FA8;
  serviceCopy = service;
  passCopy = pass;
  selfCopy = self;
  v6 = passCopy;
  v7 = serviceCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)paymentWebService:(id)service didDownloadPassRemoteAssets:(id)assets completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F608;
  v11[3] = &unk_100072320;
  serviceCopy = service;
  assetsCopy = assets;
  selfCopy = self;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = assetsCopy;
  v10 = serviceCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)paymentWebService:(id)service didDownloadSerialNumbersForInstalledPasses:(id)passes inRegion:(id)region
{
  passesCopy = passes;
  regionCopy = region;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = passesCopy;
      v17 = 2112;
      v18 = regionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Payment web service downloaded serial numbers for installed passes: %@ region: %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F8E8;
  v13[3] = &unk_100070E90;
  v13[4] = self;
  v14 = passesCopy;
  v12 = passesCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)invalid
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002FE14;
  v5[3] = &unk_100070E90;
  invalidCopy = invalid;
  selfCopy = self;
  v4 = invalidCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)paymentWebService:(id)service didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error
{
  identifierCopy = identifier;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Payment web service registered credential %@", &v10, 0xCu);
    }
  }
}

- (void)paymentWebService:(id)service willCreateSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

  [configurationCopy set_sourceApplicationBundleIdentifier:@"com.apple.Bridge"];
}

- (void)_updatePassWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = identifierCopy;
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
      webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      context = [webService context];
      v11 = 138412290;
      v12 = context;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service context %@", &v11, 0xCu);
    }
  }

  webService2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  context2 = [webService2 context];
  v10 = NPKPaymentWebServiceContextPath();
  [context2 archiveAtPath:v10];
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
      webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
      backgroundContext = [webService backgroundContext];
      v11 = 138412290;
      v12 = backgroundContext;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Saving web service background context %@", &v11, 0xCu);
    }
  }

  webService2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  backgroundContext2 = [webService2 backgroundContext];
  v10 = NPKPaymentWebServiceBackgroundContextPath();
  [backgroundContext2 archiveAtPath:v10];
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

- (void)_unregisterWebServiceWithDiagnosticReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
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

  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  targetDevice = [webService targetDevice];
  [webService invalidateBackgroundSession];
  [webService setArchiver:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100030868;
  v31[3] = &unk_100071620;
  v13 = webService;
  v32 = v13;
  v14 = completionCopy;
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
    [v28 diagnosticSessionWithReason:reasonCopy sessionHandler:v27];
  }

  v18 = +[NSFileManager defaultManager];
  v19 = NPKPaymentWebServiceContextPath();
  [v18 removeItemAtPath:v19 error:0];

  v20 = +[NSFileManager defaultManager];
  v21 = NPKPaymentWebServiceBackgroundContextPath();
  [v20 removeItemAtPath:v21 error:0];

  v22 = objc_alloc_init(PKPaymentWebServiceContext);
  v23 = [[PKPaymentWebService alloc] initWithContext:v22 targetDevice:targetDevice archiver:targetDevice];
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

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service activate accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413314;
      v19 = serviceCopy;
      v20 = 2112;
      v21 = accountCopy;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 1024;
      v25 = successCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: IDS service did send with success: %@ %@ %@ %d %@", &v18, 0x30u);
    }
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = serviceCopy;
      v21 = 2112;
      v22 = accountCopy;
      v23 = 2112;
      v24 = protobufCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = contextCopy;
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

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Handling background task: %@", &v10, 0xCu);
    }
  }

  if ([identifierCopy isEqualToString:@"ConsistencyCheck"])
  {
    v9 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleConsistencyCheck:v9 pluggedIn:1 backoffLevel:0];

    [(NPKRemoteAdminConnectionServiceAgent *)self performConsistencyCheckWithCompletion:&stru_100072440];
  }

  else if ([identifierCopy isEqualToString:@"MigrationReregister"])
  {
    [(NPKRemoteAdminConnectionServiceAgent *)self _handleMigrationReregisterTask];
  }
}

- (void)_handleCompanionPaymentPassDatabaseChanged:(id)changed
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:changed, 180.0];
  [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleConsistencyCheck:v4 pluggedIn:0 backoffLevel:&off_100073F30];
}

- (void)initiateConsistencyCheckWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003136C;
  v5[3] = &unk_100071D90;
  completionCopy = completion;
  v4 = completionCopy;
  [(NPKRemoteAdminConnectionServiceAgent *)self performConsistencyCheckWithCompletion:v5];
}

- (void)performConsistencyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
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

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031494;
  v10[3] = &unk_100072468;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [targetDevice secureElementAppletsWithCompletion:v10];
}

- (void)redownloadAllPaymentPassesWithCompletion:(id)completion
{
  completionCopy = completion;
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

  companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  outstandingDeletionStore = [companionPaymentPassDatabase outstandingDeletionStore];
  [outstandingDeletionStore clearStore];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100031950;
  v11[3] = &unk_100071620;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(NPKRemoteAdminConnectionServiceAgent *)self _setupBackgroundWebServiceWithCompletion:v11];
}

- (void)dumpRemoteLogsWithCompletion:(id)completion
{
  completionCopy = completion;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031A64;
  v7[3] = &unk_100071D90;
  v8 = completionCopy;
  v6 = completionCopy;
  [targetDevice dumpLogsWithCompletion:v7];
}

- (void)deleteCardsWithAIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(completionCopy);
      *buf = 138412546;
      v17 = dsCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Delete cards with AIDs: %@ completion: %@", buf, 0x16u);
    }
  }

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100031CF0;
  v14[3] = &unk_100071D90;
  v15 = completionCopy;
  v13 = completionCopy;
  [targetDevice removeAIDsFromSecureElement:dsCopy withCompletion:v14];
}

- (void)handleDeletionForPaymentPass:(id)pass uniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  passCopy = pass;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice handlePendingRemovalOfPaymentPass:passCopy uniqueID:dCopy completion:completionCopy];
}

- (void)handlePreferredAID:(id)d forPassWithUniqueID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice handlePreferredAID:dCopy forPassWithUniqueID:iDCopy completion:completionCopy];
}

- (void)handleCompanionMigration
{
  NPKSetCompanionMigrationNeeded();
  v3 = +[NSDate date];
  [(NPKRemoteAdminConnectionServiceAgent *)self _scheduleMigrationReregisterForDate:v3];
}

- (void)deprovisionPass:(id)pass
{
  passCopy = pass;
  v5 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:passCopy];
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000320A8;
  v11[3] = &unk_100072490;
  v12 = passCopy;
  v7 = passCopy;
  [webService deprovisionForRequest:v5 completion:v11];

  webService2 = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  context = [webService2 context];
  uniqueID = [v7 uniqueID];
  [context removeVerificationRequestRecordForUniqueID:uniqueID];

  [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
}

- (void)handlePendingUnpairingWithCompletion:(id)completion
{
  completionCopy = completion;
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

  [(NPKRemoteAdminConnectionServiceAgent *)self _unregisterWebServiceWithDiagnosticReason:@"Pending unpairing" completion:completionCopy];
}

- (void)handlePendingiCloudSignoutWithCompletion:(id)completion
{
  completionCopy = completion;
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

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice handleCompanioniCloudSignout];

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

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v12 = dispatch_group_create();
    companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100032558;
    v21[3] = &unk_100071130;
    v15 = v12;
    v22 = v15;
    selfCopy = self;
    [uniqueIDs enumerateObjectsUsingBlock:v21];
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
    v18 = completionCopy;
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
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  context = [webService context];
  tSMPushTopics = [context TSMPushTopics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100032880;
  v18[3] = &unk_1000724E0;
  v11 = v6;
  v19 = v11;
  selfCopy = self;
  v21 = buf;
  [tSMPushTopics enumerateObjectsUsingBlock:v18];

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

- (void)didDownloadPaymentPass:(id)pass
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032D8C;
  v5[3] = &unk_100070E90;
  passCopy = pass;
  selfCopy = self;
  v4 = passCopy;
  dispatch_sync(&_dispatch_main_q, v5);
}

- (id)paymentPasses
{
  companionPaymentPassDatabase = [(NPKRemoteAdminConnectionServiceAgent *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
  allObjects = [uniqueIDs allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100033298;
  v11[3] = &unk_100072558;
  v12 = companionPaymentPassDatabase;
  v5 = companionPaymentPassDatabase;
  v6 = [allObjects npkComprehension:v11];
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = allObjects;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: unique IDs: %@ paymentPasses: %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)deviceStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000333BC;
    v9[3] = &unk_100072580;
    v9[4] = self;
    v10 = completionCopy;
    [targetDevice secureElementAppletsWithCompletion:v9];

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

- (void)handleRequestedActions:(id)actions completion:(id)completion
{
  selfCopy = self;
  actionsCopy = actions;
  completionCopy = completion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [actionsCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        actions = [v10 actions];
        deviceCredential = [v10 deviceCredential];
        if ([deviceCredential type])
        {
          v13 = 0;
        }

        else
        {
          v13 = actions == 8;
        }

        if (v13)
        {
          address = [deviceCredential address];
          appletIdentifier = [address appletIdentifier];

          [0 safelyAddObject:appletIdentifier];
        }

        else
        {
          v14 = pk_General_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (!v15)
          {
            goto LABEL_15;
          }

          appletIdentifier = pk_General_log();
          if (os_log_type_enabled(appletIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, appletIdentifier, OS_LOG_TYPE_DEFAULT, "Warning: Consistency check requested an unsupported action: %@", buf, 0xCu);
          }
        }

LABEL_15:
      }

      v7 = [actionsCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  if ([0 count])
  {
    targetDevice = [v20 targetDevice];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003398C;
    v22[3] = &unk_100071D90;
    v23 = completionCopy;
    [targetDevice removeAIDsFromSecureElement:0 withCompletion:v22];
  }
}

- (id)paymentApplications
{
  secureElementIDs = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementIDs];
  v4 = +[NSMutableArray array];
  paymentPasses = [(NPKRemoteAdminConnectionServiceAgent *)self paymentPasses];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100033C40;
  v15 = &unk_1000725A8;
  v6 = v4;
  v16 = v6;
  v7 = secureElementIDs;
  v17 = v7;
  [paymentPasses enumerateObjectsUsingBlock:&v12];

  v8 = pk_Payment_log();
  LODWORD(paymentPasses) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (paymentPasses)
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

- (void)setSecureElementApplets:(id)applets
{
  appletsCopy = applets;
  secureElementAppletsQueue = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementAppletsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033D64;
  v7[3] = &unk_100070E90;
  v7[4] = self;
  v8 = appletsCopy;
  v6 = appletsCopy;
  dispatch_sync(secureElementAppletsQueue, v7);
}

- (NSArray)secureElementApplets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10002D9BC;
  v11 = sub_10002D9CC;
  v12 = 0;
  secureElementAppletsQueue = [(NPKRemoteAdminConnectionServiceAgent *)self secureElementAppletsQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033EC4;
  v6[3] = &unk_100070DB8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(secureElementAppletsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice registerCredentialsWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice revokeCredentialsWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)_scheduleConsistencyCheck:(id)check pluggedIn:(BOOL)in backoffLevel:(id)level
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000340D4;
  v10[3] = &unk_1000725F8;
  checkCopy = check;
  selfCopy = self;
  inCopy = in;
  levelCopy = level;
  v8 = levelCopy;
  v9 = checkCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)retrieveTransactionsForPassWithUniqueID:(id)d
{
  dCopy = d;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice retrieveTransactionsForPassWithUniqueID:dCopy];
}

- (void)handleDeletePaymentTransactionWithIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier
{
  uniqueIdentifierCopy = uniqueIdentifier;
  identifierCopy = identifier;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice handleDeletePaymentTransactionWithIdentifier:identifierCopy passUniqueIdentifier:uniqueIdentifierCopy];
}

- (void)markAllAppletsForDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice markAllAppletsForDeletionWithCompletion:completionCopy];
}

- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  balanceCopy = balance;
  reminderCopy = reminder;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice setBalanceReminder:reminderCopy forBalance:balanceCopy pass:passCopy completion:completionCopy];
}

- (void)balanceReminderForBalance:(id)balance pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  balanceCopy = balance;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice balanceReminderForBalance:balanceCopy pass:passCopy completion:completionCopy];
}

- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  planCopy = plan;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice commutePlanReminderForCommutePlan:planCopy pass:passCopy withCompletion:completionCopy];
}

- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  planCopy = plan;
  reminderCopy = reminder;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice setCommutePlanReminder:reminderCopy forCommutePlan:planCopy pass:passCopy completion:completionCopy];
}

- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000347EC;
  block[3] = &unk_100070FA8;
  observerCopy = observer;
  selfCopy = self;
  codeCopy = code;
  v6 = codeCopy;
  v7 = observerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)verificationObserverDidTimeout:(id)timeout
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034BC0;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)noteForegroundVerificationObserverActive:(BOOL)active withObserver:(id)observer
{
  activeCopy = active;
  observerCopy = observer;
  verificationForegroundObservers = self->_verificationForegroundObservers;
  if (activeCopy)
  {
    [(NSHashTable *)verificationForegroundObservers addObject:observerCopy];
  }

  else
  {
    [(NSHashTable *)verificationForegroundObservers removeObject:observerCopy];
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
      v12[1] = activeCopy;
      v13 = 2112;
      v14 = observerCopy;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: After handling active %d for observer %@, all observers is now %@", v12, 0x1Cu);
    }
  }
}

- (void)handleUpdatedSharedPaymentWebServiceContext:(id)context
{
  contextCopy = context;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = contextCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handle updated shared payment web service context: %@", &v9, 0xCu);
    }
  }

  if (contextCopy)
  {
    webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
    [webService setContext:contextCopy];

    [(NPKRemoteAdminConnectionServiceAgent *)self _savePaymentWebServiceContext];
  }
}

- (id)sharedPaymentWebServiceContext
{
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  context = [webService context];

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = context;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Returning shared payment web service context: %@", &v8, 0xCu);
    }
  }

  return context;
}

- (void)handleGizmoAddedPaymentPass:(id)pass
{
  passCopy = pass;
  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  [(NPKRemoteAdminConnectionServiceAgent *)self paymentWebService:webService didDownloadPass:passCopy];
}

- (void)handleCompanionPeerPaymentRegistration
{
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice handleCompanionPeerPaymentRegistration];
}

- (void)_setupBackgroundWebServiceWithCompletion:(id)completion
{
  completionCopy = completion;
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

  webService = [(NPKRemoteAdminConnectionServiceAgent *)self webService];
  [webService startBackgroundURLSessionWithIdentifier:@"com.apple.NPKCompanionAgent" context:v9 backgroundDelegate:self completion:completionCopy];
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

    startDate = [v3 startDate];
    [startDate timeIntervalSinceNow];
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
        startDate2 = [v3 startDate];
        v24 = 138412290;
        v25 = startDate2;
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

- (void)_scheduleMigrationReregisterForDate:(id)date
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035568;
  v5[3] = &unk_100070E90;
  dateCopy = date;
  selfCopy = self;
  v4 = dateCopy;
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

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035774;
  v7[3] = &unk_100072648;
  v7[4] = self;
  [targetDevice handleCompanionMigrationWithCompletion:v7];
}

- (void)provisionPassForAccountIdentifier:(id)identifier makeDefault:(BOOL)default completion:(id)completion
{
  defaultCopy = default;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (defaultCopy)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) provisionPassForAccountIdentifier %@ makeDefault %@", buf, 0x16u);
    }
  }

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100035CC4;
  v17[3] = &unk_100072698;
  v18 = identifierCopy;
  selfCopy = self;
  v20 = completionCopy;
  v21 = defaultCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  [targetDevice updatedAccountsForProvisioningWithCompletion:v17];
}

- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      typeCopy = type;
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (apple-balance-pass-provisioning) provisionPassForRemoteCredentialType %ld identifier: %@ ", &v14, 0x16u);
    }
  }

  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice provisionPassForRemoteCredentialWithType:type andIdentifier:identifierCopy completion:completionCopy];
}

- (void)requestAutomaticProvisioningForCompanionPaymentPass:(id)pass
{
  passCopy = pass;
  targetDevice = [(NPKRemoteAdminConnectionServiceAgent *)self targetDevice];
  [targetDevice requestAutomaticProvisioningForCompanionPaymentPass:passCopy];
}

- (void)accountProvisioningControllerUpdatedState:(id)state
{
  stateCopy = state;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      provisionLocalPassState = [(PKAccountProvisioningController *)stateCopy provisionLocalPassState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) accountProvisioningControllerUpdatedState %lu", &v10, 0xCu);
    }
  }

  if (self->_accountProvisioningController == stateCopy && [(PKAccountProvisioningController *)stateCopy provisionLocalPassState]== 3)
  {
    (*(self->_accountPassProvisionCompletion + 2))();
    accountProvisioningController = self->_accountProvisioningController;
    self->_accountProvisioningController = 0;

    accountPassProvisionCompletion = self->_accountPassProvisionCompletion;
    self->_accountPassProvisionCompletion = 0;
  }
}

- (void)accountProvisioningController:(id)controller displayableError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      provisionLocalPassState = [(PKAccountProvisioningController *)controllerCopy provisionLocalPassState];
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) accountProvisioningController: %lu displayableError %@", &v13, 0x16u);
    }
  }

  if (self->_accountProvisioningController == controllerCopy)
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