@interface HFEnergyCategoryStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFEnergyCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_291 != -1)
  {
    dispatch_once(&_MergedGlobals_291, &__block_literal_global_3_25);
  }

  v3 = qword_280E03880;

  return v3;
}

void __47__HFEnergyCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v0 = qword_280E03880;
  qword_280E03880 = MEMORY[0x277CBEBF8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = HFEnergyCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v11 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HFEnergyCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v9[4] = self;
  v10 = optionsCopy;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __58__HFEnergyCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"currentHomeDependency"];
  objc_opt_class();
  v4 = [v3 results];
  v5 = [v4 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 mutableCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  v10 = v9;

  v11 = [*(a1 + 32) home];
  [v10 addObject:v11];

  v12 = [v10 copy];
  [v3 setObject:v12 forKeyedSubscript:@"dependentHomeKitObjects"];

  v13 = [v3 objectForKeyedSubscript:@"hidden"];
  v14 = [v13 BOOLValue];

  if ((v14 & 1) == 0)
  {
    v15 = [*(a1 + 32) home];
    v16 = [v15 hf_isHomeEnergyVisible];

    if ((v16 & 1) != 0 && ([*(a1 + 32) home], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hf_isHomeEnergyHomeEmpty"), v17, !v18))
    {
      v19 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameEnergy", @"HFAccessoryTypeGroupNameEnergy", 1);
      [v3 setObject:v19 forKeyedSubscript:@"title"];

      [v3 setObject:@"Home.Status.Category.Energy" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
      [v3 setObject:@"bolt.fill" forKeyedSubscript:@"iconNames"];
      v20 = [HFImageIconDescriptor alloc];
      v21 = [v3 objectForKeyedSubscript:@"iconNames"];
      v22 = [(HFImageIconDescriptor *)v20 initWithSystemImageNamed:v21];
      [v3 setObject:v22 forKeyedSubscript:@"icon"];

      v23 = [*(a1 + 32) energyAdviceDisplayDescription];

      if (v23)
      {
        v24 = [*(a1 + 32) energyAdviceDisplayDescription];
        [v3 setObject:v24 forKeyedSubscript:@"description"];
      }

      [*(a1 + 32) applyInflectionToDescriptions:v3];
      v25 = [*(a1 + 40) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
      [v25 BOOLValue];
    }

    else
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }
  }

  v26 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v26;
}

@end