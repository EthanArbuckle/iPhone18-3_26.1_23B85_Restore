@interface IXSDefaultAppSelectAlert
- (IXSDefaultAppSelectAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type;
- (id)defaultButtonLabel;
- (id)message;
- (id)title;
- (void)displayAlertWithCompletion:(id)completion;
- (void)openSettingsWithBundleID:(id)d;
@end

@implementation IXSDefaultAppSelectAlert

- (IXSDefaultAppSelectAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSDefaultAppSelectAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:recordCopy bundleIdentifier:bundleIdentifier removability:removability deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Select Default App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:0];
    v10->_appType = type;
  }

  return v10;
}

- (id)title
{
  appType = [(IXSDefaultAppSelectAlert *)self appType];
  v4 = 0;
  if (appType > 4)
  {
    if (appType > 6)
    {
      if (appType == 7)
      {
        v5 = @"DEFAULT_APP_NAVIGATION_SELECT_DELETE_APP_TITLE";
        v6 = @"Select Another Default Navigation App";
      }

      else
      {
        if (appType != 8)
        {
          goto LABEL_19;
        }

        v5 = @"DEFAULT_APP_TRANSLATION_SELECT_DELETE_APP_TITLE";
        v6 = @"Select Another Default Translation App";
      }
    }

    else if (appType == 5)
    {
      v5 = @"DEFAULT_APP_MAIL_SELECT_DELETE_APP_UI_ALERT_TITLE";
      v6 = @"Select Another Default Mail App";
    }

    else
    {
      v5 = @"DEFAULT_APP_PHONE_SELECT_DELETE_APP_TITLE";
      v6 = @"Select Another Default Calling App";
    }
  }

  else if (appType > 2)
  {
    if (appType == 3)
    {
      v5 = @"DEFAULT_APP_MESSAGES_SELECT_DELETE_APP_UI_ALERT_TITLE";
      v6 = @"Select Another Default Messaging App";
    }

    else
    {
      v5 = @"DEFAULT_APP_CONTACTLESS_SELECT_DELETE_APP_UI_ALERT_TITLE";
      v6 = @"Select Another Default Contactless App";
    }
  }

  else if (appType == 1)
  {
    v5 = @"DEFAULT_APP_SAFARI_SELECT_DELETE_APP_UI_ALERT_TITLE";
    v6 = @"Select Default Browser App";
  }

  else
  {
    if (appType != 2)
    {
      goto LABEL_19;
    }

    v5 = @"DEFAULT_APP_APPSTORE_SELECT_DELETE_APP_UI_ALERT_TITLE";
    v6 = @"Select Default App Marketplace";
  }

  v4 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];
LABEL_19:

  return v4;
}

- (id)message
{
  appType = [(IXSDefaultAppSelectAlert *)self appType];
  v4 = 0;
  if (appType > 4)
  {
    if (appType > 6)
    {
      if (appType == 7)
      {
        v5 = @"DEFAULT_APP_SELECT_NAVIGATION_APP_BODY";
        v6 = @"To delete “%@”, select another navigation app as your default.";
      }

      else
      {
        if (appType != 8)
        {
          goto LABEL_19;
        }

        v5 = @"DEFAULT_APP_SELECT_TRANSLATION_APP_BODY";
        v6 = @"To delete “%@”, select another translation app as your default.";
      }
    }

    else if (appType == 5)
    {
      v5 = @"DEFAULT_APP_SELECT_MAIL_APP_BODY";
      v6 = @"To delete “%@”, select another mail app as your default.";
    }

    else
    {
      v5 = @"DEFAULT_APP_SELECT_PHONE_APP_BODY";
      v6 = @"To delete “%@”, select another calling app as your default.";
    }
  }

  else if (appType > 2)
  {
    if (appType == 3)
    {
      v5 = @"DEFAULT_APP_SELECT_MESSAGING_APP_BODY";
      v6 = @"To delete “%@”, select another messaging app as your default.";
    }

    else
    {
      v5 = @"DEFAULT_APP_SELECT_CONTACTLESS_APP_BODY";
      v6 = @"To delete “%@”, select another contactless app as your default.";
    }
  }

  else if (appType == 1)
  {
    v5 = @"DEFAULT_APP_SELECT_BROWSER_APP_BODY";
    v6 = @"Select another browser app as your default, and then you'll be able to delete “%@”.";
  }

  else
  {
    if (appType != 2)
    {
      goto LABEL_19;
    }

    v5 = @"DEFAULT_APP_SELECT_APP_MARKETPLACE_BODY";
    v6 = @"To delete “%@”, select another app marketplace as your default.";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];
  appRecord = [(IXSUninstallAlert *)self appRecord];
  localizedName = [appRecord localizedName];
  v4 = [NSString localizedStringWithFormat:v7, localizedName];

LABEL_19:

  return v4;
}

- (id)defaultButtonLabel
{
  v2 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_SELECT_DELETE_APP_OPEN_SETTINGS" withFormatHint:@"Go to Settings"];
  v3 = [NSString localizedStringWithFormat:@" %@ ", v2];

  return v3;
}

- (void)openSettingsWithBundleID:(id)d
{
  dCopy = d;
  v5 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v6 = [dCopy stringByAddingPercentEncodingWithAllowedCharacters:v5];

  if ([(IXSDefaultAppSelectAlert *)self appType]- 1 > 7)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[IXSDefaultAppSelectAlert openSettingsWithBundleID:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to open settings pane; unknown app type encountered", buf, 0xCu);
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"app-prefs:%@&target=com.apple.settings.default-applications", v6];
    v8 = [NSURL URLWithString:v7];

    v9 = +[LSApplicationWorkspace defaultWorkspace];
    v13 = 0;
    v10 = [v9 openSensitiveURL:v8 withOptions:0 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "[IXSDefaultAppSelectAlert openSettingsWithBundleID:]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to open url at %@: %@", buf, 0x20u);
      }
    }
  }
}

- (void)displayAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [IXSUninstallAlertConfiguration alloc];
  title = [(IXSDefaultAppSelectAlert *)self title];
  message = [(IXSDefaultAppSelectAlert *)self message];
  v14 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:title message:message];

  v8 = [IXSUninstallButtonConfiguration alloc];
  defaultButtonLabel = [(IXSDefaultAppSelectAlert *)self defaultButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:defaultButtonLabel buttonType:0];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v10 forAction:&stru_1001039D0];
  [(IXSUninstallButtonConfiguration *)v10 setIsPreferredButton:1];
  v11 = [IXSUninstallButtonConfiguration alloc];
  cancelButtonLabel = [(IXSDefaultAppSelectAlert *)self cancelButtonLabel];
  v13 = [(IXSUninstallButtonConfiguration *)v11 initWithTitle:cancelButtonLabel buttonType:2];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v13 forAction:&stru_1001039F0];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:completionCopy uninstallAlertConfiguration:v14];
}

@end