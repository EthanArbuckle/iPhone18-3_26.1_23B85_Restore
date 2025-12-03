@interface HUServicePlaceholderItemModuleController
- (HUServicePlaceholderItemModuleController)initWithModule:(id)module;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUServicePlaceholderItemModuleController

- (HUServicePlaceholderItemModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = objc_opt_class();
  v6 = moduleCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
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

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  collectionLayoutManager = [(HUServicePlaceholderItemModuleController *)self collectionLayoutManager];
  module = [(HUItemModuleController *)self module];
  allItems = [module allItems];
  allObjects = [allItems allObjects];
  v10 = [collectionLayoutManager buildAdaptiveTileSectionFor:allObjects layoutEnvironment:environmentCopy];

  [v10 contentInsets];
  v12 = v11;
  [v10 contentInsets];
  [v10 setContentInsets:{v12, 0.0}];

  return v10;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = HUServicePlaceholderItemModuleController;
  itemCopy = item;
  [(HUItemModuleController *)&v18 configureCell:cellCopy forItem:itemCopy];
  v8 = objc_opt_class();
  v9 = cellCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class(), v18.receiver, v18.super_class}];

LABEL_7:
    v11 = 0;
  }

  [v11 setItem:itemCopy];
  [v11 setToggleable:0];
  collectionLayoutManager = [(HUServicePlaceholderItemModuleController *)self collectionLayoutManager];
  v15 = [collectionLayoutManager gridSizeForItem:itemCopy];
  v17 = v16;

  [v11 setGridSize:{v15, v17}];
}

@end