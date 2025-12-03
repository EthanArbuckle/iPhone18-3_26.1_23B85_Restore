@interface IXSDefaultAppDeleteAlert
- (IXSDefaultAppDeleteAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type;
- (id)message;
- (id)title;
- (void)displayAlertWithCompletion:(id)completion;
@end

@implementation IXSDefaultAppDeleteAlert

- (IXSDefaultAppDeleteAlert)initWithAppRecord:(id)record removability:(unint64_t)removability defaultAppType:(unint64_t)type
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSDefaultAppDeleteAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:recordCopy bundleIdentifier:bundleIdentifier removability:removability deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Delete Default App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:1];
    v10->_appType = type;
  }

  return v10;
}

- (id)title
{
  v3 = [(IXSUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_TITLE_DELETE_WITH_NAME" withFormatHint:@"Delete “%@”?"];
  appRecord = [(IXSUninstallAlert *)self appRecord];
  localizedName = [appRecord localizedName];
  v6 = [NSString localizedStringWithFormat:v3, localizedName];

  return v6;
}

- (id)message
{
  if ([(IXSUninstallAlert *)self appHasiCloudDataOrDocuments])
  {
    v3 = @"UNINSTALL_ICON_BODY_DELETE_DATA_LEAVES_DOCUMENTS_IN_CLOUD";
    v4 = @"Deleting this app will also delete its data, but any documents or data stored in iCloud will not be deleted.";
  }

  else
  {
    v3 = @"UNINSTALL_ICON_BODY_DELETE_DATA";
    v4 = @"Deleting this app will also delete its data.";
  }

  v5 = [(IXSUninstallAlert *)self localizedStringForKey:v3 withFormatHint:v4];
  appType = [(IXSDefaultAppDeleteAlert *)self appType];
  v7 = appType;
  if (appType <= 5)
  {
    if (appType == 4)
    {
      v8 = @"UNINSTALL_ICON_BODY_CONTACTLESS";
      v9 = @"You do not have any other contactless apps on this iPhone.";
      goto LABEL_15;
    }

    if (appType == 5)
    {
      v8 = @"UNINSTALL_ICON_BODY_MAIL";
      v9 = @"You do not have any other email apps on this iPhone.";
      goto LABEL_15;
    }
  }

  else
  {
    switch(appType)
    {
      case 6:
        v8 = @"UNINSTALL_ICON_BODY_PHONE";
        v9 = @"You do not have any other calling apps on this iPhone.";
        goto LABEL_15;
      case 7:
        v8 = @"UNINSTALL_ICON_BODY_NAVIGATION";
        v9 = @"You do not have any other navigation apps on this iPhone.";
        goto LABEL_15;
      case 8:
        v8 = @"UNINSTALL_ICON_BODY_TRANSLATION";
        v9 = @"You do not have any other translation apps on this iPhone.";
LABEL_15:
        v10 = [(IXSUninstallAlert *)self localizedStringForKey:v8 withFormatHint:v9];
        v11 = [NSString stringWithFormat:@"%@ %@", v5, v10];

        goto LABEL_16;
    }
  }

  v13 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100097E64(v7, v13);
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)displayAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [IXSUninstallAlertConfiguration alloc];
  title = [(IXSDefaultAppDeleteAlert *)self title];
  message = [(IXSDefaultAppDeleteAlert *)self message];
  v14 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:title message:message];

  v8 = [IXSUninstallButtonConfiguration alloc];
  cancelButtonLabel = [(IXSDefaultAppDeleteAlert *)self cancelButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:cancelButtonLabel buttonType:2];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v10 forAction:&stru_100101108];
  v11 = [IXSUninstallButtonConfiguration alloc];
  defaultButtonLabel = [(IXSDefaultAppDeleteAlert *)self defaultButtonLabel];
  v13 = [(IXSUninstallButtonConfiguration *)v11 initWithTitle:defaultButtonLabel buttonType:0];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v13 forAction:&stru_100101128];
  [(IXSUninstallButtonConfiguration *)v13 setPresentationStyle:1];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:completionCopy uninstallAlertConfiguration:v14];
}

@end