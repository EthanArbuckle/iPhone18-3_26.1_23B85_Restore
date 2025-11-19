@interface HFMediaAccessControlEditorItemManager
- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)a3 home:(id)a4;
- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HFMediaAccessControlEditorItemManager

- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFMediaAccessControlEditorItemManager.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessControlEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HFMediaAccessControlEditorItemManager)initWithDelegate:(id)a3 home:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HFMediaAccessControlEditorItemManager;
  v7 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  if (v7)
  {
    v8 = [[HFMediaAccessControlEditorItemModule alloc] initWithItemUpdater:v7 home:v6];
    accessControlEditorItemModule = v7->_accessControlEditorItemModule;
    v7->_accessControlEditorItemModule = v8;
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v3 = [(HFMediaAccessControlEditorItemManager *)self accessControlEditorItemModule];
  v4 = [v3 itemProviders];
  v5 = [v4 allObjects];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HFMediaAccessControlEditorItemManager *)self accessControlEditorItemModule];
    v6 = [v5 buildSectionsWithDisplayedItems:v4];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end