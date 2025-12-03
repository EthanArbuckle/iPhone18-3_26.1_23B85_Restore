@interface MBPrebuddyFollowUpController
+ (id)connection;
- (MBPrebuddyFollowUpController)init;
- (id)_expirationExtensionFollowUpAction;
- (id)_initialFollowUpActionTitle:(id)title;
- (id)_initialFollowUpMessage:(id)message needsTemporaryStorage:(BOOL)storage;
- (id)_initialFollowUpTitle:(id)title;
- (id)_initialNotificationMessage:(id)message;
- (id)_initialNotificationTitle:(id)title;
- (id)_newPrebuddyNotification:(id)notification;
- (id)_trackOrderFollowUpAction;
- (id)_turnOnAppsBackingUpFollowUpAction;
- (id)_turnOnAppsUsingiCloudFollowUpAction;
- (void)_finishXPCWithError:(id)error;
- (void)_postNewFollowup:(id)followup;
- (void)_updateFollowUpActions:(id)actions hasDisabledSyncCategories:(BOOL)categories hasDisabledBackupDomains:(BOOL)domains canTrackOrder:(BOOL)order allowsExpirationExtension:(BOOL)extension;
- (void)reset;
- (void)startFollowup:(id)followup;
- (void)updateFollowupWithBackupProgress:(id)progress account:(id)account;
@end

@implementation MBPrebuddyFollowUpController

- (MBPrebuddyFollowUpController)init
{
  v15.receiver = self;
  v15.super_class = MBPrebuddyFollowUpController;
  v2 = [(MBPrebuddyFollowUpController *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MBPrebuddyDisabledCategoriesManager);
    disabledCategoriesManager = v2->_disabledCategoriesManager;
    v2->_disabledCategoriesManager = v3;

    v5 = objc_alloc_init(NSNumberFormatter);
    percentageFormatter = v2->_percentageFormatter;
    v2->_percentageFormatter = v5;

    [(NSNumberFormatter *)v2->_percentageFormatter setNumberStyle:3];
    connection = [objc_opt_class() connection];
    if (!connection)
    {
      __assert_rtn("[MBPrebuddyFollowUpController init]", "MBPrebuddyFollowUpController.m", 57, "connection");
    }

    v8 = connection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001AFE18;
    v13[3] = &unk_1003BC010;
    v9 = v2;
    v14 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    proxy = v9->_proxy;
    v9->_proxy = v10;

    if (!v9->_proxy)
    {
      __assert_rtn("[MBPrebuddyFollowUpController init]", "MBPrebuddyFollowUpController.m", 62, "_proxy != nil");
    }
  }

  return v2;
}

- (void)startFollowup:(id)followup
{
  followupCopy = followup;
  if ((+[MBPrebuddyManager hasPrebuddyFollowUp]& 1) != 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=prebuddy-cfu= ignoring prebuddy signal, prebuddy backup already initiated", v6, 2u);
      _MBLog();
    }
  }

  else
  {
    [(MBPrebuddyFollowUpController *)self _postNewFollowup:followupCopy];
  }
}

- (id)_initialFollowUpTitle:(id)title
{
  v3 = [title objectForKeyedSubscript:@"MBServerInitialFollowUpTitleKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MBLocalizedStringFromTable();
  }

  v6 = v5;

  return v6;
}

- (id)_initialFollowUpMessage:(id)message needsTemporaryStorage:(BOOL)storage
{
  v4 = [message objectForKeyedSubscript:@"MBServerInitialFollowUpMessageKey"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MBLocalizedStringFromTable();
  }

  v7 = v6;

  return v7;
}

- (id)_initialFollowUpActionTitle:(id)title
{
  v3 = [title objectForKeyedSubscript:@"MBServerInitialFollowUpActionTitleKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MBLocalizedStringFromTable();
  }

  v6 = v5;

  return v6;
}

