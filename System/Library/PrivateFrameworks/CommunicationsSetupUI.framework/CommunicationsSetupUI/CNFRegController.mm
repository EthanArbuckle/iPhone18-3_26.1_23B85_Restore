@interface CNFRegController
+ (id)controllerForServiceType:(int64_t)type;
- (BOOL)__ensureSingleAppleIDAccountExistsWithLogin:(id)login;
- (BOOL)_accountHasValidatedLocale:(id)locale;
- (BOOL)_addAliases:(id)aliases toAccount:(id)account validate:(BOOL)validate;
- (BOOL)_aliasIsDevicePhoneNumber:(id)number;
- (BOOL)_aliasIsTemporaryDeviceAlias:(id)alias;
- (BOOL)_isValidCallerIDAlias:(id)alias forAccount:(id)account;
- (BOOL)_shouldFilterOutAlias:(id)alias onAccount:(id)account;
- (BOOL)accountIsAuthenticating;
- (BOOL)addAlias:(id)alias;
- (BOOL)addAlias:(id)alias toAccount:(id)account;
- (BOOL)canRemoveAlias:(id)alias;
- (BOOL)deviceCanTakeNetworkAction;
- (BOOL)deviceHasSaneNetworkConnection;
- (BOOL)hasAlias:(id)alias;
- (BOOL)hasAliasNamed:(id)named;
- (BOOL)hasFailedLogin;
- (BOOL)hasFailedLoginDueToBadLogin;
- (BOOL)iMessageAccountMatchesiCloudAccount:(id)account;
- (BOOL)isAccountKeyCDPSyncingOrWaitingForUser;
- (BOOL)isAliasMDMRestricted:(id)restricted;
- (BOOL)isConnected;
- (BOOL)isServiceEnabled;
- (BOOL)isServiceSupported;
- (BOOL)removeAlias:(id)alias fromAccount:(id)account;
- (BOOL)serviceSupportsDeviceAliasEnablement;
- (BOOL)setAliases:(id)aliases onAccount:(id)account;
- (BOOL)setDisplayAlias:(id)alias;
- (BOOL)shouldHandleAccountNotification:(id)notification;
- (BOOL)shouldShowAlertForError:(id)error;
- (BOOL)unvalidateAlias:(id)alias;
- (BOOL)validateAlias:(id)alias;
- (CNFRegController)init;
- (CNFRegController)initWithServiceType:(int64_t)type;
- (IDSPhoneSubscriptionSelector)phoneSubscriptionSelector;
- (IMAccount)systemAccount;
- (IMServiceImpl)firstService;
- (NSArray)_temporaryDeviceAliases;
- (NSArray)accounts;
- (NSArray)aliases;
- (NSArray)allAvailableAliases;
- (NSArray)emailAliases;
- (NSArray)useableAliases;
- (NSArray)vettedAliases;
- (NSSet)serviceNames;
- (id)__filter_activeAccountsPredicate;
- (id)__filter_appleIDAccountPredicate;
- (id)__filter_failedAccountsPredicate;
- (id)__filter_inactiveAccountsPredicate;
- (id)__filter_operationalPredicate;
- (id)__filter_phoneAccountPredicate;
- (id)__filter_signInCompletePredicate;
- (id)__filter_signedInPredicate;
- (id)__filter_validatedAliasPredicate;
- (id)__filter_validatedProfilePredicate;
- (id)_accountForAlias:(id)alias accounts:(id)accounts;
- (id)_accountsPassingTests:(id)tests message:(id)message;
- (id)_aliasesForAccount:(id)account;
- (id)_aliasesFromAccounts:(id)accounts passingTest:(id)test;
- (id)_aliasesPassingTest:(id)test;
- (id)_allAvailableAliasesForAccount:(id)account;
- (id)_createAccountWithLogin:(id)login foundExisting:(BOOL *)existing;
- (id)_guessedDisplayAliasFromAccounts:(id)accounts;
- (id)_logName;
- (id)_logSpace;
- (id)_phoneSubscriptionMatchingLabel:(id)label;
- (id)_phoneSubscriptionMatchingPhoneNumber:(id)number;
- (id)_predicatesWithFilter:(int64_t)filter;
- (id)_vettedAliasesForAccount:(id)account;
- (id)accountForAlias:(id)alias;
- (id)accountWithLogin:(id)login;
- (id)accountsWithFilter:(int64_t)filter message:(id)message;
- (id)aliasNamed:(id)named;
- (id)aliasSummaryString:(BOOL *)string;
- (id)aliasesForAccounts:(id)accounts;
- (id)allAvailableAliasesForAccounts:(id)accounts;
- (id)beginAccountSetupWithAccount:(id)account;
- (id)beginAccountSetupWithLogin:(id)login authID:(id)d authToken:(id)token regionInfo:(id)info foundExisting:(BOOL *)existing;
- (id)beginAccountSetupWithLogin:(id)login password:(id)password foundExisting:(BOOL *)existing;
- (id)displayAccount;
- (id)displayAlias;
- (id)fetchSIMs;
- (id)firstAccount;
- (id)guessedAccountName;
- (id)guessedAlias;
- (id)guessedDisplayAlias;
- (id)localPhoneNumberSentinelAlias;
- (id)loginForAccount:(id)account;
- (id)networkSettingsURLAllowingCellular:(BOOL)cellular;
- (id)travelAliases;
- (id)usableDeviceAliases;
- (id)vettedAliasesForAccounts:(id)accounts;
- (unint64_t)accountState;
- (unint64_t)accountState:(id)state;
- (unint64_t)accountStateForAccount:(id)account;
- (void)__updateSystemAccount;
- (void)_clearAccountCache;
- (void)_clearCachedTemporaryDeviceAliases;
- (void)_clearFilterCache;
- (void)_decrementLogIndent;
- (void)_handleCallerIDChanged;
- (void)_handleCallerIDChangedForResume:(id)resume;
- (void)_postCallerIDChanged;
- (void)_purgeExcessAccounts;
- (void)_showNetworkAlertWithMessage:(id)message andViewController:(id)controller;
- (void)_signOutAccount:(id)account;
- (void)_startListeningForCallerIDChanges;
- (void)_startWiFiAlertWatchTimer;
- (void)_stopListeningForCallerIDChanges;
- (void)_stopWiFiAlertWatchTimer;
- (void)_wifiAlertWatchTimerFired:(id)fired;
- (void)accountActivationStateChanged:(id)changed;
- (void)accountAdded:(id)added;
- (void)accountRegistrationChanged:(id)changed;
- (void)accountRemoved:(id)removed;
- (void)activateAccountsExcludingAccounts:(id)accounts;
- (void)addDeviceAlias:(id)alias;
- (void)aliasStatusChanged:(id)changed;
- (void)aliasesChanged:(id)changed;
- (void)authorizationCredentialsChanged:(id)changed;
- (void)callerIdChanged:(id)changed;
- (void)clearAllCaches;
- (void)connect:(BOOL)connect;
- (void)deactivateAccounts;
- (void)dealloc;
- (void)deviceCapabilityChanged:(id)changed;
- (void)disableDeviceAlias:(id)alias;
- (void)enablePhoneNumberRegistration;
- (void)handleAliasAdded:(id)added;
- (void)handleAliasRemoved:(id)removed;
- (void)nukeAllCallerIDSettings;
- (void)openURL:(id)l;
- (void)profileChanged:(id)changed;
- (void)profileValidationStateChanged:(id)changed;
- (void)refreshSystemAccount;
- (void)removeAllHandlers;
- (void)removeDeviceAlias:(id)alias;
- (void)resetNetworkFirstRunAlert;
- (void)setServiceEnabled:(BOOL)enabled;
- (void)showNetworkAlert:(id)alert;
- (void)showNetworkAlertIfNecessary:(id)necessary;
- (void)showNetworkFirstRunAlert:(id)alert;
- (void)showSetupFaceTimeOverCellularAlertForServiceProviderName:(id)name serviceProviderPhoneNumber:(id)number serviceProviderURL:(id)l completion:(id)completion;
- (void)showSetupFaceTimeOverCellularAlertWithCompletion:(id)completion;
- (void)startListeningForAccountChanges;
- (void)startRequiringWifi;
- (void)stopListeningForAccountChanges;
- (void)stopRequiringWifi;
- (void)updateMDMRestrictedSubscriptions:(id)subscriptions;
- (void)vettedAliasesChanged:(id)changed;
@end

@implementation CNFRegController

+ (id)controllerForServiceType:(int64_t)type
{
  v5 = FTCServiceNameForServiceType();
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = controllerForServiceType__serviceMap;
    if (!controllerForServiceType__serviceMap)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = controllerForServiceType__serviceMap;
      controllerForServiceType__serviceMap = v8;

      v7 = controllerForServiceType__serviceMap;
    }

    v10 = [v7 objectForKey:v6];
    if (!v10)
    {
      v10 = [[self alloc] initWithServiceType:type];
      [controllerForServiceType__serviceMap setObject:v10 forKey:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CNFRegController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFRegController.m" lineNumber:102 description:@"Do not call init directly. Call +controllerForServices: instead"];

  return 0;
}

- (CNFRegController)initWithServiceType:(int64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = CNFRegController;
  v23 = [(CNFRegController *)&v28 init];
  if (v23)
  {
    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] addListener:v23];

    v23->_systemAccountType = -1;
    [(CNFRegController *)v23 setServiceType:type];
    [(CNFRegController *)v23 _purgeExcessAccounts];
    v22 = FTCServiceNameForServiceType();
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@RegController", v22];
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68] addListenerID:v21 capabilities:*MEMORY[0x277D19338]];

    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v20 = [MEMORY[0x277D18DE0] serviceWithInternalName:v22];
    if (v20)
    {
      [v6 addObject:?];
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        typeCopy = v22;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Error loading service with name : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Initializing with service type: %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            typeCopy = v13;
            _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "  => Service: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    [(CNFRegController *)v23 setServices:v9];
    accounts = [(CNFRegController *)v23 accounts];
    [(CNFRegController *)v23 connect];
    [(CNFRegController *)v23 _startListeningForCallerIDChanges];
    v16 = dispatch_queue_create("com.apple.conference.regcontroller.springboardnetworkflags", 0);
    springboardNetworkFlagQueue = v23->_springboardNetworkFlagQueue;
    v23->_springboardNetworkFlagQueue = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v23;
}

- (IMServiceImpl)firstService
{
  services = [(CNFRegController *)self services];
  v4 = [services count];

  if (v4)
  {
    services2 = [(CNFRegController *)self services];
    v6 = [services2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)serviceNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  services = [(CNFRegController *)self services];
  v5 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(services);
        }

        internalName = [*(*(&v12 + 1) + 8 * i) internalName];
        [v3 addObject:internalName];
      }

      v6 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)dealloc
{
  [(CNFRegController *)self _stopWiFiAlertWatchTimer];
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  [(CNFRegController *)self stopListeningForAccountChanges];
  [(CNFRegController *)self _stopListeningForCallerIDChanges];
  v4.receiver = self;
  v4.super_class = CNFRegController;
  [(CNFRegController *)&v4 dealloc];
}

- (IDSPhoneSubscriptionSelector)phoneSubscriptionSelector
{
  phoneSubscriptionSelector = self->_phoneSubscriptionSelector;
  if (!phoneSubscriptionSelector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D18758]);
    v5 = self->_phoneSubscriptionSelector;
    self->_phoneSubscriptionSelector = v4;

    phoneSubscriptionSelector = self->_phoneSubscriptionSelector;
  }

  return phoneSubscriptionSelector;
}

- (NSArray)accounts
{
  v33 = *MEMORY[0x277D85DE8];
  accounts = self->_accounts;
  if (!accounts)
  {
    selfCopy = self;
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      firstService = [(CNFRegController *)selfCopy firstService];
      *buf = 138412290;
      v32 = firstService;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Reloading the account list for service: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      firstService2 = [(CNFRegController *)selfCopy firstService];
      IMLogString();
    }

    CNFRegLogIndent();
    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    firstService3 = [(CNFRegController *)selfCopy firstService];
    v24 = [mEMORY[0x277D18D28] accountsForService:firstService3];

    if ([v24 count])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v24;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = CNFRegStringForAccount(v13);
              *buf = 138412290;
              v32 = v15;
              _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Found account: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
            {
              firstService2 = CNFRegStringForAccount(v13);
              IMLogString();
            }

            uniqueID = [v13 uniqueID];
            v17 = [uniqueID isEqualToString:@"PlaceholderAccount"];

            if ((v17 & 1) == 0)
            {
              [v8 addObject:v13];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      v18 = [v8 copy];
      v19 = selfCopy->_accounts;
      selfCopy->_accounts = v18;
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Could not find any accounts to use", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    CNFRegLogOutdent();

    accounts = selfCopy->_accounts;
  }

  v21 = *MEMORY[0x277D85DE8];

  return accounts;
}

- (id)firstAccount
{
  accounts = [(CNFRegController *)self accounts];
  v3 = accounts;
  if (accounts && [accounts count])
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accountWithLogin:(id)login
{
  v22 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  v5 = loginCopy;
  if (loginCopy && [loginCopy length])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    accounts = [(CNFRegController *)self accounts];
    v7 = [accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(CNFRegController *)self loginForAccount:v11];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {
            v14 = v11;
            goto LABEL_14;
          }
        }

        v8 = [accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)fetchSIMs
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  mEMORY[0x277D18998]2 = [MEMORY[0x277D18998] sharedInstance];
  v5 = mEMORY[0x277D18998]2;
  if (v3)
  {
    v15 = 0;
    v6 = [mEMORY[0x277D18998]2 currentSIMsWithFilterOptions:1 error:&v15];
    v7 = &v15;
  }

  else
  {
    v14 = 0;
    v6 = [mEMORY[0x277D18998]2 currentSIMsWithError:&v14];
    v7 = &v14;
  }

  v8 = *v7;

  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Error fetching SIMs %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v11 = v6;
    }

    v10 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_purgeExcessAccounts
{
  v49 = *MEMORY[0x277D85DE8];
  serviceType = [(CNFRegController *)self serviceType];
  if (serviceType)
  {
    if (serviceType != 1)
    {
      goto LABEL_51;
    }

    iMessageService = [MEMORY[0x277D18DD8] iMessageService];
  }

  else
  {
    iMessageService = [MEMORY[0x277D18DD8] facetimeService];
  }

  if (!iMessageService)
  {
    goto LABEL_51;
  }

  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  v3 = [mEMORY[0x277D18D28] accountsForService:iMessageService];
  v4 = [v3 mutableCopy];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v4;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        if ([v9 accountType] == 2)
        {
          [v31 removeObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v6);
  }

  if ([v31 count] < 2)
  {
    goto LABEL_50;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v31;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (!v11)
  {

    goto LABEL_32;
  }

  v12 = 0;
  v29 = 0;
  v13 = 0;
  v14 = *v37;
  do
  {
    for (j = 0; j != v11; ++j)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v36 + 1) + 8 * j);
      if ([v16 isOperational])
      {
        v17 = v13;
        v18 = v12;
        v13 = v16;
      }

      else if ([v16 isRegistered])
      {
        v17 = v29;
        v18 = v12;
        v29 = v16;
      }

      else
      {
        v17 = v12;
        v18 = v16;
        if (![v16 isActive])
        {
          continue;
        }
      }

      v19 = v16;

      v12 = v18;
    }

    v11 = [v10 countByEnumeratingWithState:&v36 objects:v47 count:16];
  }

  while (v11);

  if (v13)
  {
    [v10 removeObject:v13];
    goto LABEL_37;
  }

  if (v29)
  {
    [v10 removeObject:?];
    v13 = 0;
    goto LABEL_37;
  }

  if (!v12)
  {
LABEL_32:
    [v10 removeObjectAtIndex:0];
    v13 = 0;
    v29 = 0;
    v12 = 0;
    goto LABEL_37;
  }

  [v10 removeObject:v12];
  v13 = 0;
  v29 = 0;
LABEL_37:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v21)
  {
    v22 = *v33;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v32 + 1) + 8 * k);
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v24;
          _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Deleting excess account: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v27 = v24;
          IMLogString();
        }

        [mEMORY[0x277D18D28] deleteAccount:{v24, v27}];
      }

      v21 = [v20 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v21);
  }

