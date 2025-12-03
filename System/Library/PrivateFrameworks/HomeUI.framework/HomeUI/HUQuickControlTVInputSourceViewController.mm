@interface HUQuickControlTVInputSourceViewController
+ (id)controlItemPredicate;
- (BOOL)_shouldWriteInputValue:(id)value;
- (id)_toPickerViewItems:(id)items;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
@end

@implementation HUQuickControlTVInputSourceViewController

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlWheelPickerView alloc];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlWheelPickerView *)v3 initWithProfile:viewProfile];

  v6 = [[HUQuickControlSimpleInteractionCoordinator alloc] initWithControlView:v5 delegate:self];

  return v6;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlWheelPickerViewProfile);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  valueSource = [controlItem valueSource];
  v6 = [valueSource allCharacteristicsForCharacteristicType:*MEMORY[0x277CCF748]];
  v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_109];

  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  valueSource2 = [controlItem2 valueSource];
  v9ValueSource = [valueSource2 valueSource];
  v11 = [v9ValueSource cachedValueForCharacteristic:v7];
  bOOLValue = [v11 BOOLValue];

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem3 latestResults];
  v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if (bOOLValue)
  {
    v16 = [v15 na_all:&__block_literal_global_7_0];
  }

  else
  {
    v16 = 1;
  }

  [(HUQuickControlWheelPickerViewProfile *)v3 setShowOffState:v16];

  return v3;
}

uint64_t __62__HUQuickControlTVInputSourceViewController_createViewProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 serviceType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CD0F20]];

  return v4;
}

uint64_t __62__HUQuickControlTVInputSourceViewController_createViewProfile__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isHidden];
  return v6;
}

- (id)controlToViewValueTransformer
{
  v3 = MEMORY[0x277D14CF0];
  v4 = objc_opt_class();
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HUQuickControlTVInputSourceViewController_controlToViewValueTransformer__block_invoke;
  v8[3] = &unk_277DBCFB8;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HUQuickControlTVInputSourceViewController_controlToViewValueTransformer__block_invoke_2;
  v7[3] = &unk_277DBCFE0;
  v5 = [v3 transformerForValueClass:v4 transformBlock:v8 reverseTransformBlock:v7];

  return v5;
}

id __74__HUQuickControlTVInputSourceViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _filterInputValues:v2];
  v6 = [v3 _toPickerViewItems:v5];

  return v6;
}

id __74__HUQuickControlTVInputSourceViewController_controlToViewValueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldWriteInputValue:v3])
  {
    v4 = [*(a1 + 32) controlItem];
    v5 = [v4 writeValue:v3];
  }

  return v3;
}

- (BOOL)_shouldWriteInputValue:(id)value
{
  valueCopy = value;
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  if (v7)
  {
    v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_15_1];
    identifier = [v8 identifier];
    identifier2 = [valueCopy identifier];
    v11 = [identifier isEqualToNumber:identifier2] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

BOOL __64__HUQuickControlTVInputSourceViewController__filterInputValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ([v5 isHidden] & 1) == 0)
  {
    v7 = [v5 name];
    if (v7)
    {
      v8 = [v5 identifier];
      v6 = v8 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_toPickerViewItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [HUQuickControlWheelPickerViewItem alloc];
        v12 = [(HUQuickControlWheelPickerViewItem *)v11 initWithHFTVInputControlItemValue:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end