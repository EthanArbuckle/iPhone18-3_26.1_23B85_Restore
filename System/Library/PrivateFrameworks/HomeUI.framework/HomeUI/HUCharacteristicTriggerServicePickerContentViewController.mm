@interface HUCharacteristicTriggerServicePickerContentViewController
+ (id)getThresholdRangeValueForCharacteristics:(id)a3 inHome:(id)a4;
+ (id)splitCharacteristicResults;
+ (id)transformationSetBlock;
- (BOOL)canSelectItem:(id)a3 indexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4;
- (HUCharacteristicTriggerServicePickerContentViewController)initWithServiceGridItemManager:(id)a3;
- (HUCharacteristicTriggerServicePickerContentViewController)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 effectiveNavigationItem:(id)a7 delegate:(id)a8;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)_addCharacteristicEventsForAlarmItem:(id)a3;
- (void)_addCharacteristicEventsForOtherDeviceItem:(id)a3;
- (void)_addTriggerValue:(id)a3 forCharacteristics:(id)a4;
- (void)_cancel:(id)a3;
- (void)_next:(id)a3;
- (void)_validateNextButton;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)didChangeSelection;
- (void)itemManagerDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUCharacteristicTriggerServicePickerContentViewController

- (HUCharacteristicTriggerServicePickerContentViewController)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4 mode:(unint64_t)a5 source:(unint64_t)a6 effectiveNavigationItem:(id)a7 delegate:(id)a8
{
  v13 = a3;
  obj = a4;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = [objc_opt_class() transformationSetBlock];
  v18 = [(HUSelectableServiceGridViewController *)HUCharacteristicTriggerServicePickerContentViewController defaultItemProviderCreatorWithOptions:9];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __146__HUCharacteristicTriggerServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_mode_source_effectiveNavigationItem_delegate___block_invoke;
  aBlock[3] = &unk_277DBB520;
  v28 = v18;
  v31 = v28;
  v19 = v17;
  v32 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [[HUServiceGridItemManager alloc] initWithDelegate:self shouldGroupByRoom:1 itemProvidersCreator:v20];
  v29.receiver = self;
  v29.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  v22 = [(HUSelectableServiceGridViewController *)&v29 initWithServiceGridItemManager:v21];
  v23 = v22;
  if (v22)
  {
    [(HUServiceGridViewController *)v22 setDelegate:v16];
    objc_storeStrong(&v23->_eventBuilderItem, obj);
    objc_storeStrong(&v23->_triggerBuilder, a3);
    v23->_mode = a5;
    v23->_source = a6;
    objc_storeStrong(&v23->_effectiveNavigationItem, a7);
    [(HUSelectableServiceGridViewController *)v23 setAllowsMultipleSelection:0];
  }

  return v23;
}

id __146__HUCharacteristicTriggerServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_mode_source_effectiveNavigationItem_delegate___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __146__HUCharacteristicTriggerServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_mode_source_effectiveNavigationItem_delegate___block_invoke_2;
  v5[3] = &unk_277DBB4F8;
  v6 = *(a1 + 40);
  v3 = [v2 na_map:v5];

  return v3;
}

id __146__HUCharacteristicTriggerServicePickerContentViewController_initWithTriggerBuilder_eventBuilderItem_mode_source_effectiveNavigationItem_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14848];
  v4 = a2;
  v5 = [[v3 alloc] initWithSourceProvider:v4 multipleTransformationBlock:*(a1 + 32)];

  return v5;
}

