@interface HFEventBuilderItem
+ (id)eventBuilderItemForEventBuilders:(id)a3;
- (HFEventBuilderItem)initWithEventBuilders:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFEventBuilderItem

- (HFEventBuilderItem)initWithEventBuilders:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFEventBuilderItem;
  v6 = [(HFEventBuilderItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilders, a3);
    v8 = [v5 count];
    if (v8 == 1)
    {
      v9 = [v5 anyObject];
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&v7->_representativeEventBuilder, v9);
    if (v8 == 1)
    {
    }
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFEventBuilderItem *)self representativeEventBuilder];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(HFEventBuilderItem *)self eventBuilders];
    v7 = [v8 anyObject];
  }

  v9 = [(HFEventBuilderItem *)self naturalLanguageOptions];
  if (!v9)
  {
    v10 = [HFTriggerNaturalLanguageOptions alloc];
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = [v11 home];
    v9 = [(HFTriggerNaturalLanguageOptions *)v10 initWithHome:v12 nameType:1];
  }

  v13 = [(HFEventBuilderItem *)self naturalLanguageOptions];
  v14 = [v7 naturalLanguageNameWithOptions:v13];
  [v4 setObject:v14 forKeyedSubscript:@"title"];

  v15 = MEMORY[0x277D2C900];
  v16 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v17 = [v15 futureWithResult:v16];

  return v17;
}

+ (id)eventBuilderItemForEventBuilders:(id)a3
{
  v3 = a3;
  v4 = [v3 na_map:&__block_literal_global_210];
  if ([v4 count] == 1)
  {
    if ([v4 containsObject:@"HFEventTypeCharacteristic"])
    {
      v5 = off_277DEF818;
LABEL_8:
      v6 = [objc_alloc(*v5) initWithEventBuilders:v3];
      goto LABEL_10;
    }

    if ([v4 containsObject:@"HFEventTypeTime"])
    {
      v5 = off_277DF02A8;
      goto LABEL_8;
    }

    if ([v4 containsObject:@"HFEventTypeLocation"])
    {
      v5 = off_277DEFC98;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

@end