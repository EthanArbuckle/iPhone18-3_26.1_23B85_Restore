@interface HFReorderableItemListAbstractBase
- (BOOL)isEmpty;
- (HFReorderableItemListAbstractBase)init;
- (HFReorderableItemListAbstractBase)initWithApplicationDataContainer:(id)a3 category:(id)a4;
- (HMApplicationData)applicationDataContainer;
- (id)saveWithSender:(id)a3;
- (void)setSortedItems:(id)a3;
@end

@implementation HFReorderableItemListAbstractBase

- (HFReorderableItemListAbstractBase)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithApplicationDataContainer_category_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFReorderableItemListAbstractBase init]", v5}];

  return 0;
}

- (HFReorderableItemListAbstractBase)initWithApplicationDataContainer:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HFReorderableItemListAbstractBase;
  v9 = [(HFReorderableItemListAbstractBase *)&v13 init];
  if (v9)
  {
    v10 = objc_opt_class();
    if ([v10 isMemberOfClass:objc_opt_class()])
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v9 file:@"HFReorderableHomeKitItemList.m" lineNumber:58 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
    }

    objc_storeWeak(&v9->_applicationDataContainer, v7);
    objc_storeStrong(&v9->_category, a4);
  }

  return v9;
}

- (BOOL)isEmpty
{
  v4 = objc_opt_class();
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:68 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }

  return 0;
}

- (void)setSortedItems:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:74 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }
}

- (id)saveWithSender:(id)a3
{
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HFReorderableHomeKitItemList.m" lineNumber:79 description:@"Do not try to use HFReorderableItemListAbstractBase without subclassing."];
  }

  return 0;
}

- (HMApplicationData)applicationDataContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationDataContainer);

  return WeakRetained;
}

@end