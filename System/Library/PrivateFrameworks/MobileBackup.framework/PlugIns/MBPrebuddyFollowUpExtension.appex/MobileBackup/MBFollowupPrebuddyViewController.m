@interface MBFollowupPrebuddyViewController
- (BOOL)_hasDisabledCategories;
- (BOOL)_showExpensiveNetworkPromptBeforeNextViewController:(id)a3;
- (id)_dateOfLastBackup;
- (id)_disabledBackupDomains;
- (id)_disabledSyncCategories;
- (id)_doneViewController;
- (id)_extraStorageOfferViewController;
- (id)_gettingStartedViewController;
- (id)_initialViewController;
- (id)_moveAllAppsAndDataViewControllerWithDisabledSyncCategories:(id)a3 disabledBackupDomains:(id)a4;
- (id)_startTransferViewController;
- (id)_telemetryQueue;
- (id)_viewControllerAfterExtraStorageOffer;
- (id)_viewControllerAfterGettingStarted:(id)a3;
- (id)_xpcQueue;
- (int64_t)_entryPoint;
- (int64_t)_prebuddyTelemetryForStep:(int64_t)a3;
- (void)_beginBackup:(id)a3;
- (void)_extendExpirationDate:(id)a3;
- (void)_fetchDeepLinkURL;
- (void)_presentError:(id)a3;
- (void)_presentNavigationViewControllerWithRootViewController:(id)a3;
- (void)_presentNextViewController:(id)a3;
- (void)mb_didTapCancelFromViewController:(id)a3;
- (void)mb_didTapNextFromViewController:(id)a3;
- (void)prebuddyCancel:(id)a3;
- (void)prebuddyDone:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
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
  v3 = [v2 dateOfLastBackup];

  v4 = objc_opt_new();
  [v4 setDateStyle:2];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (int64_t)_entryPoint
{
  v3 = [(MBFollowupPrebuddyViewController *)self deepLinkURL];

  if (v3)
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
  v3 = [(MBFollowupPrebuddyViewController *)self _disabledSyncCategories];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MBFollowupPrebuddyViewController *)self _disabledBackupDomains];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (id)_initialViewController
{
  if (self->_eligibilityStatus == 2)
  {
    if (self->_needsTemporaryStorage)
    {
      v3 = [(MBFollowupPrebuddyViewController *)self _extraStorageOfferViewController];
      goto LABEL_19;
    }

    if ([(MBFollowupPrebuddyViewController *)self needsAccountSignIn])
    {
      goto LABEL_18;
    }

    v9 = [(MBFollowupPrebuddyViewController *)self altDSIDForHSA2Upgrade];
    if (!v9 && ![(MBFollowupPrebuddyViewController *)self _hasDisabledCategories])
    {
      if (![(MBFollowupPrebuddyViewController *)self needsBackupEnabled])
      {
        v3 = [(MBFollowupPrebuddyViewController *)self _doneViewController];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v4 = [(NSError *)self->_eligibilityError domain];
  v5 = [v4 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"];

  if (v5)
  {
    v6 = [(NSError *)self->_eligibilityError code];
    if (v6 == 5)
    {
      [(MBFollowupPrebuddyViewController *)self setInitiallyNeededHSA2Upgrade:1];
      v9 = [(NSError *)self->_eligibilityError userInfo];
      v10 = [v9 objectForKeyedSubscript:@"MBMegaBackupEligibilityErrorUserInfoAltDSIDKey"];
      [(MBFollowupPrebuddyViewController *)self setAltDSIDForHSA2Upgrade:v10];

LABEL_17:
      goto LABEL_18;
    }

    if (v6 == 1)
    {
      [(MBFollowupPrebuddyViewController *)self setNoInitialAccount:1];
      [(MBFollowupPrebuddyViewController *)self setNeedsAccountSignIn:1];
LABEL_18:
      v3 = [(MBFollowupPrebuddyViewController *)self _gettingStartedViewController];
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

  v3 = 0;
LABEL_19:

  return v3;
}

- (id)_gettingStartedViewController
{
  v3 = [MBPrebuddyGettingStartedViewController alloc];
  v4 = [(MBFollowupPrebuddyViewController *)self _entryPoint];
  v5 = [(MBFollowupPrebuddyViewController *)self deepLinkURL];
  v6 = [(MBFollowupPrebuddyViewController *)self needsAccountSignIn];
  v7 = [(MBFollowupPrebuddyViewController *)self altDSIDForHSA2Upgrade];
  v8 = [(MBPrebuddyGettingStartedViewController *)v3 initWithFlow:self entryPoint:v4 deepLinkURL:v5 needsAccountSignIn:v6 altDSIDForHSA2Upgrade:v7];

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

- (id)_moveAllAppsAndDataViewControllerWithDisabledSyncCategories:(id)a3 disabledBackupDomains:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MBPrebuddyDisabledDataclassesViewController alloc] initWithFlow:self disabledSyncCategories:v7 disabledBackupDomains:v6 needsTemporaryStorage:[(MBFollowupPrebuddyViewController *)self needsTemporaryStorage]];

  return v8;
}

- (id)_doneViewController
{
  v2 = [[MBPrebuddyDoneViewController alloc] initWithFlow:self];

  return v2;
}

- (id)_viewControllerAfterGettingStarted:(id)a3
{
  v4 = a3;
  self->_eligibilityStatus = [v4 eligibilityStatus];
  v5 = [v4 eligibilityError];
  eligibilityError = self->_eligibilityError;
  self->_eligibilityError = v5;

  self->_needsTemporaryStorage = [v4 needsTemporaryStorage];
  v7 = [v4 daysUntilExpiration];

  self->_daysUntilExpiration = v7;
  if ([(MBFollowupPrebuddyViewController *)self noInitialAccount]|| [(MBFollowupPrebuddyViewController *)self needsTemporaryStorage])
  {
    if (self->_eligibilityStatus == 2)
    {
      v8 = [(MBFollowupPrebuddyViewController *)self _startTransferViewController];
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

      v8 = 0;
    }
  }

  else
  {
    v8 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterExtraStorageOffer];
  }

  return v8;
}

- (id)_viewControllerAfterExtraStorageOffer
{
  v3 = [(MBFollowupPrebuddyViewController *)self _disabledSyncCategories];
  v4 = [v3 allObjects];

  v5 = [(MBFollowupPrebuddyViewController *)self _disabledBackupDomains];
  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    v6 = [(MBFollowupPrebuddyViewController *)self _moveAllAppsAndDataViewControllerWithDisabledSyncCategories:v4 disabledBackupDomains:v5];
  }

  else
  {
    v6 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
  }

  v7 = v6;

  return v7;
}

- (void)prebuddyDone:(id)a3
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

- (void)prebuddyCancel:(id)a3
{
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A2E4;
  block[3] = &unk_10001C9C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_presentNavigationViewControllerWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(MBFollowupPrebuddyViewController *)self navController];

  if (v5)
  {
    [v4 setModalPresentationStyle:0];
    v6 = [(MBFollowupPrebuddyViewController *)self navController];
    v9 = v4;
    v7 = [NSArray arrayWithObjects:&v9 count:1];

    [v6 setViewControllers:v7 animated:0];
  }

  else
  {
    v8 = [[UINavigationController alloc] initWithRootViewController:v4];

    [(MBFollowupPrebuddyViewController *)self setNavController:v8];
    [v8 setModalPresentationStyle:0];
    [v8 setModalInPresentation:1];
    [(MBFollowupPrebuddyViewController *)self presentViewController:v8 animated:0 completion:0];
  }
}

- (void)_presentError:(id)a3
{
  v4 = a3;
  v5 = [(MBFollowupPrebuddyViewController *)self loadingViewController];
  [v5 stopAnimating];

  v6 = MBLocalizedStringFromTable();
  v7 = MBLocalizedStringFromTable();
  v8 = MBLocalizedStringFromTable();
  v9 = [v4 domain];
  v10 = _ICQMegaBackupErrorDomain;
  if ([v9 isEqualToString:_ICQMegaBackupErrorDomain])
  {
    v11 = [v4 code];

    if (v11 == 5)
    {
      v12 = MGGetBoolAnswer();
      v13 = @"WIFI";
      if (v12)
      {
        v13 = @"WLAN";
      }

      v14 = v13;
      v15 = objc_opt_new();
      v16 = +[ACAccountStore defaultStore];
      v17 = [v16 aa_primaryAppleAccount];
      v18 = [v15 isBackupOnCellularAllowedWithAccount:v17 error:0];

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

  v23 = [v4 domain];
  if ([v23 isEqualToString:v10])
  {
    v24 = [v4 code];

    if (v24 == 6)
    {
LABEL_27:
      v21 = MBLocalizedStringFromTable();

      v27 = MBLocalizedStringFromTable();

      v28 = MBLocalizedStringFromTable();
      v22 = 0;
      v15 = v8;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v25 = [v4 domain];
  if ([v25 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    v26 = [v4 code];

    if (v26 == 6)
    {
      v21 = MBLocalizedStringFromTable();

      v27 = MBLocalizedStringFromTable();

      v28 = MBLocalizedStringFromTable();
      v15 = v8;
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

  v29 = [v4 domain];
  if ([v29 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    v30 = [v4 code];

    if (v30 == 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v15 = [v4 domain];
  if ([v15 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    if ([v4 code] == 3)
    {
    }

    else
    {
      v31 = [v4 code];

      if (v31 != 4)
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
  v35 = [(MBFollowupPrebuddyViewController *)self navController];
  v36 = [v35 visibleViewController];
  [v36 presentViewController:v32 animated:1 completion:0];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 identifier];
  v12 = [v11 isEqualToString:@"ExtendMegaBackupExpirationFollowUpIdentifier"];

  if (v12)
  {
    v10[2](v10, 0);
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

  v13 = [v9 identifier];
  v14 = [v13 isEqualToString:@"TrackOrderFollowUpIdentifier"];

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

  v20 = [v9 identifier];
  v21 = [v20 isEqualToString:@"TurnOnAppsUsingiCloudFollowUpIdentifier"];

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
    v10[2](v10, 1);

    goto LABEL_18;
  }

  v24 = [v9 identifier];
  v25 = [v24 isEqualToString:@"TurnOnAppsBackingUpFollowUpIdentifier"];

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

  v33 = [v9 userInfo];
  v34 = [v33 objectForKeyedSubscript:MBPrebuddyFollowUpIsManualSignalKey];
  -[MBFollowupPrebuddyViewController setFromManualSignal:](self, "setFromManualSignal:", [v34 BOOLValue]);

  [(MBFollowupPrebuddyViewController *)self _fetchDeepLinkURL];
  v35 = [(MBFollowupPrebuddyViewController *)self _entryPoint];
  v48 = 0;
  LOBYTE(v34) = [v28 setEntryPointForMegaBackupTelemetry:v35 error:&v48];
  v36 = v48;
  if ((v34 & 1) == 0)
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v56 = v35;
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
    v10[2](v10, 1);
  }

  else
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000B5E4;
    v47[3] = &unk_10001C9C8;
    v47[4] = self;
    dispatch_async(&_dispatch_main_q, v47);
    v40 = [(MBFollowupPrebuddyViewController *)self _xpcQueue];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10000B674;
    v44[3] = &unk_10001CA40;
    v44[4] = self;
    v45 = v39;
    v46 = v35;
    v41 = v39;
    dispatch_async(v40, v44);

    [(MBFollowupPrebuddyViewController *)self setFollowupItem:v8];
    v10[2](v10, 0);
  }

LABEL_18:
}

- (void)_extendExpirationDate:(id)a3
{
  v4 = a3;
  v5 = +[ACAccountStore defaultStore];
  v6 = [v5 aa_primaryAppleAccount];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v7 backupDeviceUUID];
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
    v17 = v4;
    v15[4] = self;
    v14 = v7;
    [v13 extendExpirationForAccount:v6 deviceBackupUUID:v8 requestedExpirationDate:0 queue:&_dispatch_main_q completion:v15];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_beginBackup:(id)a3
{
  v4 = a3;
  v5 = [(MBFollowupPrebuddyViewController *)self _xpcQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C328;
  v7[3] = &unk_10001C898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)_showExpensiveNetworkPromptBeforeNextViewController:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 path];
  v7 = [v6 interface];
  v8 = [v7 isExpensive];

  if (v8)
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
    v24 = self;
    v25 = v4;
    v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:&v20];
    [v11 addAction:{v16, v20, v21, v22, v23, v24}];

    v17 = [(MBFollowupPrebuddyViewController *)self navController];
    v18 = [v17 visibleViewController];
    [v18 presentViewController:v11 animated:1 completion:0];
  }

  return v8;
}

- (int64_t)_prebuddyTelemetryForStep:(int64_t)a3
{
  if (a3 < 6)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)mb_didTapNextFromViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 mb_step];
  v6 = [(MBFollowupPrebuddyViewController *)self _telemetryQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CB68;
  v9[3] = &unk_10001CB78;
  v9[4] = self;
  v9[5] = v5;
  dispatch_async(v6, v9);

  v7 = 0;
  if (v5 > 1)
  {
    if ((v5 - 2) < 2)
    {
      v8 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterExtraStorageOffer];
LABEL_10:
      v7 = v8;
      goto LABEL_11;
    }

    if (v5 == 4)
    {
      v8 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
      goto LABEL_10;
    }

LABEL_11:
    [(MBFollowupPrebuddyViewController *)self _presentNextViewController:v7];

    goto LABEL_12;
  }

  if (!v5)
  {
    [(MBFollowupPrebuddyViewController *)self setNeedsAccountSignIn:0];
    [(MBFollowupPrebuddyViewController *)self setAltDSIDForHSA2Upgrade:0];
    v8 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterGettingStarted:v4];
    goto LABEL_10;
  }

  if (v5 != 1)
  {
    goto LABEL_11;
  }

  [(MBFollowupPrebuddyViewController *)self prebuddyCancel:self];
LABEL_12:
}

- (void)mb_didTapCancelFromViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 mb_step];
  if (v5 >= 4)
  {
    if (v5 == 4)
    {
      v7 = [(MBFollowupPrebuddyViewController *)self _viewControllerAfterMoveAllAppsAndData];
    }

    else
    {
      if (v5 == 5)
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "mb_didTapCancelFromViewController: should not be here.", v8, 2u);
          _MBLog();
        }
      }

      v7 = 0;
    }

    [(MBFollowupPrebuddyViewController *)self _presentNextViewController:v7];
  }

  else
  {
    [(MBFollowupPrebuddyViewController *)self prebuddyCancel:v4];
  }
}

