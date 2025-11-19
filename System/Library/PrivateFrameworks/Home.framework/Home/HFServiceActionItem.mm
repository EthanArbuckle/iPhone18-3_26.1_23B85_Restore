@interface HFServiceActionItem
+ (id)_percentFormatter;
- (HFAccessoryRepresentable)accessoryRepresentableObject;
- (HFCharacteristicValueSource)valueSource;
- (HFHomeKitObject)homeKitObject;
- (HFServiceActionItem)init;
- (HFServiceActionItem)initWithHome:(id)a3 containingItem:(id)a4;
- (NSSet)services;
- (NSString)description;
- (id)_characteristicTypeToTargetValuesMap;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)namingComponentForHomeKitObject;
- (id)serviceActionItemForChildServiceItem:(id)a3;
- (void)_getDesiredItemDescription:(id *)a3 controlDescription:(id *)a4 withSourceItemResults:(id)a5;
- (void)addAction:(id)a3;
- (void)addActionBuilder:(id)a3;
@end

@implementation HFServiceActionItem

- (HFServiceActionItem)initWithHome:(id)a3 containingItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFServiceActionItem;
  v9 = [(HFServiceActionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_containingItem, a4);
  }

  return v10;
}

- (HFServiceActionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:50 description:@"Use -initWithHome:containingItem:"];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFServiceActionItem *)self actions];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFServiceActionItem *)self actionBuilders];
  v9 = [v8 hf_prettyDescription];
  v10 = [(HFServiceActionItem *)self containingItem];
  v11 = [(HFItem *)self latestResults];
  v12 = [v3 stringWithFormat:@"<%@: %p, actions: %@ builders: %@ containined in: %@ %@>", v5, self, v7, v9, v10, v11];

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceActionItem *)self containingItem];

  if (!v5)
  {
    NSLog(&cfstr_MustHaveAConta.isa);
  }

  v6 = [(HFServiceActionItem *)self containingItem];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [(HFServiceActionItem *)self actionBuilders];
    [v7 na_safeSetObject:v8 forKey:HFItemUpdateOptionActionBuilders];

    v9 = [(HFServiceActionItem *)self containingItem];
    v10 = [v9 updateWithOptions:v7];
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

- (void)addAction:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v5 = [(HFServiceActionItem *)self actions];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  [v6 addObject:v9];
  v7 = [v6 copy];
  [(HFServiceActionItem *)self setActions:v7];
}

- (void)addActionBuilder:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HFServiceActionItem.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"actionBuilder"}];
  }

  v5 = [(HFServiceActionItem *)self actionBuilders];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  [v6 addObject:v9];
  v7 = [v6 copy];
  [(HFServiceActionItem *)self setActionBuilders:v7];
}

- (id)serviceActionItemForChildServiceItem:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [(HFServiceActionItem *)self services];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [v5 hf_prettyDescription];
    NSLog(&cfstr_RequestToCreat.isa, v8, self);
  }

  v9 = [HFServiceActionItem alloc];
  v10 = [(HFServiceActionItem *)self home];
  v11 = [(HFServiceActionItem *)v9 initWithHome:v10 containingItem:v4];

  v12 = [(HFServiceActionItem *)self actionBuilders];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke;
  v21[3] = &unk_277DF4998;
  v13 = v5;
  v22 = v13;
  v14 = [v12 na_filter:v21];
  [(HFServiceActionItem *)v11 setActionBuilders:v14];

  v15 = [(HFServiceActionItem *)self actions];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HFServiceActionItem_serviceActionItemForChildServiceItem___block_invoke_2;
  v19[3] = &unk_277DF6308;
  v20 = v13;
  v16 = v13;
  v17 = [v15 na_filter:v19];
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
  v2 = [(HFServiceActionItem *)self containingItem];
  v3 = [v2 homeKitObject];

  return v3;
}

- (NSSet)services
{
  v2 = [(HFServiceActionItem *)self containingItem];
  v3 = [v2 services];

  return v3;
}

- (id)accessories
{
  v2 = [(HFServiceActionItem *)self containingItem];
  v3 = [v2 accessories];

  return v3;
}

