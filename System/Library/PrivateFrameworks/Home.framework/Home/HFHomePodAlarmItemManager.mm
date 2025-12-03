@interface HFHomePodAlarmItemManager
- (HFHomePodAlarmItemManager)initWithDelegate:(id)delegate mediaProfileContainer:(id)container;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HFHomePodAlarmItemManager

- (HFHomePodAlarmItemManager)initWithDelegate:(id)delegate mediaProfileContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = HFHomePodAlarmItemManager;
  v8 = [(HFItemManager *)&v13 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaProfileContainer, container);
    v10 = [[HFHomePodAlarmItemModule alloc] initWithItemUpdater:v9 mediaProfileContainer:containerCopy];
    alarmItemModule = v9->_alarmItemModule;
    v9->_alarmItemModule = v10;
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)home
{
  alarmItemModule = [(HFHomePodAlarmItemManager *)self alarmItemModule];
  itemProviders = [alarmItemModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    alarmItemModule = [(HFHomePodAlarmItemManager *)self alarmItemModule];
    v6 = [alarmItemModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HFHomePodAlarmItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  alarmItemModule = [(HFHomePodAlarmItemManager *)self alarmItemModule];
  [alarmItemModule registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HFHomePodAlarmItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  alarmItemModule = [(HFHomePodAlarmItemManager *)self alarmItemModule];
  [alarmItemModule unregisterForExternalUpdates];
}

@end