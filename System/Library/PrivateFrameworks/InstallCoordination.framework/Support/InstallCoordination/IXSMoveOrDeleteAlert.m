@interface IXSMoveOrDeleteAlert
- (id)defaultButtonLabel;
- (id)message;
- (id)title;
@end

@implementation IXSMoveOrDeleteAlert

- (id)title
{
  v3 = [(IXSUninstallAlert *)self appRecord];
  v4 = [v3 isManagedAppDistributor];

  if (v4)
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY_OR_DELETE_MARKETPLACE";
  }

  else if ([(IXSUninstallAlert *)self appIsRemovable])
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY_OR_DELETE";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY";
  }

  v6 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:@"Remove “%@”?"];
  v7 = [(IXSUninstallAlert *)self appRecord];
  v8 = [v7 localizedName];
  v9 = [NSString localizedStringWithFormat:v6, v8];

  return v9;
}

- (id)message
{
  v3 = [(IXSUninstallAlert *)self appRecord];
  v4 = [v3 isManagedAppDistributor];

  if (v4)
  {
    v5 = @"UNINSTALL_ICON_BODY_MOVE_TO_APP_LIBRARY_MARKETPLACE";
    v6 = @"Removing from Home Screen will keep the app marketplace in your App Library. If you delete this marketplace, apps installed from this marketplace will no longer update.";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_BODY_MOVE_TO_APP_LIBRARY";
    v6 = @"Removing from Home Screen will keep the app in your App Library.";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];

  return v7;
}

- (id)defaultButtonLabel
{
  v3 = [(IXSUninstallAlert *)self appRecord];
  v4 = [v3 isManagedAppDistributor];

  if (v4)
  {
    v5 = @"UNINSTALL_ICON_BUTTON_DELETE_MARKETPLACE";
    v6 = @"Delete App Marketplace";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_BUTTON_DELETE_APP";
    v6 = @"Delete App";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];

  return v7;
}

@end