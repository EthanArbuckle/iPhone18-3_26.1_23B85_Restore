@interface HUDashboardActionSetItemModuleController
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUDashboardActionSetItemModuleController

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v8 = objc_opt_class();
  v9 = cellCopy;
  v22 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v10 = v22;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v9 = v22;
  v12 = v22;
  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];

    v9 = v22;
LABEL_7:
    v12 = 0;
  }

  [v12 setItem:itemCopy];
  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v16 = host;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    layoutManager = [v17 layoutManager];
    v19 = [layoutManager gridSizeForItem:itemCopy];
    [v12 setGridSize:{v19, v20}];

    blurGroupingEffectView = [v17 blurGroupingEffectView];
    [v12 setBackgroundEffectGrouper:blurGroupingEffectView];
  }
}

@end