- (HUCharacteristicTriggerServicePickerContentViewController)initWithServiceGridItemManager:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithTriggerBuilder_eventBuilderItem_mode_source_effectiveNavigationItem_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerServicePickerContentViewController.m" lineNumber:89 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicTriggerServicePickerContentViewController initWithServiceGridItemManager:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  [(HUServiceGridViewController *)&v14 viewDidLoad];
  v3 = [(HUCharacteristicTriggerServicePickerContentViewController *)self collectionView];
  [v3 _setShouldDeriveVisibleBoundsFromContainingScrollView:1];

  v4 = [(HUCharacteristicTriggerServicePickerContentViewController *)self collectionView];
  [v4 setScrollEnabled:0];

  v5 = [(HUCharacteristicTriggerServicePickerContentViewController *)self collectionView];
  [v5 setClipsToBounds:1];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(HUCharacteristicTriggerServicePickerContentViewController *)self collectionView];
  [v7 setBackgroundColor:v6];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(HUCharacteristicTriggerServicePickerContentViewController *)self view];
  [v9 setBackgroundColor:v8];

  if (![(HUCharacteristicTriggerServicePickerContentViewController *)self mode])
  {
    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerServicePickerNextButton", @"HUCharacteristicTriggerServicePickerNextButton", 1);
    v12 = [v10 initWithTitle:v11 style:2 target:self action:sel__next_];
    v13 = [(HUCharacteristicTriggerServicePickerContentViewController *)self effectiveNavigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  [(HUCharacteristicTriggerServicePickerContentViewController *)self _validateNextButton];
}

- (void)_cancel:(id)a3
{
  v4 = [(HUServiceGridViewController *)self delegate];
  [v4 triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_next:(id)a3
{
  v4 = [(HUCharacteristicTriggerServicePickerContentViewController *)self characteristicReadFuture];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v7 = v6;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUCharacteristicTriggerServicePickerContentViewController__next___block_invoke;
  v9[3] = &unk_277DB7530;
  v9[4] = self;
  v8 = [v7 addCompletionBlock:v9];
}

void __67__HUCharacteristicTriggerServicePickerContentViewController__next___block_invoke(uint64_t a1)
{
  v2 = [HUCharacteristicTriggerEventViewController alloc];
  v3 = [*(a1 + 32) eventBuilderItem];
  v4 = [*(a1 + 32) triggerBuilder];
  v5 = [*(a1 + 32) mode];
  v6 = [*(a1 + 32) delegate];
  v9 = [(HUCharacteristicTriggerEventViewController *)v2 initWithCharacteristicEventBuilderItem:v3 triggerBuilder:v4 mode:v5 delegate:v6];

  v7 = [*(a1 + 32) navigationController];
  v8 = [v7 hu_pushPreloadableViewController:v9 animated:1];
}

- (void)itemManagerDidUpdate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v26 itemManagerDidUpdate:a3];
  v17 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(HUItemCollectionViewController *)self itemManager];
  v5 = [v4 allDisplayedItems];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if (([v10 conformsToProtocol:&unk_28251AFC0] & 1) == 0)
        {
          NSLog(&cfstr_OurItemsMustVe.isa);
        }

        if ([v10 conformsToProtocol:&unk_28251AFC0])
        {
          v11 = v10;
          v12 = [v11 services];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke;
          v21[3] = &unk_277DB9560;
          v21[4] = self;
          v13 = [v12 na_any:v21];

          if (v13)
          {
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3;
            v18[3] = &unk_277DBB548;
            v14 = v11;
            v19 = v14;
            v20 = self;
            if (__82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3(v18))
            {
              [v17 addObject:v14];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = [objc_alloc(MEMORY[0x277D14868]) initWithFromSet:v17];
  v16 = [v15 copy];
  [(HUSelectableServiceGridViewController *)self setSelectedItems:v16];

  [(HUCharacteristicTriggerServicePickerContentViewController *)self _validateNextButton];
}

uint64_t __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke_2;
  v6[3] = &unk_277DB9538;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 eventBuilderItem];
  v5 = [v4 characteristics];
  v6 = [v5 containsObject:v3];

  return v6;
}

uint64_t __82__HUCharacteristicTriggerServicePickerContentViewController_itemManagerDidUpdate___block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) latestResults];
  v3 = [v2 objectForKeyedSubscript:@"HUCharacteristicTriggerServiceRepresentativeCharacteristicKey"];
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

