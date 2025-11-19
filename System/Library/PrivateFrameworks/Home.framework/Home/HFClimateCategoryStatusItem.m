@interface HFClimateCategoryStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFClimateCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_233 != -1)
  {
    dispatch_once(&_MergedGlobals_233, &__block_literal_global_3_7);
  }

  v3 = qword_280E02D78;

  return v3;
}

void __48__HFClimateCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = qword_280E02D78;
  qword_280E02D78 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFClimateCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HFClimateCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __59__HFClimateCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"hidden"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameClimate", @"HFAccessoryTypeGroupNameClimate", 1);
  [v3 setObject:v6 forKeyedSubscript:@"title"];

  [v3 setObject:@"Home.Status.Category.Climate" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v3 setObject:@"fanblades.fill" forKeyedSubscript:@"iconNames"];
  v7 = [HFImageIconDescriptor alloc];
  v8 = [v3 objectForKeyedSubscript:@"iconNames"];
  v9 = [(HFImageIconDescriptor *)v7 initWithSystemImageNamed:v8];
  [v3 setObject:v9 forKeyedSubscript:@"icon"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v10 BOOLValue])
  {

LABEL_7:
    v30 = [MEMORY[0x277D2C900] futureWithResult:v3];
    goto LABEL_8;
  }

  v11 = [v3 objectForKeyedSubscript:@"state"];
  v12 = [v11 integerValue];

  if (!v12)
  {
    goto LABEL_7;
  }

  v34 = [v3 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v33 = [v34 count];
  v13 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v14 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v15 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v16 = [v13 latestResults];
  v17 = [v16 objectForKeyedSubscript:@"description"];

  v18 = [v14 latestResults];
  v19 = [v18 objectForKeyedSubscript:@"shortTitle"];

  v20 = [v15 latestResults];
  v21 = [v20 objectForKeyedSubscript:@"description"];

  if (v17)
  {
    v28 = v3;
    v29 = v17;
  }

  else if (v19)
  {
    v28 = v3;
    v29 = v19;
  }

  else
  {
    if (!v21)
    {
      if (v33)
      {
        HFLocalizedStringWithFormat(@"HFClimateCategoryStatusDescription_On", @"%lu", v22, v23, v24, v25, v26, v27, v33);
      }

      else
      {
        _HFLocalizedStringWithDefaultValue(@"HFClimateCategoryStatusDescription_AllOff", @"HFClimateCategoryStatusDescription_AllOff", 1);
      }
      v32 = ;
      [v3 setObject:v32 forKeyedSubscript:@"description"];

      goto LABEL_16;
    }

    v28 = v3;
    v29 = v21;
  }

  [v28 setObject:v29 forKeyedSubscript:@"description"];
LABEL_16:
  [*(a1 + 40) applyInflectionToDescriptions:v3];
  v30 = [MEMORY[0x277D2C900] futureWithResult:v3];

LABEL_8:

  return v30;
}

@end