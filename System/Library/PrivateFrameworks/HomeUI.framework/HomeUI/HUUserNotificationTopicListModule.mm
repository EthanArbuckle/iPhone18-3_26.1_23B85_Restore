@interface HUUserNotificationTopicListModule
- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)updater;
- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)topicForItem:(id)item;
- (void)_buildItemProviders;
@end

@implementation HUUserNotificationTopicListModule

- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUUserNotificationTopicListModule.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUUserNotificationTopicListModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUUserNotificationTopicListModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    [(HUUserNotificationTopicListModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (void)_buildItemProviders
{
  v3 = [HUBridgeListItem alloc];
  home = [(HUUserNotificationTopicListModule *)self home];
  v5 = [(HUBridgeListItem *)v3 initWithHome:home];
  [(HUUserNotificationTopicListModule *)self setBridgesItem:v5];

  v6 = [HUNetworkRouterListItem alloc];
  home2 = [(HUUserNotificationTopicListModule *)self home];
  v8 = [(HUNetworkRouterListItem *)v6 initWithHome:home2];
  [(HUUserNotificationTopicListModule *)self setNetworkRoutersListItem:v8];

  v9 = [HUMediaAccessControlItem alloc];
  home3 = [(HUUserNotificationTopicListModule *)self home];
  v11 = [(HUMediaAccessControlItem *)v9 initWithHome:home3];
  [(HUUserNotificationTopicListModule *)self setSpeakerSettingsItem:v11];

  v12 = objc_alloc(MEMORY[0x277D14B40]);
  v13 = MEMORY[0x277CBEB98];
  bridgesItem = [(HUUserNotificationTopicListModule *)self bridgesItem];
  networkRoutersListItem = [(HUUserNotificationTopicListModule *)self networkRoutersListItem];
  speakerSettingsItem = [(HUUserNotificationTopicListModule *)self speakerSettingsItem];
  v17 = [v13 setWithObjects:{bridgesItem, networkRoutersListItem, speakerSettingsItem, 0}];
  v18 = [v12 initWithItems:v17];
  staticItemProvider = self->_staticItemProvider;
  self->_staticItemProvider = v18;

  v20 = objc_alloc(MEMORY[0x277D14CC8]);
  home4 = [(HUUserNotificationTopicListModule *)self home];
  v21 = [v20 initWithHome:home4];
  notificationTopicItemProvider = self->_notificationTopicItemProvider;
  self->_notificationTopicItemProvider = v21;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB58];
  notificationTopicItemProvider = [(HUUserNotificationTopicListModule *)self notificationTopicItemProvider];
  v5 = [v3 setWithObject:notificationTopicItemProvider];

  staticItemProvider = [(HUUserNotificationTopicListModule *)self staticItemProvider];
  [v5 na_safeAddObject:staticItemProvider];

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v21[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  notificationTopicItemProvider = [(HUUserNotificationTopicListModule *)self notificationTopicItemProvider];
  items = [notificationTopicItemProvider items];
  allObjects = [items allObjects];

  staticItemProvider = [(HUUserNotificationTopicListModule *)self staticItemProvider];
  items2 = [staticItemProvider items];
  allObjects2 = [items2 allObjects];
  v11 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

  v12 = objc_alloc(MEMORY[0x277D14850]);
  sectionID = [objc_opt_class() sectionID];
  v14 = [v12 initWithIdentifier:sectionID];

  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v16 = [v11 sortedArrayUsingComparator:defaultItemComparator];
  [v14 setItems:v16];

  v17 = MEMORY[0x277D14778];
  v21[0] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19 = [v17 filterSections:v18 toDisplayedItems:itemsCopy];

  return v19;
}

- (id)topicForItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_class();
  v5 = itemCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  topic = [v7 topic];

  return topic;
}

@end