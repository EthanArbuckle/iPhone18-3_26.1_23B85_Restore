@interface IXSUninstallAlert
- (BOOL)_onMainQueue_deleteButtonActionWithDisposition:(unint64_t *)disposition error:(id *)error;
- (BOOL)appHasiCloudDataOrDocuments;
- (BOOL)isMDMRestrictedWithOrganizationName:(id *)name;
- (IXSUninstallAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier removability:(unint64_t)removability deletionIsRestricted:(BOOL)restricted;
- (id)_localizedStringForKey:(id)key tableName:(id)name withFormatHint:(id)hint;
- (id)localizedStringForKey:(id)key withFormatHint:(id)hint;
- (void)_configureOptionalButtonForConfiguration:(id)configuration;
- (void)_onMainQueue_displayAlertWithCompletion:(id)completion uninstallAlertConfiguration:(id)configuration;
- (void)_processUserNotification:(__CFUserNotification *)notification withConfiguration:(id)configuration response:(unint64_t)response completion:(id)completion;
- (void)dealloc;
- (void)displayAlertWithCompletion:(id)completion;
- (void)displayAlertWithCompletion:(id)completion uninstallAlertConfiguration:(id)configuration;
@end

@implementation IXSUninstallAlert

- (IXSUninstallAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier removability:(unint64_t)removability deletionIsRestricted:(BOOL)restricted
{
  recordCopy = record;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = IXSUninstallAlert;
  v13 = [(IXSUninstallAlert *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v15 = !restricted;
    if (removability != 1)
    {
      v15 = 0;
    }

    v13->_appIsRemovable = v15;
    v13->_appRemovability = removability;
    v13->_deletionIsRestricted = restricted;
    objc_storeStrong(&v13->_appRecord, record);
    objc_storeStrong(&v14->_bundleIdentifier, identifier);
    v16 = +[IXGlobalConfiguration sharedInstance];
    frameworkURL = [v16 frameworkURL];

    v14->_defaultStringsBundle = _CFBundleCreateUnique();
    if (![(IXSUninstallAlert *)v14 defaultStringsBundle])
    {
      v18 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        path = [frameworkURL path];
        *buf = 136315394;
        v25 = "[IXSUninstallAlert initWithAppRecord:bundleIdentifier:removability:deletionIsRestricted:]";
        v26 = 2112;
        v27 = path;
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
  appRecord = [(IXSUninstallAlert *)self appRecord];
  entitlements = [appRecord entitlements];
  v5 = [entitlements objectForKey:@"com.apple.developer.icloud-services" ofClass:objc_opt_class()];

  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    appRecord2 = v5;
    v7 = [appRecord2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(appRecord2);
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

        v8 = [appRecord2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    appRecord2 = [(IXSUninstallAlert *)self appRecord];
    entitlements2 = [appRecord2 entitlements];
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

- (BOOL)_onMainQueue_deleteButtonActionWithDisposition:(unint64_t *)disposition error:(id *)error
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

    bundleIdentifier = [(IXSUninstallAlert *)self bundleIdentifier];
    v7 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_deleteButtonActionWithDisposition:error:]", 358, @"IXErrorDomain", 0x16uLL, 0, 0, @"App with bundle ID %@ cannot be uninstalled", v12, bundleIdentifier);

    if (error)
    {
      v13 = v7;
      v9 = 0;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }
  }

  *disposition = v9;

  return v8;
}

- (void)_processUserNotification:(__CFUserNotification *)notification withConfiguration:(id)configuration response:(unint64_t)response completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [IXSUninstallAlert stringForCFOptionFlag:response];
    *buf = 136315650;
    v41 = "[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]";
    v42 = 2048;
    responseCopy = response;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: User selected response: %lx - %@", buf, 0x20u);
  }

  if ((response & 3) >= 2)
  {
    if ((response & 3) == 3)
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v20 = 4;
      goto LABEL_11;
    }

    v21 = CFUserNotificationGetResponseDictionary(notification);
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
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        if (unsignedIntegerValue < [configurationCopy numButtons])
        {
          v29 = [configurationCopy actionForButtonAtIndex:unsignedIntegerValue];
          (v29)[2](v29, completionCopy);

          v17 = 0;
          goto LABEL_12;
        }

        v32 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          typeDescription = [(IXSUninstallAlert *)self typeDescription];
          bundleIdentifier = [(IXSUninstallAlert *)self bundleIdentifier];
          numButtons = [configurationCopy numButtons];
          *buf = 136316418;
          v41 = "[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]";
          v42 = 2112;
          responseCopy = typeDescription;
          v44 = 2112;
          v45 = bundleIdentifier;
          v46 = 2048;
          v47 = unsignedIntegerValue;
          v48 = 2048;
          v49 = numButtons;
          v50 = 2112;
          v51 = 0;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Received an invalid response (kCFUserNotificationOtherResponse) from the %@ uninstall alert for app with bundleID %@, Index: %lu, numButtons: %lu : %@", buf, 0x3Eu);
        }

        typeDescription2 = [(IXSUninstallAlert *)self typeDescription];
        bundleIdentifier2 = [(IXSUninstallAlert *)self bundleIdentifier];
        [configurationCopy numButtons];
        v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 411, @"IXErrorDomain", 1uLL, 0, 0, @"Received an invalid response (kCFUserNotificationOtherResponse) from the %@ uninstall alert for app with bundleID %@, Index: %lu, numButtons: %lu", v35, typeDescription2);
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

    typeDescription3 = [(IXSUninstallAlert *)self typeDescription];
    bundleIdentifier3 = [(IXSUninstallAlert *)self bundleIdentifier];
    v17 = sub_1000405FC("[IXSUninstallAlert _processUserNotification:withConfiguration:response:completion:]", 417, @"IXErrorDomain", 1uLL, 0, 0, @"Received unknown response %lx from the %@ uninstall alert for app with bundleID %@", v16, response);

    v18 = 0;
  }

  v19 = 0;
LABEL_8:
  v20 = 0;
LABEL_11:
  completionCopy[2](completionCopy, v20, v17);
LABEL_12:
}

