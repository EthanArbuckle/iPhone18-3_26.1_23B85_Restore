@interface IDSRestrictions
+ (IDSRestrictions)sharedInstance;
- (BOOL)_isDisabledService:(id)a3;
- (BOOL)launchServiceIsAvailable;
- (BOOL)shouldDisableAccount:(id)a3;
- (BOOL)shouldDisableService:(id)a3;
- (IDSRestrictions)init;
- (unint64_t)_restrictionReasonForService:(id)a3;
- (unint64_t)restrictionReasonForService:(id)a3;
- (void)_loadInitialAppInstallState;
- (void)_managedPrefsNotification:(id)a3;
- (void)_setRestrictionReason:(unint64_t)a3 forService:(id)a4;
- (void)_updateParentalSettings;
- (void)_updateParentalSettingsIfFTInstallChanged;
- (void)_updateParentalSettingsIfMessagesInstallChanged;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)refreshStateForAccount:(id)a3;
- (void)updateAccountActivation;
@end

@implementation IDSRestrictions

+ (IDSRestrictions)sharedInstance
{
  if (qword_100CBD470 != -1)
  {
    sub_100921154();
  }

  if (qword_100CBD478 != -1)
  {
    sub_100921168();
  }

  if (qword_100CBD480 != -1)
  {
    sub_10092117C();
  }

  v2 = qword_100CBD488;

  return v2;
}

- (IDSRestrictions)init
{
  v10.receiver = self;
  v10.super_class = IDSRestrictions;
  v2 = [(IDSRestrictions *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    parentalControls = v2->_parentalControls;
    v2->_parentalControls = v3;

    [(IDSRestrictions *)v2 _loadInitialAppInstallState];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_managedPrefsNotification:" name:kCFManagedPreferencesMCXNotificationName object:kCFManagedPreferencesMCXObjectName];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceRegistrationCapabilityChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceCapabilityChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceRestictionsChangedNotification object:0];
  }

  return v2;
}

- (BOOL)launchServiceIsAvailable
{
  v2 = +[LSDatabaseContext sharedDatabaseContext];
  v7 = 0;
  v3 = [v2 startAccessingWithOptions:1 error:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LaunchServices is not available yet, waiting on migration {error: %@}", buf, 0xCu);
    }
  }

  return v3;
}

- (void)_loadInitialAppInstallState
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.facetime"];
    v5 = [v3 objectForKey:v4];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.MobileSMS"];
    v8 = [v6 objectForKey:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 BOOLValue];
    }

    else
    {
      v9 = 1;
    }

    self->_cachedFTInstallState = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 BOOLValue];
    }

    else
    {
      v10 = 1;
    }

    self->_cachedMessagesInstallState = v10;
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    applicationWorkspace = self->_applicationWorkspace;
    self->_applicationWorkspace = v11;

    [(LSApplicationWorkspace *)self->_applicationWorkspace addObserver:self];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100495898;
    v18[3] = &unk_100BD6ED0;
    v18[4] = self;
    v13 = objc_retainBlock(v18);
    if ([(IDSRestrictions *)self launchServiceIsAvailable])
    {
      (v13[2])(v13);
    }

    else
    {
      v14 = +[IDSDataMigrationTracker sharedInstance];
      v15 = [v14 performMigrationIfNeeded];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100495A74;
      v16[3] = &unk_100BDAD00;
      v16[4] = self;
      v17 = v13;
      [v15 registerResultBlock:v16];
    }
  }
}

- (void)_updateParentalSettingsIfFTInstallChanged
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100495BE8;
  v8[3] = &unk_100BD6ED0;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  if ([(IDSRestrictions *)self launchServiceIsAvailable])
  {
    (v3[2])(v3);
  }

  else
  {
    v4 = +[IDSDataMigrationTracker sharedInstance];
    v5 = [v4 performMigrationIfNeeded];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100495DD4;
    v6[3] = &unk_100BD9940;
    v7 = v3;
    [v5 registerResultBlock:v6];
  }
}

- (void)_updateParentalSettingsIfMessagesInstallChanged
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100495F14;
  v8[3] = &unk_100BD6ED0;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  if ([(IDSRestrictions *)self launchServiceIsAvailable])
  {
    (v3[2])(v3);
  }

  else
  {
    v4 = +[IDSDataMigrationTracker sharedInstance];
    v5 = [v4 performMigrationIfNeeded];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100496100;
    v6[3] = &unk_100BD9940;
    v7 = v3;
    [v5 registerResultBlock:v6];
  }
}

