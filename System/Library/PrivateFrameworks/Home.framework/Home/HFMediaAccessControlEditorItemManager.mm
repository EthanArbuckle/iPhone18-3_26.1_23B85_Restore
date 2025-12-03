@interface HFMediaAccessControlEditorItemManager
- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)delegate home:(id)home;
- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HFMediaAccessControlEditorItemManager

- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessControlEditorItemManager.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessControlEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)delegate home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFMediaAccessControlEditorItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  if (v7)
  {
    v8 = [[HFMediaAccessControlEditorItemModule alloc] initWithItemUpdater:v7 home:homeCopy];
    accessControlEditorItemModule = v7->_accessControlEditorItemModule;
    v7->_accessControlEditorItemModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  accessControlEditorItemModule = [(HFMediaAccessControlEditorItemManager *)self accessControlEditorItemModule];
  itemProviders = [accessControlEditorItemModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    accessControlEditorItemModule = [(HFMediaAccessControlEditorItemManager *)self accessControlEditorItemModule];
    v6 = [accessControlEditorItemModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end