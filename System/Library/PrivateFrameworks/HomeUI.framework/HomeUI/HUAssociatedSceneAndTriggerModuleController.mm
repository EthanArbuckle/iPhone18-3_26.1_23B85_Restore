@interface HUAssociatedSceneAndTriggerModuleController
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
@end

@implementation HUAssociatedSceneAndTriggerModuleController

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v5 = objc_opt_class();
  v10 = cellCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    v7 = v10;
    if (v6)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  [v7 setHideIcon:1];
  [v7 setAccessoryType:1];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  scenesItem = [module scenesItem];

  if (scenesItem == itemCopy)
  {
    v7 = [HUAccessorySceneListViewController alloc];
    module2 = [(HUItemModuleController *)self module];
    serviceLikeItem = [module2 serviceLikeItem];
    v10 = [(HUAccessorySceneListViewController *)v7 initWithServiceLikeItem:serviceLikeItem];

    v11 = [HUViewControllerPresentationRequest requestWithViewController:v10];
    [v11 setPreferredPresentationType:1];
    host = [(HUItemModuleController *)self host];
    v13 = [host moduleController:self presentViewControllerForRequest:v11];
  }

  return 0;
}

@end