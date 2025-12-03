@interface MBFollowupPrebuddyViewController
- (BOOL)_hasDisabledCategories;
- (BOOL)_showExpensiveNetworkPromptBeforeNextViewController:(id)controller;
- (id)_dateOfLastBackup;
- (id)_disabledBackupDomains;
- (id)_disabledSyncCategories;
- (id)_doneViewController;
- (id)_extraStorageOfferViewController;
- (id)_gettingStartedViewController;
- (id)_initialViewController;
- (id)_moveAllAppsAndDataViewControllerWithDisabledSyncCategories:(id)categories disabledBackupDomains:(id)domains;
- (id)_startTransferViewController;
- (id)_telemetryQueue;
- (id)_viewControllerAfterExtraStorageOffer;
- (id)_viewControllerAfterGettingStarted:(id)started;
- (id)_xpcQueue;
- (int64_t)_entryPoint;
- (int64_t)_prebuddyTelemetryForStep:(int64_t)step;
- (void)_beginBackup:(id)backup;
- (void)_extendExpirationDate:(id)date;
- (void)_fetchDeepLinkURL;
- (void)_presentError:(id)error;
- (void)_presentNavigationViewControllerWithRootViewController:(id)controller;
- (void)_presentNextViewController:(id)controller;
- (void)mb_didTapCancelFromViewController:(id)controller;
- (void)mb_didTapNextFromViewController:(id)controller;
- (void)prebuddyCancel:(id)cancel;
- (void)prebuddyDone:(id)done;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation MBFollowupPrebuddyViewController

- (id)_xpcQueue
{
  if (qword_100022D18 != -1)
  {
    sub_10000EC30();
  }

  v3 = qword_100022D10;

  return v3;
}

- (id)_telemetryQueue
{
  if (qword_100022D28 != -1)
  {
    sub_10000EC44();
  }

  v3 = qword_100022D20;

  return v3;
}

- (id)_dateOfLastBackup
{
  v2 = +[MBPrebuddyManager sharedManager];
  dateOfLastBackup = [v2 dateOfLastBackup];

  v4 = objc_opt_new();
  [v4 setDateStyle:2];
  v5 = [v4 stringFromDate:dateOfLastBackup];

  return v5;
}

- (int64_t)_entryPoint
{
  deepLinkURL = [(MBFollowupPrebuddyViewController *)self deepLinkURL];

  if (deepLinkURL)
  {
    return 2;
  }

  if ([(MBFollowupPrebuddyViewController *)self fromManualSignal])
  {
    return 3;
  }

  return 1;
}