- (BOOL)_isDisabledService:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_parentalControls objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)_restrictionReasonForService:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_parentalControls objectForKey:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_parentalControls objectForKey:v4];
    v7 = [v6 unsignedIntValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setRestrictionReason:(unint64_t)a3 forService:(id)a4
{
  parentalControls = self->_parentalControls;
  if (a3)
  {
    v6 = a4;
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  else
  {
    v7 = a4;
    [(NSMutableDictionary *)parentalControls removeObjectForKey:?];
  }
}

- (void)_updateParentalSettings
{
  v2 = self;
  v3 = !self->_active;
  if (!self->_active)
  {
    self->_active = 1;
  }

  v4 = objc_alloc_init(NSMutableSet);
  v5 = [(IDSRestrictions *)v2 _restrictionReasonForService:@"com.apple.ess"];
  v6 = +[FTDeviceSupport sharedInstance];
  if ([v6 faceTimeSupported])
  {
    v7 = +[FTDeviceSupport sharedInstance];
    if ([v7 faceTimeBlocked])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  if (_os_feature_enabled_impl() && !v2->_cachedFTInstallState)
  {
    v8 = 3;
  }

  if (v8 != v5)
  {
    [(IDSRestrictions *)v2 _setRestrictionReason:v8 forService:@"com.apple.ess"];
    [v4 addObject:@"com.apple.ess"];
    v3 = 1;
  }

  v9 = [(IDSRestrictions *)v2 _restrictionReasonForService:@"com.apple.private.ac"];
  v10 = +[FTDeviceSupport sharedInstance];
  if ([v10 callingSupported])
  {
    v11 = +[FTDeviceSupport sharedInstance];
    if ([v11 callingBlocked])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (_os_feature_enabled_impl() && !v2->_cachedFTInstallState)
  {
    v12 = 3;
  }

  if (v12 != v9)
  {
    [(IDSRestrictions *)v2 _setRestrictionReason:v12 forService:@"com.apple.private.ac"];
    [v4 addObject:@"com.apple.private.ac"];
    v3 = 1;
  }

  v13 = [(IDSRestrictions *)v2 _restrictionReasonForService:@"com.apple.private.alloy.facetime.multi"];
  v14 = +[FTDeviceSupport sharedInstance];
  if ([v14 multiwaySupported])
  {
    v15 = +[FTDeviceSupport sharedInstance];
    if ([v15 multiwayBlocked])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  if (_os_feature_enabled_impl() && !v2->_cachedFTInstallState)
  {
    v16 = 3;
  }

  if (v16 != v13)
  {
    [(IDSRestrictions *)v2 _setRestrictionReason:v16 forService:@"com.apple.private.alloy.facetime.multi"];
    [v4 addObject:@"com.apple.private.alloy.facetime.multi"];
    v3 = 1;
  }

  v17 = [(IDSRestrictions *)v2 _restrictionReasonForService:@"com.apple.madrid"];
  v18 = +[FTDeviceSupport sharedInstance];
  if ([v18 iMessageSupported])
  {
    v19 = +[FTDeviceSupport sharedInstance];
    if ([v19 iMessageBlocked])
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  if (v2->_cachedMessagesInstallState)
  {
    v21 = v20;
  }

  else
  {
    v21 = 3;
  }

  if (v21 != v17)
  {
    [(IDSRestrictions *)v2 _setRestrictionReason:v21 forService:@"com.apple.madrid"];
    [v4 addObject:@"com.apple.madrid"];
    v3 = 1;
  }

  obj = v3;
  v22 = +[IMRGLog registration];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(IDSRestrictions *)v2 active];
    v24 = @"NO";
    if (v23)
    {
      v24 = @"YES";
    }

    *buf = 138412290;
    v68 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IDSRestrictions - Active: %@", buf, 0xCu);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v25 = v2->_parentalControls;
  v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v61 + 1) + 8 * i);
        v31 = +[IMRGLog registration];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          [(NSMutableDictionary *)v2->_parentalControls objectForKey:v30];
          v33 = v32 = v2;
          v34 = [v33 unsignedLongValue];
          *buf = 138412546;
          v68 = v30;
          v69 = 2048;
          v70 = v34;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IDSRestrictions - %@ Restriction Reason: %lu", buf, 0x16u);

          v2 = v32;
        }
      }

      v27 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v27);
  }

  if (obj && v2->_shouldPostNotifications)
  {
    v35 = +[NSNotificationCenter defaultCenter];
    [v35 __mainThreadPostNotificationName:@"__kIDSRestrictionsChangedNotification" object:0];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obja = v49;
    v36 = [obja countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v58;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(obja);
          }

          v40 = *(*(&v57 + 1) + 8 * j);
          v41 = [(IDSRestrictions *)v2 _restrictionReasonForService:v40];
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100496960;
          v56[3] = &unk_100BDD6F8;
          v56[4] = v40;
          v56[5] = v41;
          v42 = objc_retainBlock(v56);
          (v42[2])(v42, v40);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v43 = +[IDSDServiceController sharedInstance];
          v44 = [v43 adHocServicesForIdentifier:v40];

          v45 = [v44 countByEnumeratingWithState:&v52 objects:v65 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v53;
            do
            {
              for (k = 0; k != v46; k = k + 1)
              {
                if (*v53 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                (v42[2])(v42, *(*(&v52 + 1) + 8 * k));
              }

              v46 = [v44 countByEnumeratingWithState:&v52 objects:v65 count:16];
            }

            while (v46);
          }
        }

        v37 = [obja countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v37);
    }
  }

  [(IDSRestrictions *)v2 updateAccountActivation];
}

