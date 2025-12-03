@interface IXSContentRestrictedAppDeleteAlert
- (IXSContentRestrictedAppDeleteAlert)initWithAppRecord:(id)record removability:(unint64_t)removability appType:(unint64_t)type;
- (id)message;
- (void)displayAlertWithCompletion:(id)completion;
@end

@implementation IXSContentRestrictedAppDeleteAlert

- (IXSContentRestrictedAppDeleteAlert)initWithAppRecord:(id)record removability:(unint64_t)removability appType:(unint64_t)type
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12.receiver = self;
  v12.super_class = IXSContentRestrictedAppDeleteAlert;
  v10 = [(IXSUninstallAlert *)&v12 initWithAppRecord:recordCopy bundleIdentifier:bundleIdentifier removability:removability deletionIsRestricted:0];

  if (v10)
  {
    [(IXSUninstallAlert *)v10 setTypeDescription:@"Delete Content Restricted App"];
    [(IXSUninstallAlert *)v10 setDefaultButtonAppearsDestructive:0];
    v10->_appType = type;
  }

  return v10;
}

- (id)message
{
  appType = [(IXSContentRestrictedAppDeleteAlert *)self appType];
  if (appType == 2)
  {
    v4 = @"UNINSTALL_ICON_BODY_DELETE_CONTENT_RESTRICTED_APPS_WEB_CONTENT_FILTERING_SET";
    v5 = @"This app cannot be deleted while web content restrictions are enabled.";
    goto LABEL_5;
  }

  if (appType == 1)
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

- (void)displayAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [IXSUninstallAlertConfiguration alloc];
  title = [(IXSContentRestrictedAppDeleteAlert *)self title];
  message = [(IXSContentRestrictedAppDeleteAlert *)self message];
  v11 = [(IXSUninstallAlertConfiguration *)v5 initWithTitle:title message:message];

  v8 = [IXSUninstallButtonConfiguration alloc];
  defaultButtonLabel = [(IXSContentRestrictedAppDeleteAlert *)self defaultButtonLabel];
  v10 = [(IXSUninstallButtonConfiguration *)v8 initWithTitle:defaultButtonLabel buttonType:0];

  [(IXSUninstallAlertConfiguration *)v11 addButtonDefinition:v10 forAction:&stru_100103140];
  [(IXSUninstallAlert *)self displayAlertWithCompletion:completionCopy uninstallAlertConfiguration:v11];
}

@end