LABEL_50:
LABEL_51:
  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)__ensureSingleAppleIDAccountExistsWithLogin:(id)login
{
  v31 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  if (loginCopy)
  {
    selfCopy = self;
    appleIDAccounts = [(CNFRegController *)self appleIDAccounts];
    v6 = [appleIDAccounts copy];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = [v6 count];
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Checking for extra Apple ID accounts, found %lu total", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v22 = [v6 count];
      IMLogString();
    }

    CNFRegLogIndent();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          login = [v13 login];
          v15 = [login isEqualToIgnoringCase:loginCopy];

          if (v15)
          {
            v16 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = CNFRegStringForAccount(v13);
              *buf = 138412290;
              v30 = v17;
              _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "Not nuking account because of matching login: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
            {
              v22 = CNFRegStringForAccount(v13);
              IMLogString();
            }

            v9 = 1;
          }

          else
          {
            v18 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = CNFRegStringForAccount(v13);
              *buf = 138412290;
              v30 = v19;
              _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Nuking non-matching account: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
            {
              v22 = CNFRegStringForAccount(v13);
              IMLogString();
            }

            [(CNFRegController *)selfCopy _signOutAccount:v13, v22];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    CNFRegLogOutdent();
  }

  else
  {
    v9 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (id)_createAccountWithLogin:(id)login foundExisting:(BOOL *)existing
{
  v46 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  v7 = loginCopy;
  if (loginCopy && [loginCopy length])
  {
    if (![(CNFRegController *)self isConnected])
    {
      [(CNFRegController *)self connect:1];
    }

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v8 = [v7 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v8;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Creating account with login: '%@'", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v36 = v8;
      IMLogString();
    }

    CNFRegLogIndent();
    if ([v8 length])
    {
      v37 = IMGenerateLoginID();

      accounts = [(CNFRegController *)self accounts];
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [accounts count];
        *buf = 134217984;
        v45 = v12;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Checking %lu existing accounts for duplicates", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v36 = [accounts count];
        IMLogString();
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = accounts;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        v15 = *v40;
LABEL_18:
        v16 = 0;
        while (1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v39 + 1) + 8 * v16);
          login = [v17 login];
          v19 = MEMORY[0x245D4D030]();

          if ([v7 isEqualToString:v19])
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v14)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }
        }

        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = CNFRegStringForAccount(v17);
          *buf = 138412290;
          v45 = v23;
          _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Re-activating previously dormant account: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v36 = CNFRegStringForAccount(v17);
          IMLogString();
        }

        v24 = v17;

        v20 = 1;
        if (v24)
        {
          goto LABEL_55;
        }
      }

      else
      {
LABEL_24:

        v20 = 0;
      }

      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "No existing accounts found. Creating.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      CNFRegLogIndent();
      v26 = objc_alloc(MEMORY[0x277D18D20]);
      firstService = [(CNFRegController *)self firstService];
      v24 = [v26 initWithService:firstService];

      [v24 setLogin:v37];
      [v24 setAutoLogin:1];
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = CNFRegStringForAccount(v24);
        *buf = 138412290;
        v45 = v29;
        _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "Created account: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v36 = CNFRegStringForAccount(v24);
        IMLogString();
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v30, OS_LOG_TYPE_DEFAULT, "Adding account to controller", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
      v32 = [mEMORY[0x277D18D28] addAccount:v24];

      if ((v32 & 1) == 0)
      {
        CNFRegLogIndent();
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v33, OS_LOG_TYPE_DEFAULT, "WARNING: Failed to add account to controller", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        CNFRegLogOutdent();
        v24 = 0;
      }

      CNFRegLogOutdent();
LABEL_55:
      if (existing)
      {
        *existing = v20;
      }

      [(CNFRegController *)self __ensureSingleAppleIDAccountExistsWithLogin:v37, v36];
      [v24 removeObjectForKey:@"AccountSignedOut"];
      [v24 writeSettings];
      CNFRegLogOutdent();
      v21 = v24;

      v8 = v37;
    }

    else
    {
      CNFRegLogOutdent();
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)beginAccountSetupWithLogin:(id)login authID:(id)d authToken:(id)token regionInfo:(id)info foundExisting:(BOOL *)existing
{
  v32 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  dCopy = d;
  tokenCopy = token;
  infoCopy = info;
  if (!loginCopy)
  {
    goto LABEL_17;
  }

  v16 = [loginCopy length];
  v17 = 0;
  if (!dCopy)
  {
    goto LABEL_18;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  v18 = [dCopy length];
  v17 = 0;
  if (!tokenCopy || !v18)
  {
    goto LABEL_18;
  }

  if (![tokenCopy length])
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = [(CNFRegController *)self _createAccountWithLogin:loginCopy foundExisting:existing];
  CNFRegLogIndent();
  if (v17)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      login = [v17 login];
      *buf = 138412802;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = login;
      *&buf[22] = 2112;
      v31 = tokenCopy;
      _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "Setting auth token (authID:'%@'   account:'%@'): %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      login2 = [v17 login];
      v26 = tokenCopy;
      v24 = dCopy;
      IMLogString();
    }

    [v17 updateAuthorizationCredentials:dCopy token:{tokenCopy, v24, login2, v26}];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v31) = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__CNFRegController_beginAccountSetupWithLogin_authID_authToken_regionInfo_foundExisting___block_invoke;
    v27[3] = &unk_278DE8158;
    v29 = buf;
    v21 = v17;
    v28 = v21;
    [infoCopy enumerateKeysAndObjectsUsingBlock:v27];
    if (*(*&buf[8] + 24) == 1)
    {
      [v21 writeSettings];
    }

    [(CNFRegController *)self activateAccounts];

    _Block_object_dispose(buf, 8);
  }

  CNFRegLogOutdent();
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __89__CNFRegController_beginAccountSetupWithLogin_authID_authToken_regionInfo_foundExisting___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) setProfileValue:a3 forKey:a2];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (id)beginAccountSetupWithLogin:(id)login password:(id)password foundExisting:(BOOL *)existing
{
  loginCopy = login;
  passwordCopy = password;
  if (!loginCopy)
  {
    goto LABEL_13;
  }

  v10 = [loginCopy length];
  v11 = 0;
  if (!passwordCopy || !v10)
  {
    goto LABEL_14;
  }

  if (![passwordCopy length])
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [(CNFRegController *)self _createAccountWithLogin:loginCopy foundExisting:existing];
  CNFRegLogIndent();
  if (v11)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Clearing auth credentials prior to setting password", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [v11 updateAuthorizationCredentials:0 token:0];
    [v11 setTemporaryPassword:passwordCopy];
    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    [mEMORY[0x277D18D28] activateAccount:v11];

    [v11 authenticateAccount];
    v14 = [MEMORY[0x277CBEB98] setWithObject:v11];
    [(CNFRegController *)self activateAccountsExcludingAccounts:v14];
  }

  CNFRegLogOutdent();
LABEL_14:

  return v11;
}

- (id)beginAccountSetupWithAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (accountCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = accountCopy;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Setting up account: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v14 = accountCopy;
      IMLogString();
    }

    [accountCopy setAutoLogin:{1, v14}];
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Adding account to controller", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    v8 = [mEMORY[0x277D18D28] addAccount:accountCopy];

    v9 = accountCopy;
    if ((v8 & 1) == 0)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Failed to add account to controller", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      v9 = 0;
    }

    login = [v9 login];
    [(CNFRegController *)self __ensureSingleAppleIDAccountExistsWithLogin:login];

    [v9 removeObjectForKey:@"AccountSignedOut"];
    [v9 writeSettings];
    [(CNFRegController *)self activateAccounts];
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_signOutAccount:(id)account
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CNFRegStringForAccount(accountCopy);
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Signing out account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v21 = CNFRegStringForAccount(accountCopy);
    IMLogString();
  }

  CNFRegLogIndent();
  if (accountCopy)
  {
    *&self->_controllerFlags |= 0x40u;
    [(CNFRegController *)self clearAllCaches];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering account", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [accountCopy unregisterAccount];
    [accountCopy setBool:1 forKey:@"AccountSignedOut"];
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    aliases = [accountCopy aliases];
    v10 = [v8 initWithArray:aliases];

    if ([accountCopy accountType] == 1)
    {
      v11 = *MEMORY[0x277D19478];
      lowercaseString = [*MEMORY[0x277D19478] lowercaseString];
      v13 = [v10 containsObject:lowercaseString];

      if ((v13 & 1) == 0)
      {
        lowercaseString2 = [v11 lowercaseString];
        [v10 addObject:lowercaseString2];
      }
    }

    [accountCopy removeAliases:v10];
    [accountCopy writeSettings];
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Deactivating account", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    [mEMORY[0x277D18D28] deactivateAccount:accountCopy];

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "Clearing auth credentials", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [accountCopy updateAuthorizationCredentials:0 token:0];
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Deleting account", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    mEMORY[0x277D18D28]2 = [MEMORY[0x277D18D28] sharedInstance];
    [mEMORY[0x277D18D28]2 deleteAccount:accountCopy];

    *&self->_controllerFlags &= ~0x40u;
  }

  CNFRegLogOutdent();

  v20 = *MEMORY[0x277D85DE8];
}

- (id)loginForAccount:(id)account
{
  if (account)
  {
    login = [account login];
    v4 = MEMORY[0x245D4D030]();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_clearAccountCache
{
  accounts = self->_accounts;
  self->_accounts = 0;
  MEMORY[0x2821F96F8]();
}

- (void)clearAllCaches
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all caches", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  [(CNFRegController *)self _clearAccountCache];
  [(CNFRegController *)self _clearFilterCache];
  CNFRegLogOutdent();
}

- (void)activateAccountsExcludingAccounts:(id)accounts
{
  v37 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  selfCopy = self;
  *&self->_controllerFlags |= 0x80u;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Activating all accounts", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (![(CNFRegController *)selfCopy isConnected])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Not connected, connecting", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CNFRegController *)selfCopy connect:1];
  }

  [(CNFRegController *)selfCopy setServiceEnabled:1];
  [(CNFRegController *)selfCopy enablePhoneNumberRegistration];
  accounts = [(CNFRegController *)selfCopy accounts];
  if ([accounts count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(accounts, "count")}];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = accounts;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          if (([accountsCopy containsObject:{v12, v22}] & 1) == 0)
          {
            if ([v12 CNFRegIsSignedOut])
            {
              v13 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = v12;
                _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Skipping activation of signed out account: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
              {
                v22 = v12;
                IMLogString();
              }
            }

            else
            {
              [v7 addObject:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v9);
    }

    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    [mEMORY[0x277D18D28] activateAccounts:v7];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          if (([v19 CNFRegSignInComplete] & 1) == 0)
          {
            [v19 registerAccount];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "No accounts to activate", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  *&selfCopy->_controllerFlags &= ~0x80u;

  v21 = *MEMORY[0x277D85DE8];
}

- (void)enablePhoneNumberRegistration
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Enabling PhoneNumber Registration", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v3 = dispatch_get_global_queue(21, 0);
  IDSRegistrationControlEnableRegistrationType();
}

