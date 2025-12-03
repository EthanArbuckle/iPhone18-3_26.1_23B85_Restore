@interface IDSRegistrationConductor
+ (BOOL)shouldEnableHomeNumber;
+ (BOOL)shouldEnableStewie;
- (BOOL)shouldSupressRepairLogic;
- (IDSRegistrationConductor)init;
- (void)SIM:(id)m didDeactivateWithInfo:(id)info;
- (void)SIM:(id)m didUpdateRegistrationState:(BOOL)state;
- (void)_logServiceRegistrationStateDump;
- (void)accountControllerDidFinishLoadingAccounts:(id)accounts;
- (void)bagReloaded:(id)reloaded;
- (void)carrierBundleInformationDidChange;
- (void)checkRestorationState;
- (void)deviceRecertificationCompleted:(id)completed;
- (void)forceRepairAccounts:(id)accounts;
- (void)kickMissedTemporaryAlerts;
- (void)kickRepair;
- (void)kickiCloudRepair;
- (void)registrationController:(id)controller allRegistrationsSucceeded:(id)succeeded;
- (void)serviceRestrictionsChanged:(id)changed;
- (void)setShouldSupressRepairLogic:(BOOL)logic;
- (void)setup;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation IDSRegistrationConductor

- (IDSRegistrationConductor)init
{
  v82.receiver = self;
  v82.super_class = IDSRegistrationConductor;
  v2 = [(IDSRegistrationConductor *)&v82 init];
  if (v2)
  {
    v3 = im_primary_queue();
    registrationQueue = v2->_registrationQueue;
    v2->_registrationQueue = v3;

    v5 = +[IDSRestoreMonitor sharedInstance];
    restoreMonitor = v2->_restoreMonitor;
    v2->_restoreMonitor = v5;

    v7 = [[IDSSystemAccountAdapter alloc] initWithQueue:v2->_registrationQueue];
    systemAccountAdapter = v2->_systemAccountAdapter;
    v2->_systemAccountAdapter = v7;

    v9 = +[IDSCTAdapter sharedInstance];
    CTAdapter = v2->_CTAdapter;
    v2->_CTAdapter = v9;

    [(IDSCTAdapter *)v2->_CTAdapter addListener:v2];
    v11 = +[IDSDAccountController sharedInstance];
    accountController = v2->_accountController;
    v2->_accountController = v11;

    v13 = +[IDSDServiceController sharedInstance];
    serviceController = v2->_serviceController;
    v2->_serviceController = v13;

    v15 = +[IDSRegistrationController sharedInstance];
    registrationController = v2->_registrationController;
    v2->_registrationController = v15;

    v17 = +[IDSRestrictions sharedInstance];
    restrictions = v2->_restrictions;
    v2->_restrictions = v17;

    v19 = [[IDSUserStore alloc] initWithQueue:v2->_registrationQueue];
    userStore = v2->_userStore;
    v2->_userStore = v19;

    v21 = [[IDSPhoneUserRegistry alloc] initWithQueue:v2->_registrationQueue userStore:v2->_userStore];
    phoneUserRegistry = v2->_phoneUserRegistry;
    v2->_phoneUserRegistry = v21;

    v23 = [IDSSIMPhoneUserSynchronizer alloc];
    v24 = v2->_userStore;
    v25 = v2->_registrationQueue;
    v26 = +[IMLockdownManager sharedInstance];
    v27 = +[IMSystemMonitor sharedInstance];
    v28 = v2->_CTAdapter;
    v29 = +[FTUserConfiguration sharedInstance];
    registrationController = [(IDSRegistrationConductor *)v2 registrationController];
    v31 = +[IDSPairingManager sharedInstance];
    v32 = [(IDSSIMPhoneUserSynchronizer *)v23 initWithUserStore:v24 queue:v25 lockdownManager:v26 systemMonitor:v27 CTAdapter:v28 userConfiguration:v29 registrationController:registrationController pairingManager:v31 phoneUserRegistry:v2->_phoneUserRegistry];
    SIMPhoneUserSynchronizer = v2->_SIMPhoneUserSynchronizer;
    v2->_SIMPhoneUserSynchronizer = v32;

    v34 = [IDSSystemAccountUserSynchronizer alloc];
    v35 = v2->_systemAccountAdapter;
    v36 = v2->_userStore;
    v37 = +[IDSDataMigrationTracker sharedInstance];
    v38 = [(IDSSystemAccountUserSynchronizer *)v34 initWithSystemAccountAdapter:v35 userStore:v36 migrationTracker:v37 queue:v2->_registrationQueue];
    systemAccountUserSynchronizer = v2->_systemAccountUserSynchronizer;
    v2->_systemAccountUserSynchronizer = v38;

    LODWORD(v35) = +[IDSRegistrationConductor enableHomeNumber];
    p_super = +[IMRGLog registration];
    v41 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v41)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Home Number enabled", buf, 2u);
      }

      v42 = [[IDSTemporaryPhoneUserSynchronizer alloc] initWithUserStore:v2->_userStore ctAdapter:v2->_CTAdapter];
      p_super = &v2->_temporaryPhoneUserSynchronizer->super;
      v2->_temporaryPhoneUserSynchronizer = v42;
    }

    else if (v41)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Home Number disabled", buf, 2u);
    }

    [(IDSUserStore *)v2->_userStore setDataProvider:v2->_SIMPhoneUserSynchronizer forRealm:0];
    [(IDSUserStore *)v2->_userStore setDataProvider:v2->_systemAccountUserSynchronizer forRealm:1];
    if (+[IDSRegistrationConductor enableHomeNumber])
    {
      [(IDSUserStore *)v2->_userStore setDataProvider:v2->_temporaryPhoneUserSynchronizer forRealm:2];
    }

    v43 = [IDSUserAccountSynchronizer alloc];
    v44 = v2->_userStore;
    v45 = v2->_accountController;
    v46 = v2->_serviceController;
    v47 = +[IDSDataMigrationTracker sharedInstance];
    v48 = [(IDSUserAccountSynchronizer *)v43 initWithUserStore:v44 accountController:v45 serviceController:v46 migrationTracker:v47 restrictions:v2->_restrictions queue:v2->_registrationQueue];
    userAccountSynchronizer = v2->_userAccountSynchronizer;
    v2->_userAccountSynchronizer = v48;

    v50 = +[IDSHeartbeatCenter sharedInstance];
    heartbeatCenter = v2->_heartbeatCenter;
    v2->_heartbeatCenter = v50;

    v52 = +[IDSAccountSync sharedInstance];
    accountSync = v2->_accountSync;
    v2->_accountSync = v52;

    v54 = [IDSAccountRepair alloc];
    v55 = v2->_accountController;
    v56 = v2->_systemAccountAdapter;
    v57 = +[IMUserDefaults sharedDefaults];
    v58 = +[IDSKeyTransparencyVerifier sharedInstance];
    v59 = [(IDSAccountRepair *)v54 initWithAccountController:v55 systemAccountAdapter:v56 userDefaults:v57 keyTransparencyVerifier:v58];
    accountRepair = v2->_accountRepair;
    v2->_accountRepair = v59;

    v61 = objc_alloc_init(IDSDeviceCertificationRepair);
    deviceCertificationRepair = v2->_deviceCertificationRepair;
    v2->_deviceCertificationRepair = v61;

    v63 = [IDSSIMResponder alloc];
    v64 = v2->_accountController;
    v65 = v2->_serviceController;
    v66 = +[IDSRestrictions sharedInstance];
    v67 = [(IDSSIMResponder *)v63 initWithAccountController:v64 serviceController:v65 restrictions:v66 registrationController:v2->_registrationController];
    SIMResponder = v2->_SIMResponder;
    v2->_SIMResponder = v67;

    if (+[IDSRegistrationConductor shouldEnableStewie])
    {
      v69 = [IDSStewieCoordinator alloc];
      v70 = v2->_userStore;
      v71 = +[IDSServerBag sharedInstance];
      v72 = v2->_registrationQueue;
      v73 = +[IMSystemMonitor sharedInstance];
      v74 = +[IDSPairingManager sharedInstance];
      v75 = +[IDSAccountSync sharedInstance];
      v76 = [(IDSStewieCoordinator *)v69 initWithUserStore:v70 bag:v71 queue:v72 systemMonitor:v73 pairingManager:v74 accountSync:v75];
      stewieCoordinator = v2->_stewieCoordinator;
      v2->_stewieCoordinator = v76;
    }

    IMRegisterForPreferredAccountChangeNotificationsInternal();
    v78 = +[NSNotificationCenter defaultCenter];
    [v78 addObserver:v2 selector:"preferredAccountChanged:" name:IMPreferredAccountForServiceChangedNotificationInternal object:0];
    [v78 addObserver:v2 selector:"bagReloaded:" name:IDSServerBagFinishedLoadingNotification object:0];
    [v78 addObserver:v2 selector:"serviceRestrictionsChanged:" name:kCFManagedPreferencesMCXNotificationName object:kCFManagedPreferencesMCXObjectName];
    [v78 addObserver:v2 selector:"serviceRestrictionsChanged:" name:FaceTimeDeviceRegistrationCapabilityChangedNotification object:0];
    [v78 addObserver:v2 selector:"serviceRestrictionsChanged:" name:FaceTimeDeviceCapabilityChangedNotification object:0];
    [v78 addObserver:v2 selector:"serviceRestrictionsChanged:" name:FaceTimeDeviceRestictionsChangedNotification object:0];
    [v78 addObserver:v2 selector:"ktRegDataUpdated:" name:IDSRegistrationKeyManagerKTRegDataUpdatedNotification object:0];
    v79 = +[IMSystemMonitor sharedInstance];
    [v79 addListener:v2];
  }

  return v2;
}

