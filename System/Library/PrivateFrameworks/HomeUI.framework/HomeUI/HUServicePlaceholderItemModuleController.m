@interface HUServicePlaceholderItemModuleController
- (HUServicePlaceholderItemModuleController)initWithModule:(id)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUServicePlaceholderItemModuleController

- (HUServicePlaceholderItemModuleController)initWithModule:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  v14.receiver = self;
  v14.super_class = HUServicePlaceholderItemModuleController;
  v11 = [(HUItemModuleController *)&v14 initWithModule:v6];
  if (v11)
  {
    v12 = objc_alloc_init(HUCollectionLayoutManager);
    [(HUServicePlaceholderItemModuleController *)v11 setCollectionLayoutManager:v12];
  }

  return v11;
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v5 = a4;
  v6 = [(HUServicePlaceholderItemModuleController *)self collectionLayoutManager];
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 allItems];
  v9 = [v8 allObjects];
  v10 = [v6 buildAdaptiveTileSectionFor:v9 layoutEnvironment:v5];

  [v10 contentInsets];
  v12 = v11;
  [v10 contentInsets];
  [v10 setContentInsets:{v12, 0.0}];

  return v10;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = HUServicePlaceholderItemModuleController;
  v7 = a4;
  [(HUItemModuleController *)&v18 configureCell:v6 forItem:v7];
  v8 = objc_opt_class();
  v9 = v6;
  if (!v9)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class(), v18.receiver, v18.super_class}];

LABEL_7:
    v11 = 0;
  }

  [v11 setItem:v7];
  [v11 setToggleable:0];
  v14 = [(HUServicePlaceholderItemModuleController *)self collectionLayoutManager];
  v15 = [v14 gridSizeForItem:v7];
  v17 = v16;

  [v11 setGridSize:{v15, v17}];
}

@end