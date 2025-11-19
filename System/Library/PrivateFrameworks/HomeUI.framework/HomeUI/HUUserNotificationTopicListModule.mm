@interface HUUserNotificationTopicListModule
- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)a3;
- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)topicForItem:(id)a3;
- (void)_buildItemProviders;
@end

@implementation HUUserNotificationTopicListModule

- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUUserNotificationTopicListModule.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUUserNotificationTopicListModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUUserNotificationTopicListModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUUserNotificationTopicListModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    [(HUUserNotificationTopicListModule *)v9 _buildItemProviders];
  }

  return v9;
}

- (void)_buildItemProviders
{
  v3 = [HUBridgeListItem alloc];
  v4 = [(HUUserNotificationTopicListModule *)self home];
  v5 = [(HUBridgeListItem *)v3 initWithHome:v4];
  [(HUUserNotificationTopicListModule *)self setBridgesItem:v5];

  v6 = [HUNetworkRouterListItem alloc];
  v7 = [(HUUserNotificationTopicListModule *)self home];
  v8 = [(HUNetworkRouterListItem *)v6 initWithHome:v7];
  [(HUUserNotificationTopicListModule *)self setNetworkRoutersListItem:v8];

  v9 = [HUMediaAccessControlItem alloc];
  v10 = [(HUUserNotificationTopicListModule *)self home];
  v11 = [(HUMediaAccessControlItem *)v9 initWithHome:v10];
  [(HUUserNotificationTopicListModule *)self setSpeakerSettingsItem:v11];

  v12 = objc_alloc(MEMORY[0x277D14B40]);
  v13 = MEMORY[0x277CBEB98];
  v14 = [(HUUserNotificationTopicListModule *)self bridgesItem];
  v15 = [(HUUserNotificationTopicListModule *)self networkRoutersListItem];
  v16 = [(HUUserNotificationTopicListModule *)self speakerSettingsItem];
  v17 = [v13 setWithObjects:{v14, v15, v16, 0}];
  v18 = [v12 initWithItems:v17];
  staticItemProvider = self->_staticItemProvider;
  self->_staticItemProvider = v18;

  v20 = objc_alloc(MEMORY[0x277D14CC8]);
  v23 = [(HUUserNotificationTopicListModule *)self home];
  v21 = [v20 initWithHome:v23];
  notificationTopicItemProvider = self->_notificationTopicItemProvider;
  self->_notificationTopicItemProvider = v21;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HUUserNotificationTopicListModule *)self notificationTopicItemProvider];
  v5 = [v3 setWithObject:v4];

  v6 = [(HUUserNotificationTopicListModule *)self staticItemProvider];
  [v5 na_safeAddObject:v6];

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUUserNotificationTopicListModule *)self notificationTopicItemProvider];
  v6 = [v5 items];
  v7 = [v6 allObjects];

  v8 = [(HUUserNotificationTopicListModule *)self staticItemProvider];
  v9 = [v8 items];
  v10 = [v9 allObjects];
  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v12 = objc_alloc(MEMORY[0x277D14850]);
  v13 = [objc_opt_class() sectionID];
  v14 = [v12 initWithIdentifier:v13];

  v15 = [MEMORY[0x277D14778] defaultItemComparator];
  v16 = [v11 sortedArrayUsingComparator:v15];
  [v14 setItems:v16];

  v17 = MEMORY[0x277D14778];
  v21[0] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19 = [v17 filterSections:v18 toDisplayedItems:v4];

  return v19;
}

- (id)topicForItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
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

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  v10 = [v7 topic];

  return v10;
}

@end