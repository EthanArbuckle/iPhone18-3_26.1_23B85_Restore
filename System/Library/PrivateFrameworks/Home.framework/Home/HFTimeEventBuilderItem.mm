@interface HFTimeEventBuilderItem
- (HFTimeEventBuilder)timeEventBuilder;
- (id)_subclass_updateWithOptions:(id)options;
- (void)setTimeEventBuilder:(id)builder;
@end

@implementation HFTimeEventBuilderItem

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HFTimeEventBuilderItem;
  v4 = [(HFEventBuilderItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HFTimeEventBuilderItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __54__HFTimeEventBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 results];

  v6 = [v5 mutableCopy];
  v7 = [*(a1 + 32) timeEventBuilder];
  v8 = [*(a1 + 32) naturalLanguageOptions];
  v9 = [*(a1 + 32) containingTriggerBuilder];
  v10 = [v9 recurrences];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v7 naturalLanguageNameWithOptions:v8 recurrences:v12];
  [v6 setObject:v13 forKeyedSubscript:@"title"];

  v14 = [*(a1 + 32) timeEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || ([*(a1 + 32) timeEventBuilder], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, (v17))
  {
    v18 = @"HFImageIconIdentifierTriggerTime";
    if (v18)
    {
      v19 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v18];
      [v6 setObject:v19 forKeyedSubscript:@"icon"];
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v18];
  [v6 setObject:v20 forKeyedSubscript:@"icon"];

  v21 = [v6 copy];
  [v4 setResults:v21];

  v22 = MEMORY[0x277D2C900];
  v23 = [v4 copy];
  v24 = [v22 futureWithResult:v23];

  return v24;
}

- (HFTimeEventBuilder)timeEventBuilder
{
  eventBuilders = [(HFEventBuilderItem *)self eventBuilders];
  anyObject = [eventBuilders anyObject];

  return anyObject;
}

- (void)setTimeEventBuilder:(id)builder
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:builder];
  [(HFEventBuilderItem *)self setEventBuilders:v4];
}

@end