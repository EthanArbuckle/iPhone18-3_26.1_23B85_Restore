@interface HFMediaCategoryStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFMediaCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_244 != -1)
  {
    dispatch_once(&_MergedGlobals_244, &__block_literal_global_3_8);
  }

  v3 = qword_280E02EC8;

  return v3;
}

void __46__HFMediaCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = qword_280E02EC8;
  qword_280E02EC8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFMediaCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HFMediaCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __57__HFMediaCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"hidden"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_8;
  }

  v6 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSpeakersAndTVs", @"HFAccessoryTypeGroupNameSpeakersAndTVs", 1);
  [v3 setObject:v6 forKeyedSubscript:@"title"];

  [v3 setObject:@"Home.Status.Category.SpeakersAndTVs" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v3 setObject:@"tv.and.hifispeaker.fill.fill" forKeyedSubscript:@"iconNames"];
  v7 = [HFImageIconDescriptor alloc];
  v8 = [v3 objectForKeyedSubscript:@"iconNames"];
  v9 = [(HFImageIconDescriptor *)v7 initWithSystemImageNamed:v8];
  [v3 setObject:v9 forKeyedSubscript:@"icon"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v10 BOOLValue])
  {

LABEL_8:
    v29 = [MEMORY[0x277D2C900] futureWithResult:v3];
    goto LABEL_9;
  }

  v11 = [v3 objectForKeyedSubscript:@"state"];
  v12 = [v11 integerValue];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v3 objectForKeyedSubscript:@"representedHomeKitObjects"];
  v14 = [v13 count];
  v15 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v16 = *(a1 + 40);
  v17 = objc_opt_class();
  v18 = v16;
  v19 = v15;
  v20 = [v18 _statusItemOfClass:v17];
  v21 = [v15 latestResults];
  v22 = [v21 objectForKeyedSubscript:@"state"];
  if ([v22 isEqual:&unk_282523DD8])
  {

    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v42 = v20;
    v31 = [v20 latestResults];
    v32 = [v31 objectForKeyedSubscript:@"state"];
    if ([v32 isEqual:&unk_282523DD8])
    {
      v33 = 0;
    }

    else
    {
      [v15 latestResults];
      v34 = v41 = v13;
      [v34 objectForKeyedSubscript:@"dependentHomeKitObjects"];
      v35 = v40 = v15;
      v33 = [v35 count] != 0;

      v19 = v40;
      v13 = v41;
    }

    if (!v14)
    {
      v20 = v42;
      if (!v33)
      {
        v37 = @"HFMediaCategoryStatusDescription_AllOff";
        goto LABEL_23;
      }

LABEL_19:
      v37 = @"HFMediaCategoryStatusDescription_NonePlaying";
LABEL_23:
      v38 = _HFLocalizedStringWithDefaultValue(v37, v37, 1);
      goto LABEL_24;
    }

    v20 = v42;
    if (!v33)
    {
      v36 = @"HFMediaCategoryStatusDescription_On";
      goto LABEL_21;
    }
  }

  v36 = @"HFMediaCategoryStatusDescription_Playing";
LABEL_21:
  v38 = HFLocalizedStringWithFormat(v36, @"%lu", v23, v24, v25, v26, v27, v28, v14);
LABEL_24:
  v39 = v38;
  [v3 setObject:v38 forKeyedSubscript:@"description"];

  [*(a1 + 40) applyInflectionToDescriptions:v3];
  v29 = [MEMORY[0x277D2C900] futureWithResult:v3];

LABEL_9:

  return v29;
}

@end