- (void)setup
{
  registrationController = [(IDSRegistrationConductor *)self registrationController];
  [registrationController addListener:self];

  accountController = [(IDSRegistrationConductor *)self accountController];
  [accountController setDelegate:self];

  userStore = [(IDSRegistrationConductor *)self userStore];
  [userStore reloadUsers];

  v6 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v6 isUnderFirstDataProtectionLock];

  if ((isUnderFirstDataProtectionLock & 1) == 0)
  {
    im_dispatch_after_primary_queue();
    im_dispatch_after_primary_queue();
  }

  im_dispatch_after_primary_queue();
}

- (void)kickMissedTemporaryAlerts
{
  userStore = [(IDSRegistrationConductor *)self userStore];
  v4 = [userStore usersWithRealm:2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 finishedRegistration] && (objc_msgSend(v11, "hasNotifiedSuccess") & 1) == 0)
        {
          v12 = +[IMRGLog registration];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Alerting for finished Home Number registration that has not notified user %@", buf, 0xCu);
          }

          [IDSTemporaryPhoneAlertManager presentSuccessAlertForUser:v11];
          temporaryPhoneUserWithNotifiedSuccess = [v11 temporaryPhoneUserWithNotifiedSuccess];
          userStore2 = [(IDSRegistrationConductor *)self userStore];
          [userStore2 updateUser:temporaryPhoneUserWithNotifiedSuccess];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }
}