- (void)_onMainQueue_displayAlertWithCompletion:(id)completion uninstallAlertConfiguration:(id)configuration
{
  completionCopy = completion;
  configurationCopy = configuration;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  error = 0;
  responseFlags = 0;
  notificationFlags = [(IXSUninstallAlert *)self notificationFlags];
  alertParameters = [configurationCopy alertParameters];
  v10 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, notificationFlags, &error, alertParameters);

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

      typeDescription = [(IXSUninstallAlert *)self typeDescription];
      bundleIdentifier = [(IXSUninstallAlert *)self bundleIdentifier];
      v18 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_displayAlertWithCompletion:uninstallAlertConfiguration:]", 489, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to recieve notification response for %@ uninstall alert for app with bundle ID %@, Response: %d", v17, typeDescription);

      completionCopy[2](completionCopy, 0, v18);
    }

    else
    {
      [(IXSUninstallAlert *)self _processUserNotification:v10 withConfiguration:configurationCopy response:responseFlags completion:completionCopy];
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

    typeDescription2 = [(IXSUninstallAlert *)self typeDescription];
    bundleIdentifier2 = [(IXSUninstallAlert *)self bundleIdentifier];
    v18 = sub_1000405FC("[IXSUninstallAlert _onMainQueue_displayAlertWithCompletion:uninstallAlertConfiguration:]", 479, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create %@ uninstall alert for app with bundle ID %@, error code %d", v20, typeDescription2);

    completionCopy[2](completionCopy, 0, v18);
  }
}

- (void)displayAlertWithCompletion:(id)completion uninstallAlertConfiguration:(id)configuration
{
  completionCopy = completion;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100046290;
  v9[3] = &unk_100102668;
  configurationCopy = configuration;
  v11 = completionCopy;
  v9[4] = self;
  v7 = configurationCopy;
  v8 = completionCopy;
  sub_100071134(&_dispatch_main_q, v9);
}

