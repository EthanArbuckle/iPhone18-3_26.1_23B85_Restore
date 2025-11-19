@interface HUTVViewingProfilesEditorItemManager
- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)a3 userItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUTVViewingProfilesEditorItemManager

- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTVViewingProfilesEditorItemManager.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUTVViewingProfilesEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)a3 userItem:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HUTVViewingProfilesEditorItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:v6];
  if (v7)
  {
    v8 = [[HUTVViewingProfilesDevicesItemModule alloc] initWithItemUpdater:v7 userItem:v6];
    tvpDevicesModule = v7->_tvpDevicesModule;
    v7->_tvpDevicesModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v3 = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  v4 = [v3 itemProviders];
  v5 = [v4 allObjects];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  v6 = [v5 buildSectionsWithDisplayedItems:v4];

  return v6;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUTVViewingProfilesEditorItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  [v3 registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUTVViewingProfilesEditorItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  [v3 unregisterForExternalUpdates];
}

@end