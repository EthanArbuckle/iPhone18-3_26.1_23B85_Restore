@interface HFReorderableItemListAbstractBase
- (BOOL)isEmpty;
- (HFReorderableItemListAbstractBase)init;
- (HFReorderableItemListAbstractBase)initWithApplicationDataContainer:(id)container category:(id)category;
- (HMApplicationData)applicationDataContainer;
- (id)saveWithSender:(id)sender;
- (void)setSortedItems:(id)items;
@end

@implementation HFReorderableItemListAbstractBase

- (HFReorderableItemListAbstractBase)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithApplicationDataContainer_category_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFReorderableItemListAbstractBase init]", v5}];

  return 0;
}

- (HFReorderableItemListAbstractBase)initWithApplicationDataContainer:(id)container category:(id)category
{
  containerCopy = container;
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = HFReorderableItemListAbstractBase;
  v9 = [(HFReorderableItemListAbstractBase *)&v13 init];
  if (v9)
  {
    v10 = objc_opt_class();
    if ([v10 isMemberOfClass:objc_opt_class()])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"HFReorderableHomeKitItemList.m" lineNumber:58 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
    }

    objc_storeWeak(&v9->_applicationDataContainer, containerCopy);
    objc_storeStrong(&v9->_category, category);
  }

  return v9;
}

- (BOOL)isEmpty
{
  v4 = objc_opt_class();
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:68 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }

  return 0;
}

- (void)setSortedItems:(id)items
{
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:74 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }
}

- (id)saveWithSender:(id)sender
{
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:79 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }

  return 0;
}

- (HMApplicationData)applicationDataContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationDataContainer);

  return WeakRetained;
}

@end