- (void)_presentNextViewController:(id)a3
{
  v4 = a3;
  if ([v4 mb_step] == 5)
  {
    [(MBFollowupPrebuddyViewController *)self setExpensiveNetwork:0];
    if (![(MBFollowupPrebuddyViewController *)self _showExpensiveNetworkPromptBeforeNextViewController:v4])
    {
      v5 = dispatch_semaphore_create(0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000CF44;
      v15[3] = &unk_10001CB28;
      v15[4] = self;
      v16 = v4;
      v6 = v5;
      v17 = v6;
      [(MBFollowupPrebuddyViewController *)self _beginBackup:v15];
      v7 = dispatch_time(0, 300000000);
      if (dispatch_semaphore_wait(v6, v7))
      {
        v8 = [(MBFollowupPrebuddyViewController *)self navController];
        v9 = [v8 topViewController];
        v10 = [(MBFollowupPrebuddyViewController *)self loadingViewController];
        v11 = [v9 isEqual:v10];

        if ((v11 & 1) == 0)
        {
          v12 = [(MBFollowupPrebuddyViewController *)self navController];
          v13 = [(MBFollowupPrebuddyViewController *)self loadingViewController];
          [v12 pushViewController:v13 animated:1];
        }
      }
    }
  }

  else if (v4)
  {
    v14 = [(MBFollowupPrebuddyViewController *)self navController];
    [v14 pushViewController:v4 animated:1];
  }

  else
  {
    [(MBFollowupPrebuddyViewController *)self prebuddyDone:self];
  }
}

@end