void __49__CNFRegController_enablePhoneNumberRegistration__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "PhoneNumber Permission enable failed with error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAccounts
{
  v23 = *MEMORY[0x277D85DE8];
  *&self->_controllerFlags |= 0x80u;
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Deactivating all accounts", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogBacktrace();
  if (![(CNFRegController *)self isConnected])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "  => Not connected, connecting", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CNFRegController *)self connect:1];
  }

  accounts = [(CNFRegController *)self accounts];
  if ([accounts count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = accounts;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          if (([v8 CNFRegIsSignedOut] & 1) == 0 && objc_msgSend(v8, "BOOLForKey:", @"AccountSignedOut"))
          {
            v9 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v8;
              _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "  => Mismatch of state - clearing signedOut flag on account %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
            {
              v13 = v8;
              IMLogString();
            }

            [v8 removeObjectForKey:{@"AccountSignedOut", v13}];
            [v8 writeSettings];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v5);
    }

    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    [mEMORY[0x277D18D28] deactivateAccounts:v4];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "  => No accounts to deactivate", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  [(CNFRegController *)self setServiceEnabled:0];
  *&self->_controllerFlags &= ~0x80u;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_accountForAlias:(id)alias accounts:(id)accounts
{
  v22 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  accountsCopy = accounts;
  v7 = accountsCopy;
  v8 = 0;
  if (aliasCopy && accountsCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [accountsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v8 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 hasAlias:aliasCopy])
          {
            v14 = v13;

            v8 = v14;
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)accountForAlias:(id)alias
{
  aliasCopy = alias;
  accounts = [(CNFRegController *)self accounts];
  v6 = [(CNFRegController *)self _accountForAlias:aliasCopy accounts:accounts];

  return v6;
}

- (BOOL)_aliasIsDevicePhoneNumber:(id)number
{
  v30 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = numberCopy;
  if (numberCopy && [numberCopy _appearsToBePhoneNumber])
  {
    v5 = v4;
    v6 = _IDSCopyMyPhoneNumbers();
    if ([v6 count])
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v8 = *MEMORY[0x277CBECE8];
      v24 = v5;
      v9 = CFPhoneNumberCreate();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v6;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = CFPhoneNumberCreate();
            v17 = v16;
            if (v9 && v16)
            {
              v18 = CFEqual(v9, v16);
              CFRelease(v17);
              if (v18)
              {

                v20 = 1;
                goto LABEL_21;
              }
            }

            else if (v16)
            {
              CFRelease(v16);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      v20 = 0;
      v19 = 0;
      if (v9)
      {
LABEL_21:
        CFRelease(v9);
        v19 = v20;
      }

      if (active)
      {
        CFRelease(active);
      }

      v6 = v23;
      v5 = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_aliasIsTemporaryDeviceAlias:(id)alias
{
  v30 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v5 = aliasCopy;
  if (aliasCopy && [aliasCopy _appearsToBePhoneNumber])
  {
    v6 = v5;
    _temporaryDeviceAliases = [(CNFRegController *)self _temporaryDeviceAliases];
    if ([_temporaryDeviceAliases count])
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v9 = *MEMORY[0x277CBECE8];
      v24 = v6;
      v10 = CFPhoneNumberCreate();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = _temporaryDeviceAliases;
      v11 = _temporaryDeviceAliases;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v25 + 1) + 8 * i) URI];
            [v16 unprefixedURI];
            v17 = CFPhoneNumberCreate();

            if (v10 && v17)
            {
              v18 = CFEqual(v10, v17);
              CFRelease(v17);
              if (v18)
              {

                v20 = 1;
                goto LABEL_21;
              }
            }

            else if (v17)
            {
              CFRelease(v17);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      v20 = 0;
      v19 = 0;
      if (v10)
      {
LABEL_21:
        CFRelease(v10);
        v19 = v20;
      }

      if (active)
      {
        CFRelease(active);
      }

      _temporaryDeviceAliases = v23;
      v6 = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_clearCachedTemporaryDeviceAliases
{
  temporaryDeviceAliases = self->__temporaryDeviceAliases;
  self->__temporaryDeviceAliases = 0;
  MEMORY[0x2821F96F8]();
}

- (NSArray)_temporaryDeviceAliases
{
  v14 = *MEMORY[0x277D85DE8];
  temporaryDeviceAliases = self->__temporaryDeviceAliases;
  if (!temporaryDeviceAliases)
  {
    phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
    v11 = 0;
    v5 = [phoneSubscriptionSelector unselectedTemporaryPhoneAliasesWithError:&v11];
    v6 = v11;
    v7 = self->__temporaryDeviceAliases;
    self->__temporaryDeviceAliases = v5;

    if (v6)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Error fetching temporary aliases %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    temporaryDeviceAliases = self->__temporaryDeviceAliases;
  }

  v9 = *MEMORY[0x277D85DE8];

  return temporaryDeviceAliases;
}

- (id)localPhoneNumberSentinelAlias
{
  appleIDAccounts = [(CNFRegController *)self appleIDAccounts];
  if ([appleIDAccounts count])
  {
    v3 = [appleIDAccounts objectAtIndex:0];
    if (v3)
    {
      v4 = [CNFRegAlias alloc];
      v5 = [(CNFRegAlias *)v4 initWithAccount:v3 alias:*MEMORY[0x277D19478]];
      v6 = CNFRegLocalPhoneNumberDisplayString();
      [(CNFRegAlias *)v5 setDisplayName:v6];

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (BOOL)_shouldFilterOutAlias:(id)alias onAccount:(id)account
{
  aliasCopy = alias;
  accountCopy = account;
  if ([accountCopy typeForAlias:aliasCopy] == 2 && objc_msgSend(accountCopy, "accountType") != 2 && (objc_msgSend(MEMORY[0x277D07DB0], "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "supportsSMSIdentification"), v8, v9) && (-[CNFRegController _aliasIsDevicePhoneNumber:](self, "_aliasIsDevicePhoneNumber:", aliasCopy) || -[CNFRegController _aliasIsTemporaryDeviceAlias:](self, "_aliasIsTemporaryDeviceAlias:", aliasCopy) || (objc_msgSend(aliasCopy, "isEqualToIgnoringCase:", *MEMORY[0x277D19478]) & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v10 = [aliasCopy isEqualToIgnoringCase:*MEMORY[0x277D19478]];
  }

  return v10;
}

- (id)_aliasesForAccount:(id)account
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = accountCopy;
  if (!accountCopy)
  {
    goto LABEL_16;
  }

  aliases = [accountCopy aliases];
  v7 = _IDSCopyOrderedAliasStrings();

  if (!v7 || ![v7 count])
  {

LABEL_16:
    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_17;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (![(CNFRegController *)self _shouldFilterOutAlias:v14 onAccount:v5, v18])
        {
          v15 = [[CNFRegAlias alloc] initWithAccount:v5 alias:v14];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_vettedAliasesForAccount:(id)account
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = accountCopy;
  if (!accountCopy || [accountCopy accountType] != 1)
  {
    goto LABEL_17;
  }

  vettedAliases = [v5 vettedAliases];
  v7 = vettedAliases;
  if (!vettedAliases || ![vettedAliases count])
  {

LABEL_17:
    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_18;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (![(CNFRegController *)self _shouldFilterOutAlias:v14 onAccount:v5, v18])
        {
          v15 = [[CNFRegAlias alloc] initWithAccount:v5 alias:v14];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_allAvailableAliasesForAccount:(id)account
{
  v66 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (!accountCopy)
  {
LABEL_49:
    v34 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_50;
  }

  array = [MEMORY[0x277CBEB18] array];
  vettedAliases = [accountCopy vettedAliases];
  v7 = _IDSCopyOrderedAliasStrings();

  aliases = [accountCopy aliases];
  v9 = _IDSCopyOrderedAliasStrings();

  accountType = [accountCopy accountType];
  if (accountType == 1 || !accountType && ([MEMORY[0x277D07DB0] sharedInstance], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isTelephonyDevice"), v11, (v12 & 1) == 0))
  {
    v44 = v9;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = v7;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v59;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v58 + 1) + 8 * i);
          if (![(CNFRegController *)self _aliasIsDevicePhoneNumber:v27]&& ![(CNFRegController *)self _aliasIsTemporaryDeviceAlias:v27])
          {
            [array addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v24);
    }

    goto LABEL_26;
  }

  accountType2 = [accountCopy accountType];
  if (accountType2 == 2 || !accountType2 && ([MEMORY[0x277D07DB0] sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isTelephonyDevice"), v14, v15))
  {
    v44 = v9;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v16 = v7;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v55;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v55 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [array addObject:*(*(&v54 + 1) + 8 * j)];
        }

        v19 = [v17 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v19);
    }

LABEL_26:
    v7 = v16;

    v9 = v44;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = v9;
  v29 = [v28 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v51;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v50 + 1) + 8 * k);
        if (([array containsObject:v33] & 1) == 0)
        {
          [array addObject:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v30);
  }

  if ([array count])
  {
    v45 = v7;
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(array, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = array;
    v36 = [v35 countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v47;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v46 + 1) + 8 * m);
          if (![(CNFRegController *)self _shouldFilterOutAlias:v40 onAccount:accountCopy])
          {
            v41 = [[CNFRegAlias alloc] initWithAccount:accountCopy alias:v40];
            [v34 addObject:v41];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v46 objects:v62 count:16];
      }

      while (v37);
    }

    v7 = v45;
  }

  else
  {
    v34 = 0;
  }

  if (!v34)
  {
    goto LABEL_49;
  }

LABEL_50:

  v42 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_aliasesFromAccounts:(id)accounts passingTest:(id)test
{
  testCopy = test;
  v7 = [(CNFRegController *)self aliasesForAccounts:accounts];
  v8 = v7;
  if (!v7 || ![v7 count] || (objc_msgSend(v8, "CNFRegArrayPassingTest:", testCopy), (array = objc_claimAutoreleasedReturnValue()) == 0))
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)_aliasesPassingTest:(id)test
{
  testCopy = test;
  accounts = [(CNFRegController *)self accounts];
  v6 = [(CNFRegController *)self _aliasesFromAccounts:accounts passingTest:testCopy];

  return v6;
}

uint64_t __36__CNFRegController__aliasComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 type];
  if (v8 == [v7 type])
  {
    v9 = [v6 alias];
    v10 = [v7 alias];
    v11 = [v9 compare:v10];
  }

  else if ([v6 type])
  {
    if ([v6 type] == 2)
    {
      v11 = -1;
    }

    else
    {
      v12 = [v7 type];
      if (v12)
      {
        v11 = v12 == 2;
      }

      else
      {
        v11 = -1;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)aliasesForAccounts:(id)accounts
{
  v20 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CNFRegController *)self _aliasesForAccount:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  _aliasComparator = [(CNFRegController *)self _aliasComparator];
  [v5 sortUsingComparator:_aliasComparator];

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)vettedAliasesForAccounts:(id)accounts
{
  v21 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 accountType] == 1)
        {
          v12 = [(CNFRegController *)self _vettedAliasesForAccount:v11];
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  _aliasComparator = [(CNFRegController *)self _aliasComparator];
  [v5 sortUsingComparator:_aliasComparator];

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)allAvailableAliasesForAccounts:(id)accounts
{
  v53 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(CNFRegController *)self _clearCachedTemporaryDeviceAliases];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CNFRegController *)self _allAvailableAliasesForAccount:*(*(&v46 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v8);
  }

  v29 = v6;

  selfCopy = self;
  [(CNFRegController *)self usableDeviceAliases];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v35 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v35)
  {
    v34 = *v43;
    v37 = *MEMORY[0x277D18AC8];
    v33 = v5;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * j);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v14 = v5;
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v50 count:{16, v29}];
        if (!v15)
        {

LABEL_25:
          [v14 addObject:v13];
          continue;
        }

        v16 = v15;
        v36 = j;
        v17 = *v39;
        while (2)
        {
          for (k = 0; k != v16; ++k)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * k);
            account = [v19 account];
            v21 = [account objectForKey:v37];

            alias = [v19 alias];
            alias2 = [v13 alias];
            if ([alias isEqualToString:alias2])
            {

LABEL_27:
              v5 = v33;
              j = v36;
              goto LABEL_28;
            }

            deviceAliasIdentifier = [v13 deviceAliasIdentifier];
            v25 = [v21 isEqualToString:deviceAliasIdentifier];

            if (v25)
            {
              goto LABEL_27;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v5 = v33;
        j = v36;
        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_28:
        ;
      }

      v35 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v35);
  }

  _aliasComparator = [(CNFRegController *)selfCopy _aliasComparator];
  [v5 sortUsingComparator:_aliasComparator];

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL __46__CNFRegController_useableAliasesForAccounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 account];
  v4 = [v3 CNFRegSignInComplete];

  v5 = v4 && [v2 validationStatus] == 3;
  return v5;
}

- (id)usableDeviceAliases
{
  v74 = *MEMORY[0x277D85DE8];
  if ([(CNFRegController *)self serviceSupportsDeviceAliasEnablement])
  {
    [(CNFRegController *)self _clearCachedTemporaryDeviceAliases];
    fetchSIMs = [(CNFRegController *)self fetchSIMs];
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
    v64 = 0;
    v50 = [phoneSubscriptionSelector selectedSubscriptionsWithError:&v64];
    v44 = v64;

    [(CNFRegController *)self _temporaryDeviceAliases];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    obj = v61 = 0u;
    v4 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v4)
    {
      v5 = *v61;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v61 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v60 + 1) + 8 * i);
          v8 = [CNFRegAlias alloc];
          v9 = [v7 URI];
          unprefixedURI = [v9 unprefixedURI];
          v11 = [v7 valueForKey:@"selected"];
          v12 = -[CNFRegAlias initWithAlias:type:selected:deviceAliasIdentifier:](v8, "initWithAlias:type:selected:deviceAliasIdentifier:", unprefixedURI, 2, [v11 BOOLValue], @"temp");

          [(CNFRegAlias *)v12 setIsTemporary:1];
          expirationDate = [v7 expirationDate];
          [(CNFRegAlias *)v12 set_expirationDate:expirationDate];

          [v51 addObject:v12];
        }

        v4 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v4);
    }

    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0] isInDualPhoneIdentityMode])
    {
      v45 = 0;
    }

    else
    {
      mEMORY[0x277D07E00] = [MEMORY[0x277D07E00] sharedInstance];
      isDeviceInManualPhoneSelectionMode = [mEMORY[0x277D07E00] isDeviceInManualPhoneSelectionMode];

      v45 = isDeviceInManualPhoneSelectionMode ^ 1;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = fetchSIMs;
    v18 = [v46 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v18)
    {
      v49 = *v57;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v57 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v20 = *(*(&v56 + 1) + 8 * j);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v21 = v50;
          v22 = [v21 countByEnumeratingWithState:&v52 objects:v71 count:16];
          if (v22)
          {
            v23 = *v53;
            while (2)
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v53 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v52 + 1) + 8 * k);
                sIMIdentifier = [v20 SIMIdentifier];
                labelID = [v25 labelID];
                LOBYTE(v25) = [sIMIdentifier isEqualToString:labelID];

                if (v25)
                {
                  v28 = 1;
                  goto LABEL_28;
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v52 objects:v71 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v28 = 0;
LABEL_28:

          phoneNumber = [v20 phoneNumber];
          label = [v20 label];
          sIMIdentifier2 = [v20 SIMIdentifier];
          v32 = phoneNumber;
          if (phoneNumber || (v32 = label, !((label == 0) | v45 & 1)))
          {
            v33 = [[CNFRegAlias alloc] initWithAlias:v32 type:2 selected:v28 deviceAliasIdentifier:sIMIdentifier2];
            [v51 addObject:v33];
          }
        }

        v18 = [v46 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v18);
    }

    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D07DB0]2 = [MEMORY[0x277D07DB0] sharedInstance];
      if ([mEMORY[0x277D07DB0]2 isInDualPhoneIdentityMode])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      mEMORY[0x277D07E00]2 = [MEMORY[0x277D07E00] sharedInstance];
      isDeviceInManualPhoneSelectionMode2 = [mEMORY[0x277D07E00]2 isDeviceInManualPhoneSelectionMode];
      *buf = 138412802;
      if (isDeviceInManualPhoneSelectionMode2)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v66 = v36;
      v67 = 2112;
      v68 = v39;
      v69 = 2112;
      v70 = v51;
      _os_log_impl(&dword_243BE5000, v34, OS_LOG_TYPE_DEFAULT, "Getting usable device aliases {isInDualPhoneIdentityMode: %@, isDeviceInManualPhoneSelectionMode: %@, aliases: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      mEMORY[0x277D07DB0]3 = [MEMORY[0x277D07DB0] sharedInstance];
      [mEMORY[0x277D07DB0]3 isInDualPhoneIdentityMode];
      mEMORY[0x277D07E00]3 = [MEMORY[0x277D07E00] sharedInstance];
      [mEMORY[0x277D07E00]3 isDeviceInManualPhoneSelectionMode];
      IMLogString();
    }

    v15 = v51;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)travelAliases
{
  v59 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
  v50 = 0;
  v34 = [mEMORY[0x277D18998] currentSIMsWithError:&v50];
  v35 = v50;

  if (v35)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v35;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Error fetching SIMs %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
    v49 = 0;
    v38 = [phoneSubscriptionSelector selectedSubscriptionsWithError:&v49];
    v33 = v49;

    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0] isInDualPhoneIdentityMode])
    {
      v36 = 0;
    }

    else
    {
      mEMORY[0x277D07E00] = [MEMORY[0x277D07E00] sharedInstance];
      isDeviceInManualPhoneSelectionMode = [mEMORY[0x277D07E00] isDeviceInManualPhoneSelectionMode];

      v36 = isDeviceInManualPhoneSelectionMode ^ 1;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v34;
    v10 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v10)
    {
      v40 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          if ([v12 slot] == 2)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            phoneNumber = v38;
            v14 = [phoneNumber countByEnumeratingWithState:&v41 objects:v57 count:16];
            if (v14)
            {
              v15 = *v42;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v42 != v15)
                  {
                    objc_enumerationMutation(phoneNumber);
                  }

                  v17 = *(*(&v41 + 1) + 8 * j);
                  sIMIdentifier = [v12 SIMIdentifier];
                  labelID = [v17 labelID];
                  LOBYTE(v17) = [sIMIdentifier isEqualToString:labelID];

                  if (v17)
                  {

                    phoneNumber = [v12 phoneNumber];
                    label = [v12 label];
                    sIMIdentifier2 = [v12 SIMIdentifier];
                    v22 = phoneNumber;
                    if (phoneNumber || (v22 = label, !((label == 0) | v36 & 1)))
                    {
                      v23 = [[CNFRegAlias alloc] initWithAlias:v22 type:2 selected:1 deviceAliasIdentifier:sIMIdentifier2];
                      [v37 addObject:v23];
                    }

                    goto LABEL_30;
                  }
                }

                v14 = [phoneNumber countByEnumeratingWithState:&v41 objects:v57 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

LABEL_30:
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v10);
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D07DB0]2 = [MEMORY[0x277D07DB0] sharedInstance];
      if ([mEMORY[0x277D07DB0]2 isInDualPhoneIdentityMode])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      mEMORY[0x277D07E00]2 = [MEMORY[0x277D07E00] sharedInstance];
      if ([mEMORY[0x277D07E00]2 isDeviceInManualPhoneSelectionMode])
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      *buf = 138412802;
      v52 = v26;
      v53 = 2112;
      v54 = v28;
      v55 = 2112;
      v56 = v37;
      _os_log_impl(&dword_243BE5000, v24, OS_LOG_TYPE_DEFAULT, "Getting travel aliases {isInDualPhoneIdentityMode: %@, isDeviceInManualPhoneSelectionMode: %@, aliases: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      mEMORY[0x277D07DB0]3 = [MEMORY[0x277D07DB0] sharedInstance];
      [mEMORY[0x277D07DB0]3 isInDualPhoneIdentityMode];
      mEMORY[0x277D07E00]3 = [MEMORY[0x277D07E00] sharedInstance];
      [mEMORY[0x277D07E00]3 isDeviceInManualPhoneSelectionMode];
      IMLogString();
    }

    v5 = v37;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)aliases
{
  accounts = [(CNFRegController *)self accounts];
  v4 = [(CNFRegController *)self aliasesForAccounts:accounts];

  return v4;
}

- (NSArray)vettedAliases
{
  accounts = [(CNFRegController *)self accounts];
  v4 = [(CNFRegController *)self vettedAliasesForAccounts:accounts];

  return v4;
}

- (NSArray)allAvailableAliases
{
  accounts = [(CNFRegController *)self accounts];
  v4 = [(CNFRegController *)self allAvailableAliasesForAccounts:accounts];

  return v4;
}

- (NSArray)useableAliases
{
  accounts = [(CNFRegController *)self accounts];
  v4 = [(CNFRegController *)self useableAliasesForAccounts:accounts];

  return v4;
}

- (NSArray)emailAliases
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Getting email aliases", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  v4 = [(CNFRegController *)self _aliasesPassingTest:&__block_literal_global_241];
  CNFRegLogOutdent();

  return v4;
}

- (BOOL)hasAliasNamed:(id)named
{
  v3 = [(CNFRegController *)self accountForAlias:named];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasAlias:(id)alias
{
  aliasCopy = alias;
  accounts = [(CNFRegController *)self accounts];
  account = [aliasCopy account];

  LOBYTE(aliasCopy) = [accounts containsObject:account];
  return aliasCopy;
}

- (id)aliasNamed:(id)named
{
  namedCopy = named;
  v5 = [(CNFRegController *)self accountForAlias:namedCopy];
  if (v5)
  {
    v6 = [[CNFRegAlias alloc] initWithAccount:v5 alias:namedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_addAliases:(id)aliases toAccount:(id)account validate:(BOOL)validate
{
  validateCopy = validate;
  v45 = *MEMORY[0x277D85DE8];
  aliasesCopy = aliases;
  accountCopy = account;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CNFRegStringForAccount(accountCopy);
    *buf = 138412546;
    v42 = aliasesCopy;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to add aliases: %@ to account: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    CNFRegStringForAccount(accountCopy);
    v30 = v28 = aliasesCopy;
    IMLogString();
  }

  v9 = [aliasesCopy count];
  v10 = 0;
  if (accountCopy && v9)
  {
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(aliasesCopy, "count")}];
    v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(aliasesCopy, "count")}];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = aliasesCopy;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v12)
    {
      v10 = 1;
      goto LABEL_30;
    }

    v13 = *v37;
    v10 = 1;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if ([accountCopy hasAlias:{v15, v29, v31}])
        {
          if ([accountCopy validationStatusForAlias:v15] != 3)
          {
            [v34 addObject:v15];
          }
        }

        else
        {
          v16 = accountCopy;
          accountType = [v16 accountType];
          if (accountType)
          {

            if (accountType == 1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
            isTelephonyDevice = [mEMORY[0x277D07DB0] isTelephonyDevice];

            if ((isTelephonyDevice & 1) == 0)
            {
LABEL_18:
              [v35 addObject:v15];
              continue;
            }
          }

          v20 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = CNFRegStringForAccount(v16);
            *buf = 138412546;
            v42 = v15;
            v43 = 2112;
            v44 = v21;
            _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Not allowed to add alias '%@' to phone account: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            CNFRegStringForAccount(v16);
            v31 = v29 = v15;
            IMLogString();
          }

          v10 = 0;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v12)
      {
LABEL_30:

        if ([v35 count])
        {
          v22 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v35;
            _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Adding aliases: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v29 = v35;
            IMLogString();
          }

          if ([accountCopy addAliases:{v35, v29}])
          {
            [v34 addObjectsFromArray:v35];
          }

          else
          {
            v23 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = CNFRegStringForAccount(accountCopy);
              *buf = 138412290;
              v42 = v24;
              _os_log_impl(&dword_243BE5000, v23, OS_LOG_TYPE_DEFAULT, "Could not add aliases to account: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
            {
              v29 = CNFRegStringForAccount(accountCopy);
              IMLogString();
            }

            v10 = 0;
          }
        }

        if (validateCopy && [v34 count])
        {
          v25 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v34;
            _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Validating aliases: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v29 = v34;
            IMLogString();
          }

          v10 &= [accountCopy validateAliases:{v34, v29}];
        }

        break;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)addAlias:(id)alias toAccount:(id)account
{
  if (!alias || !account)
  {
    return 0;
  }

  v6 = MEMORY[0x277CBEA60];
  accountCopy = account;
  v8 = [v6 arrayWithObject:alias];
  LOBYTE(self) = [(CNFRegController *)self _addAliases:v8 toAccount:accountCopy validate:1];

  return self;
}