- (void)_configureOptionalButtonForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  optionalButtonForNotRemovableAppLabel = [(IXSUninstallAlert *)self optionalButtonForNotRemovableAppLabel];
  optionalButtonForNotRemovableAppActionURL = [(IXSUninstallAlert *)self optionalButtonForNotRemovableAppActionURL];
  v7 = optionalButtonForNotRemovableAppActionURL;
  if (optionalButtonForNotRemovableAppLabel && optionalButtonForNotRemovableAppActionURL)
  {
    v8 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:optionalButtonForNotRemovableAppLabel buttonType:2];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100046474;
    v11[3] = &unk_100102690;
    v12 = v7;
    [configurationCopy addButtonDefinition:v8 forAction:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (optionalButtonForNotRemovableAppLabel | optionalButtonForNotRemovableAppActionURL)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_FAULT))
    {
      appRecord = [(IXSUninstallAlert *)self appRecord];
      bundleIdentifier = [appRecord bundleIdentifier];
      *buf = 136315906;
      v14 = "[IXSUninstallAlert _configureOptionalButtonForConfiguration:]";
      v15 = 2112;
      v16 = optionalButtonForNotRemovableAppLabel;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = bundleIdentifier;
      _os_log_fault_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_FAULT, "%s: Required app label (%@) and action URL (%@) both to be non-nil for %@, but one was nil", buf, 0x2Au);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)displayAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [IXSUninstallAlertConfiguration alloc];
  title = [(IXSUninstallAlert *)self title];
  message = [(IXSUninstallAlert *)self message];
  v8 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:title message:message];

  appRecord = [(IXSUninstallAlert *)self appRecord];
  LODWORD(message) = [appRecord isDeletable];

  v10 = [IXSUninstallButtonConfiguration alloc];
  if (message)
  {
    defaultButtonLabel = [(IXSUninstallAlert *)self defaultButtonLabel];
    v12 = [(IXSUninstallButtonConfiguration *)v10 initWithTitle:defaultButtonLabel buttonType:0];

    if ([(IXSUninstallAlert *)self defaultButtonAppearsDestructive])
    {
      [(IXSUninstallButtonConfiguration *)v12 setPresentationStyle:1];
    }

    otherButtonLabel = [(IXSUninstallAlert *)self otherButtonLabel];

    if (otherButtonLabel)
    {
      v14 = [IXSUninstallButtonConfiguration alloc];
      otherButtonLabel2 = [(IXSUninstallAlert *)self otherButtonLabel];
      otherButtonLabel = [(IXSUninstallButtonConfiguration *)v14 initWithTitle:otherButtonLabel2 buttonType:1];
    }

    cancelButtonLabel = [(IXSUninstallAlert *)self cancelButtonLabel];
    if (cancelButtonLabel)
    {
      v17 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:cancelButtonLabel buttonType:2];
      v18 = v17;
      if (otherButtonLabel && v17)
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
          v28 = otherButtonLabel;
        }

        else
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000469B4;
          v29[3] = &unk_100102690;
          v29[4] = self;
          [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:otherButtonLabel forAction:v29];
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

  cancelButtonLabel2 = [(IXSUninstallAlert *)self cancelButtonLabel];
  v12 = [(IXSUninstallButtonConfiguration *)v10 initWithTitle:cancelButtonLabel2 buttonType:0];

  if ([(IXSUninstallAlert *)self needsArchiveOptionButton])
  {
    v20 = [IXSUninstallButtonConfiguration alloc];
    otherButtonLabel3 = [(IXSUninstallAlert *)self otherButtonLabel];
    v22 = [(IXSUninstallButtonConfiguration *)v20 initWithTitle:otherButtonLabel3 buttonType:1];

    [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v22 forAction:&stru_100102770];
  }

  [(IXSUninstallAlertConfiguration *)v8 addButtonDefinition:v12 forAction:&stru_100102790];
LABEL_35:

  [(IXSUninstallAlert *)self displayAlertWithCompletion:completionCopy uninstallAlertConfiguration:v8];
}

- (id)_localizedStringForKey:(id)key tableName:(id)name withFormatHint:(id)hint
{
  keyCopy = key;
  nameCopy = name;
  hintCopy = hint;
  defaultStringsBundle = [(IXSUninstallAlert *)self defaultStringsBundle];
  v12 = defaultStringsBundle;
  v13 = hintCopy;
  if (defaultStringsBundle)
  {
    v13 = CFBundleCopyLocalizedString(defaultStringsBundle, keyCopy, 0, nameCopy);
  }

  if (v13 == keyCopy)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[IXSUninstallAlert _localizedStringForKey:tableName:withFormatHint:]";
      v19 = 2112;
      v20 = keyCopy;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch localized string for key %@ from bundle %@ within table %@", &v17, 0x2Au);
    }

    v15 = hintCopy;
    v13 = v15;
  }

  return v13;
}

- (id)localizedStringForKey:(id)key withFormatHint:(id)hint
{
  hintCopy = hint;
  keyCopy = key;
  defaultStringsTableName = [(IXSUninstallAlert *)self defaultStringsTableName];
  v9 = [(IXSUninstallAlert *)self _localizedStringForKey:keyCopy tableName:defaultStringsTableName withFormatHint:hintCopy];

  return v9;
}

- (BOOL)isMDMRestrictedWithOrganizationName:(id *)name
{
  v5 = +[MCProfileConnection sharedConnection];
  appRecord = [(IXSUninstallAlert *)self appRecord];
  bundleIdentifier = [appRecord bundleIdentifier];
  v8 = [v5 isRemovalRestrictedByPolicyForApp:bundleIdentifier];

  if (v8)
  {
    managingOrganizationInformation = [v5 managingOrganizationInformation];
    v10 = [managingOrganizationInformation objectForKeyedSubscript:kMCCCOrganizationNameKey];
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

    if (name && v12)
    {
      v13 = v12;
      *name = v12;
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