+ (BOOL)shouldEnableHomeNumber
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"disable-home-number"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (BOOL)shouldEnableStewie
{
  v2 = _os_feature_enabled_impl();
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"disable-stewie-provisioning"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 &= [v4 BOOLValue] ^ 1;
    }
  }

  return v2;
}

- (void)_logServiceRegistrationStateDump
{
  serviceController = [(IDSRegistrationConductor *)self serviceController];
  v4 = [serviceController primaryServiceForAdhocServiceType:3];

  accountController = [(IDSRegistrationConductor *)self accountController];
  v6 = [accountController accountsOnService:v4 withType:0];
  v7 = [v6 __imArrayByFilteringWithBlock:&stru_100BDD538];
  v33 = [v7 count];

  accountController2 = [(IDSRegistrationConductor *)self accountController];
  v9 = [accountController2 accountsOnService:v4 withType:1];
  v10 = [v9 __imArrayByFilteringWithBlock:&stru_100BDD558];
  v32 = [v10 count];

  serviceController2 = [(IDSRegistrationConductor *)self serviceController];
  v12 = [serviceController2 primaryServiceForAdhocServiceType:1];

  accountController3 = [(IDSRegistrationConductor *)self accountController];
  v14 = [accountController3 accountsOnService:v12 withType:0];
  v15 = [v14 __imArrayByFilteringWithBlock:&stru_100BDD578];
  v16 = [v15 count];

  accountController4 = [(IDSRegistrationConductor *)self accountController];
  v18 = [accountController4 accountsOnService:v12 withType:1];
  v19 = [v18 __imArrayByFilteringWithBlock:&stru_100BDD598];
  v20 = [v19 count];

  serviceController3 = [(IDSRegistrationConductor *)self serviceController];
  v22 = [serviceController3 primaryServiceForAdhocServiceType:7];

  accountController5 = [(IDSRegistrationConductor *)self accountController];
  v24 = [accountController5 accountsOnService:v22 withType:0];
  v25 = [v24 __imArrayByFilteringWithBlock:&stru_100BDD5B8];
  v26 = [v25 count];

  accountController6 = [(IDSRegistrationConductor *)self accountController];
  v28 = [accountController6 accountsOnService:v22 withType:1];
  v29 = [v28 __imArrayByFilteringWithBlock:&stru_100BDD5D8];
  v30 = [v29 count];

  v31 = +[IMRGLog registration];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    v35 = v33;
    v36 = 1024;
    v37 = v32;
    v38 = 1024;
    v39 = v16;
    v40 = 1024;
    v41 = v20;
    v42 = 1024;
    v43 = v26;
    v44 = 1024;
    v45 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[Statedump] Registration: iM: [P: %d, A: %d] iC: [P: %d, A: %d] FT: [P: %d, A: %d]", buf, 0x26u);
  }
}

