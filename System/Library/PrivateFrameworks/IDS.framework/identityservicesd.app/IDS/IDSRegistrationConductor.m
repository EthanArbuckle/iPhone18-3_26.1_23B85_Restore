@interface IDSRegistrationConductor
+ (BOOL)shouldEnableHomeNumber;
+ (BOOL)shouldEnableStewie;
- (BOOL)shouldSupressRepairLogic;
- (IDSRegistrationConductor)init;
- (void)SIM:(id)a3 didDeactivateWithInfo:(id)a4;
- (void)SIM:(id)a3 didUpdateRegistrationState:(BOOL)a4;
- (void)_logServiceRegistrationStateDump;
- (void)accountControllerDidFinishLoadingAccounts:(id)a3;
- (void)bagReloaded:(id)a3;
- (void)carrierBundleInformationDidChange;
- (void)checkRestorationState;
- (void)deviceRecertificationCompleted:(id)a3;
- (void)forceRepairAccounts:(id)a3;
- (void)kickMissedTemporaryAlerts;
- (void)kickRepair;
- (void)kickiCloudRepair;
- (void)registrationController:(id)a3 allRegistrationsSucceeded:(id)a4;
- (void)serviceRestrictionsChanged:(id)a3;
- (void)setShouldSupressRepairLogic:(BOOL)a3;
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
    v30 = [(IDSRegistrationConductor *)v2 registrationController];
    v31 = +[IDSPairingManager sharedInstance];
    v32 = [(IDSSIMPhoneUserSynchronizer *)v23 initWithUserStore:v24 queue:v25 lockdownManager:v26 systemMonitor:v27 CTAdapter:v28 userConfiguration:v29 registrationController:v30 pairingManager:v31 phoneUserRegistry:v2->_phoneUserRegistry];
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
  v3 = [(IDSRegistrationConductor *)self registrationController];
  [v3 addListener:self];

  v4 = [(IDSRegistrationConductor *)self accountController];
  [v4 setDelegate:self];

  v5 = [(IDSRegistrationConductor *)self userStore];
  [v5 reloadUsers];

  v6 = +[IMSystemMonitor sharedInstance];
  v7 = [v6 isUnderFirstDataProtectionLock];

  if ((v7 & 1) == 0)
  {
    im_dispatch_after_primary_queue();
    im_dispatch_after_primary_queue();
  }

  im_dispatch_after_primary_queue();
}

- (void)kickMissedTemporaryAlerts
{
  v3 = [(IDSRegistrationConductor *)self userStore];
  v4 = [v3 usersWithRealm:2];

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
          v13 = [v11 temporaryPhoneUserWithNotifiedSuccess];
          v14 = [(IDSRegistrationConductor *)self userStore];
          [v14 updateUser:v13];
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
  v3 = [(IDSRegistrationConductor *)self serviceController];
  v4 = [v3 primaryServiceForAdhocServiceType:3];

  v5 = [(IDSRegistrationConductor *)self accountController];
  v6 = [v5 accountsOnService:v4 withType:0];
  v7 = [v6 __imArrayByFilteringWithBlock:&stru_100BDD538];
  v33 = [v7 count];

  v8 = [(IDSRegistrationConductor *)self accountController];
  v9 = [v8 accountsOnService:v4 withType:1];
  v10 = [v9 __imArrayByFilteringWithBlock:&stru_100BDD558];
  v32 = [v10 count];

  v11 = [(IDSRegistrationConductor *)self serviceController];
  v12 = [v11 primaryServiceForAdhocServiceType:1];

  v13 = [(IDSRegistrationConductor *)self accountController];
  v14 = [v13 accountsOnService:v12 withType:0];
  v15 = [v14 __imArrayByFilteringWithBlock:&stru_100BDD578];
  v16 = [v15 count];

  v17 = [(IDSRegistrationConductor *)self accountController];
  v18 = [v17 accountsOnService:v12 withType:1];
  v19 = [v18 __imArrayByFilteringWithBlock:&stru_100BDD598];
  v20 = [v19 count];

  v21 = [(IDSRegistrationConductor *)self serviceController];
  v22 = [v21 primaryServiceForAdhocServiceType:7];

  v23 = [(IDSRegistrationConductor *)self accountController];
  v24 = [v23 accountsOnService:v22 withType:0];
  v25 = [v24 __imArrayByFilteringWithBlock:&stru_100BDD5B8];
  v26 = [v25 count];

  v27 = [(IDSRegistrationConductor *)self accountController];
  v28 = [v27 accountsOnService:v22 withType:1];
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
  v2 = [(IDSRegistrationConductor *)self accountRepair];
  v3 = [v2 shouldSupressRepairLogic];

  return v3;
}

