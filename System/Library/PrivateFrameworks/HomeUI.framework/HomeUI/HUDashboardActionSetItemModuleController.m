@interface HUDashboardActionSetItemModuleController
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUDashboardActionSetItemModuleController

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
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
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];

    v9 = v22;
LABEL_7:
    v12 = 0;
  }

  [v12 setItem:v7];
  objc_opt_class();
  v15 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v17 layoutManager];
    v19 = [v18 gridSizeForItem:v7];
    [v12 setGridSize:{v19, v20}];

    v21 = [v17 blurGroupingEffectView];
    [v12 setBackgroundEffectGrouper:v21];
  }
}

@end