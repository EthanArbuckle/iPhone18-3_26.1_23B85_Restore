@interface HUTVViewingProfilesEditorItemManager
- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUTVViewingProfilesEditorItemManager

- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTVViewingProfilesEditorItemManager.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUTVViewingProfilesEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUTVViewingProfilesEditorItemManager)initWithDelegate:(id)delegate userItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = HUTVViewingProfilesEditorItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:itemCopy];
  if (v7)
  {
    v8 = [[HUTVViewingProfilesDevicesItemModule alloc] initWithItemUpdater:v7 userItem:itemCopy];
    tvpDevicesModule = v7->_tvpDevicesModule;
    v7->_tvpDevicesModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  tvpDevicesModule = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  itemProviders = [tvpDevicesModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  tvpDevicesModule = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  v6 = [tvpDevicesModule buildSectionsWithDisplayedItems:itemsCopy];

  return v6;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUTVViewingProfilesEditorItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  tvpDevicesModule = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  [tvpDevicesModule registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUTVViewingProfilesEditorItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  tvpDevicesModule = [(HUTVViewingProfilesEditorItemManager *)self tvpDevicesModule];
  [tvpDevicesModule unregisterForExternalUpdates];
}

@end