- (void)setShouldSupressRepairLogic:(BOOL)a3
{
  v3 = a3;
  v4 = [(IDSRegistrationConductor *)self accountRepair];
  [v4 setShouldSupressRepairLogic:v3];
}

- (void)kickRepair
{
  v2 = [(IDSRegistrationConductor *)self accountRepair];
  [v2 repairAccounts];
}

- (void)kickiCloudRepair
{
  v2 = [(IDSRegistrationConductor *)self accountRepair];
  [v2 repairiCloudBasedAccounts];
}

- (void)forceRepairAccounts:(id)a3
{
  v4 = a3;
  v5 = [(IDSRegistrationConductor *)self accountRepair];
  [v5 forceRepairAccounts:v4];
}

- (void)accountControllerDidFinishLoadingAccounts:(id)a3
{
  v4 = [(IDSRegistrationConductor *)self restrictions];
  [v4 updateAccountActivation];

  v5 = [(IDSRegistrationConductor *)self accountSync];
  [v5 kickAnyUnfinishedSynchronization];

  v6 = [(IDSRegistrationConductor *)self userAccountSynchronizer];
  [v6 synchronize];
}

- (void)registrationController:(id)a3 allRegistrationsSucceeded:(id)a4
{
  v5 = a4;
  v6 = [(IDSRegistrationConductor *)self accountSync];
  [v6 stopAnyUnfinishedSynchronization];

  v7 = [(IDSRegistrationConductor *)self accountSync];
  [v7 noteShouldSynchronizeAllServices];

  v8 = [(IDSRegistrationConductor *)self accountSync];
  [v8 noteShouldSynchronizeTinkerDeviceInfo];

  v9 = [(IDSRegistrationConductor *)self accountSync];
  [v9 noteShouldSynchronizeSPSProvisioningInfo];

  v10 = [(IDSRegistrationConductor *)self accountRepair];
  [v10 kickRepairForAllRegistrationsSucceeded:v5];

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

- (void)bagReloaded:(id)a3
{
  v3 = [(IDSRegistrationConductor *)self accountRepair];
  [v3 recalculatePhoneRepairTimer];
}

- (void)serviceRestrictionsChanged:(id)a3
{
  v4 = [(IDSRegistrationConductor *)self accountRepair];
  [v4 setupPhoneNumberRepairTimer];

  v5 = [(IDSRegistrationConductor *)self userAccountSynchronizer];
  [v5 synchronize];
}

- (void)deviceRecertificationCompleted:(id)a3
{
  v3 = [(IDSRegistrationConductor *)self accountRepair];
  [v3 repairAccounts];
}

- (void)SIM:(id)a3 didUpdateRegistrationState:(BOOL)a4
{
  v6 = [(IDSRegistrationConductor *)self registrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100492214;
  v7[3] = &unk_100BD7478;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
}

- (void)carrierBundleInformationDidChange
{
  v3 = [(IDSRegistrationConductor *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049233C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)SIM:(id)a3 didDeactivateWithInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSRegistrationConductor *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049247C;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)checkRestorationState
{
  [(IDSRestoreMonitor *)self->_restoreMonitor removeTarget:self];
  v3 = +[IMSystemMonitor sharedInstance];
  v4 = [v3 isSetup];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is properly setup", v7, 2u);
    }

    v6 = [(IDSRegistrationConductor *)self SIMPhoneUserSynchronizer];
    [v6 verifyState];
  }

  else
  {

    [(IDSRegistrationConductor *)self _setupRestoreTimer];
  }
}

@end