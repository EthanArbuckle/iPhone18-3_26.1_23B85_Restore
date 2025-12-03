@interface HFControlPanelItem
+ (NAIdentity)na_identity;
+ (id)_controlPanelItemRules;
+ (id)standardControlPanelItemsForControlItems:(id)items;
- (BOOL)isEqual:(id)equal;
- (HFControlPanelItem)init;
- (HFControlPanelItem)initWithControlItems:(id)items displayResults:(id)results;
- (id)_subclass_updateWithOptions:(id)options;
- (id)controlItemForIdentifier:(id)identifier;
- (id)identifierForControlItem:(id)item;
- (int64_t)sortPriority;
- (unint64_t)hash;
@end

@implementation HFControlPanelItem

- (HFControlPanelItem)initWithControlItems:(id)items displayResults:(id)results
{
  itemsCopy = items;
  resultsCopy = results;
  v27.receiver = self;
  v27.super_class = HFControlPanelItem;
  v8 = [(HFControlPanelItem *)&v27 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = uUIDString;

    v12 = [resultsCopy copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v8->_displayResults, v14);

    v15 = [itemsCopy copy];
    controlItems = v8->_controlItems;
    v8->_controlItems = v15;

    allObjects = [itemsCopy allObjects];
    v18 = [allObjects na_dictionaryWithKeyGenerator:&__block_literal_global_95];
    controlItemsByUUID = v8->_controlItemsByUUID;
    v8->_controlItemsByUUID = v18;

    allKeys = [(NSDictionary *)v8->_controlItemsByUUID allKeys];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HFControlPanelItem_initWithControlItems_displayResults___block_invoke_2;
    v25[3] = &unk_277DFA6D0;
    v21 = v8;
    v26 = v21;
    v22 = [allKeys na_dictionaryWithKeyGenerator:v25];
    UUIDsByControlItemPointer = v21->_UUIDsByControlItemPointer;
    v21->_UUIDsByControlItemPointer = v22;
  }

  return v8;
}

id __58__HFControlPanelItem_initWithControlItems_displayResults___block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];

  return v1;
}

id __58__HFControlPanelItem_initWithControlItems_displayResults___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCAE60];
  v3 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:a2];
  v4 = [v2 valueWithPointer:v3];

  return v4;
}

- (HFControlPanelItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithControlItems_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlPanelItem.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFControlPanelItem init]", v5}];

  return 0;
}

- (id)identifierForControlItem:(id)item
{
  itemCopy = item;
  uUIDsByControlItemPointer = [(HFControlPanelItem *)self UUIDsByControlItemPointer];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:itemCopy];

  v7 = [uUIDsByControlItemPointer objectForKeyedSubscript:v6];

  return v7;
}

- (id)controlItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controlItemsByUUID = [(HFControlPanelItem *)self controlItemsByUUID];
  v6 = [controlItemsByUUID objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  displayResults = [(HFControlPanelItem *)self displayResults];
  v5 = displayResults;
  if (!displayResults)
  {
    displayResults = MEMORY[0x277CBEC10];
  }

  v6 = [displayResults mutableCopy];

  controlItems = [(HFControlPanelItem *)self controlItems];
  [v6 setObject:controlItems forKeyedSubscript:@"childItems"];

  v8 = MEMORY[0x277D2C900];
  v9 = [HFItemUpdateOutcome outcomeWithResults:v6];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

+ (NAIdentity)na_identity
{
  if (qword_280E02708 != -1)
  {
    dispatch_once(&qword_280E02708, &__block_literal_global_14_5);
  }

  v3 = _MergedGlobals_1_0;

  return v3;
}

void __33__HFControlPanelItem_na_identity__block_invoke()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_18_2 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_21_1];
  v1 = [v4 appendCharacteristic:&__block_literal_global_25_4 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_27_4];
  v2 = [v4 build];
  v3 = _MergedGlobals_1_0;
  _MergedGlobals_1_0 = v2;
}

uint64_t __33__HFControlPanelItem_na_identity__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
}