- (void)updateAccountActivation
{
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [v3 accountsLoaded];
  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " Updating account activation if needed", buf, 2u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v3 accounts];
    v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      *&v8 = 138412290;
      v17 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (([v12 isAdHocAccount] & 1) == 0)
          {
            if ([v12 isEnabled] && -[IDSRestrictions shouldDisableAccount:](self, "shouldDisableAccount:", v12))
            {
              v13 = +[IMRGLog registration];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v17;
                v23 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSRestrictions - Disabling account: %@", buf, 0xCu);
              }

              v14 = [v12 uniqueID];
              [v3 disableAccountWithUniqueID:v14];

              [v12 setWasDisabledAutomatically:1];
            }

            else if (([v12 isEnabled] & 1) == 0 && !-[IDSRestrictions shouldDisableAccount:](self, "shouldDisableAccount:", v12) && objc_msgSend(v12, "wasDisabledAutomatically"))
            {
              v15 = +[IMRGLog registration];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v17;
                v23 = v12;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSRestrictions - Re-activating a disabled account: %@", buf, 0xCu);
              }

              v16 = [v12 uniqueID];
              [v3 enableAccountWithUniqueID:v16];
            }
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting on account activate, the account controller isn't ready yet", buf, 2u);
  }
}

- (BOOL)shouldDisableService:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(IDSRestrictions *)self active])
    {
      v5 = [v4 identifier];
      v6 = [(IDSRestrictions *)self _isDisabledService:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldDisableAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(IDSRestrictions *)self active])
    {
      v5 = [v4 service];
      v6 = [(IDSRestrictions *)self shouldDisableService:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)refreshStateForAccount:(id)a3
{
  v8 = a3;
  v4 = [v8 serviceType];
  v5 = IDSIsAnyFaceTimeRelatedRegistrationServiceType();

  if (v5)
  {
    [(IDSRestrictions *)self _updateParentalSettingsIfFTInstallChanged];
  }

  else
  {
    v6 = [v8 serviceType];
    v7 = IDSIsiMessageRegistrationServiceType();

    if (v7)
    {
      [(IDSRestrictions *)self _updateParentalSettingsIfMessagesInstallChanged];
    }
  }
}

- (unint64_t)restrictionReasonForService:(id)a3
{
  v4 = a3;
  if (![v4 adHocServiceType] || (+[IDSDServiceController sharedInstance](IDSDServiceController, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "primaryServiceForAdhocServiceType:", objc_msgSend(v4, "adHocServiceType")), v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v6, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = -[IDSRestrictions _restrictionReasonForService:](self, "_restrictionReasonForService:", v7), v7, v6, !v8))
  {
    v9 = [v4 identifier];
    v8 = [(IDSRestrictions *)self _restrictionReasonForService:v9];
  }

  return v8;
}

- (void)_managedPrefsNotification:(id)a3
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "IDSRestrictions -  Manged prefs changed", v5, 2u);
  }

  [(IDSRestrictions *)self _updateParentalSettings];
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100497148;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049720C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v4, block);
}

@end