- (BOOL)shouldSupressRepairLogic
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  shouldSupressRepairLogic = [accountRepair shouldSupressRepairLogic];

  return shouldSupressRepairLogic;
}

- (void)setShouldSupressRepairLogic:(BOOL)logic
{
  logicCopy = logic;
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair setShouldSupressRepairLogic:logicCopy];
}

- (void)kickRepair
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair repairAccounts];
}

- (void)kickiCloudRepair
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair repairiCloudBasedAccounts];
}

- (void)forceRepairAccounts:(id)accounts
{
  accountsCopy = accounts;
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair forceRepairAccounts:accountsCopy];
}

- (void)accountControllerDidFinishLoadingAccounts:(id)accounts
{
  restrictions = [(IDSRegistrationConductor *)self restrictions];
  [restrictions updateAccountActivation];

  accountSync = [(IDSRegistrationConductor *)self accountSync];
  [accountSync kickAnyUnfinishedSynchronization];

  userAccountSynchronizer = [(IDSRegistrationConductor *)self userAccountSynchronizer];
  [userAccountSynchronizer synchronize];
}

- (void)registrationController:(id)controller allRegistrationsSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  accountSync = [(IDSRegistrationConductor *)self accountSync];
  [accountSync stopAnyUnfinishedSynchronization];

  accountSync2 = [(IDSRegistrationConductor *)self accountSync];
  [accountSync2 noteShouldSynchronizeAllServices];

  accountSync3 = [(IDSRegistrationConductor *)self accountSync];
  [accountSync3 noteShouldSynchronizeTinkerDeviceInfo];

  accountSync4 = [(IDSRegistrationConductor *)self accountSync];
  [accountSync4 noteShouldSynchronizeSPSProvisioningInfo];

  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair kickRepairForAllRegistrationsSucceeded:succeededCopy];

  [(IDSRegistrationConductor *)self _logServiceRegistrationStateDump];
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "First unlock, kick accounts check", buf, 2u);
  }

  im_dispatch_after_primary_queue();
  [(IDSRegistrationConductor *)self kickMissedTemporaryAlerts];
}

- (void)bagReloaded:(id)reloaded
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair recalculatePhoneRepairTimer];
}

- (void)serviceRestrictionsChanged:(id)changed
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair setupPhoneNumberRepairTimer];

  userAccountSynchronizer = [(IDSRegistrationConductor *)self userAccountSynchronizer];
  [userAccountSynchronizer synchronize];
}

- (void)deviceRecertificationCompleted:(id)completed
{
  accountRepair = [(IDSRegistrationConductor *)self accountRepair];
  [accountRepair repairAccounts];
}

- (void)SIM:(id)m didUpdateRegistrationState:(BOOL)state
{
  registrationQueue = [(IDSRegistrationConductor *)self registrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100492214;
  v7[3] = &unk_100BD7478;
  v7[4] = self;
  stateCopy = state;
  dispatch_async(registrationQueue, v7);
}

- (void)carrierBundleInformationDidChange
{
  registrationQueue = [(IDSRegistrationConductor *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049233C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(registrationQueue, block);
}

- (void)SIM:(id)m didDeactivateWithInfo:(id)info
{
  mCopy = m;
  infoCopy = info;
  registrationQueue = [(IDSRegistrationConductor *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049247C;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v12 = mCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = mCopy;
  dispatch_async(registrationQueue, block);
}

- (void)checkRestorationState
{
  [(IDSRestoreMonitor *)self->_restoreMonitor removeTarget:self];
  v3 = +[IMSystemMonitor sharedInstance];
  isSetup = [v3 isSetup];

  if (isSetup)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is properly setup", v7, 2u);
    }

    sIMPhoneUserSynchronizer = [(IDSRegistrationConductor *)self SIMPhoneUserSynchronizer];
    [sIMPhoneUserSynchronizer verifyState];
  }

  else
  {

    [(IDSRegistrationConductor *)self _setupRestoreTimer];
  }
}

@end