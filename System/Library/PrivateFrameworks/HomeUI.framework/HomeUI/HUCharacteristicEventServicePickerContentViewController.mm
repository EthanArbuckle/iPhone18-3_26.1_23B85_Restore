@interface HUCharacteristicEventServicePickerContentViewController
+ (id)splitCharacteristicResults;
+ (id)transformationSetBlock;
- (BOOL)canSelectItem:(id)item indexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item;
- (HUCharacteristicEventServicePickerContentViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier;
- (HUCharacteristicEventServicePickerContentViewController)initWithServiceGridItemManager:(id)manager;
- (HUCharacteristicEventServicePickerContentViewController)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item source:(unint64_t)source;
- (HUCharacteristicEventServicePickerContentViewControllerDelegate)servicePickerDelegate;
- (id)layoutOptionsForSection:(int64_t)section;
- (void)_addCharacteristicEventsForAlarmItem:(id)item;
- (void)_addCharacteristicEventsForOtherDeviceItem:(id)item;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didChangeSelection;
- (void)itemManagerDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicEventServicePickerContentViewController

- (HUCharacteristicEventServicePickerContentViewController)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item source:(unint64_t)source
{
  builderCopy = builder;
  itemCopy = item;
  transformationSetBlock = [objc_opt_class() transformationSetBlock];
  v12 = [(HUSelectableServiceGridViewController *)HUCharacteristicEventServicePickerContentViewController defaultItemProviderCreatorWithOptions:9];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__HUCharacteristicEventServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_source___block_invoke;
  aBlock[3] = &unk_277DBB520;
  v13 = v12;
  v22 = v13;
  v14 = transformationSetBlock;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [[HUServiceGridItemManager alloc] initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v15];
  v20.receiver = self;
  v20.super_class = HUCharacteristicEventServicePickerContentViewController;
  v17 = [(HUSelectableServiceGridViewController *)&v20 initWithServiceGridItemManager:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventBuilderItem, item);
    objc_storeStrong(&v18->_triggerBuilder, builder);
    v18->_source = source;
    [(HUSelectableServiceGridViewController *)v18 setAllowsMultipleSelection:0];
  }

  return v18;
}

id __106__HUCharacteristicEventServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_source___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __106__HUCharacteristicEventServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_source___block_invoke_2;
  v5[3] = &unk_277DBB4F8;
  v6 = *(a1 + 40);
  v3 = [v2 na_map:v5];

  return v3;
}

id __106__HUCharacteristicEventServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_source___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14848];
  v4 = a2;
  v5 = [[v3 alloc] initWithSourceProvider:v4 multipleTransformationBlock:*(a1 + 32)];

  return v5;
}

- (HUCharacteristicEventServicePickerContentViewController)initWithFlow:(id)flow stepIdentifier:(id)identifier
{
  flowCopy = flow;
  identifierCopy = identifier;
  v8 = [flowCopy viewController:self servicePickerSourceForStep:identifierCopy];
  triggerBuilder = [flowCopy triggerBuilder];
  eventBuilderItem = [flowCopy eventBuilderItem];
  v11 = [(HUCharacteristicEventServicePickerContentViewController *)self initWithTriggerBuilder:triggerBuilder eventBuilderItem:eventBuilderItem source:v8];

  if (v11)
  {
    [(HUCharacteristicEventServicePickerContentViewController *)v11 setFlow:flowCopy];
    [(HUCharacteristicEventServicePickerContentViewController *)v11 setStepIdentifier:identifierCopy];
  }

  return v11;
}