- (id)layoutOptionsForSection:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!a3)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:9.0];
  }

  return v5;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v7 configureCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setShouldColorDescription:0];
  }
}

- (BOOL)serviceGridItemManager:(id)a3 shouldHideItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() instancesRespondToSelector:sel_serviceGridItemManager_shouldHideItem_])
  {
    v25.receiver = self;
    v25.super_class = HUCharacteristicTriggerServicePickerContentViewController;
    if ([(HUSelectableServiceGridViewController *)&v25 serviceGridItemManager:v6 shouldHideItem:v7])
    {
      goto LABEL_3;
    }
  }

  if (![v7 conformsToProtocol:&unk_28251AFC0])
  {
    goto LABEL_13;
  }

  v9 = v7;
  v10 = [(HUCharacteristicTriggerServicePickerContentViewController *)self source];
  if (v10)
  {
    if (v10 != 1)
    {

      goto LABEL_13;
    }

    v22 = 0;
    v11 = [HUCharacteristicEventOptionProvider hasOptionsForServiceVendingItem:v9 outCharacteristicType:&v22];
    v12 = v22;
    v13 = v12;
    if (!v11)
    {

      LOBYTE(v8) = 1;
LABEL_15:

      goto LABEL_17;
    }

    v14 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v15 = [v14 containsObject:v13];

    if ((v15 & 1) == 0)
    {
LABEL_13:
      v20 = [(HUCharacteristicTriggerServicePickerContentViewController *)self filter];

      if (!v20)
      {
        LOBYTE(v8) = 0;
        goto LABEL_17;
      }

      v9 = [(HUCharacteristicTriggerServicePickerContentViewController *)self filter];
      v8 = (*(v9 + 2))(v9, v7) ^ 1;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v17 = [v9 services];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __99__HUCharacteristicTriggerServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke;
    v23[3] = &unk_277DB9560;
    v24 = v16;
    v18 = v16;
    v19 = [v17 na_any:v23];

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

uint64_t __99__HUCharacteristicTriggerServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __99__HUCharacteristicTriggerServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke_2;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __99__HUCharacteristicTriggerServicePickerContentViewController_serviceGridItemManager_shouldHideItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [(HUCharacteristicTriggerServicePickerContentViewController *)self triggerBuilder:a3];
  v5 = [v4 home];
  v6 = [v5 hf_currentUserIsAdministrator];

  return v6;
}

- (void)didChangeSelection
{
  v10.receiver = self;
  v10.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v10 didChangeSelection];
  v3 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v4 = [v3 toSet];
  v5 = [v4 anyObject];

  v6 = v5;
  if ([v6 conformsToProtocol:&unk_28251AFC0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v6 || v8)
  {
    if (v8)
    {
      v9 = [(HUCharacteristicTriggerServicePickerContentViewController *)self source];
      if (v9 == 1)
      {
        [(HUCharacteristicTriggerServicePickerContentViewController *)self _addCharacteristicEventsForOtherDeviceItem:v8];
      }

      else if (!v9)
      {
        [(HUCharacteristicTriggerServicePickerContentViewController *)self _addCharacteristicEventsForAlarmItem:v8];
      }
    }
  }

  else
  {
    NSLog(&cfstr_OurItemsMustVe.isa);
  }

  [(HUCharacteristicTriggerServicePickerContentViewController *)self _validateNextButton];
}

- (BOOL)canSelectItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  if ([(HUSelectableServiceGridViewController *)&v17 canSelectItem:v6 indexPath:a4])
  {
    v7 = v6;
    if ([v7 conformsToProtocol:&unk_28251AFC0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 accessories];
    v11 = [v10 na_any:&__block_literal_global_67];

    if (v11)
    {
      LOBYTE(v12) = 0;
    }

    else if (v9)
    {
      v13 = [v9 services];
      v14 = [(HUCharacteristicTriggerServicePickerContentViewController *)self triggerBuilder];
      v15 = [v14 home];
      v12 = ![HUCharacteristicEventOptionProvider homeHubUpdateRequiredForServices:v13 forHome:v15];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

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

  v13 = [v12 accessories];
  v14 = [v13 na_any:&__block_literal_global_108];

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
    v17 = [v12 services];
    v18 = [(HUCharacteristicTriggerServicePickerContentViewController *)self triggerBuilder];
    v19 = [v18 home];
    v20 = [HUCharacteristicEventOptionProvider homeHubUpdateRequiredForServices:v17 forHome:v19];

    if (v20)
    {
      v15 = @"HUCharacteristicTriggerRequireHomeHubUpdateMessage";
      v16 = @"HUAlertSoftwareUpdateRequired";
      goto LABEL_9;
    }
  }

LABEL_10:
  v28.receiver = self;
  v28.super_class = HUCharacteristicTriggerServicePickerContentViewController;
  [(HUSelectableServiceGridViewController *)&v28 collectionView:v6 didSelectItemAtIndexPath:v7];
}

+ (id)getThresholdRangeValueForCharacteristics:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 hf_characteristicValueManager];
  v8 = [v7 readValuesForCharacteristics:v5];

  v9 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v10 = [v8 reschedule:v9];
  v11 = [v10 flatMap:&__block_literal_global_131];

  v12 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke_3;
  v22[3] = &unk_277DB8810;
  v23 = v6;
  v13 = v5;
  v24 = v13;
  v25 = v11;
  v14 = v11;
  v15 = v6;
  v16 = [v12 afterDelay:v22 performBlock:0.5];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke_4;
  v20[3] = &unk_277DB7AB8;
  v21 = v13;
  v17 = v13;
  v18 = [v14 flatMap:v20];

  return v18;
}