- (HFCharacteristicValueSource)valueSource
{
  v2 = [(HFServiceActionItem *)self containingItem];
  v3 = [v2 valueSource];

  return v3;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFServiceActionItem *)self home];
  v7 = [(HFServiceActionItem *)self containingItem];
  v8 = [v7 copyWithValueSource:v4];

  v9 = [v5 initWithHome:v6 containingItem:v8];
  [v9 copyLatestResultsFromItem:self];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFServiceActionItem *)self valueSource];
  v5 = [(HFServiceActionItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFServiceActionItem *)self containingItem];
  v3 = [v2 homeKitObject];
  v4 = [HFNamingComponents namingComponentFromHomeKitObject:v3];

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

- (void)_getDesiredItemDescription:(id *)a3 controlDescription:(id *)a4 withSourceItemResults:(id)a5
{
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"description"];
  v10 = [v8 objectForKeyedSubscript:@"controlDescription"];
  v11 = [v8 objectForKeyedSubscript:@"errorDescription"];
  v12 = v11;
  v52 = a3;
  if (v11 && [v11 isEqualToString:v9])
  {

    v10 = 0;
    v9 = 0;
  }

  v13 = [(HFServiceActionItem *)self _characteristicTypeToTargetValuesMap];
  v14 = [v8 objectForKeyedSubscript:@"childItems"];
  v15 = [v14 na_firstObjectPassingTest:&__block_literal_global_48_1];

  v54 = [v15 incrementalCharacteristicType];
  v16 = [v8 objectForKeyedSubscript:@"childItems"];
  v53 = [v16 na_firstObjectPassingTest:&__block_literal_global_51];

  v17 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_3;
  v57[3] = &unk_277DF3130;
  v18 = v13;
  v58 = v18;
  LODWORD(v13) = [v17 na_any:v57];

  if (v13)
  {
    v19 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __91__HFServiceActionItem__getDesiredItemDescription_controlDescription_withSourceItemResults___block_invoke_4;
    v55[3] = &unk_277DF2DD8;
    v20 = v18;
    v56 = v20;
    v21 = [v19 na_flatMap:v55];

    if ([v21 count] != 1)
    {
LABEL_31:

      v26 = v56;
      goto LABEL_32;
    }

    v51 = a4;
    v22 = [v21 anyObject];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      if (v54)
      {
        [v20 objectForKeyedSubscript:?];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v39 = ;
      a4 = v51;
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
    a4 = v51;
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
      v27 = a4;
      v28 = [v26 anyObject];
      v29 = [v28 integerValue];

      if (!v29)
      {
        v30 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueClosed", @"HFSceneDescriptionValueClosed", 1);

        v31 = _HFLocalizedStringWithDefaultValue(@"HFSceneDescriptionValueClosed", @"HFSceneDescriptionValueClosed", 1);

        v10 = v31;
        v9 = v30;
      }

      a4 = v27;
    }

LABEL_32:
    v48 = v52;

    if (!v52)
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

    v34 = [v26 anyObject];
    v35 = [v34 integerValue];
    v36 = @"HFSceneDescriptionValueOpen";
    v37 = @"HFSceneDescriptionValueClosed";
LABEL_21:
    if (v35 == 1)
    {
      v42 = v37;
    }

    else
    {
      v42 = v36;
    }

    _HFLocalizedStringWithDefaultValue(v42, v42, 1);
    v44 = v43 = a4;

    v45 = v44;
    a4 = v43;
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

    v34 = [v26 anyObject];
    v35 = [v34 integerValue];
    v36 = @"HFSceneDescriptionValueUnlocked";
    v37 = @"HFSceneDescriptionValueLocked";
    goto LABEL_21;
  }

  v48 = v52;
  if (v52)
  {
LABEL_33:
    v49 = v9;
    *v48 = v9;
  }

LABEL_34:
  if (a4)
  {
    v50 = v10;
    *a4 = v10;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HFServiceActionItem__characteristicTypeToTargetValuesMap__block_invoke;
  aBlock[3] = &unk_277DFAEB0;
  aBlock[4] = self;
  v26 = v3;
  v36 = v26;
  v4 = _Block_copy(aBlock);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(HFServiceActionItem *)self actions];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 characteristic];
          v13 = [v11 targetValue];

          v4[2](v4, v12, v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(HFServiceActionItem *)self actionBuilders];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
          v21 = [v20 characteristic];
          v22 = [v20 targetValue];

          v4[2](v4, v21, v22);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
  v2 = [(HFServiceActionItem *)self containingItem];
  if ([v2 conformsToProtocol:&unk_28252AFF0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 accessoryRepresentableObject];

  return v5;
}

@end