- (void)_fetchDeepLinkURL
{
  v3 = kMBManagerPrebuddyDeepLinkURLKey;
  v4 = CFPreferencesCopyValue(kMBManagerPrebuddyDeepLinkURLKey, @"com.apple.MBHelperApp", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  deepLinkURL = self->_deepLinkURL;
  self->_deepLinkURL = v4;

  if (self->_deepLinkURL)
  {
    CFPreferencesSetValue(v3, 0, @"com.apple.MBHelperApp", @"mobile", kCFPreferencesAnyHost);

    CFPreferencesSynchronize(@"com.apple.MBHelperApp", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

- (id)_disabledSyncCategories
{
  disabledCategoriesManager = self->_disabledCategoriesManager;
  if (!disabledCategoriesManager)
  {
    v4 = objc_alloc_init(MBPrebuddyDisabledCategoriesManager);
    v5 = self->_disabledCategoriesManager;
    self->_disabledCategoriesManager = v4;

    disabledCategoriesManager = self->_disabledCategoriesManager;
  }

  v10 = 0;
  v6 = [(MBPrebuddyDisabledCategoriesManager *)disabledCategoriesManager disabledSyncDataclasses:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch disabled sync categories: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  return v6;
}

- (id)_disabledBackupDomains
{
  disabledCategoriesManager = self->_disabledCategoriesManager;
  if (!disabledCategoriesManager)
  {
    v4 = objc_alloc_init(MBPrebuddyDisabledCategoriesManager);
    v5 = self->_disabledCategoriesManager;
    self->_disabledCategoriesManager = v4;

    disabledCategoriesManager = self->_disabledCategoriesManager;
  }

  needsTemporaryStorage = self->_needsTemporaryStorage;

  return [(MBPrebuddyDisabledCategoriesManager *)disabledCategoriesManager disabledBackupDomains:needsTemporaryStorage];
}

- (BOOL)_hasDisabledCategories
{
  _disabledSyncCategories = [(MBFollowupPrebuddyViewController *)self _disabledSyncCategories];
  if ([_disabledSyncCategories count])
  {
    v4 = 1;
  }

  else
  {
    _disabledBackupDomains = [(MBFollowupPrebuddyViewController *)self _disabledBackupDomains];
    v4 = [_disabledBackupDomains count] != 0;
  }

  return v4;
}

- (id)_initialViewController
{
  if (self->_eligibilityStatus == 2)
  {
    if (self->_needsTemporaryStorage)
    {
      _extraStorageOfferViewController = [(MBFollowupPrebuddyViewController *)self _extraStorageOfferViewController];
      goto LABEL_19;
    }

    if ([(MBFollowupPrebuddyViewController *)self needsAccountSignIn])
    {
      goto LABEL_18;
    }

    altDSIDForHSA2Upgrade = [(MBFollowupPrebuddyViewController *)self altDSIDForHSA2Upgrade];
    if (!altDSIDForHSA2Upgrade && ![(MBFollowupPrebuddyViewController *)self _hasDisabledCategories])
    {
      if (![(MBFollowupPrebuddyViewController *)self needsBackupEnabled])
      {
        _extraStorageOfferViewController = [(MBFollowupPrebuddyViewController *)self _doneViewController];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  domain = [(NSError *)self->_eligibilityError domain];
  v5 = [domain isEqualToString:@"MBMegaBackupEligibilityErrorDomain"];

  if (v5)
  {
    code = [(NSError *)self->_eligibilityError code];
    if (code == 5)
    {
      [(MBFollowupPrebuddyViewController *)self setInitiallyNeededHSA2Upgrade:1];
      altDSIDForHSA2Upgrade = [(NSError *)self->_eligibilityError userInfo];
      v10 = [altDSIDForHSA2Upgrade objectForKeyedSubscript:@"MBMegaBackupEligibilityErrorUserInfoAltDSIDKey"];
      [(MBFollowupPrebuddyViewController *)self setAltDSIDForHSA2Upgrade:v10];

LABEL_17:
      goto LABEL_18;
    }

    if (code == 1)
    {
      [(MBFollowupPrebuddyViewController *)self setNoInitialAccount:1];
      [(MBFollowupPrebuddyViewController *)self setNeedsAccountSignIn:1];
LABEL_18:
      _extraStorageOfferViewController = [(MBFollowupPrebuddyViewController *)self _gettingStartedViewController];
      goto LABEL_19;
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    eligibilityError = self->_eligibilityError;
    *buf = 138543362;
    v14 = eligibilityError;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "_initialViewController should not be here. eligibilityError: %{public}@", buf, 0xCu);
    v12 = self->_eligibilityError;
    _MBLog();
  }

  _extraStorageOfferViewController = 0;
LABEL_19:

  return _extraStorageOfferViewController;
}

- (id)_gettingStartedViewController
{
  v3 = [MBPrebuddyGettingStartedViewController alloc];
  _entryPoint = [(MBFollowupPrebuddyViewController *)self _entryPoint];
  deepLinkURL = [(MBFollowupPrebuddyViewController *)self deepLinkURL];
  needsAccountSignIn = [(MBFollowupPrebuddyViewController *)self needsAccountSignIn];
  altDSIDForHSA2Upgrade = [(MBFollowupPrebuddyViewController *)self altDSIDForHSA2Upgrade];
  v8 = [(MBPrebuddyGettingStartedViewController *)v3 initWithFlow:self entryPoint:_entryPoint deepLinkURL:deepLinkURL needsAccountSignIn:needsAccountSignIn altDSIDForHSA2Upgrade:altDSIDForHSA2Upgrade];

  return v8;
}

- (id)_extraStorageOfferViewController
{
  v2 = [[MBPrebuddyIntroExtraStorageOfferViewController alloc] initWithFlow:self daysUntilExpiration:[(MBFollowupPrebuddyViewController *)self daysUntilExpiration]];

  return v2;
}

- (id)_startTransferViewController
{
  v2 = [[MBPrebuddyStartTransferViewController alloc] initWithFlow:self needsTemporaryStorage:[(MBFollowupPrebuddyViewController *)self needsTemporaryStorage] daysUntilExpiration:[(MBFollowupPrebuddyViewController *)self daysUntilExpiration]];

  return v2;
}

- (id)_moveAllAppsAndDataViewControllerWithDisabledSyncCategories:(id)categories disabledBackupDomains:(id)domains
{
  domainsCopy = domains;
  categoriesCopy = categories;
  v8 = [[MBPrebuddyDisabledDataclassesViewController alloc] initWithFlow:self disabledSyncCategories:categoriesCopy disabledBackupDomains:domainsCopy needsTemporaryStorage:[(MBFollowupPrebuddyViewController *)self needsTemporaryStorage]];

  return v8;
}

- (id)_doneViewController
{
  v2 = [[MBPrebuddyDoneViewController alloc] initWithFlow:self];

  return v2;
}

- (id)_viewControllerAfterGettingStarted:(id)started
{
  startedCopy = started;
  self->_eligibilityStatus = [startedCopy eligibilityStatus];
  eligibilityError = [startedCopy eligibilityError];
  eligibilityError = self->_eligibilityError;
  self->_eligibilityError = eligibilityError;

  self->_needsTemporaryStorage = [startedCopy needsTemporaryStorage];
  daysUntilExpiration = [startedCopy daysUntilExpiration];

  self->_daysUntilExpiration = daysUntilExpiration;
  if ([(MBFollowupPrebuddyViewController *)self noInitialAccount]|| [(MBFollowupPrebuddyViewController *)self needsTemporaryStorage])
  {
    if (self->_eligibilityStatus == 2)
    {
      _startTransferViewController = [(MBFollowupPrebuddyViewController *)self _startTransferViewController];
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = self->_eligibilityError;
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_viewControllerAfterGettingStarted: should not be here. eligibilityError: %{public}@", buf, 0xCu);
        v12 = self->_eligibilityError;
        _MBLog();
      }

      _startTransferViewController = 0;
    }
  }

  else
  {
    _startTransferViewController = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterExtraStorageOffer];
  }

  return _startTransferViewController;
}

- (id)_viewControllerAfterExtraStorageOffer
{
  _disabledSyncCategories = [(MBFollowupPrebuddyViewController *)self _disabledSyncCategories];
  allObjects = [_disabledSyncCategories allObjects];

  _disabledBackupDomains = [(MBFollowupPrebuddyViewController *)self _disabledBackupDomains];
  if ([allObjects count] || objc_msgSend(_disabledBackupDomains, "count"))
  {
    _viewControllerAfterMoveAllAppsAndData = [(MBFollowupPrebuddyViewController *)self _moveAllAppsAndDataViewControllerWithDisabledSyncCategories:allObjects disabledBackupDomains:_disabledBackupDomains];
  }

  else
  {
    _viewControllerAfterMoveAllAppsAndData = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
  }

  v7 = _viewControllerAfterMoveAllAppsAndData;

  return v7;
}

- (void)prebuddyDone:(id)done
{
  +[DKFollowUp clearFollowUp];
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A1B4;
  block[3] = &unk_10001C9C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)prebuddyCancel:(id)cancel
{
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A2E4;
  block[3] = &unk_10001C9C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_presentNavigationViewControllerWithRootViewController:(id)controller
{
  controllerCopy = controller;
  navController = [(MBFollowupPrebuddyViewController *)self navController];

  if (navController)
  {
    [controllerCopy setModalPresentationStyle:0];
    navController2 = [(MBFollowupPrebuddyViewController *)self navController];
    v9 = controllerCopy;
    v7 = [NSArray arrayWithObjects:&v9 count:1];

    [navController2 setViewControllers:v7 animated:0];
  }

  else
  {
    v8 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];

    [(MBFollowupPrebuddyViewController *)self setNavController:v8];
    [v8 setModalPresentationStyle:0];
    [v8 setModalInPresentation:1];
    [(MBFollowupPrebuddyViewController *)self presentViewController:v8 animated:0 completion:0];
  }
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  loadingViewController = [(MBFollowupPrebuddyViewController *)self loadingViewController];
  [loadingViewController stopAnimating];

  v6 = MBLocalizedStringFromTable();
  v7 = MBLocalizedStringFromTable();
  v8 = MBLocalizedStringFromTable();
  domain = [errorCopy domain];
  v10 = _ICQMegaBackupErrorDomain;
  if ([domain isEqualToString:_ICQMegaBackupErrorDomain])
  {
    code = [errorCopy code];

    if (code == 5)
    {
      v12 = MGGetBoolAnswer();
      v13 = @"WIFI";
      if (v12)
      {
        v13 = @"WLAN";
      }

      v14 = v13;
      domain5 = objc_opt_new();
      v16 = +[ACAccountStore defaultStore];
      aa_primaryAppleAccount = [v16 aa_primaryAppleAccount];
      v18 = [domain5 isBackupOnCellularAllowedWithAccount:aa_primaryAppleAccount error:0];

      if (v18)
      {
        v19 = @"MB_PREBUDDY_NETWORK_%@_CELLULAR_ERROR_TITLE";
      }

      else
      {
        v19 = @"MB_PREBUDDY_NETWORK_%@_ERROR_TITLE";
      }

      v20 = [NSString stringWithFormat:v19, v14];

      v21 = MBLocalizedStringFromTable();

      v22 = 0;
      v7 = 0;
      goto LABEL_29;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v10])
  {
    code2 = [errorCopy code];

    if (code2 == 6)
    {
LABEL_27:
      v21 = MBLocalizedStringFromTable();

      v27 = MBLocalizedStringFromTable();

      v28 = MBLocalizedStringFromTable();
      v22 = 0;
      domain5 = v8;
      goto LABEL_28;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    code3 = [errorCopy code];

    if (code3 == 6)
    {
      v21 = MBLocalizedStringFromTable();

      v27 = MBLocalizedStringFromTable();

      v28 = MBLocalizedStringFromTable();
      domain5 = v8;
      v22 = 1;
LABEL_28:
      v8 = v28;
      v7 = v27;
LABEL_29:
      v6 = v21;
      goto LABEL_30;
    }
  }

  else
  {
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    code4 = [errorCopy code];

    if (code4 == 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  domain5 = [errorCopy domain];
  if ([domain5 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    if ([errorCopy code] == 3)
    {
    }

    else
    {
      code5 = [errorCopy code];

      if (code5 != 4)
      {
        v22 = 0;
        goto LABEL_31;
      }
    }

    goto LABEL_27;
  }

  v22 = 0;
LABEL_30:

LABEL_31:
  v32 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v33 = MBPrebuddyAlertIcon();
  [v32 setImage:v33];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000ACE8;
  v37[3] = &unk_10001C9F0;
  v38 = v22;
  v37[4] = self;
  v34 = [UIAlertAction actionWithTitle:v8 style:0 handler:v37];
  [v32 addAction:v34];
  navController = [(MBFollowupPrebuddyViewController *)self navController];
  visibleViewController = [navController visibleViewController];
  [visibleViewController presentViewController:v32 animated:1 completion:0];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  identifier = [actionCopy identifier];
  v12 = [identifier isEqualToString:@"ExtendMegaBackupExpirationFollowUpIdentifier"];

  if (v12)
  {
    completionCopy[2](completionCopy, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B4B8;
    block[3] = &unk_10001C9C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10000B548;
    v53[3] = &unk_10001C6D0;
    v53[4] = self;
    [(MBFollowupPrebuddyViewController *)self _extendExpirationDate:v53];
    goto LABEL_18;
  }

  identifier2 = [actionCopy identifier];
  v14 = [identifier2 isEqualToString:@"TrackOrderFollowUpIdentifier"];

  if (v14)
  {
    v15 = [NSURL URLWithString:@"https://www.apple.com/shop/orders/list"];
    v16 = +[LSApplicationWorkspace defaultWorkspace];
    v52 = 0;
    v17 = [v16 openURL:v15 withOptions:0 error:&v52];
    v18 = v52;

    if ((v17 & 1) == 0)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to open track orders URL: %@", buf, 0xCu);
LABEL_15:
        _MBLog();
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  identifier3 = [actionCopy identifier];
  v21 = [identifier3 isEqualToString:@"TurnOnAppsUsingiCloudFollowUpIdentifier"];

  if (v21)
  {
    v15 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass"];
    v22 = +[LSApplicationWorkspace defaultWorkspace];
    v51 = 0;
    v23 = [v22 openSensitiveURL:v15 withOptions:0 error:&v51];
    v18 = v51;

    if ((v23 & 1) == 0)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to open iCloud sync URL: %@", buf, 0xCu);
        goto LABEL_15;
      }

LABEL_16:
    }

LABEL_17:
    completionCopy[2](completionCopy, 1);

    goto LABEL_18;
  }

  identifier4 = [actionCopy identifier];
  v25 = [identifier4 isEqualToString:@"TurnOnAppsBackingUpFollowUpIdentifier"];

  if (v25)
  {
    v15 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/LOCAL_BACKUP"];
    v26 = +[LSApplicationWorkspace defaultWorkspace];
    v50 = 0;
    v27 = [v26 openSensitiveURL:v15 withOptions:0 error:&v50];
    v18 = v50;

    if ((v27 & 1) == 0)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to open backup toggles URL: %@", buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v28 = objc_opt_new();
  v29 = +[NSDate now];
  v49 = 0;
  v30 = [v28 setPrebuddyUIDeltaTelemetry:@"EnterPrebuddyUIDateDelta" date:v29 error:&v49];
  v31 = v49;

  if ((v30 & 1) == 0)
  {
    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = @"EnterPrebuddyUIDateDelta";
      v57 = 2112;
      v58 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to set telemetry %@: %@", buf, 0x16u);
      v42 = @"EnterPrebuddyUIDateDelta";
      v43 = v31;
      _MBLog();
    }
  }

  userInfo = [actionCopy userInfo];
  v34 = [userInfo objectForKeyedSubscript:MBPrebuddyFollowUpIsManualSignalKey];
  -[MBFollowupPrebuddyViewController setFromManualSignal:](self, "setFromManualSignal:", [v34 BOOLValue]);

  [(MBFollowupPrebuddyViewController *)self _fetchDeepLinkURL];
  _entryPoint = [(MBFollowupPrebuddyViewController *)self _entryPoint];
  v48 = 0;
  LOBYTE(v34) = [v28 setEntryPointForMegaBackupTelemetry:_entryPoint error:&v48];
  v36 = v48;
  if ((v34 & 1) == 0)
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v56 = _entryPoint;
      v57 = 2112;
      v58 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to set EntryPoint for MegaBackup telemetry to %ld: %@", buf, 0x16u);
      _MBLog();
    }
  }

  v38 = objc_alloc_init(MBMegaBackupEligibilityManager);
  v39 = v38;
  if (self->_deepLinkURL && [(MBMegaBackupEligibilityManager *)v38 needsAccountSignIn])
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000B5E4;
    v47[3] = &unk_10001C9C8;
    v47[4] = self;
    dispatch_async(&_dispatch_main_q, v47);
    _xpcQueue = [(MBFollowupPrebuddyViewController *)self _xpcQueue];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10000B674;
    v44[3] = &unk_10001CA40;
    v44[4] = self;
    v45 = v39;
    v46 = _entryPoint;
    v41 = v39;
    dispatch_async(_xpcQueue, v44);

    [(MBFollowupPrebuddyViewController *)self setFollowupItem:itemCopy];
    completionCopy[2](completionCopy, 0);
  }

LABEL_18:
}

- (void)_extendExpirationDate:(id)date
{
  dateCopy = date;
  v5 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v7 = objc_opt_new();
    backupDeviceUUID = [v7 backupDeviceUUID];
    v9 = +[NSDate now];
    v18 = 0;
    v10 = [v7 setPrebuddyUIDeltaTelemetry:@"MegaBackupRefreshDelta" date:v9 error:&v18];
    v11 = v18;

    if ((v10 & 1) == 0)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = @"MegaBackupRefreshDelta";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set telemetry %@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    v13 = objc_alloc_init(_ICQMegaBackupManager);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000BAB0;
    v15[3] = &unk_10001CAB8;
    v16 = v7;
    v17 = dateCopy;
    v15[4] = self;
    v14 = v7;
    [v13 extendExpirationForAccount:aa_primaryAppleAccount deviceBackupUUID:backupDeviceUUID requestedExpirationDate:0 queue:&_dispatch_main_q completion:v15];
  }

  else
  {
    (*(dateCopy + 2))(dateCopy, 0);
  }
}

- (void)_beginBackup:(id)backup
{
  backupCopy = backup;
  _xpcQueue = [(MBFollowupPrebuddyViewController *)self _xpcQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C328;
  v7[3] = &unk_10001C898;
  v7[4] = self;
  v8 = backupCopy;
  v6 = backupCopy;
  dispatch_async(_xpcQueue, v7);
}

- (BOOL)_showExpensiveNetworkPromptBeforeNextViewController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_opt_new();
  path = [v5 path];
  interface = [path interface];
  isExpensive = [interface isExpensive];

  if (isExpensive)
  {
    [(MBFollowupPrebuddyViewController *)self setExpensiveNetwork:1];
    v9 = MBLocalizedStringFromTable();
    v10 = MBLocalizedStringFromTable();
    v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = MBPrebuddyAlertIcon();
    [v11 setImage:v12];

    v13 = MBLocalizedStringFromTable();
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:&stru_10001CAD8];
    [v11 addAction:v14];

    v15 = MBLocalizedStringFromTable();
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000C7BC;
    v23 = &unk_10001CB50;
    selfCopy = self;
    v25 = controllerCopy;
    v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:&v20];
    [v11 addAction:{v16, v20, v21, v22, v23, selfCopy}];

    navController = [(MBFollowupPrebuddyViewController *)self navController];
    visibleViewController = [navController visibleViewController];
    [visibleViewController presentViewController:v11 animated:1 completion:0];
  }

  return isExpensive;
}

- (int64_t)_prebuddyTelemetryForStep:(int64_t)step
{
  if (step < 6)
  {
    return step + 1;
  }

  else
  {
    return 0;
  }
}

- (void)mb_didTapNextFromViewController:(id)controller
{
  controllerCopy = controller;
  mb_step = [controllerCopy mb_step];
  _telemetryQueue = [(MBFollowupPrebuddyViewController *)self _telemetryQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CB68;
  v9[3] = &unk_10001CB78;
  v9[4] = self;
  v9[5] = mb_step;
  dispatch_async(_telemetryQueue, v9);

  v7 = 0;
  if (mb_step > 1)
  {
    if ((mb_step - 2) < 2)
    {
      _viewControllerAfterExtraStorageOffer = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterExtraStorageOffer];
LABEL_10:
      v7 = _viewControllerAfterExtraStorageOffer;
      goto LABEL_11;
    }

    if (mb_step == 4)
    {
      _viewControllerAfterExtraStorageOffer = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
      goto LABEL_10;
    }

LABEL_11:
    [(MBFollowupPrebuddyViewController *)self _presentNextViewController:v7];

    goto LABEL_12;
  }

  if (!mb_step)
  {
    [(MBFollowupPrebuddyViewController *)self setNeedsAccountSignIn:0];
    [(MBFollowupPrebuddyViewController *)self setAltDSIDForHSA2Upgrade:0];
    _viewControllerAfterExtraStorageOffer = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterGettingStarted:controllerCopy];
    goto LABEL_10;
  }

  if (mb_step != 1)
  {
    goto LABEL_11;
  }

  [(MBFollowupPrebuddyViewController *)self prebuddyCancel:self];
LABEL_12:
}

- (void)mb_didTapCancelFromViewController:(id)controller
{
  controllerCopy = controller;
  mb_step = [controllerCopy mb_step];
  if (mb_step >= 4)
  {
    if (mb_step == 4)
    {
      _viewControllerAfterMoveAllAppsAndData = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
    }

    else
    {
      if (mb_step == 5)
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "mb_didTapCancelFromViewController: should not be here.", v8, 2u);
          _MBLog();
        }
      }

      _viewControllerAfterMoveAllAppsAndData = 0;
    }

    [(MBFollowupPrebuddyViewController *)self _presentNextViewController:_viewControllerAfterMoveAllAppsAndData];
  }

  else
  {
    [(MBFollowupPrebuddyViewController *)self prebuddyCancel:controllerCopy];
  }
}