- (HUCharacteristicEventServicePickerContentViewController)initWithServiceGridItemManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithFlow_stepIdentifier_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventServicePickerContentViewController.m" lineNumber:91 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicEventServicePickerContentViewController initWithServiceGridItemManager:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = HUCharacteristicEventServicePickerContentViewController;
  [(HUServiceGridViewController *)&v13 viewDidLoad];
  collectionView = [(HUCharacteristicEventServicePickerContentViewController *)self collectionView];
  [collectionView _setShouldDeriveVisibleBoundsFromContainingScrollView:1];

  collectionView2 = [(HUCharacteristicEventServicePickerContentViewController *)self collectionView];
  [collectionView2 setScrollEnabled:0];

  collectionView3 = [(HUCharacteristicEventServicePickerContentViewController *)self collectionView];
  [collectionView3 setClipsToBounds:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView4 = [(HUCharacteristicEventServicePickerContentViewController *)self collectionView];
  [collectionView4 setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  view = [(HUCharacteristicEventServicePickerContentViewController *)self view];
  [view setBackgroundColor:clearColor2];

  servicePickerDelegate = [(HUCharacteristicEventServicePickerContentViewController *)self servicePickerDelegate];
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  [servicePickerDelegate characteristicEventServicePickerContentViewController:self didChangeNumberOfSelectedItems:{objc_msgSend(toSet, "count")}];
}

- (void)itemManagerDidUpdate:(id)update
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUCharacteristicEventServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v29 itemManagerDidUpdate:update];
  v20 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];

  v6 = [allDisplayedItems countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(allDisplayedItems);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (([v10 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_OurItemsMustVe.isa);
        }

        if ([v10 conformsToProtocol:&unk_28251AFC0])
        {
          v11 = v10;
          services = [v11 services];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke;
          v24[3] = &unk_277DB9560;
          v24[4] = self;
          v13 = [services na_any:v24];

          if (v13)
          {
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3;
            v21[3] = &unk_277DBB548;
            v14 = v11;
            v22 = v14;
            selfCopy = self;
            if (__80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3(v21))
            {
              [v20 addObject:v14];
            }
          }
        }
      }

      v7 = [allDisplayedItems countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = [objc_alloc(MEMORY[0x277D14868]) initWithFromSet:v20];
  v16 = [v15 copy];
  [(HUSelectableServiceGridViewController *)self setSelectedItems:v16];

  servicePickerDelegate = [(HUCharacteristicEventServicePickerContentViewController *)self servicePickerDelegate];
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  [servicePickerDelegate characteristicEventServicePickerContentViewController:self didChangeNumberOfSelectedItems:{objc_msgSend(toSet, "count")}];
}

uint64_t __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke_2;
  v6[3] = &unk_277DB9538;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 eventBuilderItem];
  v5 = [v4 characteristics];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __80__HUCharacteristicEventServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) latestResults];
  v3 = [v2 objectForKeyedSubscript:@"HUCharacteristicEventServiceRepresentativeCharacteristicKey"];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) eventBuilderItem];
    v7 = [v6 characteristics];
    v8 = [v7 containsObject:v5];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = HUCharacteristicEventServicePickerContentViewController;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!section)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:9.0];
  }

  return v5;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v7.receiver = self;
  v7.super_class = HUCharacteristicEventServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v7 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setShouldColorDescription:0];
  }
}

- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item
{
  managerCopy = manager;
  itemCopy = item;
  if ([objc_opt_class() instancesRespondToSelector:sel_serviceGridItemManager_shouldHideItem_])
  {
    v25.receiver = self;
    v25.super_class = HUCharacteristicEventServicePickerContentViewController;
    if ([(HUSelectableServiceGridViewController *)&v25 serviceGridItemManager:managerCopy shouldHideItem:itemCopy])
    {
      goto LABEL_3;
    }
  }

  if (![itemCopy conformsToProtocol:&unk_28251AFC0])
  {
    goto LABEL_13;
  }

  filter2 = itemCopy;
  source = [(HUCharacteristicEventServicePickerContentViewController *)self source];
  if (source)
  {
    if (source != 1)
    {

      goto LABEL_13;
    }

    v22 = 0;
    v11 = [HUCharacteristicEventOptionProvider hasOptionsForServiceVendingItem:filter2 outCharacteristicType:&v22];
    v12 = v22;
    v13 = v12;
    if (!v11)
    {

      LOBYTE(v8) = 1;
LABEL_15:

      goto LABEL_17;
    }

    hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v15 = [hf_sensingCharacteristicTypes containsObject:v13];

    if ((v15 & 1) == 0)
    {
LABEL_13:
      filter = [(HUCharacteristicEventServicePickerContentViewController *)self filter];

      if (!filter)
      {
        LOBYTE(v8) = 0;
        goto LABEL_17;
      }

      filter2 = [(HUCharacteristicEventServicePickerContentViewController *)self filter];
      v8 = (*(filter2 + 2))(filter2, itemCopy) ^ 1;
      goto LABEL_15;
    }
  }

  else
  {
    hf_sensingCharacteristicTypes2 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    services = [filter2 services];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__HUCharacteristicEventServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke;
    v23[3] = &unk_277DB9560;
    v24 = hf_sensingCharacteristicTypes2;
    v18 = hf_sensingCharacteristicTypes2;
    v19 = [services na_any:v23];

    if (v19)
    {
      goto LABEL_13;
    }
  }

LABEL_3:
  LOBYTE(v8) = 1;
LABEL_17:

  return v8;
}

