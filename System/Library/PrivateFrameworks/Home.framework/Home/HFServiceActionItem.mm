@interface HFServiceActionItem
+ (id)_percentFormatter;
- (HFAccessoryRepresentable)accessoryRepresentableObject;
- (HFCharacteristicValueSource)valueSource;
- (HFHomeKitObject)homeKitObject;
- (HFServiceActionItem)init;
- (HFServiceActionItem)initWithHome:(id)home containingItem:(id)item;
- (NSSet)services;
- (NSString)description;
- (id)_characteristicTypeToTargetValuesMap;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
- (id)serviceActionItemForChildServiceItem:(id)item;
- (void)_getDesiredItemDescription:(id *)description controlDescription:(id *)controlDescription withSourceItemResults:(id)results;
- (void)addAction:(id)action;
- (void)addActionBuilder:(id)builder;
@end

@implementation HFServiceActionItem

- (HFServiceActionItem)initWithHome:(id)home containingItem:(id)item
{
  homeCopy = home;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = HFServiceActionItem;
  v9 = [(HFServiceActionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_containingItem, item);
  }

  return v10;
}

- (HFServiceActionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:50 description:@"Use -initWithHome:containingItem:"];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actions = [(HFServiceActionItem *)self actions];
  hf_prettyDescription = [actions hf_prettyDescription];
  actionBuilders = [(HFServiceActionItem *)self actionBuilders];
  hf_prettyDescription2 = [actionBuilders hf_prettyDescription];
  containingItem = [(HFServiceActionItem *)self containingItem];
  latestResults = [(HFItem *)self latestResults];
  v12 = [v3 stringWithFormat:@"<%@: %p, actions: %@ builders: %@ containined in: %@ %@>", v5, self, hf_prettyDescription, hf_prettyDescription2, containingItem, latestResults];

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  containingItem = [(HFServiceActionItem *)self containingItem];

  if (!containingItem)
  {
    NSLog(&cfstr_MustHaveAConta.isa);
  }

  containingItem2 = [(HFServiceActionItem *)self containingItem];

  if (containingItem2)
  {
    v7 = [optionsCopy mutableCopy];
    actionBuilders = [(HFServiceActionItem *)self actionBuilders];
    [v7 na_safeSetObject:actionBuilders forKey:HFItemUpdateOptionActionBuilders];

    containingItem3 = [(HFServiceActionItem *)self containingItem];
    v10 = [containingItem3 updateWithOptions:v7];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__HFServiceActionItem__subclass_updateWithOptions___block_invoke;
    v14[3] = &unk_277DF43A8;
    v14[4] = self;
    v11 = [v10 flatMap:v14];
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v12 futureWithError:v7];
  }

  return v11;
}

id __51__HFServiceActionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CBEB98] set];
  [v4 setObject:v5 forKeyedSubscript:@"dependentHomeKitObjects"];

  v6 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  [v6 _getDesiredItemDescription:&v15 controlDescription:&v14 withSourceItemResults:v4];
  v7 = v15;
  v8 = v14;
  [v4 na_safeSetObject:v7 forKey:@"description"];
  [v4 na_safeSetObject:v8 forKey:@"controlDescription"];

  if (_MergedGlobals_4_0 != -1)
  {
    dispatch_once(&_MergedGlobals_4_0, &__block_literal_global_20_7);
  }

  v9 = qword_27C84C4D8;
  [v4 removeObjectsForKeys:v9];
  v10 = MEMORY[0x277D2C900];
  v11 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v12 = [v10 futureWithResult:v11];

  return v12;
}

void __51__HFServiceActionItem__subclass_updateWithOptions___block_invoke_3()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"errorDescription";
  v3[1] = @"longErrorDescription";
  v3[2] = @"badge";
  v3[3] = @"underlyingError";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = qword_27C84C4D8;
  qword_27C84C4D8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)addAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  actions = [(HFServiceActionItem *)self actions];
  v6 = [actions mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  [v6 addObject:actionCopy];
  v7 = [v6 copy];
  [(HFServiceActionItem *)self setActions:v7];
}

- (void)addActionBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"actionBuilder"}];
  }

  actionBuilders = [(HFServiceActionItem *)self actionBuilders];
  v6 = [actionBuilders mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  [v6 addObject:builderCopy];
  v7 = [v6 copy];
  [(HFServiceActionItem *)self setActionBuilders:v7];
}

