@interface IXSDefaultAppDownloadAlert
- (BOOL)openDefaultAppStoreWithError:(id *)error;
- (IXSDefaultAppDownloadAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type;
- (id)_bundleIDForDefaultAppMarketplace:(id *)marketplace;
- (id)_localizedNameForDefaultAppMarketplace;
- (id)cancelButtonLabel;
- (id)defaultButtonLabel;
- (id)message;
- (id)title;
- (void)displayAlertWithCompletion:(id)completion;
@end

@implementation IXSDefaultAppDownloadAlert

- (IXSDefaultAppDownloadAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSDefaultAppDownloadAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:recordCopy bundleIdentifier:bundleIdentifier removability:removability deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Download Default App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:0];
    v10->_appType = type;
  }

  return v10;
}

- (id)title
{
  appType = [(IXSDefaultAppDownloadAlert *)self appType];
  switch(appType)
  {
    case 3uLL:
      v4 = @"DEFAULT_APP_MESSAGING_NOT_AVAILABLE_DELETE_APP_UI_ALERT_TITLE";
      v5 = @"Default Messaging App Required";
      goto LABEL_7;
    case 2uLL:
      v4 = @"DEFAULT_APP_APPSTORE_NOT_AVAILABLE_DELETE_APP_UI_ALERT_TITLE";
      v5 = @"App Marketplace Required";
      goto LABEL_7;
    case 1uLL:
      v4 = @"DEFAULT_APP_SAFARI_NOT_AVAILABLE_DELETE_APP_UI_ALERT_TITLE";
      v5 = @"Download Browser App";
LABEL_7:
      v6 = [(IXSUninstallAlert *)self localizedStringForKey:v4 withFormatHint:v5];
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)message
{
  appType = [(IXSDefaultAppDownloadAlert *)self appType];
  switch(appType)
  {
    case 3uLL:
      v4 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_DOWNLOAD_MESSAGING_APP_UI_ALERT_BODY_FIRST" withFormatHint:@"At least one messaging app is required on this iPhone."];
      v5 = @"DEFAULT_APP_DOWNLOAD_MESSAGING_APP_BODY_SECOND";
      v6 = @"Download another messaging app, and then you can delete “%@”.";
      goto LABEL_7;
    case 2uLL:
      v4 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_DOWNLOAD_APP_MARKETPLACE_UI_ALERT_BODY_FIRST" withFormatHint:@"At least one app marketplace is required on this iPhone."];
      v5 = @"DEFAULT_APP_DOWNLOAD_APP_MARKETPLACE_BODY_SECOND";
      v6 = @"Download another app marketplace, and then you can delete “%@”.";
      goto LABEL_7;
    case 1uLL:
      v4 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_DOWNLOAD_BROWSER_APP_UI_ALERT_BODY_FIRST" withFormatHint:@"At least one browser app is required on this iPhone."];
      v5 = @"DEFAULT_APP_DOWNLOAD_BROWSER_APP_BODY_SECOND";
      v6 = @"Download another browser app, and then you can delete “%@”.";
LABEL_7:
      v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];
      appRecord = [(IXSUninstallAlert *)self appRecord];
      localizedName = [appRecord localizedName];
      v10 = [NSString localizedStringWithFormat:v7, localizedName];

      v11 = [NSString stringWithFormat:@"%@ %@", v4, v10];

      goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)defaultButtonLabel
{
  if (([(IXSDefaultAppDownloadAlert *)self appType]| 2) == 3)
  {
    _localizedNameForDefaultAppMarketplace = [(IXSDefaultAppDownloadAlert *)self _localizedNameForDefaultAppMarketplace];
    if (_localizedNameForDefaultAppMarketplace)
    {
      v4 = [(IXSUninstallAlert *)self localizedStringForKey:@"DEFAULT_APP_NOT_AVAILABLE_DELETE_APP_OPEN_APP_MARKETPLACE" withFormatHint:@"Open %@"];
      v5 = [NSString localizedStringWithFormat:v4, _localizedNameForDefaultAppMarketplace];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cancelButtonLabel
{
  if ([(IXSDefaultAppDownloadAlert *)self appType]== 2)
  {
    v3 = @"DEFAULT_APP_NOT_AVAILABLE_DELETE_APP_DISMISS";
    v4 = @"OK";
  }

  else
  {
    v3 = @"UNINSTALL_ICON_BUTTON_CANCEL";
    v4 = @"Cancel";
  }

  v5 = [(IXSUninstallAlert *)self localizedStringForKey:v3 withFormatHint:v4];

  return v5;
}

- (id)_localizedNameForDefaultAppMarketplace
{
  v2 = [(IXSDefaultAppDownloadAlert *)self _bundleIDForDefaultAppMarketplace:0];
  if (v2)
  {
    v8 = 0;
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v8];
    v4 = v8;
    if (v3)
    {
      localizedName = [v3 localizedName];
    }

    else
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10009FA30();
      }

      localizedName = 0;
    }
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)_bundleIDForDefaultAppMarketplace:(id *)marketplace
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v17 = 0;
  v5 = [v4 getPreferredAppMarketplacesWithError:&v17];
  v6 = v17;

  if (v5)
  {
    if ([v5 count])
    {
      v7 = [v5 objectAtIndexedSubscript:0];
      if (!marketplace)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009FAAC();
    }

    v10 = @"Unexpectedly found empty list for preferred app marketplaces";
    v11 = 179;
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10009FB2C();
    }

    v10 = @"Failed to get list of preferred app marketplaces";
    v11 = 171;
  }

  v13 = sub_1000405FC("[IXSDefaultAppDownloadAlert _bundleIDForDefaultAppMarketplace:]", v11, @"IXErrorDomain", 1uLL, v6, 0, v10, v9, v16);

  v7 = 0;
  v6 = v13;
  if (!marketplace)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v7)
  {
    v14 = v6;
    *marketplace = v6;
  }