uint64_t __97__HUCharacteristicEventServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__HUCharacteristicEventServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke_2;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __97__HUCharacteristicEventServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = [(HUCharacteristicEventServicePickerContentViewController *)self triggerBuilder:view];
  home = [v4 home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  return hf_currentUserIsAdministrator;
}

- (void)didChangeSelection
{
  v11.receiver = self;
  v11.super_class = HUCharacteristicEventServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v11 didChangeSelection];
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  anyObject = [toSet anyObject];

  if (anyObject && ([anyObject conformsToProtocol:&unk_28251AFC0] & 1) == 0)
  {
    NSLog(&cfstr_OurItemsMustVe.isa);
  }

  if ([anyObject conformsToProtocol:&unk_28251AFC0])
  {
    v6 = anyObject;
    source = [(HUCharacteristicEventServicePickerContentViewController *)self source];
    if (source == 1)
    {
      [(HUCharacteristicEventServicePickerContentViewController *)self _addCharacteristicEventsForOtherDeviceItem:v6];
    }

    else if (!source)
    {
      [(HUCharacteristicEventServicePickerContentViewController *)self _addCharacteristicEventsForAlarmItem:v6];
    }
  }

  servicePickerDelegate = [(HUCharacteristicEventServicePickerContentViewController *)self servicePickerDelegate];
  selectedItems2 = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet2 = [selectedItems2 toSet];
  [servicePickerDelegate characteristicEventServicePickerContentViewController:self didChangeNumberOfSelectedItems:{objc_msgSend(toSet2, "count")}];
}

