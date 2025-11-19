@interface IXSDefaultAppDeleteAlert
- (IXSDefaultAppDeleteAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 defaultAppType:(unint64_t)a5;
- (id)message;
- (id)title;
- (void)displayAlertWithCompletion:(id)a3;
@end

@implementation IXSDefaultAppDeleteAlert

- (IXSDefaultAppDeleteAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 defaultAppType:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSDefaultAppDeleteAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:v8 bundleIdentifier:v9 removability:a4 deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Delete Default App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:1];
    v10->_appType = a5;
  }

  return v10;
}

- (id)title
{
  v3 = [(IXSUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_TITLE_DELETE_WITH_NAME" withFormatHint:@"Delete “%@”?"];
  v4 = [(IXSUninstallAlert *)self appRecord];
  v5 = [v4 localizedName];
  v6 = [NSString localizedStringWithFormat:v3, v5];

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
  v6 = [(IXSDefaultAppDeleteAlert *)self appType];
  v7 = v6;
  if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v8 = @"UNINSTALL_ICON_BODY_CONTACTLESS";
      v9 = @"You do not have any other contactless apps on this iPhone.";
      goto LABEL_15;
    }

    if (v6 == 5)
    {
      v8 = @"UNINSTALL_ICON_BODY_MAIL";
      v9 = @"You do not have any other email apps on this iPhone.";
      goto LABEL_15;
    }
  }

  else
  {
    switch(v6)
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

- (void)displayAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [IXSUninstallAlertConfiguration alloc];
  v6 = [(IXSDefaultAppDeleteAlert *)self title];
  v7 = [(IXSDefaultAppDeleteAlert *)self message];
  v14 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:v6 message:v7];

  v8 = [IXSUninstallButtonConfiguration alloc];
  v9 = [(IXSDefaultAppDeleteAlert *)self cancelButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:v9 buttonType:2];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v10 forAction:&stru_100101108];
  v11 = [IXSUninstallButtonConfiguration alloc];
  v12 = [(IXSDefaultAppDeleteAlert *)self defaultButtonLabel];
  v13 = [(IXSUninstallButtonConfiguration *)v11 initWithTitle:v12 buttonType:0];

  [(IXSUninstallAlertConfiguration *)v14 addButtonDefinition:v13 forAction:&stru_100101128];
  [(IXSUninstallButtonConfiguration *)v13 setPresentationStyle:1];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:v4 uninstallAlertConfiguration:v14];
}

@end