- (id)serviceActionItemForChildServiceItem:(id)item
{
  itemCopy = item;
  service = [itemCopy service];
  services = [(HFServiceActionItem *)self services];
  v7 = [services containsObject:service];

  if ((v7 & 1) == 0)
  {
    hf_prettyDescription = [service hf_prettyDescription];
    NSLog(&cfstr_RequestToCreat.isa, hf_prettyDescription, self);
  }

  v9 = [HFServiceActionItem alloc];
  home = [(HFServiceActionItem *)self home];
  v11 = [(HFServiceActionItem *)v9 initWithHome:home containingItem:itemCopy];

  actionBuilders = [(HFServiceActionItem *)self actionBuilders];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke;
  v21[3] = &unk_277DF4998;
  v13 = service;
  v22 = v13;
  v14 = [actionBuilders na_filter:v21];
  [(HFServiceActionItem *)v11 setActionBuilders:v14];

  actions = [(HFServiceActionItem *)self actions];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke_2;
  v19[3] = &unk_277DF6308;
  v20 = v13;
  v16 = v13;
  v17 = [actions na_filter:v19];
  [(HFServiceActionItem *)v11 setActions:v17];

  return v11;
}

uint64_t __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 characteristic];
    v5 = [v4 service];
    v6 = [v5 uniqueIdentifier];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 characteristic];
    v5 = [v4 service];
    v6 = [v5 uniqueIdentifier];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HFHomeKitObject)homeKitObject
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  homeKitObject = [containingItem homeKitObject];

  return homeKitObject;
}

- (NSSet)services
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  services = [containingItem services];

  return services;
}

- (id)accessories
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  accessories = [containingItem accessories];

  return accessories;
}

- (HFCharacteristicValueSource)valueSource
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  valueSource = [containingItem valueSource];

  return valueSource;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  home = [(HFServiceActionItem *)self home];
  containingItem = [(HFServiceActionItem *)self containingItem];
  v8 = [containingItem copyWithValueSource:sourceCopy];

  v9 = [v5 initWithHome:home containingItem:v8];
  [v9 copyLatestResultsFromItem:self];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFServiceActionItem *)self valueSource];
  v5 = [(HFServiceActionItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  homeKitObject = [containingItem homeKitObject];
  v4 = [HFNamingComponents namingComponentFromHomeKitObject:homeKitObject];

  return v4;
}

+ (id)_percentFormatter
{
  if (qword_27C84C4E8 != -1)
  {
    dispatch_once(&qword_27C84C4E8, &__block_literal_global_44_1);
  }

  v3 = qword_27C84C4E0;

  return v3;
}

void __40__HFServiceActionItem__percentFormatter__block_invoke()
{
  v0 = objc_alloc_init(HFPercentFormatter);
  v1 = qword_27C84C4E0;
  qword_27C84C4E0 = v0;
}

- (void)_getDesiredItemDescription:(id *)description controlDescription:(id *)controlDescription withSourceItemResults:(id)results
{
  resultsCopy = results;
  v9 = [resultsCopy objectForKeyedSubscript:@"description"];
  v10 = [resultsCopy objectForKeyedSubscript:@"controlDescription"];
  v11 = [resultsCopy objectForKeyedSubscript:@"errorDescription"];
  v12 = v11;
  descriptionCopy = description;
  if (v11 && [v11 isEqualToString:v9])
  {

    v10 = 0;
    v9 = 0;
  }

  _characteristicTypeToTargetValuesMap = [(HFServiceActionItem *)self _characteristicTypeToTargetValuesMap];
  v14 = [resultsCopy objectForKeyedSubscript:@"childItems"];
  v15 = [v14 na_firstObjectPassingTest:&__block_literal_global_48_1];

  incrementalCharacteristicType = [v15 incrementalCharacteristicType];
  v16 = [resultsCopy objectForKeyedSubscript:@"childItems"];
  v53 = [v16 na_firstObjectPassingTest:&__block_literal_global_51];

  hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_3;
  v57[3] = &unk_277DF3130;
  v18 = _characteristicTypeToTargetValuesMap;
  v58 = v18;
  LODWORD(_characteristicTypeToTargetValuesMap) = [hf_powerStateCharacteristicTypes na_any:v57];

  if (_characteristicTypeToTargetValuesMap)
  {
    hf_powerStateCharacteristicTypes2 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_4;
    v55[3] = &unk_277DF2DD8;
    v20 = v18;
    v56 = v20;
    v21 = [hf_powerStateCharacteristicTypes2 na_flatMap:v55];

    if ([v21 count] != 1)
    {
LABEL_31:

      v26 = v56;
      goto LABEL_32;
    }

    controlDescriptionCopy = controlDescription;
    anyObject = [v21 anyObject];
    bOOLValue = [anyObject BOOLValue];

    if (bOOLValue)
    {
      if (incrementalCharacteristicType)
      {
        [v20 objectForKeyedSubscript:?];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v39 = ;
      controlDescription = controlDescriptionCopy;
      if ([v39 count] || v53)
      {
        goto LABEL_30;
      }

      v38 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueOn", @"HFSceneDescriptionValueOn", 1);

      v47 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueOn", @"HFSceneDescriptionValueOn", 1);

      v10 = v47;
    }

    else
    {
      v38 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueOff", @"HFSceneDescriptionValueOff", 1);

      _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueOff", @"HFSceneDescriptionValueOff", 1);
      v10 = v39 = v10;
    }

    v9 = v38;
    controlDescription = controlDescriptionCopy;
LABEL_30:

    goto LABEL_31;
  }

  v24 = *MEMORY[0x277CCFB50];
  v25 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCFB50]];

  if (v25)
  {
    v26 = [v18 objectForKeyedSubscript:v24];
    if ([v26 count] == 1)
    {
      controlDescriptionCopy2 = controlDescription;
      anyObject2 = [v26 anyObject];
      integerValue = [anyObject2 integerValue];

      if (!integerValue)
      {
        v30 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueClosed", @"HFSceneDescriptionValueClosed", 1);

        v31 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueClosed", @"HFSceneDescriptionValueClosed", 1);

        v10 = v31;
        v9 = v30;
      }

      controlDescription = controlDescriptionCopy2;
    }

LABEL_32:
    v48 = descriptionCopy;

    if (!descriptionCopy)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v32 = *MEMORY[0x277CCFB08];
  v33 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCFB08]];

  if (v33)
  {
    v26 = [v18 objectForKeyedSubscript:v32];
    if ([v26 count] != 1)
    {
      goto LABEL_32;
    }

    anyObject3 = [v26 anyObject];
    integerValue2 = [anyObject3 integerValue];
    v36 = @"HFSceneDescriptionValueOpen";
    v37 = @"HFSceneDescriptionValueClosed";
LABEL_21:
    if (integerValue2 == 1)
    {
      v42 = v37;
    }

    else
    {
      v42 = v36;
    }

    _HFLocalizedStringWithDefaultValue(v42, v42, 1);
    v44 = v43 = controlDescription;

    v45 = v44;
    controlDescription = v43;
    v46 = v45;

    v10 = v46;
    v9 = v46;
    goto LABEL_32;
  }

  v40 = *MEMORY[0x277CCFB40];
  v41 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCFB40]];

  if (v41)
  {
    v26 = [v18 objectForKeyedSubscript:v40];
    if ([v26 count] != 1)
    {
      goto LABEL_32;
    }

    anyObject3 = [v26 anyObject];
    integerValue2 = [anyObject3 integerValue];
    v36 = @"HFSceneDescriptionValueUnlocked";
    v37 = @"HFSceneDescriptionValueLocked";
    goto LABEL_21;
  }

  v48 = descriptionCopy;
  if (descriptionCopy)
  {
LABEL_33:
    v49 = v9;
    *v48 = v9;
  }

