@interface IXSUninstallAlert
- (BOOL)_onMainQueue_deleteButtonActionWithDisposition:(unint64_t *)a3 error:(id *)a4;
- (BOOL)appHasiCloudDataOrDocuments;
- (BOOL)isMDMRestrictedWithOrganizationName:(id *)a3;
- (IXSUninstallAlert)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4 removability:(unint64_t)a5 deletionIsRestricted:(BOOL)a6;
- (id)_localizedStringForKey:(id)a3 tableName:(id)a4 withFormatHint:(id)a5;
- (id)localizedStringForKey:(id)a3 withFormatHint:(id)a4;
- (void)_configureOptionalButtonForConfiguration:(id)a3;
- (void)_onMainQueue_displayAlertWithCompletion:(id)a3 uninstallAlertConfiguration:(id)a4;
- (void)_processUserNotification:(__CFUserNotification *)a3 withConfiguration:(id)a4 response:(unint64_t)a5 completion:(id)a6;
- (void)dealloc;
- (void)displayAlertWithCompletion:(id)a3;
- (void)displayAlertWithCompletion:(id)a3 uninstallAlertConfiguration:(id)a4;
@end

@implementation IXSUninstallAlert

- (IXSUninstallAlert)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4 removability:(unint64_t)a5 deletionIsRestricted:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v23.receiver = self;
  v23.super_class = IXSUninstallAlert;
  v13 = [(IXSUninstallAlert *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v15 = !a6;
    if (a5 != 1)
    {
      v15 = 0;
    }

    v13->_appIsRemovable = v15;
    v13->_appRemovability = a5;
    v13->_deletionIsRestricted = a6;
    objc_storeStrong(&v13->_appRecord, a3);
    objc_storeStrong(&v14->_bundleIdentifier, a4);
    v16 = +[IXGlobalConfiguration sharedInstance];
    v17 = [v16 frameworkURL];

    v14->_defaultStringsBundle = _CFBundleCreateUnique();
    if (![(IXSUninstallAlert *)v14 defaultStringsBundle])
    {
      v18 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 path];
        *buf = 136315394;
        v25 = "[IXSUninstallAlert initWithAppRecord:bundleIdentifier:removability:deletionIsRestricted:]";
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Failed to create default strings bundle from path %@", buf, 0x16u);
      }
    }

    defaultStringsTableName = v14->_defaultStringsTableName;
    v14->_defaultStringsTableName = @"IXUninstallAlert";

    typeDescription = v14->_typeDescription;
    v14->_typeDescription = @"Generic";

    *&v14->_needsArchiveOptionButton = 0;
    v14->_defaultButtonAppearsDestructive = 1;
  }

  return v14;
}

- (BOOL)appHasiCloudDataOrDocuments
{
  v3 = [(IXSUninstallAlert *)self appRecord];
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"com.apple.developer.icloud-services" ofClass:objc_opt_class()];

  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          v12 = v11;
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if (v13 && ![v12 caseInsensitiveCompare:{@"cloudkit", v19}])
          {
            v17 = 1;
            goto LABEL_20;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  if (qword_100121DE0 != -1)
  {
    sub_10009F520();
  }

  v14 = off_100121DD8;
  if (off_100121DD8)
  {
    v6 = [(IXSUninstallAlert *)self appRecord];
    v15 = [v6 entitlements];
    v16 = v14();
    v17 = [v16 count] != 0;

LABEL_20:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_onMainQueue_deleteButtonActionWithDisposition:(unint64_t *)a3 error:(id *)a4
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(IXSUninstallAlert *)self appIsRemovable])
  {
    v7 = 0;
    v8 = 1;
    v9 = 3;
  }

  else if ([(IXSUninstallAlert *)self needsArchiveOptionButton])
  {
    v7 = 0;
    v8 = 1;
    v9 = 2;
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009F548(self);
    }

    v11 = [(IXSUninstallAlert *)self bundleIdentifier];
    v7 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_deleteButtonActionWithDisposition:error:]", 358, @"IXErrorDomain", 0x16uLL, 0, 0, @"App with bundle ID %@ cannot be uninstalled", v12, v11);

    if (a4)
    {
      v13 = v7;
      v9 = 0;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }
  }

  *a3 = v9;

  return v8;
}

