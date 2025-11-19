@interface IXSDefaultAppSelectAlert
- (IXSDefaultAppSelectAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 defaultAppType:(unint64_t)a5;
- (id)defaultButtonLabel;
- (id)message;
- (id)title;
- (void)displayAlertWithCompletion:(id)a3;
- (void)openSettingsWithBundleID:(id)a3;
@end

@implementation IXSDefaultAppSelectAlert

- (IXSDefaultAppSelectAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 defaultAppType:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSDefaultAppSelectAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:v8 bundleIdentifier:v9 removability:a4 deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Select Default App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:0];
    v10->_appType = a5;
  }

  return v10;
}

- (id)title
{
  v3 = [(IXSDefaultAppSelectAlert *)self appType];
  v4 = 0;
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v5 = @"DEFAULT_APP_NAVIGATION_SELECT_DELETE_APP_TITLE";
        v6 = @"Select Another Default Navigation App";
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"DEFAULT_APP_TRANSLATION_SELECT_DELETE_APP_TITLE";
        v6 = @"Select Another Default Translation App";
      }
    }

    else if (v3 == 5)
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

  else if (v3 > 2)
  {
    if (v3 == 3)
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

  else if (v3 == 1)
  {
    v5 = @"DEFAULT_APP_SAFARI_SELECT_DELETE_APP_UI_ALERT_TITLE";
    v6 = @"Select Default Browser App";
  }

  else
  {
    if (v3 != 2)
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
  v3 = [(IXSDefaultAppSelectAlert *)self appType];
  v4 = 0;
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v5 = @"DEFAULT_APP_SELECT_NAVIGATION_APP_BODY";
        v6 = @"To delete “%@”, select another navigation app as your default.";
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"DEFAULT_APP_SELECT_TRANSLATION_APP_BODY";
        v6 = @"To delete “%@”, select another translation app as your default.";
      }
    }

    else if (v3 == 5)
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

  else if (v3 > 2)
  {
    if (v3 == 3)
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

  else if (v3 == 1)
  {
    v5 = @"DEFAULT_APP_SELECT_BROWSER_APP_BODY";
    v6 = @"Select another browser app as your default, and then you'll be able to delete “%@”.";
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"DEFAULT_APP_SELECT_APP_MARKETPLACE_BODY";
    v6 = @"To delete “%@”, select another app marketplace as your default.";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];
  v8 = [(IXSUninstallAlert *)self appRecord];
  v9 = [v8 localizedName];
  v4 = [NSString localizedStringWithFormat:v7, v9];

LABEL_19:

  return v4;
}

- (id)defaultButtonLabel
{
  v2 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_SELECT_DELETE_APP_OPEN_SETTINGS" withFormatHint:@"Go to Settings"];
  v3 = [NSString localizedStringWithFormat:@" %@ ", v2];

  return v3;
}

- (void)openSettingsWithBundleID:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

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

- (void)displayAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [IXSUninstallAlertConfiguration alloc];
  v6 = [(IXSDefaultAppSelectAlert *)self title];
  v7 = [(IXSDefaultAppSelectAlert *)self message];
  v14 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:v6 message:v7];

  v8 = [IXSUninstallButtonConfiguration alloc];
  v9 = [(IXSDefaultAppSelectAlert *)self defaultButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:v9 buttonType:0];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v10 forAction:&stru_1001039D0];
  [(IXSUninstallButtonConfiguration *)v10 setIsPreferredButton:1];
  v11 = [IXSUninstallButtonConfiguration alloc];
  v12 = [(IXSDefaultAppSelectAlert *)self cancelButtonLabel];
  v13 = [(IXSUninstallButtonConfiguration *)v11 initWithTitle:v12 buttonType:2];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v13 forAction:&stru_1001039F0];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:v4 uninstallAlertConfiguration:v14];
}

@end