LABEL_34:
  if (controlDescription)
  {
    v50 = v10;
    *controlDescription = v10;
  }
}

uint64_t __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)_characteristicTypeToTargetValuesMap
{
  v39 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HFServiceActionItem__characteristicTypeToTargetValuesMap__block_invoke;
  aBlock[3] = &unk_277DFAEB0;
  aBlock[4] = self;
  v26 = dictionary;
  v36 = v26;
  v4 = _Block_copy(aBlock);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  actions = [(HFServiceActionItem *)self actions];
  v6 = [actions countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          characteristic = [v11 characteristic];
          targetValue = [v11 targetValue];

          v4[2](v4, characteristic, targetValue);
        }
      }

      v7 = [actions countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  actionBuilders = [(HFServiceActionItem *)self actionBuilders];
  v15 = [actionBuilders countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(actionBuilders);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
          characteristic2 = [v20 characteristic];
          targetValue2 = [v20 targetValue];

          v4[2](v4, characteristic2, targetValue2);
        }
      }

      v16 = [actionBuilders countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v16);
  }

  v23 = v26;
  v24 = *MEMORY[0x277D85DE8];
  return v26;
}

void __59__HFServiceActionItem__characteristicTypeToTargetValuesMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) services];
  v7 = [v12 service];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [v12 characteristicType];
    v10 = v9;
    if (v5 && v9)
    {
      v11 = [*(a1 + 40) objectForKeyedSubscript:v9];
      if (!v11)
      {
        v11 = [MEMORY[0x277CBEB58] set];
        [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];
      }

      [v11 addObject:v5];
    }
  }
}

- (HFAccessoryRepresentable)accessoryRepresentableObject
{
  containingItem = [(HFServiceActionItem *)self containingItem];
  if ([containingItem conformsToProtocol:&unk_28252AFF0])
  {
    v3 = containingItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  accessoryRepresentableObject = [v4 accessoryRepresentableObject];

  return accessoryRepresentableObject;
}

@end