- (void)_processUserNotification:(__CFUserNotification *)a3 withConfiguration:(id)a4 response:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [IXSUninstallAlert stringForCFOptionFlag:a5];
    *buf = 136315650;
    v41 = "[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]";
    v42 = 2048;
    v43 = a5;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: User selected response: %lx - %@", buf, 0x20u);
  }

  if ((a5 & 3) >= 2)
  {
    if ((a5 & 3) == 3)
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v20 = 4;
      goto LABEL_11;
    }

    v21 = CFUserNotificationGetResponseDictionary(a3);
    objc_opt_class();
    v18 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = SBSUserNotificationButtonDefinitionResponseIndexKey;
      v24 = [v18 objectForKeyedSubscript:SBSUserNotificationButtonDefinitionResponseIndexKey];
      objc_opt_class();
      v19 = v24;
      if (objc_opt_isKindOfClass())
      {
        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v28 = [v19 unsignedIntegerValue];
        if (v28 < [v10 numButtons])
        {
          v29 = [v10 actionForButtonAtIndex:v28];
          (v29)[2](v29, v11);

          v17 = 0;
          goto LABEL_12;
        }

        v32 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v36 = [(IXSUninstallAlert *)self typeDescription];
          v37 = [(IXSUninstallAlert *)self bundleIdentifier];
          v38 = [v10 numButtons];
          *buf = 136316418;
          v41 = "[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]";
          v42 = 2112;
          v43 = v36;
          v44 = 2112;
          v45 = v37;
          v46 = 2048;
          v47 = v28;
          v48 = 2048;
          v49 = v38;
          v50 = 2112;
          v51 = 0;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Received an invalid response (kCFUserNotificationOtherResponse) from the %@ uninstall alert for app with bundleID %@, Index: %lu, numButtons: %lu : %@", buf, 0x3Eu);
        }

        v33 = [(IXSUninstallAlert *)self typeDescription];
        v34 = [(IXSUninstallAlert *)self bundleIdentifier];
        [v10 numButtons];
        v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 411, @"IXErrorDomain", 1uLL, 0, 0, @"Received an invalid response (kCFUserNotificationOtherResponse) from the %@ uninstall alert for app with bundleID %@, Index: %lu, numButtons: %lu", v35, v33);
      }

      else
      {
        v30 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10009F6C8();
        }

        v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 402, @"IXErrorDomain", 1uLL, 0, 0, @"Invalid response received for %@ key: %@", v31, v23);
      }

      goto LABEL_8;
    }

    v26 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10009F758();
    }

    v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 396, @"IXErrorDomain", 1uLL, 0, 0, @"Invalid response received from CFUserNotification: %@", v27, v18);
  }

  else
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009F5E4(self);
    }

    v15 = [(IXSUninstallAlert *)self typeDescription];
    v39 = [(IXSUninstallAlert *)self bundleIdentifier];
    v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 417, @"IXErrorDomain", 1uLL, 0, 0, @"Received unknown response %lx from the %@ uninstall alert for app with bundleID %@", v16, a5);

    v18 = 0;
  }

  v19 = 0;
LABEL_8:
  v20 = 0;
LABEL_11:
  v11[2](v11, v20, v17);
LABEL_12:
}