LABEL_14:

  return v7;
}

- (BOOL)openDefaultAppStoreWithError:(id *)error
{
  v3 = [(IXSDefaultAppDownloadAlert *)self _bundleIDForDefaultAppMarketplace:error];
  if (v3)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100047638;
    v6[3] = &unk_1001027D8;
    v7 = v3;
    [v4 openApplicationWithBundleIdentifier:v7 configuration:0 completionHandler:v6];
  }

  return v3 != 0;
}

- (void)displayAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [IXSUninstallAlertConfiguration alloc];
  title = [(IXSDefaultAppDownloadAlert *)self title];
  message = [(IXSDefaultAppDownloadAlert *)self message];
  v7 = [(IXSUninstallAlertConfiguration *)v4 initWithTitle:title message:message];

  defaultButtonLabel = [(IXSDefaultAppDownloadAlert *)self defaultButtonLabel];
  if (defaultButtonLabel)
  {
    v9 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:defaultButtonLabel buttonType:0];
    [(IXSUninstallAlertConfiguration *)v7 addButtonDefinition:v9 forAction:&stru_1001027F8];
    [(IXSUninstallButtonConfiguration *)v9 setIsPreferredButton:1];
  }

  cancelButtonLabel = [(IXSDefaultAppDownloadAlert *)self cancelButtonLabel];
  if (cancelButtonLabel)
  {
    v11 = [[IXSUninstallButtonConfiguration alloc] initWithTitle:cancelButtonLabel buttonType:2];
    [(IXSUninstallAlertConfiguration *)v7 addButtonDefinition:v11 forAction:&stru_100102818];
    if (!defaultButtonLabel)
    {
      [(IXSUninstallButtonConfiguration *)v11 setIsPreferredButton:1];
    }
  }

  [(IXSUninstallAlert *)self displayAlertWithCompletion:completionCopy uninstallAlertConfiguration:v7];
}

@end