uint64_t __33__HFControlPanelItem_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (int64_t)sortPriority
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  controlItems = [(HFControlPanelItem *)self controlItems];
  v3 = [controlItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = -1000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(controlItems);
        }

        sortPriority = [*(*(&v11 + 1) + 8 * i) sortPriority];
        if (v6 <= sortPriority)
        {
          v6 = sortPriority;
        }
      }

      v4 = [controlItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1000;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_controlPanelItemRules
{
  if (qword_280E03780 != -1)
  {
    dispatch_once(&qword_280E03780, &__block_literal_global_151);
  }

  v3 = _MergedGlobals_284;

  return v3;
}

void __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke()
{
  v14[11] = *MEMORY[0x277D85DE8];
  v13 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_66_2 displayResultsGenerator:&__block_literal_global_71_4];
  v14[0] = v13;
  v0 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_76_1 displayResultsGenerator:&__block_literal_global_78_1];
  v14[1] = v0;
  v1 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_83_2 displayResultsGenerator:&__block_literal_global_85_0];
  v14[2] = v1;
  v2 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_90 displayResultsGenerator:&__block_literal_global_92_1];
  v14[3] = v2;
  v3 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_97_1 displayResultsGenerator:&__block_literal_global_100_1];
  v14[4] = v3;
  v4 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_105_1 displayResultsGenerator:&__block_literal_global_108];
  v14[5] = v4;
  v5 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_113_0 displayResultsGenerator:&__block_literal_global_115_1];
  v14[6] = v5;
  v6 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_120_0 displayResultsGenerator:&__block_literal_global_122_1];
  v14[7] = v6;
  v7 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_127_3 displayResultsGenerator:&__block_literal_global_129_1];
  v14[8] = v7;
  v8 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_134 displayResultsGenerator:&__block_literal_global_136_0];
  v14[9] = v8;
  v9 = [[HFControlPanelItemSingleControlRule alloc] initWithFilter:&__block_literal_global_151_1 displayResultsGenerator:&__block_literal_global_153_1];
  v14[10] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:11];
  v11 = _MergedGlobals_284;
  _MergedGlobals_284 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFB58]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_68()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFServiceThermostatHumidityTitle", @"HFServiceThermostatHumidityTitle", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_2_74(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFB88]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_3()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFServiceThermostatDisplayUnitsTitle", @"HFServiceThermostatDisplayUnitsTitle", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFB28]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_5()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleHorizontalTilt", @"HFCharacteristicGroupTitleHorizontalTilt", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFB78]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_7()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleVerticalTilt", @"HFCharacteristicGroupTitleVerticalTilt", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristicOptions];
    v4 = [v3 objectForKeyedSubscript:&unk_2825244E0];
    v5 = [v4 containsObject:*MEMORY[0x277CCFB10]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_9()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleFanMode", @"HFCharacteristicGroupTitleFanMode", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristicOptions];
    v4 = [v3 objectForKeyedSubscript:&unk_2825244E0];
    v5 = [v4 containsObject:*MEMORY[0x277CCFA20]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_11()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleFanSpeed", @"HFCharacteristicGroupTitleFanSpeed", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFAF8]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_13()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleSwingMode", @"HFCharacteristicGroupTitleSwingMode", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCF958]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_15()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleLockPhysicalControls", @"HFCharacteristicGroupTitleLockPhysicalControls", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFB00]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_17()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleAirPurifierState", @"HFCharacteristicGroupTitleAirPurifierState", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCF920]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionaryWithCapacity:1];
  v5 = [v3 valueSource];

  v6 = [v5 primaryServiceDescriptor];
  v7 = [v6 serviceSubtype];

  if ([v7 isEqualToString:*MEMORY[0x277CD0DA8]])
  {
    v8 = @"HFCharacteristicGroupTitleIsConfiguredIrrigation";
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CD0DB0]])
  {
    v8 = @"HFCharacteristicGroupTitleIsConfiguredShowerHead";
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CD0DC0]])
  {
    v8 = @"HFCharacteristicGroupTitleIsConfiguredFaucet";
  }

  else
  {
    if (![v7 isEqualToString:*MEMORY[0x277CD0DA0]])
    {
      goto LABEL_10;
    }

    v8 = @"HFCharacteristicGroupTitleIsConfiguredGeneric";
  }

  v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
  [v4 setObject:v9 forKeyedSubscript:@"title"];

LABEL_10:

  return v4;
}

uint64_t __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicOptions];
  v3 = [v2 objectForKeyedSubscript:&unk_2825244E0];
  v4 = [v3 containsObject:*MEMORY[0x277CCFA60]];

  return v4;
}

id __56__HFControlPanelItem_Generating___controlPanelItemRules__block_invoke_21()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"title";
  v0 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleSetDuration", @"HFCharacteristicGroupTitleSetDuration", 1);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)standardControlPanelItemsForControlItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [items na_filter:&__block_literal_global_159];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [v3 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _controlPanelItemRules = [objc_opt_class() _controlPanelItemRules];
  v7 = [_controlPanelItemRules countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(_controlPanelItemRules);
        }

        v11 = 0;
        v12 = *(*(&v17 + 1) + 8 * i);
        do
        {
          v13 = v11;
          v11 = [v12 controlPanelItemForControlItems:v5];

          if (!v11)
          {
            break;
          }

          [v4 addObject:v11];
          controlItems = [v11 controlItems];
          [v5 minusSet:controlItems];
        }

        while ([v5 count]);
      }

      v8 = [_controlPanelItemRules countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

BOOL __75__HFControlPanelItem_Generating__standardControlPanelItemsForControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"controlItemPurpose"];

  if (v3)
  {
    v4 = ([v3 integerValue] & 6) == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end