- (BOOL)addAlias:(id)alias
{
  v26 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  accounts = [(CNFRegController *)self accounts];
  v6 = [accounts countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *v22;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(accounts);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      accountType = [v9 accountType];
      if (!accountType)
      {
        mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
        isTelephonyDevice = [mEMORY[0x277D07DB0] isTelephonyDevice];

        if ((isTelephonyDevice & 1) == 0)
        {

LABEL_16:
          v6 = v10;
          goto LABEL_17;
        }

LABEL_11:

        continue;
      }

      v12 = accountType;

      if (v12 == 1)
      {
        goto LABEL_16;
      }
    }

    v6 = [accounts countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v15 = [(CNFRegController *)self addAlias:aliasCopy toAccount:v6];
  if (!v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __29__CNFRegController_addAlias___block_invoke;
    v18[3] = &unk_278DE81E0;
    v19 = aliasCopy;
    v20 = v6;
    CNFRegLogIndent();
    __29__CNFRegController_addAlias___block_invoke(v18);
    CNFRegLogOutdent();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __29__CNFRegController_addAlias___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = CNFRegStringForAccount(*(a1 + 40));
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Could not add alias '%@' to account: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v5 = *(a1 + 32);
    v7 = CNFRegStringForAccount(*(a1 + 40));
    IMLogString();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeAlias:(id)alias fromAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  accountCopy = account;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CNFRegStringForAccount(accountCopy);
    aliases = [accountCopy aliases];
    *buf = 138412802;
    v26 = aliasCopy;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = aliases;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Removing alias: %@ from account: %@ (current aliases: %@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = CNFRegStringForAccount(accountCopy);
    [accountCopy aliases];
    v24 = v22 = v11;
    v21 = aliasCopy;
    IMLogString();
  }

  v12 = [(CNFRegController *)self accounts:v21];
  v13 = [v12 containsObject:accountCopy];

  if (v13)
  {
    v14 = [accountCopy removeAlias:aliasCopy];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CNFRegStringForAccount(accountCopy);
      accounts = [(CNFRegController *)self accounts];
      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = accounts;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Skipped alias removal from account: %@ because account isn't in list of accounts: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v18 = CNFRegStringForAccount(accountCopy);
      accounts2 = [(CNFRegController *)self accounts];
      IMLogString();
    }

    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)canRemoveAlias:(id)alias
{
  v27 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  if ([aliasCopy type] == 2)
  {
    LOBYTE(v5) = 0;
  }

  else if (CNFRegSupportsLocalPhoneNumberSentinelAlias())
  {
    v5 = MEMORY[0x277CBEA60];
    account = [aliasCopy account];
    v7 = [v5 arrayWithObject:account];
    v8 = [(CNFRegController *)self vettedAliasesForAccounts:v7];
    LOBYTE(v5) = [v8 count] != 0;
  }

  else if ([aliasCopy validationStatus] == 3)
  {
    v9 = MEMORY[0x277CBEA60];
    account2 = [aliasCopy account];
    v11 = [v9 arrayWithObject:account2];
    v12 = [(CNFRegController *)self aliasesForAccounts:v11];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v12;
    v5 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          alias = [v16 alias];
          alias2 = [aliasCopy alias];
          v19 = [alias isEqualToIgnoringCase:alias2];

          if ((v19 & 1) == 0 && [v16 type] != 2 && objc_msgSend(v16, "validationStatus") == 3)
          {
            LOBYTE(v5) = 1;
            goto LABEL_19;
          }
        }

        v5 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)setAliases:(id)aliases onAccount:(id)account
{
  v53 = *MEMORY[0x277D85DE8];
  aliasesCopy = aliases;
  accountCopy = account;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CNFRegStringForAccount(accountCopy);
    *buf = 138412546;
    v47 = aliasesCopy;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to set aliases: %@ on account: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    CNFRegStringForAccount(accountCopy);
    v33 = v31 = aliasesCopy;
    IMLogString();
  }

  v10 = [aliasesCopy count];
  v11 = 0;
  if (accountCopy && v10)
  {
    v12 = [MEMORY[0x277CBEA60] arrayWithObject:accountCopy];
    v36 = [(CNFRegController *)self aliasesForAccounts:v12];

    v13 = [aliasesCopy mutableCopy];
    if ([v36 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v36;
      v15 = 0;
      v16 = [v14 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v16)
      {
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            alias = [*(*(&v41 + 1) + 8 * i) alias];
            if (alias && ![(CNFRegController *)self _shouldFilterOutAlias:alias onAccount:accountCopy])
            {
              if ([aliasesCopy containsObject:alias])
              {
                [v13 removeObject:alias];
              }

              else
              {
                if (!v15)
                {
                  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
                }

                [v15 addObject:alias];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v16);
      }

      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v47 = v14;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Account already has aliases: %@\nAdding: %@\nRemoving: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v34 = v13;
        v35 = v15;
        v32 = v14;
        IMLogString();
      }

      if ([v13 count])
      {
        v21 = [(CNFRegController *)self _addAliases:v13 toAccount:accountCopy validate:0];
      }

      else
      {
        v21 = 1;
      }

      if ([v15 count])
      {
        [accountCopy removeAliases:v15];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = aliasesCopy;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v23)
      {
        v24 = *v38;
        LOBYTE(v25) = 1;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v25 = ([accountCopy validationStatusForAlias:*(*(&v37 + 1) + 8 * j)] == 3) & v25;
          }

          v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v23);
      }

      else
      {
        v25 = 1;
      }

      v27 = [accountCopy validateAliases:v22];
      if (v25)
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "All aliases on account are validated, kicking off a registration", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        [accountCopy registerAccount];
      }

      v11 = v27 & v21;
    }

    else
    {
      v11 = [(CNFRegController *)self _addAliases:aliasesCopy toAccount:accountCopy validate:1];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)validateAlias:(id)alias
{
  aliasCopy = alias;
  accounts = [(CNFRegController *)self accounts];
  account = [aliasCopy account];
  v7 = [accounts containsObject:account];

  if (v7)
  {
    account2 = [aliasCopy account];
    alias = [aliasCopy alias];
    v10 = [account2 validateAlias:alias];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)unvalidateAlias:(id)alias
{
  aliasCopy = alias;
  accounts = [(CNFRegController *)self accounts];
  account = [aliasCopy account];
  v7 = [accounts containsObject:account];

  if (v7)
  {
    account2 = [aliasCopy account];
    alias = [aliasCopy alias];
    v10 = [account2 unvalidateAlias:alias];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_phoneSubscriptionMatchingPhoneNumber:(id)number
{
  v29 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  fetchSIMs = [(CNFRegController *)self fetchSIMs];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = fetchSIMs;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Fetched IDSCTSIMs %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v21 = fetchSIMs;
    IMLogString();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = fetchSIMs;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (numberCopy)
        {
          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = MEMORY[0x277D18998];
          phoneNumber = [v11 phoneNumber];
          LOBYTE(v12) = [v12 isPhoneNumber:phoneNumber equivalentToExistingPhoneNumber:numberCopy];

          if (v12)
          {
            slot = [v11 slot];
            v15 = 1;
            if (slot == 1)
            {
              v15 = 2;
            }

            if (slot == 2)
            {
              v16 = 0;
            }

            else
            {
              v16 = v15;
            }

            v17 = MEMORY[0x277D18750];
            sIMIdentifier = [v11 SIMIdentifier];
            v8 = [v17 phoneSubscriptionWithSubscriptionSlot:v16 andLabelID:sIMIdentifier];

            goto LABEL_22;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_phoneSubscriptionMatchingLabel:(id)label
{
  v25 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  fetchSIMs = [(CNFRegController *)self fetchSIMs];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = fetchSIMs;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Fetched IDSCTSIMs %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = fetchSIMs;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (labelCopy)
        {
          v11 = *(*(&v18 + 1) + 8 * i);
          label = [v11 label];
          v13 = IMAreObjectsLogicallySame();

          if (v13)
          {
            v14 = MEMORY[0x277D18750];
            sIMIdentifier = [v11 SIMIdentifier];
            v8 = [v14 phoneSubscriptionWithLabelID:sIMIdentifier];

            goto LABEL_17;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addDeviceAlias:(id)alias
{
  v28 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v5 = aliasCopy;
  if (aliasCopy && ([aliasCopy isDeviceAlias] & 1) != 0)
  {
    if ([v5 isTemporaryPhoneNumberAlias])
    {
      phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
      v7 = objc_alloc(MEMORY[0x277D18A48]);
      alias = [v5 alias];
      v9 = [v7 initWithUnprefixedURI:alias];
      v23 = 0;
      [phoneSubscriptionSelector enableTemporaryPhoneAlias:v9 withError:&v23];
      v10 = v23;

      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Enabled temp alias after user add {enableError: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_23;
    }

    alias2 = [v5 alias];
    v14 = [(CNFRegController *)self _phoneSubscriptionMatchingPhoneNumber:alias2];

    if (v14 || ([v5 alias], v15 = objc_claimAutoreleasedReturnValue(), -[CNFRegController _phoneSubscriptionMatchingLabel:](self, "_phoneSubscriptionMatchingLabel:", v15), v14 = objc_claimAutoreleasedReturnValue(), v15, v14))
    {
      phoneSubscriptionSelector2 = [(CNFRegController *)self phoneSubscriptionSelector];
      v22 = 0;
      v17 = [phoneSubscriptionSelector2 selectSubscription:v14 withError:&v22];
      v18 = v22;

      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "Selected subscriptions after user add {error: %@, currentlySelected: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_23;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Could not find a valid subscription {alias: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_14:
      IMLogString();
    }
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Tried adding an alias that didn't belong to this system!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_14;
    }
  }

LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeDeviceAlias:(id)alias
{
  v34 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v5 = aliasCopy;
  if (aliasCopy && (([aliasCopy isPhoneNumberAliasOnPhoneNumberAccount] & 1) != 0 || (objc_msgSend(v5, "isTemporaryPhoneNumberAlias") & 1) != 0))
  {
    if ([v5 isTemporaryPhoneNumberAlias])
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Removing a temporary alias {alias: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v25 = v5;
        IMLogString();
      }

      phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
      v8 = objc_alloc(MEMORY[0x277D18A48]);
      alias = [v5 alias];
      v10 = [v8 initWithUnprefixedURI:alias];
      v27 = 0;
      v11 = [phoneSubscriptionSelector removeTemporaryPhoneAlias:v10 withError:&v27];
      v12 = v27;

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        *buf = 138412802;
        v29 = v5;
        v30 = 2112;
        if (v11)
        {
          v14 = @"YES";
        }

        v31 = v14;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Removed a temporary alias {alias: %@, success: %@, error: %@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_31;
    }

    alias2 = [v5 alias];
    v17 = [(CNFRegController *)self _phoneSubscriptionMatchingPhoneNumber:alias2];

    if (v17 || ([v5 alias], v18 = objc_claimAutoreleasedReturnValue(), -[CNFRegController _phoneSubscriptionMatchingLabel:](self, "_phoneSubscriptionMatchingLabel:", v18), v17 = objc_claimAutoreleasedReturnValue(), v18, v17))
    {
      phoneSubscriptionSelector2 = [(CNFRegController *)self phoneSubscriptionSelector];
      v26 = 0;
      v20 = [phoneSubscriptionSelector2 unselectSubscription:v17 withError:&v26];
      v21 = v26;

      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Selected subscriptions after user remove {error: %@, currentlySelected: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_31;
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_243BE5000, v24, OS_LOG_TYPE_DEFAULT, "Could not find a valid subscription {alias: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_22:
      IMLogString();
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Tried removing an alias that didn't belong to this system!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_22;
    }
  }

LABEL_31:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)disableDeviceAlias:(id)alias
{
  v25 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v5 = aliasCopy;
  if (aliasCopy && [aliasCopy isPhoneNumberAliasOnPhoneNumberAccount] && (objc_msgSend(v5, "isTemporaryPhoneNumberAlias") & 1) != 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Disabling a temporary alias {alias: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = v5;
      IMLogString();
    }

    phoneSubscriptionSelector = [(CNFRegController *)self phoneSubscriptionSelector];
    v8 = objc_alloc(MEMORY[0x277D18A48]);
    alias = [v5 alias];
    v10 = [v8 initWithUnprefixedURI:alias];
    v18 = 0;
    v11 = [phoneSubscriptionSelector disableTemporaryPhoneAlias:v10 withError:&v18];
    v12 = v18;

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      *buf = 138412802;
      v20 = v5;
      v21 = 2112;
      if (v11)
      {
        v14 = @"YES";
      }

      v22 = v14;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Disabled a temporary alias {alias: %@, success: %@, error: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Tried disable an alias that can't be disabled!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)aliasSummaryString:(BOOL *)string
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(CNFRegController *)self _aliasesPassingTest:&__block_literal_global_315];
  v5 = [v4 count];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v21 + 1) + 8 * i) type] == 2)
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v5 == 1)
  {
    v13 = [v6 objectAtIndex:0];
    displayName = [v13 displayName];
  }

  else
  {
    if (v5)
    {
      v16 = MEMORY[0x277CCACA8];
      v13 = CommunicationsSetupUIBundle();
      v14 = CNFRegStringTableName();
      if (v12)
      {
        v17 = @"ALIAS_SUMMARY_EMAIL_ADDRESSES_COUNT";
      }

      else
      {
        v17 = @"ALIAS_SUMMARY_ADDRESSES_COUNT";
      }

      v18 = [v13 localizedStringForKey:v17 value:&stru_2856D3978 table:v14];
      displayName = [v16 localizedStringWithFormat:v18, v5];
    }

    else
    {
      v13 = CommunicationsSetupUIBundle();
      v14 = CNFRegStringTableName();
      displayName = [v13 localizedStringForKey:@"ALIAS_SUMMARY_NO_ADDRESSES" value:&stru_2856D3978 table:v14];
    }
  }

  if (string)
  {
    *string = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return displayName;
}

BOOL __39__CNFRegController_aliasSummaryString___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 account];
  v4 = [v3 isOperational] && objc_msgSend(v2, "validationStatus") == 3;

  return v4;
}

- (BOOL)_accountHasValidatedLocale:(id)locale
{
  localeCopy = locale;
  v4 = localeCopy;
  if (!localeCopy)
  {
    goto LABEL_11;
  }

  if ([localeCopy accountType] == 2 || objc_msgSend(v4, "accountType") == 1 && objc_msgSend(v4, "profileValidationStatus") == 3)
  {
    goto LABEL_3;
  }

  accountType = [v4 accountType];
  if (accountType == 2)
  {
    goto LABEL_3;
  }

  if (accountType == 1)
  {
LABEL_10:
    v5 = [v4 profileValidationStatus] == 3;
    goto LABEL_12;
  }

  if (accountType)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  isTelephonyDevice = [mEMORY[0x277D07DB0] isTelephonyDevice];

  if ((isTelephonyDevice & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = 1;
LABEL_12:

  return v5;
}

- (unint64_t)accountState:(id)state
{
  v53 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = state;
  v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v37)
  {
    v3 = 0;
    v35 = *v39;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * i);
        if ([v5 CNFRegIsSignedOut])
        {
          v6 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = CNFRegStringForAccount(v5);
            *buf = 138412290;
            v43 = v7;
            _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring account state for signed out account: {%@}", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v29 = CNFRegStringForAccount(v5);
            IMLogString();
          }
        }

        else
        {
          v8 = [(CNFRegController *)self _accountIsAuthenticated:v5];
          v9 = [(CNFRegController *)self _accountHasValidatedLocale:v5];
          cNFRegSignInComplete = [v5 CNFRegSignInComplete];
          v11 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = CNFRegStringForAccount(v5);
            isActive = [v5 isActive];
            if (cNFRegSignInComplete)
            {
              v14 = @"YES";
            }

            else
            {
              v14 = @"NO";
            }

            *buf = 138413314;
            v43 = v12;
            if (v9)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v44 = 2112;
            if (v8)
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            v45 = v16;
            if (isActive)
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v46 = 2112;
            v47 = v15;
            v48 = 2112;
            v49 = v14;
            v50 = 2112;
            v51 = v17;
            _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Account state for account: {%@}   authenticated:%@   validLocale:%@   signInComplete:%@   active:%@", buf, 0x34u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v18 = CNFRegStringForAccount(v5);
            if (v8)
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @"NO";
            }

            if (v9)
            {
              v20 = @"YES";
            }

            else
            {
              v20 = @"NO";
            }

            if (cNFRegSignInComplete)
            {
              v21 = @"YES";
            }

            else
            {
              v21 = @"NO";
            }

            isActive2 = [v5 isActive];
            v23 = @"NO";
            if (isActive2)
            {
              v23 = @"YES";
            }

            v32 = v21;
            v33 = v23;
            v30 = v19;
            v31 = v20;
            v29 = v18;
            IMLogString();
          }

          v24 = v3 | v8;
          if (v9)
          {
            v24 |= 2uLL;
          }

          if (cNFRegSignInComplete)
          {
            v3 = v24 | 4;
          }

          else
          {
            v3 = v24;
          }

          if ((cNFRegSignInComplete & v9) == 1)
          {
            isActive3 = [v5 isActive];
            v26 = 1610612736;
            if (isActive3)
            {
              v26 = 0x40000000;
            }

            v3 |= v26;
          }
        }
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v37);
  }

  else
  {
    v3 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)accountStateForAccount:(id)account
{
  if (account)
  {
    v4 = MEMORY[0x277CBEA60];
    accountCopy = account;
    v6 = [[v4 alloc] initWithObjects:{accountCopy, 0}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNFRegController *)self accountState:v6];

  return v7;
}

- (unint64_t)accountState
{
  accounts = [(CNFRegController *)self accounts];
  v4 = [(CNFRegController *)self accountState:accounts];

  return v4;
}

- (BOOL)accountIsAuthenticating
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accounts = [(CNFRegController *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v8 + 1) + 8 * i) registrationStatus] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasFailedLogin
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [(CNFRegController *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) registrationStatus] == -1;
      }

      v4 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)hasFailedLoginDueToBadLogin
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(CNFRegController *)self hasFailedLogin])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    accounts = [(CNFRegController *)self accounts];
    v4 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(accounts);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 registrationStatus] == -1)
          {
            v6 |= [v9 registrationFailureReason] == 3;
          }
        }

        v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (BOOL)iMessageAccountMatchesiCloudAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(CNFRegController *)self accounts];
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        authorizationID = [v9 authorizationID];
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          login = [v9 login];
          *buf = 138412802;
          v25 = accountCopy;
          v26 = 2112;
          v27 = authorizationID;
          v28 = 2112;
          v29 = login;
          _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Check DSID of account, iCloud DSID: %@, iMessage account DSID : %@ for %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          [v9 login];
          v18 = v17 = authorizationID;
          v16 = accountCopy;
          IMLogString();
        }

        v13 = [authorizationID isEqualToString:{accountCopy, v16, v17, v18}];

        v5 |= v13;
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)shouldShowAlertForError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy code] == 20 || objc_msgSend(v5, "code") == 26)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Suppresssing alert for error %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ([v5 code] != 14)
      {
        v7 = ![(CNFRegController *)self isAccountKeyCDPSyncingOrWaitingForUser];
        goto LABEL_17;
      }

      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Suppresssing alert for error %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || !IMShouldLog())
      {
        goto LABEL_16;
      }
    }

    IMLogString();