- (void)_onMainQueue_displayAlertWithCompletion:(id)a3 uninstallAlertConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  error = 0;
  responseFlags = 0;
  v8 = [(IXSUninstallAlert *)self notificationFlags];
  v9 = [v7 alertParameters];
  v10 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, v8, &error, v9);

  v11 = sub_1000031B0(off_100121958);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 136315394;
      v26 = "[IXSUninstallAlert _onMainQueue_displayAlertWithCompletion:uninstallAlertConfiguration:]";
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Showing user alert of type:%@", buf, 0x16u);
    }

    if (CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags))
    {
      v15 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009F7DC(self);
      }

      v16 = [(IXSUninstallAlert *)self typeDescription];
      v21 = [(IXSUninstallAlert *)self bundleIdentifier];
      v18 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_displayAlertWithCompletion:uninstallAlertConfiguration:]", 489, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to recieve notification response for %@ uninstall alert for app with bundle ID %@, Response: %d", v17, v16);

      v6[2](v6, 0, v18);
    }

    else
    {
      [(IXSUninstallAlert *)self _processUserNotification:v10 withConfiguration:v7 response:responseFlags completion:v6];
      v18 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009F8C0(self, &error);
    }

    v19 = [(IXSUninstallAlert *)self typeDescription];
    v22 = [(IXSUninstallAlert *)self bundleIdentifier];
    v18 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_displayAlertWithCompletion:uninstallAlertConfiguration:]", 479, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create %@ uninstall alert for app with bundle ID %@, error code %d", v20, v19);

    v6[2](v6, 0, v18);
  }
}

- (void)displayAlertWithCompletion:(id)a3 uninstallAlertConfiguration:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100046290;
  v9[3] = &unk_100102668;
  v10 = a4;
  v11 = v6;
  v9[4] = self;
  v7 = v10;
  v8 = v6;
  sub_100071134(&_dispatch_main_q, v9);
}

- (void)_configureOptionalButtonForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(IXSUninstallAlert *)self optionalButtonForNotRemovableAppLabel];
  v6 = [(IXSUninstallAlert *)self optionalButtonForNotRemovableAppActionURL];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:v5 buttonType:2];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100046474;
    v11[3] = &unk_100102690;
    v12 = v7;
    [v4 addButtonDefinition:v8 forAction:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (v5 | v6)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_FAULT))
    {
      v9 = [(IXSUninstallAlert *)self appRecord];
      v10 = [v9 bundleIdentifier];
      *buf = 136315906;
      v14 = "[IXSUninstallAlert _configureOptionalButtonForConfiguration:]";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_fault_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_FAULT, "%s: Required app label (%@) and action URL (%@) both to be non-nil for %@, but one was nil", buf, 0x2Au);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)displayAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [IXSUninstallAlertConfiguration alloc];
  v6 = [(IXSUninstallAlert *)self title];
  v7 = [(IXSUninstallAlert *)self message];
  v8 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:v6 message:v7];

  v9 = [(IXSUninstallAlert *)self appRecord];
  LODWORD(v7) = [v9 isDeletable];

  v10 = [IXSUninstallButtonConfiguration alloc];
  if (v7)
  {
    v11 = [(IXSUninstallAlert *)self defaultButtonLabel];
    v12 = [(IXSUninstallButtonConfiguration *)v10 initWithTitle:v11 buttonType:0];

    if ([(IXSUninstallAlert *)self defaultButtonAppearsDestructive])
    {
      [(IXSUninstallButtonConfiguration *)v12 setPresentationStyle:1];
    }

    v13 = [(IXSUninstallAlert *)self otherButtonLabel];

    if (v13)
    {
      v14 = [IXSUninstallButtonConfiguration alloc];
      v15 = [(IXSUninstallAlert *)self otherButtonLabel];
      v13 = [(IXSUninstallButtonConfiguration *)v14 initWithTitle:v15 buttonType:1];
    }

    v16 = [(IXSUninstallAlert *)self cancelButtonLabel];
    if (v16)
    {
      v17 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:v16 buttonType:2];
      v18 = v17;
      if (v13 && v17)
      {
        if ((![(IXSUninstallAlert *)self needsDemoteOptionButton]|| ![(IXSUninstallAlert *)self appIsRemovable]) && [(IXSUninstallAlert *)self needsDemoteOptionButton])
        {
          if (![(IXSUninstallAlert *)self appIsRemovable]&& [(IXSUninstallAlert *)self needsDemoteOptionButton])
          {
            [(IXSUninstallAlert *)self _configureOptionalButtonForConfiguration:v8];
          }

          goto LABEL_31;
        }

        if ([(IXSUninstallAlert *)self needsDemoteOptionButton])
        {
          if ([(IXSUninstallAlert *)self appRemovability]!= 3 && ![(IXSUninstallAlert *)self deletionIsRestricted])
          {
            [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v12 forAction:&stru_1001026B0];
          }

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1000469A8;
          v30[3] = &unk_100102690;
          v30[4] = self;
          v26 = v30;
          v27 = v8;
          v28 = v13;
        }

        else
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000469B4;
          v29[3] = &unk_100102690;
          v29[4] = self;
          [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v13 forAction:v29];
          if ([(IXSUninstallAlert *)self appRemovability]== 3 || [(IXSUninstallAlert *)self deletionIsRestricted])
          {
            goto LABEL_31;
          }

          v26 = &stru_1001026D0;
          v27 = v8;
          v28 = v12;
        }

        [(IXSUninstallAlertConfiguration *)v27 addButtonDefinition:v28 forAction:v26];
LABEL_31:
        v23 = &stru_1001026F0;
        v24 = v8;
        v25 = v18;
        goto LABEL_32;
      }

      if (v17)
      {
        [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v17 forAction:&stru_100102710];
        if (![(IXSUninstallAlert *)self appIsRemovable])
        {
          [(IXSUninstallAlert *)self _configureOptionalButtonForConfiguration:v8];
LABEL_33:

          goto LABEL_34;
        }

        v23 = &stru_100102730;
        v24 = v8;
        v25 = v12;
LABEL_32:
        [(IXSUninstallAlertConfiguration *)v24 addButtonDefinition:v25 forAction:v23];
        goto LABEL_33;
      }
    }

    [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v12 forAction:&stru_100102750];