id __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 allReadResponses];
  v4 = [v3 anyObject];
  v5 = [v4 value];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:v7];
  }

  else
  {
    v9 = [v2 allReadResponses];
    v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_135];
    v11 = [v10 error];

    v8 = [MEMORY[0x277D2C900] futureWithError:v11];
  }

  return v8;
}

BOOL __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

void __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_characteristicValueManager];
  v3 = [*(a1 + 40) anyObject];
  v6 = [v2 cachedValueForCharacteristic:v3];

  v4 = *(a1 + 48);
  if (v6)
  {
    [v4 finishWithResult:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:39];
    [v4 finishWithError:v5];
  }
}

id __109__HUCharacteristicTriggerServicePickerContentViewController_getThresholdRangeValueForCharacteristics_inHome___block_invoke_4(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) anyObject];
  v5 = [v4 characteristicType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCF830]];

  if (v6)
  {
    v7 = [*(a1 + 32) anyObject];
    v8 = [v7 hf_visibleTriggerValues];

    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(MEMORY[0x277CD1970], "hf_indexOfSortedValues:closestToValue:", v8, v3)}];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    v12 = v11;

    v3 = v12;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = a1;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v14)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = *v42;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v41 + 1) + 8 * i);
      v21 = [v20 hf_maximumTriggerValue];
      v22 = [v20 hf_minimumTriggerValue];
      if (!v17 || [v21 compare:v17] == -1)
      {
        v23 = v21;

        v17 = v23;
        if (v16)
        {
LABEL_16:
          if ([v22 compare:v16] != 1)
          {
            goto LABEL_18;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      v24 = v22;

      v16 = v24;
LABEL_18:
    }

    v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v15);
LABEL_22:

  if ([v3 compare:v17] == 1)
  {
    v25 = MEMORY[0x277CD1CB0];
    v26 = [*(v40 + 32) anyObject];
    v27 = [v26 hf_valueBeforeTriggerValue:v17];
    v28 = [v25 numberRangeWithMaxValue:v27];
    goto LABEL_28;
  }

  if ([v3 compare:v16] == -1)
  {
    v36 = MEMORY[0x277CD1CB0];
    v26 = [*(v40 + 32) anyObject];
    v27 = [v26 hf_valueAfterTriggerValue:v16];
    v28 = [v36 numberRangeWithMinValue:v27];
LABEL_28:
    v37 = v28;
  }

  else
  {
    [v3 doubleValue];
    v30 = v29;
    [v16 doubleValue];
    v32 = vabdd_f64(v30, v31);
    [v3 doubleValue];
    v34 = v33;
    [v17 doubleValue];
    if (v32 >= vabdd_f64(v34, v35))
    {
      [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:v3];
    }

    else
    {
      [MEMORY[0x277CD1CB0] numberRangeWithMinValue:v3];
    }
    v37 = ;
  }

  v38 = [MEMORY[0x277D2C900] futureWithResult:v37];

  return v38;
}