LABEL_16:
    LOBYTE(v7) = 0;
    goto LABEL_17;
  }

  LOBYTE(v7) = 1;
LABEL_17:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)startListeningForAccountChanges
{
  if ((*&self->_controllerFlags & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_accountAdded_ name:*MEMORY[0x277D18C18] object:0];
    [defaultCenter addObserver:self selector:sel_accountRemoved_ name:*MEMORY[0x277D18C20] object:0];
    [defaultCenter addObserver:self selector:sel_accountRegistrationChanged_ name:*MEMORY[0x277D18CA8] object:0];
    [defaultCenter addObserver:self selector:sel_callerIdChanged_ name:*MEMORY[0x277D18C30] object:0];
    [defaultCenter addObserver:self selector:sel_aliasesChanged_ name:*MEMORY[0x277D18BF8] object:0];
    [defaultCenter addObserver:self selector:sel_vettedAliasesChanged_ name:*MEMORY[0x277D18CB0] object:0];
    [defaultCenter addObserver:self selector:sel_aliasStatusChanged_ name:*MEMORY[0x277D18BA8] object:0];
    [defaultCenter addObserver:self selector:sel_profileChanged_ name:*MEMORY[0x277D18C48] object:0];
    [defaultCenter addObserver:self selector:sel_profileValidationStateChanged_ name:*MEMORY[0x277D18C58] object:0];
    [defaultCenter addObserver:self selector:sel_authorizationCredentialsChanged_ name:*MEMORY[0x277D18C08] object:0];
    [defaultCenter addObserver:self selector:sel_authorizationCredentialsChanged_ name:*MEMORY[0x277D18C10] object:0];
    [defaultCenter addObserver:self selector:sel_accountActivationStateChanged_ name:*MEMORY[0x277D18B98] object:0];
    [defaultCenter addObserver:self selector:sel_accountActivationStateChanged_ name:*MEMORY[0x277D18C28] object:0];
    [defaultCenter addObserver:self selector:sel_deviceCapabilityChanged_ name:*MEMORY[0x277D07DA0] object:0];
    *&self->_controllerFlags |= 1u;
  }
}

- (void)stopListeningForAccountChanges
{
  if (*&self->_controllerFlags)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C20] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C18] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18CA8] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C30] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18BF8] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18CB0] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18BA8] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18D08] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18D10] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C48] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C58] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C08] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C10] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18B98] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18C28] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D07DA0] object:0];
    *&self->_controllerFlags &= ~1u;
  }
}

- (BOOL)shouldHandleAccountNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    services = [(CNFRegController *)self services];
    v6 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(services);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          service = [notificationCopy service];

          if (service == v9)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)accountAdded:(id)added
{
  v16 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  object = [addedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object]&& (*&self->_controllerFlags & 0x40) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account added : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = CNFRegStringForAccount(object);
      IMLogString();
    }

    CNFRegLogIndent();
    [(CNFRegController *)self clearAllCaches];
    accountAddedBlock = [(CNFRegController *)self accountAddedBlock];
    v9 = accountAddedBlock == 0;

    if (!v9)
    {
      accountAddedBlock2 = [(CNFRegController *)self accountAddedBlock];
      v11 = [accountAddedBlock2 copy];

      (v11)[2](v11, object);
    }

    CNFRegLogOutdent();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accountRemoved:(id)removed
{
  v16 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  object = [removedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account removed : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = CNFRegStringForAccount(object);
      IMLogString();
    }

    CNFRegLogIndent();
    [(CNFRegController *)self clearAllCaches];
    accountRemovedBlock = [(CNFRegController *)self accountRemovedBlock];
    v9 = accountRemovedBlock == 0;

    if (!v9)
    {
      accountRemovedBlock2 = [(CNFRegController *)self accountRemovedBlock];
      v11 = [accountRemovedBlock2 copy];

      (v11)[2](v11, object);
    }

    CNFRegLogOutdent();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accountRegistrationChanged:(id)changed
{
  v58 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = object;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account registration changed : %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v41 = object;
    IMLogString();
  }

  if ([(CNFRegController *)self shouldHandleAccountNotification:object, v41])
  {
    CNFRegLogIndent();
    [(CNFRegController *)self _clearFilterCache];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CNFRegNonLocStringForRegistrationStatus([object registrationStatus]);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(object, "registrationFailureReason")}];
      *buf = 138412546;
      v55 = v8;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Registration status: %@ failureReason: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = CNFRegNonLocStringForRegistrationStatus([object registrationStatus]);
      [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(object, "registrationFailureReason")}];
      v48 = v42 = v10;
      IMLogString();
    }

    if ([object registrationStatus] == -1)
    {
      userInfo = [changedCopy userInfo];
      v50 = [userInfo objectForKey:*MEMORY[0x277D18CA0]];
      CNFRegLogIndent();
      v12 = [userInfo objectForKey:*MEMORY[0x277D18C90]];
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v12;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Server error message : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v43 = v12;
        IMLogString();
      }

      v52 = [userInfo objectForKey:{*MEMORY[0x277D18C98], v43}];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v52;
        _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Server error title : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v44 = v52;
        IMLogString();
      }

      v51 = [userInfo objectForKey:{*MEMORY[0x277D18C88], v44}];
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v51;
        _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Server error button : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v45 = v51;
        IMLogString();
      }

      v16 = [userInfo objectForKey:{*MEMORY[0x277D18C70], v45}];
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v16;
        _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "Server error action dictionary : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v46 = v16;
        IMLogString();
      }

      v18 = [v16 objectForKey:{*MEMORY[0x277D18C78], v46}];
      v19 = [v18 integerValue] == 1;

      if (v19)
      {
        v20 = [v16 objectForKey:*MEMORY[0x277D18C68]];
        v21 = [v16 objectForKey:*MEMORY[0x277D18C80]];
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v55 = v20;
          v56 = 2112;
          v57 = v21;
          _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Server error action button title : %@  url string : %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v47 = v20;
          v49 = v21;
          IMLogString();
        }
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      CNFRegLogOutdent();
      v23 = v12;
      v24 = v23;
      if (!v23 || (v25 = v23, ![v23 length]))
      {
        integerValue = [v50 integerValue];
        v27 = [(CNFRegController *)self loginForAccount:object];
        v25 = CNFRegStringForRegistrationFailure(integerValue, v27);

        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = v25;
          _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "Using CNFRegStringForRegistrationFailure string : %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v47 = v25;
          IMLogString();
        }
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v25 forKey:*MEMORY[0x277CCA450]];
      if (v52 && [v52 length])
      {
        [dictionary setObject:v52 forKey:@"cnf-customTitle"];
      }

      if (v51 && [v51 length])
      {
        [dictionary setObject:v51 forKey:@"cnf-customButton"];
      }

      if (v20 && [v20 length] && v21 && objc_msgSend(v21, "length"))
      {
        [dictionary setObject:v20 forKey:@"cnf-customActionTitle"];
        [dictionary setObject:v21 forKey:@"cnf-customActionURLString"];
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.conference.registration" code:objc_msgSend(v50 userInfo:{"integerValue"), dictionary}];
    }

    else
    {
      v11 = 0;
    }

    if (![object CNFRegSignInComplete])
    {
      goto LABEL_69;
    }

    v30 = object;
    v31 = v30;
    if (!v30)
    {
      goto LABEL_68;
    }

    accountType = [v30 accountType];
    if (accountType)
    {

      if (accountType != 1)
      {
        goto LABEL_69;
      }
    }

    else
    {
      mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
      isTelephonyDevice = [mEMORY[0x277D07DB0] isTelephonyDevice];

      if (isTelephonyDevice)
      {
LABEL_68:

LABEL_69:
        accountRegistrationBlock = [(CNFRegController *)self accountRegistrationBlock];
        v37 = accountRegistrationBlock == 0;

        if (!v37)
        {
          accountRegistrationBlock2 = [(CNFRegController *)self accountRegistrationBlock];
          v39 = [accountRegistrationBlock2 copy];

          (v39)[2](v39, object, v11);
        }

        CNFRegLogOutdent();

        goto LABEL_72;
      }
    }

    v35 = MEMORY[0x277CBEBD0];
    v31 = [(CNFRegController *)self loginForAccount:v31];
    [v35 setCNFRegSavedAccountName:v31];
    goto LABEL_68;
  }

LABEL_72:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)callerIdChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [object displayName];
      *buf = 138412290;
      v15 = displayName;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account display name changed to: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      displayName2 = [object displayName];
      IMLogString();
    }

    callerIdChangedBlock = [(CNFRegController *)self callerIdChangedBlock];
    v9 = callerIdChangedBlock == 0;

    if (!v9)
    {
      callerIdChangedBlock2 = [(CNFRegController *)self callerIdChangedBlock];
      v11 = [callerIdChangedBlock2 copy];

      v11[2](v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)profileChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account profile changed : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = CNFRegStringForAccount(object);
      IMLogString();
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [object profileValueForKey:*MEMORY[0x277D18C50]];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "  Region ID : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = [object profileValueForKey:*MEMORY[0x277D18C50]];
      IMLogString();
    }

    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [object profileValueForKey:*MEMORY[0x277D18C40]];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "  Base number : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = [object profileValueForKey:*MEMORY[0x277D18C40]];
      IMLogString();
    }

    profileChangedBlock = [(CNFRegController *)self profileChangedBlock];
    v13 = profileChangedBlock == 0;

    if (!v13)
    {
      profileChangedBlock2 = [(CNFRegController *)self profileChangedBlock];
      v15 = [profileChangedBlock2 copy];

      (v15)[2](v15, object);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)profileValidationStateChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    profileValidationStatus = [object profileValidationStatus];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Account profile validation state changed : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v24 = CNFRegStringForAccount(object);
      IMLogString();
    }

    CNFRegLogIndent();
    [(CNFRegController *)self _clearFilterCache];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CNFRegNonLocStringForProfileValidationStatus(profileValidationStatus);
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Profile status changed to %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v24 = CNFRegNonLocStringForProfileValidationStatus(profileValidationStatus);
      IMLogString();
    }

    if (profileValidationStatus == -1)
    {
      v12 = *MEMORY[0x277D18C60];
      userInfo = [changedCopy userInfo];
      v14 = [userInfo objectForKey:v12];

      integerValue = [v14 integerValue];
      v16 = CNFRegStringForProfileValidationFailure(integerValue);
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v16 forKey:*MEMORY[0x277CCA450]];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.conference.registration" code:integerValue userInfo:v17];
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Profile error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v24 = v16;
        IMLogString();
      }
    }

    else
    {
      v11 = 0;
    }

    profileStatusChangedBlock = [(CNFRegController *)self profileStatusChangedBlock];
    v20 = profileStatusChangedBlock == 0;

    if (!v20)
    {
      profileStatusChangedBlock2 = [(CNFRegController *)self profileStatusChangedBlock];
      v22 = [profileStatusChangedBlock2 copy];

      (v22)[2](v22, object, v11);
    }

    CNFRegLogOutdent();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)authorizationCredentialsChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account authorization credentials changed : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = CNFRegStringForAccount(object);
      IMLogString();
    }

    [(CNFRegController *)self _clearFilterCache];
    accountAuthorizationChangedBlock = [(CNFRegController *)self accountAuthorizationChangedBlock];
    v9 = accountAuthorizationChangedBlock == 0;

    if (!v9)
    {
      accountAuthorizationChangedBlock2 = [(CNFRegController *)self accountAuthorizationChangedBlock];
      v11 = [accountAuthorizationChangedBlock2 copy];

      (v11)[2](v11, object, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accountActivationStateChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      isActive = [object isActive];
      v8 = CNFRegStringForAccount(object);
      v9 = v8;
      v10 = @"NO";
      if (isActive)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Account activation state changed (isActive:%@): %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      [object isActive];
      v16 = CNFRegStringForAccount(object);
      IMLogString();
    }

    CNFRegLogIndent();
    [(CNFRegController *)self _clearFilterCache];
    accountActivationChangedBlock = [(CNFRegController *)self accountActivationChangedBlock];
    v12 = accountActivationChangedBlock == 0;

    if (!v12)
    {
      accountActivationChangedBlock2 = [(CNFRegController *)self accountActivationChangedBlock];
      v14 = [accountActivationChangedBlock2 copy];

      (v14)[2](v14, object);
    }

    CNFRegLogOutdent();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)aliasStatusChanged:(id)changed
{
  v55 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v48 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Received alias status change for account: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v35 = CNFRegStringForAccount(object);
      IMLogString();
    }

    CNFRegLogIndent();
    userInfo = [changedCopy userInfo];
    v9 = [userInfo objectForKey:*MEMORY[0x277D18BA0]];
    [(CNFRegController *)self _clearFilterCache];
    if (v9)
    {
      v10 = [object validationStatusForAlias:v9];
      v11 = [userInfo objectForKey:*MEMORY[0x277D18C38]];
      integerValue = [v11 integerValue];

      if (!integerValue && v10 == 1)
      {
        goto LABEL_56;
      }

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CNFRegNonLocStringForAliasValidationStatus(integerValue);
        v15 = CNFRegNonLocStringForAliasValidationStatus(v10);
        *buf = 138412802;
        v48 = v9;
        v49 = 2112;
        v50 = v14;
        v51 = 2112;
        v52 = v15;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Alias {%@} status changed from [%@] to [%@]", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v16 = CNFRegNonLocStringForAliasValidationStatus(integerValue);
        CNFRegNonLocStringForAliasValidationStatus(v10);
        v39 = v37 = v16;
        v35 = v9;
        IMLogString();
      }

      if (v10 == -1)
      {
        userInfo2 = [changedCopy userInfo];
        v43 = [userInfo2 objectForKey:*MEMORY[0x277D18BE8]];

        v44 = [userInfo objectForKey:*MEMORY[0x277D18BD8]];
        v46 = [userInfo objectForKey:*MEMORY[0x277D18BE0]];
        v20 = [userInfo objectForKey:*MEMORY[0x277D18BD0]];
        v45 = [userInfo objectForKey:*MEMORY[0x277D18BB8]];
        v21 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v45;
          _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Server error action dictionary : %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v35 = v45;
          IMLogString();
        }

        v22 = [v45 objectForKey:{*MEMORY[0x277D18BC0], v35, v37, v39}];
        v23 = [v22 integerValue] == 1;

        if (v23)
        {
          v24 = [v45 objectForKey:*MEMORY[0x277D18BB0]];
          v42 = [v45 objectForKey:*MEMORY[0x277D18BC8]];
          v25 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v48 = v24;
            v49 = 2112;
            v50 = v42;
            _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Server error action button title : %@  url string : %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v36 = v24;
            v38 = v42;
            IMLogString();
          }
        }

        else
        {
          v42 = 0;
          v24 = 0;
        }

        if (!v44 && !v46 && !v20)
        {
          goto LABEL_40;
        }

        CNFRegLogIndent();
        v26 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v48 = v44;
          v49 = 2112;
          v50 = v46;
          v51 = 2112;
          v52 = v20;
          v53 = 2112;
          v54 = v24;
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v40 = v20;
          v41 = v24;
          v36 = v44;
          v38 = v46;
          IMLogString();
        }

        CNFRegLogOutdent();
        v27 = v44;
        if (!v27 || (v28 = v27, ![v27 length]))
        {
LABEL_40:
          v28 = CNFRegStringForAliasValidationFailure([v43 integerValue]);
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:v28 forKey:*MEMORY[0x277CCA450]];
        if (v46 && [v46 length])
        {
          [dictionary setObject:v46 forKey:@"cnf-customTitle"];
        }

        if (v20 && [v20 length])
        {
          [dictionary setObject:v20 forKey:@"cnf-customButton"];
        }

        if (v24 && [v24 length] && v42 && objc_msgSend(v42, "length"))
        {
          [dictionary setObject:v24 forKey:@"cnf-customActionTitle"];
          [dictionary setObject:v42 forKey:@"cnf-customActionURLString"];
        }

        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.conference.registration" code:objc_msgSend(v43 userInfo:{"integerValue", v36), dictionary}];
      }

      else
      {
        v17 = 0;
      }

      v18 = [[CNFRegAlias alloc] initWithAccount:object alias:v9];
      aliasStatusChangedBlock = [(CNFRegController *)self aliasStatusChangedBlock];
      v31 = aliasStatusChangedBlock == 0;

      if (!v31)
      {
        aliasStatusChangedBlock2 = [(CNFRegController *)self aliasStatusChangedBlock];
        v33 = [aliasStatusChangedBlock2 copy];

        (v33)[2](v33, v18, v17);
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    CNFRegLogOutdent();

LABEL_56:
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)handleAliasAdded:(id)added
{
  addedCopy = added;
  if (addedCopy)
  {
    aliasAddedBlock = [(CNFRegController *)self aliasAddedBlock];

    if (aliasAddedBlock)
    {
      aliasAddedBlock2 = [(CNFRegController *)self aliasAddedBlock];
      v6 = [aliasAddedBlock2 copy];

      (v6)[2](v6, addedCopy);
    }
  }
}