- (BOOL)canSelectItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = HUCharacteristicEventServicePickerContentViewController;
  if ([(HUSelectableServiceGridViewController *)&v17 canSelectItem:itemCopy indexPath:path])
  {
    v7 = itemCopy;
    if ([v7 conformsToProtocol:&unk_28251AFC0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    accessories = [v9 accessories];
    v11 = [accessories na_any:&__block_literal_global_171];

    if (v11)
    {
      LOBYTE(v12) = 0;
    }

    else if (v9)
    {
      services = [v9 services];
      triggerBuilder = [(HUCharacteristicEventServicePickerContentViewController *)self triggerBuilder];
      home = [triggerBuilder home];
      v12 = ![HUCharacteristicEventOptionProvider homeHubUpdateRequiredForServices:services forHome:home];
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = v9;
  if ([v10 conformsToProtocol:&unk_28251AFC0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  accessories = [v12 accessories];
  v14 = [accessories na_any:&__block_literal_global_99_2];

  if (v14)
  {
    v15 = @"HUDontSetupProgrammableSwitchInAutomationMessage";
    v16 = @"HUDontSetupProgrammableSwitchInAutomationTitle";
LABEL_9:
    v21 = MEMORY[0x277D75110];
    v22 = _HULocalizedStringWithDefaultValue(v16, v16, 1);
    v23 = _HULocalizedStringWithDefaultValue(v15, v15, 1);
    v24 = [v21 alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    v25 = MEMORY[0x277D750F8];
    v26 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
    v27 = [v25 actionWithTitle:v26 style:0 handler:0];
    [v24 addAction:v27];

    [(HUControllableItemCollectionViewController *)self presentViewController:v24 animated:1 completion:0];
    goto LABEL_10;
  }

  if (v12)
  {
    services = [v12 services];
    triggerBuilder = [(HUCharacteristicEventServicePickerContentViewController *)self triggerBuilder];
    home = [triggerBuilder home];
    v20 = [HUCharacteristicEventOptionProvider homeHubUpdateRequiredForServices:services forHome:home];

    if (v20)
    {
      v15 = @"HUCharacteristicTriggerRequireHomeHubUpdateMessage";
      v16 = @"HUAlertSoftwareUpdateRequired";
      goto LABEL_9;
    }
  }

LABEL_10:
  v28.receiver = self;
  v28.super_class = HUCharacteristicEventServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v28 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
}

- (void)_addCharacteristicEventsForAlarmItem:(id)item
{
  itemCopy = item;
  services = [itemCopy services];
  v5 = [services na_map:&__block_literal_global_121_1];
  na_setByFlattening = [v5 na_setByFlattening];

  latestResults = [itemCopy latestResults];
  v8 = [latestResults objectForKeyedSubscript:@"HUCharacteristicEventServiceRepresentativeCharacteristicKey"];

  if (v8 && [na_setByFlattening containsObject:v8])
  {
    v9 = [MEMORY[0x277CBEB98] setWithObject:v8];

    na_setByFlattening = v9;
  }

  hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_2;
  v38[3] = &unk_277DB9538;
  v32 = hf_sensingCharacteristicTypes;
  v39 = v32;
  v11 = [na_setByFlattening na_firstObjectPassingTest:v38];
  characteristicType = [v11 characteristicType];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_3;
  v36[3] = &unk_277DB9538;
  v13 = characteristicType;
  v37 = v13;
  v14 = [na_setByFlattening na_filter:v36];
  v15 = [MEMORY[0x277CD1970] hf_abnormalValueForSensorCharacteristicType:v13];
  if (![v14 count])
  {
    NSLog(&cfstr_NoAlarmCharact.isa, itemCopy);
  }

  selfCopy = self;
  if (!v15)
  {
    NSLog(&cfstr_NoAbnormalValu.isa, v13);
  }

  v31 = v13;
  eventBuilderItem = [(HUCharacteristicEventServicePickerContentViewController *)self eventBuilderItem];
  v30 = v14;
  v18 = [eventBuilderItem setCharacteristics:v14 triggerValue:v15];

  flow = [(HUCharacteristicEventServicePickerContentViewController *)self flow];
  if (!flow || (v20 = flow, -[HUCharacteristicEventServicePickerContentViewController flow](self, "flow"), v21 = objc_claimAutoreleasedReturnValue(), -[HUCharacteristicEventServicePickerContentViewController stepIdentifier](self, "stepIdentifier"), v22 = v8, v23 = na_setByFlattening, v24 = services, v25 = itemCopy, v26 = objc_claimAutoreleasedReturnValue(), v27 = [v21 shouldSaveEventBuildersToTriggerBuilderForStep:v26], v26, itemCopy = v25, services = v24, na_setByFlattening = v23, v8 = v22, selfCopy = self, v21, v20, v27))
  {
    deletions = [v18 deletions];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_4;
    v35[3] = &unk_277DBB5D8;
    v35[4] = selfCopy;
    [deletions na_each:v35];

    additions = [v18 additions];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_5;
    v34[3] = &unk_277DBB5D8;
    v34[4] = selfCopy;
    [additions na_each:v34];
  }
}

id __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicType];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 characteristicType];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __96__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

- (void)_addCharacteristicEventsForOtherDeviceItem:(id)item
{
  itemCopy = item;
  services = [itemCopy services];
  v6 = [services na_map:&__block_literal_global_131_2];
  na_setByFlattening = [v6 na_setByFlattening];

  v30[0] = 0;
  [HUCharacteristicEventOptionProvider hasOptionsForServiceVendingItem:itemCopy outCharacteristicType:v30];
  v8 = v30[0];
  if (!v8)
  {
    NSLog(&cfstr_NoSupportedCha.isa, itemCopy);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_2;
  v28[3] = &unk_277DB9538;
  v9 = v8;
  v29 = v9;
  v10 = [na_setByFlattening na_filter:v28];
  if (![v10 count])
  {
    NSLog(&cfstr_NoCharacterist.isa, v9, itemCopy);
  }

  eventBuilderItem = [(HUCharacteristicEventServicePickerContentViewController *)self eventBuilderItem];
  v12 = [eventBuilderItem setCharacteristics:v10 triggerValue:0];

  flow = [(HUCharacteristicEventServicePickerContentViewController *)self flow];
  if (!flow || (v14 = flow, -[HUCharacteristicEventServicePickerContentViewController flow](self, "flow"), v25 = v10, v15 = v9, v16 = itemCopy, v17 = na_setByFlattening, v18 = services, v19 = objc_claimAutoreleasedReturnValue(), -[HUCharacteristicEventServicePickerContentViewController stepIdentifier](self, "stepIdentifier"), v20 = self, v21 = objc_claimAutoreleasedReturnValue(), v22 = [v19 shouldSaveEventBuildersToTriggerBuilderForStep:v21], v21, self = v20, v19, services = v18, na_setByFlattening = v17, itemCopy = v16, v9 = v15, v10 = v25, v14, v22))
  {
    deletions = [v12 deletions];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_3;
    v27[3] = &unk_277DBB5D8;
    v27[4] = self;
    [deletions na_each:v27];

    additions = [v12 additions];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_4;
    v26[3] = &unk_277DBB5D8;
    v26[4] = self;
    [additions na_each:v26];
  }
}

id __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __102__HUCharacteristicEventServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

+ (id)transformationSetBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e23___NSSet_16__0__HFItem_8l;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &unk_28251AFC0;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_2;
  v18[3] = &unk_277DBB640;
  v7 = v6;
  v8 = *(a1 + 32);
  v19 = v7;
  v20 = v8;
  v9 = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_2(v18);
  v10 = v9;
  if (v9 && [v9 count] >= 2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_5;
    v15[3] = &unk_277DBB690;
    v11 = v3;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    v13 = [v10 na_map:v15];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v3];
  }

  return v13;
}

id __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 services];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_3;
    v6[3] = &__block_descriptor_40_e26___NSSet_16__0__HMService_8l;
    v6[4] = *(a1 + 40);
    v4 = [v3 na_flatMap:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 characteristics];
  v5 = [v3 setWithArray:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_4;
  v8[3] = &__block_descriptor_40_e26_B16__0__HMCharacteristic_8l;
  v8[4] = *(a1 + 32);
  v6 = [v5 na_filter:v8];

  return v6;
}

BOOL __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 splitCharacteristicResults];
  v5 = [v3 characteristicType];

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

id __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14AD8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_6;
  v10[3] = &unk_277DBB668;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v7 = v3;
  v8 = [v4 initWithSourceItem:v6 transformationBlock:v10];

  return v8;
}