- (void)_addCharacteristicEventsForAlarmItem:(id)a3
{
  v4 = a3;
  v28 = [v4 services];
  v5 = [v28 na_map:&__block_literal_global_142_0];
  v6 = [v5 na_setByFlattening];

  v7 = [v4 latestResults];
  v8 = [v7 objectForKeyedSubscript:@"HUCharacteristicTriggerServiceRepresentativeCharacteristicKey"];

  if (v8 && [v6 containsObject:v8])
  {
    v9 = [MEMORY[0x277CBEB98] setWithObject:v8];

    v6 = v9;
  }

  v10 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_2;
  v34[3] = &unk_277DB9538;
  v11 = v10;
  v35 = v11;
  v12 = [v6 na_firstObjectPassingTest:v34];
  v13 = [v12 characteristicType];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_3;
  v32[3] = &unk_277DB9538;
  v14 = v13;
  v33 = v14;
  v15 = [v6 na_filter:v32];
  v16 = [MEMORY[0x277CD1970] hf_abnormalValueForSensorCharacteristicType:v14];
  if (![v15 count])
  {
    NSLog(&cfstr_NoAlarmCharact.isa, v4);
  }

  v29 = v4;
  if (!v16)
  {
    NSLog(&cfstr_NoAbnormalValu.isa, v14);
  }

  [(HUCharacteristicTriggerServicePickerContentViewController *)self _addTriggerValue:v16 forCharacteristics:v15];
  v17 = [MEMORY[0x277CD1970] hf_continuousValueRangeCharacteristicTypes];
  v18 = [v17 containsObject:v14];

  if (v18)
  {
    v19 = objc_opt_class();
    v20 = [(HUItemCollectionViewController *)self itemManager];
    v21 = [v20 home];
    v22 = [v19 getThresholdRangeValueForCharacteristics:v15 inHome:v21];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_4;
    v30[3] = &unk_277DBB5B0;
    v30[4] = self;
    v31 = v15;
    v23 = [v22 flatMap:v30];
    v24 = self;
    v25 = v8;
    v26 = v11;
    v27 = v23;
    [(HUCharacteristicTriggerServicePickerContentViewController *)v24 setCharacteristicReadFuture:v23];

    v11 = v26;
    v8 = v25;
  }
}

id __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_2(uint64_t a1, void *a2)
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

uint64_t __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __98__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForAlarmItem___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _addTriggerValue:a2 forCharacteristics:*(a1 + 40)];
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