- (void)handleAliasRemoved:(id)removed
{
  removedCopy = removed;
  if (removedCopy)
  {
    aliasRemovedBlock = [(CNFRegController *)self aliasRemovedBlock];

    if (aliasRemovedBlock)
    {
      aliasRemovedBlock2 = [(CNFRegController *)self aliasRemovedBlock];
      v6 = [aliasRemovedBlock2 copy];

      (v6)[2](v6, removedCopy);
    }
  }
}

- (void)aliasesChanged:(id)changed
{
  v39 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = object;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Aliases changed for account : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v21 = object;
      IMLogString();
    }

    CNFRegLogIndent();
    [(CNFRegController *)self _clearFilterCache];
    userInfo = [changedCopy userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x277D18BF0]];
    v24 = [userInfo objectForKey:*MEMORY[0x277D18C00]];
    if ((!v6 || ![v6 count]) && (!v24 || !objc_msgSend(v24, "count")))
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "WARNING: Received alias changed notification but did not have any changed aliases", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [[CNFRegAlias alloc] initWithAccount:object alias:v11];
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v11;
            _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "  Added : %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v21 = v11;
            IMLogString();
          }

          [(CNFRegController *)self handleAliasAdded:v12, v21];
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = v24;
    v14 = [v25 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v25);
          }

          v17 = *(*(&v27 + 1) + 8 * j);
          v18 = [[CNFRegAlias alloc] initWithAccount:object alias:v17];
          v19 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v17;
            _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "  Removed : %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v21 = v17;
            IMLogString();
          }

          [(CNFRegController *)self handleAliasRemoved:v18, v21];
        }

        v14 = [v25 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }

    CNFRegLogOutdent();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)vettedAliasesChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  if ([(CNFRegController *)self shouldHandleAccountNotification:object])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CNFRegStringForAccount(object);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Vetted aliases changed for: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = CNFRegStringForAccount(object);
      IMLogString();
    }

    vettedAliasesChangedBlock = [(CNFRegController *)self vettedAliasesChangedBlock];
    v9 = vettedAliasesChangedBlock == 0;

    if (!v9)
    {
      vettedAliasesChangedBlock2 = [(CNFRegController *)self vettedAliasesChangedBlock];
      v11 = [vettedAliasesChangedBlock2 copy];

      (v11)[2](v11, object);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAllHandlers
{
  [(CNFRegController *)self setAccountRegistrationBlock:0];
  [(CNFRegController *)self setAccountAddedBlock:0];
  [(CNFRegController *)self setAccountRemovedBlock:0];
  [(CNFRegController *)self setCallerIdChangedBlock:0];
  [(CNFRegController *)self setAliasStatusChangedBlock:0];
  [(CNFRegController *)self setAliasAddedBlock:0];
  [(CNFRegController *)self setAliasRemovedBlock:0];
  [(CNFRegController *)self setVettedAliasesChangedBlock:0];
  [(CNFRegController *)self setResetBlock:0];
  [(CNFRegController *)self setServiceDidBecomeUnsupportedBlock:0];
  [(CNFRegController *)self setProfileChangedBlock:0];
  [(CNFRegController *)self setProfileStatusChangedBlock:0];
  [(CNFRegController *)self setAccountAuthorizationChangedBlock:0];

  [(CNFRegController *)self setAccountActivationChangedBlock:0];
}

- (void)setServiceEnabled:(BOOL)enabled
{
  if ((*&self->_controllerFlags & 0x80000000) == 0)
  {
    if (enabled)
    {

      [(CNFRegController *)self activateAccounts];
    }

    else
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Deactivating all accounts due to serviceEnabled being set to NO", v5, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      [(CNFRegController *)self deactivateAccounts];
    }
  }
}

- (BOOL)isServiceEnabled
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  activeAccounts = [(CNFRegController *)self activeAccounts];
  v3 = [activeAccounts countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v3)
  {
    v4 = *v28;
    v5 = *MEMORY[0x277D19478];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(activeAccounts);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if ([v7 accountType] == 2 && objc_msgSend(v7, "registrationFailureReason") != 23)
        {
          v20 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v32 = v7;
            _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Using account %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }

LABEL_32:
          v14 = 1;
          goto LABEL_34;
        }

        if ([v7 accountType] == 1)
        {
          if (![v7 canSendMessages])
          {
            goto LABEL_32;
          }

          if ([v7 isRegistered])
          {
            goto LABEL_32;
          }

          if ([v7 isActive])
          {
            aliases = [v7 aliases];
            v9 = [aliases count] == 0;

            if (v9)
            {
              goto LABEL_32;
            }
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          aliases2 = [v7 aliases];
          v11 = [aliases2 countByEnumeratingWithState:&v23 objects:v33 count:16];
          if (v11)
          {
            v12 = *v24;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(aliases2);
                }

                if (![*(*(&v23 + 1) + 8 * j) isEqualToIgnoringCase:v5] || objc_msgSend(v7, "isActive"))
                {
                  v15 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v32 = v7;
                    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Using account %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
                  {
                    IMLogString();
                  }

                  goto LABEL_32;
                }
              }

              v11 = [aliases2 countByEnumeratingWithState:&v23 objects:v33 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v3 = [activeAccounts countByEnumeratingWithState:&v27 objects:v34 count:16];
      v14 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_34:

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    activeAccounts2 = [(CNFRegController *)self activeAccounts];
    *buf = 67109378;
    *v32 = v14;
    *&v32[4] = 2112;
    *&v32[6] = activeAccounts2;
    _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "isServiceEnabled = %d (based on accounts %@)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    activeAccounts3 = [(CNFRegController *)self activeAccounts];
    IMLogString();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)isAccountKeyCDPSyncingOrWaitingForUser
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  failedAccounts = [(CNFRegController *)self failedAccounts];
  v3 = [failedAccounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(failedAccounts);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) isAccountKeyCDPSyncingOrWaitingForUser];
      }

      v4 = [failedAccounts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)isServiceSupported
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  serviceType = [(CNFRegController *)self serviceType];
  if (serviceType)
  {
    if (serviceType == 2)
    {
      callingAvailable = [mEMORY[0x277D07DB0] callingAvailable];
    }

    else
    {
      if (serviceType != 1)
      {
        v6 = 0;
        goto LABEL_9;
      }

      callingAvailable = [mEMORY[0x277D07DB0] iMessageAvailable];
    }
  }

  else
  {
    callingAvailable = [mEMORY[0x277D07DB0] faceTimeAvailable];
  }

  v6 = callingAvailable;
LABEL_9:

  return v6;
}

- (BOOL)serviceSupportsDeviceAliasEnablement
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMS = [mEMORY[0x277D07DB0] supportsSMS];

  return supportsSMS;
}

- (void)updateMDMRestrictedSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CNFRegController_updateMDMRestrictedSubscriptions___block_invoke;
  block[3] = &unk_278DE8208;
  objc_copyWeak(&v9, &location);
  v8 = subscriptionsCopy;
  v6 = subscriptionsCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__CNFRegController_updateMDMRestrictedSubscriptions___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
  v24 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v24];
  v4 = v24;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v3;
  v5 = [v3 subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        v10 = v4;
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v9);
        v19 = v4;
        v12 = [v2 getPNRSupportStatus:v11 outError:&v19];
        v4 = v19;

        if (v12 && [v12 isDisallowedByMDM])
        {
          [v1 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v13 = [v1 copy];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMdmRestrictedSubscriptions:v13];

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAliasMDMRestricted:(id)restricted
{
  v19 = *MEMORY[0x277D85DE8];
  restrictedCopy = restricted;
  if ([restrictedCopy type] == 2)
  {
    mdmRestrictedSubscriptions = [(CNFRegController *)self mdmRestrictedSubscriptions];

    if (mdmRestrictedSubscriptions)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      mdmRestrictedSubscriptions2 = [(CNFRegController *)self mdmRestrictedSubscriptions];
      mdmRestrictedSubscriptions = [mdmRestrictedSubscriptions2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (mdmRestrictedSubscriptions)
      {
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != mdmRestrictedSubscriptions; i = i + 1)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(mdmRestrictedSubscriptions2);
            }

            phoneNumber = [*(*(&v14 + 1) + 8 * i) phoneNumber];
            alias = [restrictedCopy alias];
            v11 = [phoneNumber isEqualToString:alias];

            if (v11)
            {
              LOBYTE(mdmRestrictedSubscriptions) = 1;
              goto LABEL_14;
            }
          }

          mdmRestrictedSubscriptions = [mdmRestrictedSubscriptions2 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (mdmRestrictedSubscriptions)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    LOBYTE(mdmRestrictedSubscriptions) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return mdmRestrictedSubscriptions;
}

- (BOOL)isConnected
{
  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  isConnected = [mEMORY[0x277D18D68] isConnected];

  return isConnected;
}

- (void)connect:(BOOL)connect
{
  connectCopy = connect;
  [(CNFRegController *)self startListeningForAccountChanges];
  if (connectCopy)
  {
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68] blockUntilConnected];
  }
}

- (void)deviceCapabilityChanged:(id)changed
{
  if (![(CNFRegController *)self isServiceSupported])
  {
    serviceDidBecomeUnsupportedBlock = [(CNFRegController *)self serviceDidBecomeUnsupportedBlock];

    if (serviceDidBecomeUnsupportedBlock)
    {
      serviceDidBecomeUnsupportedBlock2 = [(CNFRegController *)self serviceDidBecomeUnsupportedBlock];
      v6 = [serviceDidBecomeUnsupportedBlock2 copy];

      v6[2]();
    }
  }
}

- (void)_postCallerIDChanged
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Posting caller ID change notification", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.ft.CallerID.changed", 0, 0, 1u);
}

- (void)_handleCallerIDChangedForResume:(id)resume
{
  resumeCopy = resume;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Application resumed, nuking caller ID caches", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegController *)self _nukeCallerIDCache];
}

- (void)_handleCallerIDChanged
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Caller ID changed remotely, nuking caches", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegController *)self _nukeCallerIDCache];
  callerIdChangedBlock = [(CNFRegController *)self callerIdChangedBlock];

  if (callerIdChangedBlock)
  {
    callerIdChangedBlock2 = [(CNFRegController *)self callerIdChangedBlock];
    v6 = [callerIdChangedBlock2 copy];

    v6[2](v6);
  }
}

- (void)nukeAllCallerIDSettings
{
  facetimeService = [MEMORY[0x277D18DE0] facetimeService];
  IMSetPreferredAccountForService();

  iMessageService = [MEMORY[0x277D18DE0] iMessageService];
  IMSetPreferredAccountForService();

  callService = [MEMORY[0x277D18DE0] callService];
  IMSetPreferredAccountForService();

  [(CNFRegController *)self _nukeCallerIDCache];

  [(CNFRegController *)self _postCallerIDChanged];
}

- (void)_startListeningForCallerIDChanges
{
  if ((*&self->_controllerFlags & 2) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleCallerIDChangedForResume_ name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleCallerIDChanged name:*MEMORY[0x277D18CF8] object:0];

    *&self->_controllerFlags |= 2u;
  }
}

- (void)_stopListeningForCallerIDChanges
{
  if ((*&self->_controllerFlags & 2) != 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D18CF8] object:0];

    *&self->_controllerFlags &= ~2u;
  }
}

- (id)displayAccount
{
  firstService = [(CNFRegController *)self firstService];
  v3 = IMPreferredAccountForService();

  return v3;
}

- (id)displayAlias
{
  firstService = [(CNFRegController *)self firstService];
  v4 = IMPreferredAccountForService();
  v5 = v4;
  if (!v4 || ([v4 displayName], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, guessedDisplayAlias = -[CNFRegAlias initWithAccount:alias:]([CNFRegAlias alloc], "initWithAccount:alias:", v5, v6), v7, !guessedDisplayAlias))
  {
    mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
    firstService2 = [(CNFRegController *)self firstService];
    v11 = [mEMORY[0x277D18D28] operationalAccountsForService:firstService2];

    if ([v11 count])
    {
      guessedDisplayAlias = [(CNFRegController *)self guessedDisplayAlias];
    }

    else
    {
      guessedDisplayAlias = 0;
    }
  }

  account = [(CNFRegAlias *)guessedDisplayAlias account];
  alias = [(CNFRegAlias *)guessedDisplayAlias alias];
  [account setDisplayName:alias];

  return guessedDisplayAlias;
}

- (BOOL)setDisplayAlias:(id)alias
{
  v19 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = aliasCopy;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Request to set the display alias: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  CNFRegLogIndent();
  accounts = [(CNFRegController *)self accounts];
  account = [aliasCopy account];
  v8 = [accounts containsObject:account];

  if (v8)
  {
    account2 = [aliasCopy account];
    account3 = [aliasCopy account];
    service = [account3 service];
    IMSetPreferredAccountForService();

    [(CNFRegController *)self _postCallerIDChanged];
    account4 = [aliasCopy account];
    alias = [aliasCopy alias];
    [account4 setDisplayName:alias];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Not setting because the alias's account is not in our list of managed accounts", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  CNFRegLogOutdent();

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_logName
{
  logName = self->_logName;
  if (!logName)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    [(CNFRegController *)self serviceType];
    v5 = FTCServiceNameForServiceType();
    v6 = [v4 initWithFormat:@"Controller[%@]", v5];
    v7 = self->_logName;
    self->_logName = v6;

    logName = self->_logName;
  }

  return logName;
}

- (id)_logSpace
{
  if (self->_logIndent)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * self->_logIndent];
    if (self->_logIndent)
    {
      v4 = 0;
      do
      {
        [(__CFString *)v3 appendString:@"  "];
        ++v4;
      }

      while (v4 < self->_logIndent);
    }

    [(__CFString *)v3 appendString:@"=> "];
  }

  else
  {
    v3 = &stru_2856D3978;
  }

  return v3;
}

- (void)_decrementLogIndent
{
  logIndent = self->_logIndent;
  if (logIndent)
  {
    self->_logIndent = logIndent - 1;
  }
}

- (void)showSetupFaceTimeOverCellularAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  v6 = CFPreferencesCopyValue(@"CarrierName", @"com.apple.carrier", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = CFPreferencesCopyValue(@"TetheringPhoneNumber", @"com.apple.carrier", v4, v5);
  v8 = CFPreferencesCopyValue(@"TetheringURL", @"com.apple.carrier", v4, v5);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  [(CNFRegController *)self showSetupFaceTimeOverCellularAlertForServiceProviderName:v6 serviceProviderPhoneNumber:v7 serviceProviderURL:v9 completion:completionCopy];
}