id __81__HUCharacteristicEventServicePickerContentViewController_transformationSetBlock__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"HUCharacteristicEventServiceRepresentativeCharacteristicKey"];
  v4 = [*(a1 + 40) splitCharacteristicResults];
  v5 = [*(a1 + 32) characteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 addEntriesFromDictionary:v6];

  return v3;
}

+ (id)splitCharacteristicResults
{
  if (_MergedGlobals_4_3 != -1)
  {
    dispatch_once(&_MergedGlobals_4_3, &__block_literal_global_152_0);
  }

  v3 = qword_27C837FE0;

  return v3;
}

void __85__HUCharacteristicEventServicePickerContentViewController_splitCharacteristicResults__block_invoke_2()
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277CCF770];
  v20 = *MEMORY[0x277D13E20];
  v0 = v20;
  v1 = HFLocalizedString();
  v22[0] = v1;
  v21 = *MEMORY[0x277D13E88];
  v2 = v21;
  v3 = objc_alloc(MEMORY[0x277D14440]);
  v4 = [v3 initWithPackageIdentifier:*MEMORY[0x277D136F0]];
  v22[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v20 count:2];
  v24[0] = v5;
  v23[1] = *MEMORY[0x277CCF850];
  v18[0] = v0;
  v6 = HFLocalizedString();
  v18[1] = v2;
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D14440]);
  v8 = [v7 initWithPackageIdentifier:*MEMORY[0x277D13708]];
  v19[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v24[1] = v9;
  v23[2] = *MEMORY[0x277CCF868];
  v16[0] = v0;
  v10 = HFLocalizedString();
  v16[1] = v2;
  v17[0] = v10;
  v11 = objc_alloc(MEMORY[0x277D14440]);
  v12 = [v11 initWithPackageIdentifier:{*MEMORY[0x277D13728], v16[0], v2, v10}];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v24[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v15 = qword_27C837FE0;
  qword_27C837FE0 = v14;
}

- (HUCharacteristicEventServicePickerContentViewControllerDelegate)servicePickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_servicePickerDelegate);

  return WeakRetained;
}

@end