LABEL_34:

    goto LABEL_35;
  }

  v19 = [(IXSUninstallAlert *)self cancelButtonLabel];
  v12 = [(IXSUninstallButtonConfiguration *)v10 initWithTitle:v19 buttonType:0];

  if ([(IXSUninstallAlert *)self needsArchiveOptionButton])
  {
    v20 = [IXSUninstallButtonConfiguration alloc];
    v21 = [(IXSUninstallAlert *)self otherButtonLabel];
    v22 = [(IXSUninstallButtonConfiguration *)v20 initWithTitle:v21 buttonType:1];

    [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v22 forAction:&stru_100102770];
  }

  [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v12 forAction:&stru_100102790];
LABEL_35:

  [(IXSUninstallAlert *)self displayAlertWithCompletion:v4 uninstallAlertConfiguration:v8];
}

- (id)_localizedStringForKey:(id)a3 tableName:(id)a4 withFormatHint:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSUninstallAlert *)self defaultStringsBundle];
  v12 = v11;
  v13 = v10;
  if (v11)
  {
    v13 = CFBundleCopyLocalizedString(v11, v8, 0, v9);
  }

  if (v13 == v8)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[IXSUninstallAlert _localizedStringForKey:tableName:withFormatHint:]";
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch localized string for key %@ from bundle %@ within table %@", &v17, 0x2Au);
    }

    v15 = v10;
    v13 = v15;
  }

  return v13;
}

- (id)localizedStringForKey:(id)a3 withFormatHint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IXSUninstallAlert *)self defaultStringsTableName];
  v9 = [(IXSUninstallAlert *)self _localizedStringForKey:v7 tableName:v8 withFormatHint:v6];

  return v9;
}

- (BOOL)isMDMRestrictedWithOrganizationName:(id *)a3
{
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [(IXSUninstallAlert *)self appRecord];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 isRemovalRestrictedByPolicyForApp:v7];

  if (v8)
  {
    v9 = [v5 managingOrganizationInformation];
    v10 = [v9 objectForKeyedSubscript:kMCCCOrganizationNameKey];
    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (a3 && v12)
    {
      v13 = v12;
      *a3 = v12;
    }
  }

  return v8;
}

- (void)dealloc
{
  defaultStringsBundle = self->_defaultStringsBundle;
  if (defaultStringsBundle)
  {
    CFRelease(defaultStringsBundle);
  }

  self->_defaultStringsBundle = 0;
  v4.receiver = self;
  v4.super_class = IXSUninstallAlert;
  [(IXSUninstallAlert *)&v4 dealloc];
}

@end