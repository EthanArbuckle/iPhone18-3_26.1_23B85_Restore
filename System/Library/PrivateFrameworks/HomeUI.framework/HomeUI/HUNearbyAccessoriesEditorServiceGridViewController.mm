@interface HUNearbyAccessoriesEditorServiceGridViewController
+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)a3 accessoryProfileItem:(id)a4;
- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4;
- (HUNearbyAccessoriesEditorServiceGridViewController)initWithAccessoryProfileSourceItem:(id)a3;
@end

@implementation HUNearbyAccessoriesEditorServiceGridViewController

- (HUNearbyAccessoriesEditorServiceGridViewController)initWithAccessoryProfileSourceItem:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultItemProviderCreatorWithOptions:11 accessoryProfileItem:v4];
  v6 = [HUServiceGridItemManager alloc];
  v7 = [v4 copy];
  v8 = [(HUServiceGridItemManager *)v6 initWithDelegate:self sourceItem:v7 shouldGroupByRoom:1 shouldShowSectionHeaders:1 itemProvidersCreator:v5];

  v13.receiver = self;
  v13.super_class = HUNearbyAccessoriesEditorServiceGridViewController;
  v9 = [(HUSelectableServiceGridViewController *)&v13 initWithServiceGridItemManager:v8];
  if (v9)
  {
    v10 = [v4 accessory];
    primaryAccessory = v9->_primaryAccessory;
    v9->_primaryAccessory = v10;
  }

  return v9;
}

- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v7 = v5;
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
    v10 = [v9 sourceHomeKitItem];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    objc_opt_class();
    v13 = [v9 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
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
      v19 = [v12 accessory];
      v20 = [v19 hf_primaryService];

      v15 = v19;
    }

    else
    {
      if (!v18)
      {
LABEL_20:
        v21 = [(HUNearbyAccessoriesEditorServiceGridViewController *)self primaryAccessory];
        v6 = [v21 hf_shouldHideNearbyAccessoryService:v15];

        goto LABEL_21;
      }

      v20 = [v18 service];
    }

    v15 = v20;
    goto LABEL_20;
  }

  v6 = 1;
LABEL_21:

  return v6;
}

+ (id)defaultItemProviderCreatorWithOptions:(unint64_t)a3 accessoryProfileItem:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HUNearbyAccessoriesEditorServiceGridViewController_defaultItemProviderCreatorWithOptions_accessoryProfileItem___block_invoke;
  v9[3] = &unk_277DC2148;
  v10 = v5;
  v11 = a3;
  v6 = v5;
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