- (void)showSetupFaceTimeOverCellularAlertForServiceProviderName:(id)name serviceProviderPhoneNumber:(id)number serviceProviderURL:(id)l completion:(id)completion
{
  nameCopy = name;
  numberCopy = number;
  lCopy = l;
  completionCopy = completion;
  selfCopy = self;
  CNFRegSetStringTableForServiceType([(CNFRegController *)self serviceType]);
  v13 = CommunicationsSetupUIBundle();
  v14 = CNFRegStringTableName();
  v15 = [v13 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v14];

  v16 = [numberCopy length];
  v60 = lCopy;
  if (lCopy || v16)
  {
    v28 = [numberCopy length];
    if (lCopy)
    {
      v17 = numberCopy;
      if (!v28)
      {
        v33 = MEMORY[0x277CCACA8];
        v24 = CommunicationsSetupUIBundle();
        v25 = CNFStringKeyForNetwork(@"FACETIME_SETTINGS_SETUP_CELLULAR_NO_NUMBER");
        v27 = CNFRegStringTableName();
        v34 = [v24 localizedStringForKey:v25 value:&stru_2856D3978 table:v27];
        absoluteString = [v60 absoluteString];
        numberCopy = [v33 stringWithFormat:v34, absoluteString];

        v26 = v15;
        goto LABEL_12;
      }

      v26 = v15;
      [numberCopy length];
    }

    else
    {
      v17 = numberCopy;
      v26 = v15;
      if (v28)
      {
        v29 = MEMORY[0x277CCACA8];
        v24 = CommunicationsSetupUIBundle();
        v25 = CNFStringKeyForNetwork(@"FACETIME_SETTINGS_SETUP_CELLULAR_NO_URL");
        v27 = CNFRegStringTableName();
        v30 = [v24 localizedStringForKey:v25 value:&stru_2856D3978 table:v27];
        numberCopy = [v29 stringWithFormat:v30, nameCopy, numberCopy];
LABEL_10:

        goto LABEL_12;
      }
    }

    v31 = MEMORY[0x277CCACA8];
    v24 = CommunicationsSetupUIBundle();
    v25 = CNFStringKeyForNetwork(@"FACETIME_SETTINGS_SETUP_CELLULAR_ALL_INFO");
    v27 = CNFRegStringTableName();
    v30 = [v24 localizedStringForKey:v25 value:&stru_2856D3978 table:v27];
    absoluteString2 = [v60 absoluteString];
    numberCopy = [v31 stringWithFormat:v30, nameCopy, v17, absoluteString2];

    goto LABEL_10;
  }

  v17 = numberCopy;
  v18 = MEMORY[0x277CCACA8];
  v19 = CommunicationsSetupUIBundle();
  v20 = CNFStringKeyForNetwork(@"FACETIME_SETTINGS_SETUP_CELLULAR_NO_INFO");
  v21 = CNFRegStringTableName();
  v22 = [v19 localizedStringForKey:v20 value:&stru_2856D3978 table:v21];
  numberCopy = [v18 stringWithFormat:v22, nameCopy];

  v24 = CommunicationsSetupUIBundle();
  v25 = CNFRegStringTableName();
  v26 = [v24 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v25];
  v27 = v15;
LABEL_12:

  v36 = MEMORY[0x277D75110];
  v37 = CommunicationsSetupUIBundle();
  v38 = CNFRegStringTableName();
  v39 = [v37 localizedStringForKey:@"FACETIME_SETTINGS_SETUP_CELLULAR_TITLE" value:&stru_2856D3978 table:v38];
  v40 = [v36 alertControllerWithTitle:v39 message:numberCopy preferredStyle:1];

  v41 = MEMORY[0x277D750F8];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke;
  v68[3] = &unk_278DE8230;
  v42 = completionCopy;
  v69 = v42;
  v43 = [v41 actionWithTitle:v26 style:1 handler:v68];
  [v40 addAction:v43];

  if ([v17 length])
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    isTelephonyDevice = [mEMORY[0x277D07DB0] isTelephonyDevice];

    if (isTelephonyDevice)
    {
      v46 = MEMORY[0x277D750F8];
      v47 = CommunicationsSetupUIBundle();
      v48 = CNFRegStringTableName();
      v49 = [v47 localizedStringForKey:@"FACETIME_SETTINGS_MAKE_PHONE_CALL" value:&stru_2856D3978 table:v48];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke_2;
      v65[3] = &unk_278DE8258;
      v65[4] = selfCopy;
      v66 = v17;
      v67 = v42;
      v50 = [v46 actionWithTitle:v49 style:0 handler:v65];
      [v40 addAction:v50];
    }
  }

  if (v60)
  {
    v51 = MEMORY[0x277D750F8];
    v52 = CommunicationsSetupUIBundle();
    v53 = CNFRegStringTableName();
    v54 = [v52 localizedStringForKey:@"FACETIME_SETTINGS_VISIT_WEBSITE" value:&stru_2856D3978 table:v53];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke_3;
    v62[3] = &unk_278DE8258;
    v62[4] = selfCopy;
    v63 = v60;
    v64 = v42;
    v55 = [v51 actionWithTitle:v54 style:0 handler:v62];
    [v40 addAction:v55];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  rootViewController = [keyWindow rootViewController];

  [rootViewController presentViewController:v40 animated:1 completion:0];
}

uint64_t __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x277CBEBC0] telephonyURLWithDestinationID:a1[5]];
  [v2 openURL:v3];

  result = a1[6];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __142__CNFRegController_Alerts__showSetupFaceTimeOverCellularAlertForServiceProviderName_serviceProviderPhoneNumber_serviceProviderURL_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) openURL:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)__filter_appleIDAccountPredicate
{
  if (__filter_appleIDAccountPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_appleIDAccountPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_appleIDAccountPredicate_predicate);

  return v2;
}

uint64_t __63__CNFRegController_Filtering____filter_appleIDAccountPredicate__block_invoke()
{
  __filter_appleIDAccountPredicate_predicate = [&__block_literal_global_49 copy];

  return MEMORY[0x2821F96F8]();
}

BOOL __63__CNFRegController_Filtering____filter_appleIDAccountPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accountType];
    if (!v4)
    {
      v5 = [MEMORY[0x277D07DB0] sharedInstance];
      v6 = [v5 isTelephonyDevice];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 == 1;
}

- (id)__filter_phoneAccountPredicate
{
  if (__filter_phoneAccountPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_phoneAccountPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_phoneAccountPredicate_predicate);

  return v2;
}

uint64_t __61__CNFRegController_Filtering____filter_phoneAccountPredicate__block_invoke()
{
  __filter_phoneAccountPredicate_predicate = [&__block_literal_global_53 copy];

  return MEMORY[0x2821F96F8]();
}

BOOL __61__CNFRegController_Filtering____filter_phoneAccountPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accountType];
    if (!v4)
    {
      v5 = [MEMORY[0x277D07DB0] sharedInstance];
      v6 = [v5 isTelephonyDevice];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 == 2;
}

- (id)__filter_activeAccountsPredicate
{
  if (__filter_activeAccountsPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_activeAccountsPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_activeAccountsPredicate_predicate);

  return v2;
}

uint64_t __63__CNFRegController_Filtering____filter_activeAccountsPredicate__block_invoke()
{
  __filter_activeAccountsPredicate_predicate = [&__block_literal_global_57 copy];

  return MEMORY[0x2821F96F8]();
}

- (id)__filter_inactiveAccountsPredicate
{
  if (__filter_inactiveAccountsPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_inactiveAccountsPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_inactiveAccountsPredicate_predicate);

  return v2;
}

uint64_t __65__CNFRegController_Filtering____filter_inactiveAccountsPredicate__block_invoke()
{
  __filter_inactiveAccountsPredicate_predicate = [&__block_literal_global_61 copy];

  return MEMORY[0x2821F96F8]();
}

- (id)__filter_failedAccountsPredicate
{
  if (__filter_failedAccountsPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_failedAccountsPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_failedAccountsPredicate_predicate);

  return v2;
}

uint64_t __63__CNFRegController_Filtering____filter_failedAccountsPredicate__block_invoke()
{
  __filter_failedAccountsPredicate_predicate = [&__block_literal_global_65 copy];

  return MEMORY[0x2821F96F8]();
}

- (id)__filter_validatedAliasPredicate
{
  if (__filter_validatedAliasPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_validatedAliasPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_validatedAliasPredicate_predicate);

  return v2;
}

uint64_t __63__CNFRegController_Filtering____filter_validatedAliasPredicate__block_invoke()
{
  __filter_validatedAliasPredicate_predicate = [&__block_literal_global_69 copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t __63__CNFRegController_Filtering____filter_validatedAliasPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 canSendMessages])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [v2 aliases];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([v2 validationStatusForAlias:*(*(&v9 + 1) + 8 * i)] == 3)
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v4 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)__filter_signInCompletePredicate
{
  if (__filter_signInCompletePredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_signInCompletePredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_signInCompletePredicate_predicate);

  return v2;
}

uint64_t __63__CNFRegController_Filtering____filter_signInCompletePredicate__block_invoke()
{
  __filter_signInCompletePredicate_predicate = [&__block_literal_global_73 copy];

  return MEMORY[0x2821F96F8]();
}

- (id)__filter_validatedProfilePredicate
{
  if (__filter_validatedProfilePredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_validatedProfilePredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_validatedProfilePredicate_predicate);

  return v2;
}

uint64_t __65__CNFRegController_Filtering____filter_validatedProfilePredicate__block_invoke()
{
  __filter_validatedProfilePredicate_predicate = [&__block_literal_global_77 copy];

  return MEMORY[0x2821F96F8]();
}

BOOL __65__CNFRegController_Filtering____filter_validatedProfilePredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = !v2 || (v4 = [v2 accountType], v4 != 1) && (v4 || (objc_msgSend(MEMORY[0x277D07DB0], "sharedInstance"), v5 = v3 = v2;

  return v7;
}

- (id)__filter_signedInPredicate
{
  if (__filter_signedInPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_signedInPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_signedInPredicate_predicate);

  return v2;
}

uint64_t __57__CNFRegController_Filtering____filter_signedInPredicate__block_invoke()
{
  __filter_signedInPredicate_predicate = [&__block_literal_global_82 copy];

  return MEMORY[0x2821F96F8]();
}

- (id)__filter_operationalPredicate
{
  if (__filter_operationalPredicate_once != -1)
  {
    [CNFRegController(Filtering) __filter_operationalPredicate];
  }

  v2 = MEMORY[0x245D4D850](__filter_operationalPredicate_predicate);

  return v2;
}

uint64_t __60__CNFRegController_Filtering____filter_operationalPredicate__block_invoke()
{
  __filter_operationalPredicate_predicate = [&__block_literal_global_86 copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t __60__CNFRegController_Filtering____filter_operationalPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOperational])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 canSendMessages] ^ 1;
  }

  return v3;
}

- (void)_clearFilterCache
{
  accountFilterCache = self->_accountFilterCache;
  self->_accountFilterCache = 0;
  MEMORY[0x2821F96F8]();
}

- (id)accountsWithFilter:(int64_t)filter message:(id)message
{
  messageCopy = message;
  v7 = [(CNFRegController *)self _predicatesWithFilter:filter];
  if (!self->_accountFilterCache)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accountFilterCache = self->_accountFilterCache;
    self->_accountFilterCache = v8;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:filter];
  v11 = [(NSMutableDictionary *)self->_accountFilterCache objectForKey:v10];
  if (!v11)
  {
    v11 = [(CNFRegController *)self _accountsPassingTests:v7 message:messageCopy];
    if (v11)
    {
      [(NSMutableDictionary *)self->_accountFilterCache setObject:v11 forKey:v10];
    }
  }

  return v11;
}