- (void)_addCharacteristicEventsForOtherDeviceItem:(id)a3
{
  v4 = a3;
  v5 = [v4 services];
  v6 = [v5 na_map:&__block_literal_global_152];
  v7 = [v6 na_setByFlattening];

  v19 = 0;
  [HUCharacteristicEventOptionProvider hasOptionsForServiceVendingItem:v4 outCharacteristicType:&v19];
  v8 = v19;
  if (!v8)
  {
    NSLog(&cfstr_NoSupportedCha.isa, v4);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_2;
  v17[3] = &unk_277DB9538;
  v9 = v8;
  v18 = v9;
  v10 = [v7 na_filter:v17];
  if (![v10 count])
  {
    NSLog(&cfstr_NoCharacterist.isa, v9, v4);
  }

  v11 = [(HUCharacteristicTriggerServicePickerContentViewController *)self eventBuilderItem];
  v12 = [v11 setCharacteristics:v10 triggerValue:0];

  v13 = [v12 deletions];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_3;
  v16[3] = &unk_277DBB5D8;
  v16[4] = self;
  [v13 na_each:v16];

  v14 = [v12 additions];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_4;
  v15[3] = &unk_277DBB5D8;
  v15[4] = self;
  [v14 na_each:v15];
}

id __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __104__HUCharacteristicTriggerServicePickerContentViewController__addCharacteristicEventsForOtherDeviceItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

- (void)_addTriggerValue:(id)a3 forCharacteristics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUCharacteristicTriggerServicePickerContentViewController *)self eventBuilderItem];
  v9 = [v8 setCharacteristics:v6 triggerValue:v7];

  v10 = [v9 deletions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HUCharacteristicTriggerServicePickerContentViewController__addTriggerValue_forCharacteristics___block_invoke;
  v13[3] = &unk_277DBB5D8;
  v13[4] = self;
  [v10 na_each:v13];

  v11 = [v9 additions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HUCharacteristicTriggerServicePickerContentViewController__addTriggerValue_forCharacteristics___block_invoke_2;
  v12[3] = &unk_277DBB5D8;
  v12[4] = self;
  [v11 na_each:v12];
}

void __97__HUCharacteristicTriggerServicePickerContentViewController__addTriggerValue_forCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 removeEventBuilder:v3];
}

void __97__HUCharacteristicTriggerServicePickerContentViewController__addTriggerValue_forCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerBuilder];
  [v4 addEventBuilder:v3];
}

- (void)_validateNextButton
{
  v7 = [(HUSelectableServiceGridViewController *)self selectedItems];
  v3 = [v7 toSet];
  v4 = [v3 count] != 0;
  v5 = [(HUCharacteristicTriggerServicePickerContentViewController *)self effectiveNavigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4];
}

+ (id)transformationSetBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke;
  aBlock[3] = &__block_descriptor_40_e23___NSSet_16__0__HFItem_8l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke(uint64_t a1, void *a2)
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
  v18[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_2;
  v18[3] = &unk_277DBB640;
  v7 = v6;
  v8 = *(a1 + 32);
  v19 = v7;
  v20 = v8;
  v9 = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_2(v18);
  v10 = v9;
  if (v9 && [v9 count] >= 2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_5;
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

id __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 services];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_3;
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

id __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 characteristics];
  v5 = [v3 setWithArray:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_4;
  v8[3] = &__block_descriptor_40_e26_B16__0__HMCharacteristic_8l;
  v8[4] = *(a1 + 32);
  v6 = [v5 na_filter:v8];

  return v6;
}

BOOL __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 splitCharacteristicResults];
  v5 = [v3 characteristicType];

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

id __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14AD8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_6;
  v10[3] = &unk_277DBB668;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v7 = v3;
  v8 = [v4 initWithSourceItem:v6 transformationBlock:v10];

  return v8;
}

id __83__HUCharacteristicTriggerServicePickerContentViewController_transformationSetBlock__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"HUCharacteristicTriggerServiceRepresentativeCharacteristicKey"];
  v4 = [*(a1 + 40) splitCharacteristicResults];
  v5 = [*(a1 + 32) characteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v3 addEntriesFromDictionary:v6];

  return v3;
}

+ (id)splitCharacteristicResults
{
  if (_MergedGlobals_4_0 != -1)
  {
    dispatch_once(&_MergedGlobals_4_0, &__block_literal_global_173);
  }

  v3 = qword_27C837E70;

  return v3;
}

void __87__HUCharacteristicTriggerServicePickerContentViewController_splitCharacteristicResults__block_invoke_2()
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
  v15 = qword_27C837E70;
  qword_27C837E70 = v14;
}

@end