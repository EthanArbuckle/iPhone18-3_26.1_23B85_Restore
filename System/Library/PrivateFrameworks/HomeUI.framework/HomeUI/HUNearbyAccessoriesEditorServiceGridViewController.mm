@interface HUNearbyAccessoriesEditorServiceGridViewController
+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)options accessoryProfileItem:(id)item;
- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item;
- (HUNearbyAccessoriesEditorServiceGridViewController)initWithAccessoryProfileSourceItem:(id)item;
@end

@implementation HUNearbyAccessoriesEditorServiceGridViewController

- (HUNearbyAccessoriesEditorServiceGridViewController)initWithAccessoryProfileSourceItem:(id)item
{
  itemCopy = item;
  v5 = [objc_opt_class() defaultItemProviderCreatorWithOptions:11 accessoryProfileItem:itemCopy];
  v6 = [HUServiceGridItemManager alloc];
  v7 = [itemCopy copy];
  v8 = [(HUServiceGridItemManager *)v6 initWithDelegate:self sourceItem:v7 shouldGroupByRoom:1 shouldShowSectionHeaders:1 itemProvidersCreator:v5];

  v13.receiver = self;
  v13.super_class = HUNearbyAccessoriesEditorServiceGridViewController;
  v9 = [(HUSelectableServiceGridViewController *)&v13 initWithServiceGridItemManager:v8];
  if (v9)
  {
    accessory = [itemCopy accessory];
    primaryAccessory = v9->_primaryAccessory;
    v9->_primaryAccessory = accessory;
  }

  return v9;
}

- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v7 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    objc_opt_class();
    sourceHomeKitItem = [v9 sourceHomeKitItem];
    if (objc_opt_isKindOfClass())
    {
      v11 = sourceHomeKitItem;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    objc_opt_class();
    homeKitObject = [v9 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = homeKitObject;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    objc_opt_class();
    v16 = v7;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v12)
    {
      accessory = [v12 accessory];
      hf_primaryService = [accessory hf_primaryService];

      v15 = accessory;
    }

    else
    {
      if (!v18)
      {
LABEL_20:
        primaryAccessory = [(HUNearbyAccessoriesEditorServiceGridViewController *)self primaryAccessory];
        v6 = [primaryAccessory hf_shouldHideNearbyAccessoryService:v15];

        goto LABEL_21;
      }

      hf_primaryService = [v18 service];
    }

    v15 = hf_primaryService;
    goto LABEL_20;
  }

  v6 = 1;
LABEL_21:

  return v6;
}

+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)options accessoryProfileItem:(id)item
{
  itemCopy = item;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HUNearbyAccessoriesEditorServiceGridViewController_defaultItemProviderCreatorWithOptions_accessoryProfileItem___block_invoke;
  v9[3] = &unk_277DC2148;
  v10 = itemCopy;
  optionsCopy = options;
  v6 = itemCopy;
  v7 = _Block_copy(v9);

  return v7;
}

id __113__HUNearbyAccessoriesEditorServiceGridViewController_defaultItemProviderCreatorWithOptions_accessoryProfileItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() transformationBlockWithOptions:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [*(a1 + 32) accessory];
  v7 = [HUNearbyAccessoriesItemManager itemProvidersForPrimaryAccessory:v6 inHome:v3];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HUNearbyAccessoriesEditorServiceGridViewController_defaultItemProviderCreatorWithOptions_accessoryProfileItem___block_invoke_2;
  v13[3] = &unk_277DC2120;
  v15 = v4;
  v8 = v5;
  v14 = v8;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v13];
  v10 = v14;
  v11 = v8;

  return v8;
}

void __113__HUNearbyAccessoriesEditorServiceGridViewController_defaultItemProviderCreatorWithOptions_accessoryProfileItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14C38];
  v4 = a2;
  v5 = [[v3 alloc] initWithSourceProvider:v4 transformationBlock:*(a1 + 40)];

  [*(a1 + 32) addObject:v5];
}

@end