- (id)_accountsPassingTests:(id)tests message:(id)message
{
  testsCopy = tests;
  accounts = [(CNFRegController *)self accounts];
  v7 = accounts;
  if (!accounts || ![accounts count] || (objc_msgSend(v7, "CNFRegArrayPassingTests:", testsCopy), (array = objc_claimAutoreleasedReturnValue()) == 0))
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)_predicatesWithFilter:(int64_t)filter
{
  if (!filter)
  {
    v5 = 0;
    goto LABEL_24;
  }

  filterCopy = filter;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((filterCopy & 4) != 0)
  {
    __filter_appleIDAccountPredicate = [(CNFRegController *)self __filter_appleIDAccountPredicate];
    [v5 addObject:__filter_appleIDAccountPredicate];

    if ((filterCopy & 8) == 0)
    {
LABEL_4:
      if ((filterCopy & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((filterCopy & 8) == 0)
  {
    goto LABEL_4;
  }

  __filter_phoneAccountPredicate = [(CNFRegController *)self __filter_phoneAccountPredicate];
  [v5 addObject:__filter_phoneAccountPredicate];

  if ((filterCopy & 1) == 0)
  {
LABEL_5:
    if ((filterCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  __filter_activeAccountsPredicate = [(CNFRegController *)self __filter_activeAccountsPredicate];
  [v5 addObject:__filter_activeAccountsPredicate];

  if ((filterCopy & 2) == 0)
  {
LABEL_6:
    if ((filterCopy & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  __filter_inactiveAccountsPredicate = [(CNFRegController *)self __filter_inactiveAccountsPredicate];
  [v5 addObject:__filter_inactiveAccountsPredicate];

  if ((filterCopy & 0x2000) == 0)
  {
LABEL_7:
    if ((filterCopy & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  __filter_failedAccountsPredicate = [(CNFRegController *)self __filter_failedAccountsPredicate];
  [v5 addObject:__filter_failedAccountsPredicate];

  if ((filterCopy & 0x4000) == 0)
  {
LABEL_8:
    if ((filterCopy & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  __filter_validatedAliasPredicate = [(CNFRegController *)self __filter_validatedAliasPredicate];
  [v5 addObject:__filter_validatedAliasPredicate];

  if ((filterCopy & 0x1000) == 0)
  {
LABEL_9:
    if ((filterCopy & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  __filter_signInCompletePredicate = [(CNFRegController *)self __filter_signInCompletePredicate];
  [v5 addObject:__filter_signInCompletePredicate];

  if ((filterCopy & 0x800) == 0)
  {
LABEL_10:
    if ((filterCopy & 0x8000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    __filter_signedInPredicate = [(CNFRegController *)self __filter_signedInPredicate];
    [v5 addObject:__filter_signedInPredicate];

    if ((filterCopy & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_21:
  __filter_validatedProfilePredicate = [(CNFRegController *)self __filter_validatedProfilePredicate];
  [v5 addObject:__filter_validatedProfilePredicate];

  if ((filterCopy & 0x8000) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((filterCopy & 0x10000) != 0)
  {
LABEL_23:
    __filter_operationalPredicate = [(CNFRegController *)self __filter_operationalPredicate];
    [v5 addObject:__filter_operationalPredicate];
  }

LABEL_24:

  return v5;
}

- (id)guessedAccountName
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(CUTWeakLinkClass()) initWithEffectiveBundleID:@"com.apple.account.Madrid"];
  cNFRegSavedAccountName = [v3 aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:0];

  if (cNFRegSavedAccountName)
  {
    v5 = @"CNFRegAccountTypeIdentifieriMessage";
  }

  else
  {
    v6 = [objc_alloc(CUTWeakLinkClass()) initWithEffectiveBundleID:@"com.apple.account.FaceTime"];
    cNFRegSavedAccountName = [v6 aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:0];

    v5 = @"CNFRegAccountTypeIdentifierFaceTime";
  }

  v23 = v5;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  accounts = [(CNFRegController *)self accounts];
  v8 = [accounts countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        if (!cNFRegSavedAccountName)
        {
          v11 = *(*(&v24 + 1) + 8 * i);
          if (v11)
          {
            accountType = [*(*(&v24 + 1) + 8 * i) accountType];
            if (accountType == 1 || !accountType && ([MEMORY[0x277D07DB0] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isTelephonyDevice"), v13, (v14 & 1) == 0))
            {
              v15 = [(CNFRegController *)self loginForAccount:v11];
              if (v15)
              {

                v23 = @"a previous login";
                cNFRegSavedAccountName = v15;
                goto LABEL_22;
              }
            }
          }
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (cNFRegSavedAccountName)
  {
    goto LABEL_22;
  }

  cNFRegSavedAccountName = [MEMORY[0x277CBEBD0] CNFRegSavedAccountName];
  if (cNFRegSavedAccountName)
  {
    v16 = @"a previously successful account name";
LABEL_20:
    v23 = v16;
LABEL_22:
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = cNFRegSavedAccountName;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "Guessed account name (%@) from %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    goto LABEL_27;
  }

  if (CNFRegGetSSAccountStoreClass())
  {
    defaultStore = [CNFRegGetSSAccountStoreClass() defaultStore];
    activeAccount = [defaultStore activeAccount];
    cNFRegSavedAccountName = [activeAccount accountName];

    if (cNFRegSavedAccountName)
    {
      v16 = @"iTunes";
      goto LABEL_20;
    }
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "Could not guess account name", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  cNFRegSavedAccountName = 0;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];

  return cNFRegSavedAccountName;
}

- (id)guessedAlias
{
  v38 = *MEMORY[0x277D85DE8];
  accounts = [(CNFRegController *)self accounts];
  if ([accounts count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    aliases = [(CNFRegController *)self aliases];
    alias = [aliases countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (alias)
    {
      v6 = *v29;
      while (2)
      {
        for (i = 0; i != alias; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(aliases);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          if ([v8 type] == 1 && objc_msgSend(v8, "validationStatus") != 3)
          {
            alias = [v8 alias];
            v9 = @"an un-registered alias";
            goto LABEL_14;
          }
        }

        alias = [aliases countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (alias)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_14:
  }

  else
  {
    v9 = 0;
    alias = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = accounts;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v11)
  {
    v12 = *v25;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (!alias)
        {
          v14 = *(*(&v24 + 1) + 8 * j);
          if (v14)
          {
            accountType = [*(*(&v24 + 1) + 8 * j) accountType];
            if (accountType == 1 || !accountType && ([MEMORY[0x277D07DB0] sharedInstance], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isTelephonyDevice"), v16, (v17 & 1) == 0))
            {
              login = [v14 login];
              v19 = MEMORY[0x245D4D030]();

              if (v19 && [v19 length])
              {
                v9 = @"an account login";
                goto LABEL_32;
              }
            }
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = alias;
LABEL_32:

  if (v9 && v19)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v19;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Guessed alias (%@) from %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_43:
      IMLogString();
    }
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Could not guess alias", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_43;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)_isValidCallerIDAlias:(id)alias forAccount:(id)account
{
  aliasCopy = alias;
  accountCopy = account;
  v7 = accountCopy;
  v8 = 0;
  if (aliasCopy && accountCopy)
  {
    if ([accountCopy hasAlias:aliasCopy])
    {
      v8 = [v7 validationStatusForAlias:aliasCopy] == 3;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_guessedDisplayAliasFromAccounts:(id)accounts
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = accounts;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v25)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v27 = v4;
        v6 = *(*(&v33 + 1) + 8 * v4);
        if ([v6 isActive])
        {
          aliases = [v6 aliases];
          v8 = [aliases sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v10)
          {
            v11 = 0;
            v12 = *v30;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v29 + 1) + 8 * i);
                if ([(CNFRegController *)self _isValidCallerIDAlias:v14 forAccount:v6])
                {
                  if ([v6 typeForAlias:v14] == 2)
                  {
                    v19 = v14;

                    v11 = v19;
                    goto LABEL_25;
                  }

                  loginDisplayString = [v6 loginDisplayString];
                  v16 = [loginDisplayString isEqualToString:v14];

                  if ((v11 == 0) | v16 & 1)
                  {
                    v17 = v14;

                    v11 = v17;
                  }
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }

LABEL_25:

            if (v11)
            {
              v21 = [[CNFRegAlias alloc] initWithAccount:v6 alias:v11];

              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        else
        {
          v18 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Account is inactive. Skipping.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "Could not find an alias", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        v4 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  v21 = 0;
LABEL_36:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)guessedDisplayAlias
{
  v3 = [(CNFRegController *)self accountsWithFilter:65544];
  v4 = [(CNFRegController *)self _guessedDisplayAliasFromAccounts:v3];

  if (!v4)
  {
    v5 = [(CNFRegController *)self accountsWithFilter:65540];
    v4 = [(CNFRegController *)self _guessedDisplayAliasFromAccounts:v5];
  }

  return v4;
}

- (void)openURL:(id)l
{
  lCopy = l;
  willLaunchURLBlock = [(CNFRegController *)self willLaunchURLBlock];

  if (willLaunchURLBlock)
  {
    willLaunchURLBlock2 = [(CNFRegController *)self willLaunchURLBlock];
    v6 = [willLaunchURLBlock2 copy];

    (v6)[2](v6, lCopy);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
}

- (BOOL)deviceHasSaneNetworkConnection
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D07DD8] = [MEMORY[0x277D07DD8] sharedInstance];
  networkReachable = [mEMORY[0x277D07DD8] networkReachable];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (networkReachable)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Device has reachable network : %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (networkReachable)
  {
    networkReachable = [mEMORY[0x277D07DD8] networkActive];
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (networkReachable)
      {
        v7 = @"YES";
      }

      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Device has active network : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return networkReachable;
}

- (BOOL)deviceCanTakeNetworkAction
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(CNFRegController *)self deviceHasSaneNetworkConnection])
  {
    v3 = 1;
  }

  else
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "- (BOOL)deviceCanTakeNetworkAction: Network not enabled", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    serviceType = [(CNFRegController *)self serviceType];
    if (serviceType > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_278DE8348[serviceType];
    }

    mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
    isWiFiEnabled = [mEMORY[0x277D19270] isWiFiEnabled];
    isDataSwitchEnabled = [mEMORY[0x277D19270] isDataSwitchEnabled];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (isWiFiEnabled)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (isDataSwitchEnabled)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "isWifiEnabled: %@, isCellularEnabled %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = @"NO";
      if (isWiFiEnabled)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (isDataSwitchEnabled)
      {
        v13 = @"YES";
      }

      v28 = v14;
      v29 = v13;
      IMLogString();
    }

    if ((isWiFiEnabled | isDataSwitchEnabled))
    {
      mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
      v16 = [mEMORY[0x277D07DB0] wifiAllowedForBundleId:v6];

      if ([(CNFRegController *)self serviceType]== 1)
      {
        v17 = 1;
      }

      else
      {
        mEMORY[0x277D07DB0]2 = [MEMORY[0x277D07DB0] sharedInstance];
        v17 = [mEMORY[0x277D07DB0]2 nonWifiAvailableForBundleId:v6];
      }

      mEMORY[0x277D07DB0]3 = [MEMORY[0x277D07DB0] sharedInstance];
      v20 = [mEMORY[0x277D07DB0]3 wifiAllowedForBundleId:@"com.apple.Preferences"];

      v3 = (v16 | v17) & (v20 ^ 1);
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"NO";
        if ((v16 | v17) & (v20 ^ 1))
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        if (v16)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138413058;
        v31 = v23;
        if (v17)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v32 = 2112;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        if (v20)
        {
          v22 = @"YES";
        }

        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "- (BOOL)deviceCanTakeNetworkAction networkEnabled: %@, wifiAllowedForBundle %@, nonWifiAllowedForBundle %@, wifiAllowedForPreferences %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (id)networkSettingsURLAllowingCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  serviceType = [(CNFRegController *)self serviceType];
  if (serviceType > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278DE8348[serviceType];
  }

  mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
  v7 = MGGetBoolAnswer();
  v8 = @"settings-navigation://com.apple.Settings.WiFi";
  if (v7)
  {
    isWiFiEnabled = [mEMORY[0x277D19270] isWiFiEnabled];
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    v11 = [mEMORY[0x277D07DB0] wifiAllowedForBundleId:v5];

    v12 = @"settings-navigation://com.apple.Settings.WiFi/WIRELESS_APP_DATA_USAGE_ID";
    if (v11)
    {
      v12 = @"settings-navigation://com.apple.Settings.WiFi";
    }

    if (isWiFiEnabled)
    {
      v8 = v12;
    }
  }

  if (cellularCopy)
  {
    mEMORY[0x277D07DB0]2 = [MEMORY[0x277D07DB0] sharedInstance];
    supportsCellularData = [mEMORY[0x277D07DB0]2 supportsCellularData];

    if (supportsCellularData)
    {
      mEMORY[0x277D19270]2 = [MEMORY[0x277D19270] sharedInstance];
      isAirplaneModeEnabled = [mEMORY[0x277D19270]2 isAirplaneModeEnabled];

      SIMStatus = CTSIMSupportGetSIMStatus();
      if (SIMStatus == *MEMORY[0x277CC3ED8])
      {
        v18 = 1;
      }

      else
      {
        v18 = isAirplaneModeEnabled;
      }

      if (!v18)
      {
        v8 = @"settings-navigation://com.apple.Settings.Cellular";
      }

      if (v7 && SIMStatus != *MEMORY[0x277CC3ED8])
      {
        isDataSwitchEnabled = [mEMORY[0x277D19270] isDataSwitchEnabled];
        mEMORY[0x277D07DB0]3 = [MEMORY[0x277D07DB0] sharedInstance];
        v21 = [mEMORY[0x277D07DB0]3 nonWifiAvailableForBundleId:v5];

        v22 = @"settings-navigation://com.apple.Settings.Cellular/WIRELESS_APP_DATA_USAGE_ID";
        if (v21)
        {
          v22 = v8;
        }

        if (isDataSwitchEnabled)
        {
          v8 = v22;
        }

        else
        {
          v8 = @"settings-navigation://com.apple.Settings.Cellular";
        }
      }
    }
  }

  v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];

  return v23;
}

- (void)_showNetworkAlertWithMessage:(id)message andViewController:(id)controller
{
  controllerCopy = controller;
  messageCopy = message;
  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_NETWORK_ERROR_TITLE" value:&stru_2856D3978 table:v9];

  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v12];

  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_NETWORK_SETTINGS_BUTTON" value:&stru_2856D3978 table:v15];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:messageCopy preferredStyle:1];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__CNFRegController_Network___showNetworkAlertWithMessage_andViewController___block_invoke;
  v22[3] = &unk_278DE8328;
  v22[4] = self;
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v22];
  [v17 addAction:v18];

  v19 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:0];
  [v17 addAction:v19];

  if (!controllerCopy)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    controllerCopy = [keyWindow rootViewController];
  }

  [controllerCopy presentViewController:v17 animated:1 completion:0];
}

void __76__CNFRegController_Network___showNetworkAlertWithMessage_andViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 networkSettingsURLAllowingCellular:1];
  [v1 openURL:v2];
}

- (void)showNetworkAlert:(id)alert
{
  v25 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsCellularData = [mEMORY[0x277D07DB0] supportsCellularData];
  supportsWiFi = [mEMORY[0x277D07DB0] supportsWiFi];
  supportsWLAN = [mEMORY[0x277D07DB0] supportsWLAN];
  v9 = supportsWLAN;
  if (supportsCellularData)
  {
    if ((supportsWiFi & 1) == 0)
    {
      v10 = [@"FACETIME_NETWORK_ERROR_CELL" stringByAppendingString:@"_NO_WIFI"];
      goto LABEL_9;
    }

    if (supportsWLAN)
    {
      v10 = [@"FACETIME_NETWORK_ERROR_CELL" stringByAppendingString:@"_WLAN"];
LABEL_9:
      v11 = v10;
      goto LABEL_11;
    }

    v11 = @"FACETIME_NETWORK_ERROR_CELL";
  }

  else if (supportsWLAN)
  {
    v11 = @"FACETIME_NETWORK_ERROR_WLAN";
  }

  else
  {
    v11 = @"FACETIME_NETWORK_ERROR_WIFI";
  }

LABEL_11:
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Showing network alert with key: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (supportsCellularData)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v24 = v14;
    _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "    isCellular:%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (supportsWiFi)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "  supportsWifi:%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v9)
    {
      v18 = @"YES";
    }

    *buf = 138412290;
    v24 = v18;
    _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "  supportsWLAN:%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v19 = CommunicationsSetupUIBundle();
  v20 = CNFRegStringTableName();
  v21 = [v19 localizedStringForKey:v11 value:&stru_2856D3978 table:v20];
  [(CNFRegController *)self _showNetworkAlertWithMessage:v21 andViewController:alertCopy];

  *&self->_controllerFlags |= 0x20u;
  v22 = *MEMORY[0x277D85DE8];
}

- (void)showNetworkAlertIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (![(CNFRegController *)self deviceCanTakeNetworkAction])
  {
    [(CNFRegController *)self showNetworkAlert:necessaryCopy];
  }
}

- (void)showNetworkFirstRunAlert:(id)alert
{
  alertCopy = alert;
  if ((*&self->_controllerFlags & 0x20) == 0)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Showing first-run wifi alert", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CNFRegController *)self showNetworkAlertIfNecessary:alertCopy];
    *&self->_controllerFlags |= 0x20u;
  }
}

- (void)resetNetworkFirstRunAlert
{
  controllerFlags = *&self->_controllerFlags & 0xDF;
  *&self->_controllerFlags = controllerFlags;
  if (self->_requiredWifiCount >= 1)
  {
    [(CNFRegController *)self _startWiFiAlertWatchTimer];
    controllerFlags = self->_controllerFlags;
  }

  *&self->_controllerFlags = controllerFlags & 0xEF;
}

- (void)_wifiAlertWatchTimerFired:(id)fired
{
  v22 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  if (self->_wifiAlertWatchTimer == firedCopy)
  {
    mEMORY[0x277D07DD8] = [MEMORY[0x277D07DD8] sharedInstance];
    validNetworkEnabled = [mEMORY[0x277D07DD8] validNetworkEnabled];
    willSearchForNetwork = [mEMORY[0x277D07DD8] willSearchForNetwork];
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"NO";
      if (validNetworkEnabled)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (willSearchForNetwork)
      {
        v9 = @"YES";
      }

      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEBUG, "Network alert timer fired, enabled=%@, searching=%@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v11 = @"NO";
      if (validNetworkEnabled)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (willSearchForNetwork)
      {
        v11 = @"YES";
      }

      v16 = v12;
      v17 = v11;
      IMLogString();
    }

    if ((validNetworkEnabled & willSearchForNetwork & 1) == 0)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Stopping wifi alert watch timer due to completion", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      [(NSTimer *)self->_wifiAlertWatchTimer invalidate:v16];
      wifiAlertWatchTimer = self->_wifiAlertWatchTimer;
      self->_wifiAlertWatchTimer = 0;

      [(CNFRegController *)self showNetworkFirstRunAlert:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startWiFiAlertWatchTimer
{
  if (self->_wifiAlertWatchTimer)
  {
    return;
  }

  if ((*&self->_controllerFlags & 0x10) != 0)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Not starting wifi alert because we're already responding to a WiFi picker", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_14;
    }
  }

  else if ([(CNFRegController *)self deviceCanTakeNetworkAction])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Not starting wifi alert watch timer due to valid network route", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_14:
      IMLogString();
    }
  }

  else
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Starting wifi alert watch timer", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__wifiAlertWatchTimerFired_ selector:0 userInfo:1 repeats:1.0];
    wifiAlertWatchTimer = self->_wifiAlertWatchTimer;
    self->_wifiAlertWatchTimer = v6;

    *&self->_controllerFlags |= 0x10u;
  }
}

- (void)_stopWiFiAlertWatchTimer
{
  if (self->_wifiAlertWatchTimer)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Stopping wifi alert watch timer", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(NSTimer *)self->_wifiAlertWatchTimer invalidate];
    wifiAlertWatchTimer = self->_wifiAlertWatchTimer;
    self->_wifiAlertWatchTimer = 0;
  }

  *&self->_controllerFlags &= ~0x10u;
}

- (void)startRequiringWifi
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requiredWifiCount = self->_requiredWifiCount;
    *buf = 134217984;
    v12 = requiredWifiCount;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Turning on wifi requirement with state [%ld]", buf, 0xCu);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && IMShouldLog())
  {
    v10 = self->_requiredWifiCount;
    IMLogString();
  }

  v5 = self->_requiredWifiCount;
  if (!v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "  Saving original network state for later", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v7 = SBSSpringBoardServerPort();
    MEMORY[0x245D4D1F0](v7, &self->_originalCellFlag, &self->_originalWifiFlag);
    v8 = MEMORY[0x277D76620];
    self->_originalUsesBackgroundNetwork = [*MEMORY[0x277D76620] usesBackgroundNetwork];
    dispatch_async(self->_springboardNetworkFlagQueue, &__block_literal_global_4);
    [*v8 setUsesBackgroundNetwork:1];
    [(CNFRegController *)self _startWiFiAlertWatchTimer];
    v5 = self->_requiredWifiCount;
  }

  self->_requiredWifiCount = v5 + 1;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CNFRegController_Network__startRequiringWifi__block_invoke()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v0, OS_LOG_TYPE_DEFAULT, "Async setting app network flags: 1, 1", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v1 = SBSSpringBoardServerPort();
  return MEMORY[0x245D4D220](v1, 1, 1);
}

- (void)stopRequiringWifi
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requiredWifiCount = self->_requiredWifiCount;
    *buf = 134217984;
    v14 = requiredWifiCount;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Turning off wifi requirement with state [%ld]", buf, 0xCu);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && IMShouldLog())
  {
    v11 = self->_requiredWifiCount;
    IMLogString();
  }

  v5 = self->_requiredWifiCount;
  if (v5 == 1)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "  Setting network back to its original state", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    springboardNetworkFlagQueue = self->_springboardNetworkFlagQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CNFRegController_Network__stopRequiringWifi__block_invoke;
    block[3] = &unk_278DE7E08;
    block[4] = self;
    dispatch_async(springboardNetworkFlagQueue, block);
    [*MEMORY[0x277D76620] setUsesBackgroundNetwork:self->_originalUsesBackgroundNetwork];
    [(CNFRegController *)self _stopWiFiAlertWatchTimer];
    v5 = self->_requiredWifiCount;
  }

  v8 = v5 < 1;
  v9 = v5 - 1;
  if (!v8)
  {
    self->_requiredWifiCount = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CNFRegController_Network__stopRequiringWifi__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 185);
    LODWORD(v3) = *(v3 + 184);
    *buf = 67109376;
    v12 = v4;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Async setting app network flags: %d %d", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v5 = *(a1 + 32);
    v9 = *(v5 + 185);
    v10 = *(v5 + 184);
    IMLogString();
  }

  v6 = SBSSpringBoardServerPort();
  result = MEMORY[0x245D4D220](v6, *(*(a1 + 32) + 185), *(*(a1 + 32) + 184));
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)__updateSystemAccount
{
  if (self->_systemAccountType == -1)
  {
    appleIDAccounts = [(CNFRegController *)self appleIDAccounts];
    v4 = [appleIDAccounts count];

    if (v4)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
      firstService = [(CNFRegController *)self firstService];
      v5 = [mEMORY[0x277D18D28] __iCloudSystemAccountForService:firstService];

      v6 = v5 != 0;
    }

    self->_systemAccountType = v6;
    systemAccount = self->_systemAccount;
    self->_systemAccount = v5;
  }
}

- (IMAccount)systemAccount
{
  [(CNFRegController *)self __updateSystemAccount];
  systemAccount = self->_systemAccount;

  return systemAccount;
}

- (void)refreshSystemAccount
{
  systemAccount = self->_systemAccount;
  self->_systemAccount = 0;

  self->_systemAccountType = -1;
}

- (void)accountRegistrationChanged:(void *)a1 .cold.1(void *a1)
{

  objc_end_catch();
}

@end