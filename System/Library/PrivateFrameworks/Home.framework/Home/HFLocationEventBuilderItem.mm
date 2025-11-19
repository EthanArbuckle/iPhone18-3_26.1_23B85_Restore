@interface HFLocationEventBuilderItem
- (HFLocationEventBuilder)locationEventBuilder;
- (id)_subclass_updateWithOptions:(id)a3;
- (void)setLocationEventBuilder:(id)a3;
@end

@implementation HFLocationEventBuilderItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HFLocationEventBuilderItem;
  v4 = [(HFEventBuilderItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HFLocationEventBuilderItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __58__HFLocationEventBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 results];

  v6 = [v5 mutableCopy];
  v7 = [*(a1 + 32) locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = @"HFImageIconIdentifierTriggerLocation";
  }

  else
  {
    v10 = [*(a1 + 32) locationEventBuilder];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = [*(a1 + 32) locationEventBuilder];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__HFLocationEventBuilderItem__subclass_updateWithOptions___block_invoke_2;
      v20[3] = &unk_277DF3568;
      v21 = v12;
      v13 = v12;
      v9 = __58__HFLocationEventBuilderItem__subclass_updateWithOptions___block_invoke_2(v20);
    }

    else
    {
      v9 = 0;
    }
  }

  v14 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v9];
  [v6 setObject:v14 forKeyedSubscript:@"icon"];

  v15 = [v6 copy];
  [v4 setResults:v15];

  v16 = MEMORY[0x277D2C900];
  v17 = [v4 copy];
  v18 = [v16 futureWithResult:v17];

  return v18;
}

__CFString *__58__HFLocationEventBuilderItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) locationEventType];
  if (v1 <= 2)
  {
    v2 = *off_277E00DD0[v1];
  }

  return v2;
}

- (HFLocationEventBuilder)locationEventBuilder
{
  v2 = [(HFEventBuilderItem *)self eventBuilders];
  v3 = [v2 anyObject];

  return v3;
}

- (void)setLocationEventBuilder:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(HFEventBuilderItem *)self setEventBuilders:v4];
}

@end