- (void)_postNewFollowup:(id)followup
{
  followupCopy = followup;
  v5 = objc_alloc_init(MBMegaBackupEligibilityManager);
  v6 = MBDeviceUUID();
  mb_backupIDByAddingCKPrefix = [v6 mb_backupIDByAddingCKPrefix];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B0130;
  v9[3] = &unk_1003C0CA8;
  v9[4] = self;
  v10 = followupCopy;
  v8 = followupCopy;
  [(MBMegaBackupEligibilityManager *)v5 checkMegaBackupEligibility:1 deepLinkURL:0 backupDeviceUUID:mb_backupIDByAddingCKPrefix queue:&_dispatch_main_q completion:v9];
}

- (void)updateFollowupWithBackupProgress:(id)progress account:(id)account
{
  progressCopy = progress;
  accountCopy = account;
  v62 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
  megaBackupExpirationDate = [(MBPrebuddyFollowUpController *)self megaBackupExpirationDate];
  if (megaBackupExpirationDate)
  {
    [progressCopy progress];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  state = [progressCopy state];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = megaBackupExpirationDate;
    *&buf[22] = 1024;
    LODWORD(v74) = state;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=prebuddy-cfu= Updating prebuddy CFU with progress: %.2f expiration:%@ state:%d", buf, 0x1Cu);
    v51 = megaBackupExpirationDate;
    v53 = state;
    v48 = v9;
    _MBLog();
  }

  v12 = 60 * [progressCopy estimatedTimeRemaining];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v74 = sub_1001B0E70;
  v75 = sub_1001B0E80;
  v76 = 0;
  if (v12 <= 0x93A7F)
  {
    proxy = self->_proxy;
    if (!proxy)
    {
      __assert_rtn("[MBPrebuddyFollowUpController updateFollowupWithBackupProgress:account:]", "MBPrebuddyFollowUpController.m", 159, "_proxy != nil");
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1001B0E88;
    v68[3] = &unk_1003BC038;
    v68[4] = buf;
    [(MBHelperServiceProtocol *)proxy localizedStringForEstimatedTimeRemaining:v68 reply:v12];
  }

  v14 = [MBCKManager sharedInstance:*&v48];
  v63 = [v14 disabledDomainInfosForAccount:accountCopy];

  if ([v63 count])
  {
    v15 = state == 6;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  v61 = v16;
  disabledCategoriesManager = self->_disabledCategoriesManager;
  v67 = 0;
  v18 = [(MBPrebuddyDisabledCategoriesManager *)disabledCategoriesManager disabledSyncDataclasses:&v67];
  v19 = v67;
  v20 = v19;
  if (!v18 && v19)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v69 = 138412290;
      *&v69[4] = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= Failed to get disabled sync categories to update follow up: %@", v69, 0xCu);
      v49 = v20;
      _MBLog();
    }

    v20 = 0;
  }

  v22 = [v18 count] != 0;
  if (state == 6)
  {
    v22 = 0;
  }

  v60 = v22;
  if (state == 6)
  {
    v23 = MBLocalizedStringFromTable();
    v28 = MBLocalizedStringFromTable();
LABEL_37:
    v37 = 0;
    goto LABEL_38;
  }

  if (v9 < 1.0)
  {
    v23 = MBLocalizedStringFromTable();
    v24 = MBLocale();
    [(NSNumberFormatter *)self->_percentageFormatter setLocale:v24];

    percentageFormatter = self->_percentageFormatter;
    v26 = [NSNumber numberWithDouble:v9];
    v27 = [(NSNumberFormatter *)percentageFormatter stringFromNumber:v26];

    if (*(*&buf[8] + 40))
    {
      v50 = v27;
      v52 = *(*&buf[8] + 40);
      MBLocalizedStringWithSubstitutions();
    }

    else
    {
      v50 = v27;
      MBLocalizedStringWithFormat();
    }
    v28 = ;

    goto LABEL_37;
  }

  megaBackupExpirationDate2 = [(MBPrebuddyFollowUpController *)self megaBackupExpirationDate];
  if (!megaBackupExpirationDate2)
  {
    __assert_rtn("[MBPrebuddyFollowUpController updateFollowupWithBackupProgress:account:]", "MBPrebuddyFollowUpController.m", 207, "self.megaBackupExpirationDate != nil");
  }

  v30 = +[NSCalendar currentCalendar];
  v31 = +[NSDate date];
  v59 = [v30 components:28 fromDate:v31];

  megaBackupExpirationDate3 = [(MBPrebuddyFollowUpController *)self megaBackupExpirationDate];
  v58 = [v30 components:28 fromDate:megaBackupExpirationDate3];

  v33 = [v30 dateFromComponents:v59];
  v57 = [v30 dateFromComponents:v58];
  v56 = v33;
  if ([v33 compare:?] == -1 && (+[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isDate:inSameDayAsDate:", v33, v57), v34, !v35))
  {
    v23 = MBLocalizedStringFromTable();
    v55 = v57;
    v54 = v33;
    v44 = +[NSCalendar currentCalendar];
    v45 = [v44 components:16 fromDate:v54 toDate:v55 options:0];

    v46 = [v45 day];
    v37 = v46 < 4;
    *v69 = 0;
    *&v69[8] = v69;
    *&v69[16] = 0x3032000000;
    v70 = sub_1001B0E70;
    v71 = sub_1001B0E80;
    v72 = &stru_1003C3430;
    v47 = self->_proxy;
    if (!v47)
    {
      __assert_rtn("[MBPrebuddyFollowUpController updateFollowupWithBackupProgress:account:]", "MBPrebuddyFollowUpController.m", 232, "_proxy != nil");
    }

    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1001B0F7C;
    v66[3] = &unk_1003BC038;
    v66[4] = v69;
    [(MBHelperServiceProtocol *)v47 localizedStringForCountdownFrom:v54 toDate:v55 reply:v66];
    v50 = *(*&v69[8] + 40);
    v28 = MBLocalizedStringWithSubstitutions();
    _Block_object_dispose(v69, 8);

    v38 = 0;
  }

  else
  {
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 138543618;
      *&v69[4] = v33;
      *&v69[12] = 2114;
      *&v69[14] = v57;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=prebuddy-cfu= Mega Backup Expired, resetting: %{public}@ %{public}@", v69, 0x16u);
      v50 = v33;
      v52 = v57;
      _MBLog();
    }

    [(MBPrebuddyFollowUpController *)self reset];
    v37 = 0;
    v28 = 0;
    v23 = 0;
    v38 = 1;
  }

  if (v38)
  {
    v39 = v20;
    goto LABEL_45;
  }

LABEL_38:
  v40 = [MBPrebuddyManager baseFollowupItem:v50];
  [v40 setTitle:v23];
  [v40 setInformativeText:v28];
  if (v9 < 1.0)
  {
    v41 = +[MBPrebuddyManager backupToCloudImageName];
    [v40 setBundleIconName:v41];
  }

  [(MBPrebuddyFollowUpController *)self _updateFollowUpActions:v40 hasDisabledSyncCategories:v60 hasDisabledBackupDomains:v61 canTrackOrder:0 allowsExpirationExtension:v37];
  v65 = v20;
  v42 = [v62 postFollowUpItem:v40 error:&v65];
  v39 = v65;

  if ((v42 & 1) == 0)
  {
    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v69 = 138412290;
      *&v69[4] = v39;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= failed to post prebuddy follow up, error : %@", v69, 0xCu);
      _MBLog();
    }
  }

LABEL_45:
  _Block_object_dispose(buf, 8);
}

- (id)_initialNotificationTitle:(id)title
{
  v3 = [title objectForKeyedSubscript:@"MBServerInitialNotificationTitleKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MBLocalizedStringFromTable();
  }

  v6 = v5;

  return v6;
}

- (id)_initialNotificationMessage:(id)message
{
  v3 = [message objectForKeyedSubscript:@"MBServerInitialNotificationMessageKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MBLocalizedStringFromTable();
  }

  v6 = v5;

  return v6;
}

- (id)_newPrebuddyNotification:(id)notification
{
  notificationCopy = notification;
  v5 = objc_alloc_init(FLFollowUpNotification);
  v6 = [(MBPrebuddyFollowUpController *)self _initialNotificationTitle:notificationCopy];
  [v5 setTitle:v6];

  v7 = [(MBPrebuddyFollowUpController *)self _initialNotificationMessage:notificationCopy];

  [v5 setInformativeText:v7];
  [v5 setFrequency:0.0];
  v8 = +[NSMutableSet set];
  v11[0] = FLNotificationOptionForce;
  v11[1] = FLNotificationOptionNotificationCenter;
  v11[2] = FLNotificationOptionLockscreen;
  v11[3] = FLNotificationOptionBannerAlert;
  v11[4] = FLNotificationOptionExtensionActions;
  v9 = [NSArray arrayWithObjects:v11 count:5];
  [v8 addObjectsFromArray:v9];

  return v5;
}

- (void)reset
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=prebuddy-cfu= Clearing prebuddy follow up.", buf, 2u);
    _MBLog();
  }

  v3 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
  v7 = 0;
  v4 = [v3 clearPendingFollowUpItemsWithUniqueIdentifiers:&off_1003E2378 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= failed to clear prebuddy follow up, error : %@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)_updateFollowUpActions:(id)actions hasDisabledSyncCategories:(BOOL)categories hasDisabledBackupDomains:(BOOL)domains canTrackOrder:(BOOL)order allowsExpirationExtension:(BOOL)extension
{
  extensionCopy = extension;
  orderCopy = order;
  domainsCopy = domains;
  categoriesCopy = categories;
  actionsCopy = actions;
  v12 = objc_alloc_init(NSMutableArray);
  if (extensionCopy)
  {
    _expirationExtensionFollowUpAction = [(MBPrebuddyFollowUpController *)self _expirationExtensionFollowUpAction];
    [v12 addObject:_expirationExtensionFollowUpAction];

    if (!categoriesCopy)
    {
LABEL_3:
      if (!domainsCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!categoriesCopy)
  {
    goto LABEL_3;
  }

  _turnOnAppsUsingiCloudFollowUpAction = [(MBPrebuddyFollowUpController *)self _turnOnAppsUsingiCloudFollowUpAction];
  [v12 addObject:_turnOnAppsUsingiCloudFollowUpAction];

  if (!domainsCopy)
  {
LABEL_4:
    if (!orderCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  _turnOnAppsBackingUpFollowUpAction = [(MBPrebuddyFollowUpController *)self _turnOnAppsBackingUpFollowUpAction];
  [v12 addObject:_turnOnAppsBackingUpFollowUpAction];

  if (orderCopy)
  {
LABEL_5:
    _trackOrderFollowUpAction = [(MBPrebuddyFollowUpController *)self _trackOrderFollowUpAction];
    [v12 addObject:_trackOrderFollowUpAction];
  }

LABEL_6:
  [actionsCopy setActions:v12];
}

- (id)_expirationExtensionFollowUpAction
{
  v2 = MBLocalizedStringFromTable();
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setIdentifier:@"ExtendMegaBackupExpirationFollowUpIdentifier"];

  return v3;
}

- (id)_trackOrderFollowUpAction
{
  v2 = MBLocalizedStringFromTable();
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setIdentifier:@"TrackOrderFollowUpIdentifier"];

  return v3;
}

- (id)_turnOnAppsUsingiCloudFollowUpAction
{
  v2 = MBLocalizedStringFromTable();
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setIdentifier:@"TurnOnAppsUsingiCloudFollowUpIdentifier"];

  return v3;
}

- (id)_turnOnAppsBackingUpFollowUpAction
{
  v2 = MBLocalizedStringFromTable();
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setIdentifier:@"TurnOnAppsBackingUpFollowUpIdentifier"];

  return v3;
}

+ (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1004219A0)
  {
    v3 = qword_1004219A0;
  }

  else
  {
    if (qword_1004219B0 != -1)
    {
      dispatch_once(&qword_1004219B0, &stru_1003C0CC8);
    }

    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileBackup.MBHelperService"];
    [v4 setRemoteObjectInterface:qword_1004219A8];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001B18D8;
    v6[3] = &unk_1003BBFE8;
    v6[4] = selfCopy;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_1004219A0, v4);
    [v4 resume];
    v3 = qword_1004219A0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_finishXPCWithError:(id)error
{
  errorCopy = error;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = errorCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=prebuddy-cfu= MBPrebuddyFollowUpController finish XPC with error: %{public}@", buf, 0xCu);
    _MBLog();
  }
}

@end