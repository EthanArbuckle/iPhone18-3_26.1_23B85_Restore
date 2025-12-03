@interface HFWaterCategoryStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFWaterCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_253 != -1)
  {
    dispatch_once(&_MergedGlobals_253, &__block_literal_global_3_13);
  }

  v3 = qword_280E02FB8;

  return v3;
}

void __46__HFWaterCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = qword_280E02FB8;
  qword_280E02FB8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = HFWaterCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFWaterCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __57__HFWaterCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"hidden"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameWater", @"HFAccessoryTypeGroupNameWater", 1);
  [v3 setObject:v6 forKeyedSubscript:@"title"];

  [v3 setObject:@"Home.Status.Category.Water" forKeyedSubscript:@"userAccessDescription"];
  [v3 setObject:@"drop.fill" forKeyedSubscript:@"iconNames"];
  v7 = [HFImageIconDescriptor alloc];
  v8 = [v3 objectForKeyedSubscript:@"iconNames"];
  v9 = [(HFImageIconDescriptor *)v7 initWithSystemImageNamed:v8];
  [v3 setObject:v9 forKeyedSubscript:@"icon"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v10 BOOLValue])
  {

LABEL_7:
    v27 = [MEMORY[0x277D2C900] futureWithResult:v3];
    goto LABEL_8;
  }

  v11 = [v3 objectForKeyedSubscript:@"state"];
  v12 = [v11 integerValue];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v3 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v14 = [v13 count];
  v15 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v16 = [v15 latestResults];
  v17 = [v16 objectForKeyedSubscript:@"state"];
  v18 = [v17 isEqual:&unk_2825240A8];

  if (v18)
  {
    v25 = [v15 latestResults];
    v26 = [v25 objectForKeyedSubscript:@"title"];
    [v3 setObject:v26 forKeyedSubscript:@"description"];
  }

  else
  {
    if (v14)
    {
      HFLocalizedStringWithFormat(@"HFWaterCategoryStatusDescription_On", @"%lu", v19, v20, v21, v22, v23, v24, v14);
    }

    else
    {
      _HFLocalizedStringWithDefaultValue(@"HFWaterCategoryStatusDescription_AllOff", @"HFWaterCategoryStatusDescription_AllOff", 1);
    }
    v25 = ;
    [v3 setObject:v25 forKeyedSubscript:@"description"];
  }

  [*(a1 + 40) applyInflectionToDescriptions:v3];
  v27 = [MEMORY[0x277D2C900] futureWithResult:v3];

LABEL_8:

  return v27;
}

@end