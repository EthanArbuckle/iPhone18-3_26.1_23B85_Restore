@interface HFLightCategoryStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFLightCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_319 != -1)
  {
    dispatch_once(&_MergedGlobals_319, &__block_literal_global_3_34);
  }

  v3 = qword_280E03CC8;

  return v3;
}

void __46__HFLightCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E03CC8;
  qword_280E03CC8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = HFLightCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFLightCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __57__HFLightCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"hidden"];
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    v6 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameLights", @"HFAccessoryTypeGroupNameLights", 1);
    [v3 setObject:v6 forKeyedSubscript:@"title"];

    [v3 setObject:@"Home.Status.Category.Lights" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    [v3 setObject:@"lightbulb.fill" forKeyedSubscript:@"iconNames"];
    v7 = [HFImageIconDescriptor alloc];
    v8 = [v3 objectForKeyedSubscript:@"iconNames"];
    v9 = [(HFImageIconDescriptor *)v7 initWithSystemImageNamed:v8];
    [v3 setObject:v9 forKeyedSubscript:@"icon"];

    v10 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    if ([v10 BOOLValue])
    {
    }

    else
    {
      v11 = [v3 objectForKeyedSubscript:@"state"];
      v12 = [v11 integerValue];

      if (v12)
      {
        v13 = [v3 objectForKeyedSubscript:@"representedHomeKitObjects"];
        v14 = [v13 count];
        if (v14)
        {
          HFLocalizedStringWithFormat(@"HFLightCategoryStatusDescription_On", @"%lu", v15, v16, v17, v18, v19, v20, v14);
        }

        else
        {
          _HFLocalizedStringWithDefaultValue(@"HFLightCategoryStatusDescription_AllOff", @"HFLightCategoryStatusDescription_AllOff", 1);
        }
        v23 = ;
        [v3 setObject:v23 forKeyedSubscript:@"description"];

        [*(a1 + 40) applyInflectionToDescriptions:v3];
        v21 = [MEMORY[0x277D2C900] futureWithResult:v3];

        goto LABEL_8;
      }
    }
  }

  v21 = [MEMORY[0x277D2C900] futureWithResult:v3];
LABEL_8:

  return v21;
}

@end