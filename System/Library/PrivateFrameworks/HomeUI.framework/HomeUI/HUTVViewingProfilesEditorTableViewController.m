@interface HUTVViewingProfilesEditorTableViewController
- (HUTVViewingProfilesEditorTableViewController)initWithUserItem:(id)a3;
- (id)itemModuleControllers;
@end

@implementation HUTVViewingProfilesEditorTableViewController

- (HUTVViewingProfilesEditorTableViewController)initWithUserItem:(id)a3
{
  v4 = a3;
  v5 = [[HUTVViewingProfilesEditorItemManager alloc] initWithDelegate:self userItem:v4];

  v13.receiver = self;
  v13.super_class = HUTVViewingProfilesEditorTableViewController;
  v6 = [(HUItemTableViewController *)&v13 initWithItemManager:v5 tableViewStyle:1];
  if (v6)
  {
    v7 = [HUTVViewingProfilesDevicesModuleController alloc];
    v8 = [(HUTVViewingProfilesEditorItemManager *)v5 tvpDevicesModule];
    v9 = [(HUTVViewingProfilesDevicesModuleController *)v7 initWithModule:v8 host:v6];
    tvpDevicesModuleController = v6->_tvpDevicesModuleController;
    v6->_tvpDevicesModuleController = v9;

    v11 = _HULocalizedStringWithDefaultValue(@"HUUsersTVViewingProfiles", @"HUUsersTVViewingProfiles", 1);
    [(HUTVViewingProfilesEditorTableViewController *)v6 setTitle:v11];

    v6->_hideHeadersAndFooters = 0;
  }

  return v6;
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUTVViewingProfilesEditorTableViewController *)self tvpDevicesModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
}

@end