- (void)_presentNextViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy mb_step] == 5)
  {
    [(MBFollowupPrebuddyViewController *)self setExpensiveNetwork:0];
    if (![(MBFollowupPrebuddyViewController *)self _showExpensiveNetworkPromptBeforeNextViewController:controllerCopy])
    {
      v5 = dispatch_semaphore_create(0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000CF44;
      v15[3] = &unk_10001CB28;
      v15[4] = self;
      v16 = controllerCopy;
      v6 = v5;
      v17 = v6;
      [(MBFollowupPrebuddyViewController *)self _beginBackup:v15];
      v7 = dispatch_time(0, 300000000);
      if (dispatch_semaphore_wait(v6, v7))
      {
        navController = [(MBFollowupPrebuddyViewController *)self navController];
        topViewController = [navController topViewController];
        loadingViewController = [(MBFollowupPrebuddyViewController *)self loadingViewController];
        v11 = [topViewController isEqual:loadingViewController];

        if ((v11 & 1) == 0)
        {
          navController2 = [(MBFollowupPrebuddyViewController *)self navController];
          loadingViewController2 = [(MBFollowupPrebuddyViewController *)self loadingViewController];
          [navController2 pushViewController:loadingViewController2 animated:1];
        }
      }
    }
  }

  else if (controllerCopy)
  {
    navController3 = [(MBFollowupPrebuddyViewController *)self navController];
    [navController3 pushViewController:controllerCopy animated:1];
  }

  else
  {
    [(MBFollowupPrebuddyViewController *)self prebuddyDone:self];
  }
}

@end