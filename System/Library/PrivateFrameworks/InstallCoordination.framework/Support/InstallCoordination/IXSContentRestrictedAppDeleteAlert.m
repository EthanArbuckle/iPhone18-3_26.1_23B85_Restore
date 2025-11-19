@interface IXSContentRestrictedAppDeleteAlert
- (IXSContentRestrictedAppDeleteAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 appType:(unint64_t)a5;
- (id)message;
- (void)displayAlertWithCompletion:(id)a3;
@end

@implementation IXSContentRestrictedAppDeleteAlert

- (IXSContentRestrictedAppDeleteAlert)initWithAppRecord:(id)a3 removability:(unint64_t)a4 appType:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSContentRestrictedAppDeleteAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:v8 bundleIdentifier:v9 removability:a4 deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Delete Content Restricted App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:0];
    v10->_appType = a5;
  }

  return v10;
}

- (id)message
{
  v3 = [(IXSContentRestrictedAppDeleteAlert *)self appType];
  if (v3 == 2)
  {
    v4 = @"UNINSTALL_ICON_BODY_DELETE_CONTENT_RESTRICTED_APPS_WEB_CONTENT_FILTERING_SET";
    v5 = @"This app cannot be deleted while web content restrictions are enabled.";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"UNINSTALL_ICON_BODY_DELETE_CONTENT_RESTRICTED_APPS_SCREENTIME_PASSCODE_AND_REMOTE_MANAGED";
    v5 = @"This app is managed by your parent or guardian and cannot be deleted.";
LABEL_5:
    v6 = [(IXSUninstallAlert *)self localizedStringForKey:v4 withFormatHint:v5];
    goto LABEL_9;
  }

  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000A3078(v7);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)displayAlertWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [IXSUninstallAlertConfiguration alloc];
  v6 = [(IXSContentRestrictedAppDeleteAlert *)self title];
  v7 = [(IXSContentRestrictedAppDeleteAlert *)self message];
  v11 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:v6 message:v7];

  v8 = [IXSUninstallButtonConfiguration alloc];
  v9 = [(IXSContentRestrictedAppDeleteAlert *)self defaultButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:v9 buttonType:0];

  [(IXSUninstallAlertConfiguration *)v11 addButtonDefinition:v10 forAction:&stru_100103140];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:v4 uninstallAlertConfiguration:v11];
}

@end