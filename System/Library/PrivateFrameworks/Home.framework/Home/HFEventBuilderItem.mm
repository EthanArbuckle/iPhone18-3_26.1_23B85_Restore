@interface HFEventBuilderItem
+ (id)eventBuilderItemForEventBuilders:(id)builders;
- (HFEventBuilderItem)initWithEventBuilders:(id)builders;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFEventBuilderItem

- (HFEventBuilderItem)initWithEventBuilders:(id)builders
{
  buildersCopy = builders;
  v11.receiver = self;
  v11.super_class = HFEventBuilderItem;
  v6 = [(HFEventBuilderItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilders, builders);
    v8 = [buildersCopy count];
    if (v8 == 1)
    {
      anyObject = [buildersCopy anyObject];
    }

    else
    {
      anyObject = 0;
    }

    objc_storeStrong(&v7->_representativeEventBuilder, anyObject);
    if (v8 == 1)
    {
    }
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  representativeEventBuilder = [(HFEventBuilderItem *)self representativeEventBuilder];
  v6 = representativeEventBuilder;
  if (representativeEventBuilder)
  {
    anyObject = representativeEventBuilder;
  }

  else
  {
    eventBuilders = [(HFEventBuilderItem *)self eventBuilders];
    anyObject = [eventBuilders anyObject];
  }

  naturalLanguageOptions = [(HFEventBuilderItem *)self naturalLanguageOptions];
  if (!naturalLanguageOptions)
  {
    v10 = [HFTriggerNaturalLanguageOptions alloc];
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [v11 home];
    naturalLanguageOptions = [(HFTriggerNaturalLanguageOptions *)v10 initWithHome:home nameType:1];
  }

  naturalLanguageOptions2 = [(HFEventBuilderItem *)self naturalLanguageOptions];
  v14 = [anyObject naturalLanguageNameWithOptions:naturalLanguageOptions2];
  [dictionary setObject:v14 forKeyedSubscript:@"title"];

  v15 = MEMORY[0x277D2C900];
  v16 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v17 = [v15 futureWithResult:v16];

  return v17;
}

+ (id)eventBuilderItemForEventBuilders:(id)builders
{
  buildersCopy = builders;
  v4 = [buildersCopy na_map:&__block_literal_global_210];
  if ([v4 count] == 1)
  {
    if ([v4 containsObject:@"HFEventTypeCharacteristic"])
    {
      v5 = off_277DEF818;
LABEL_8:
      v6 = [objc_alloc(*v5) initWithEventBuilders:buildersCopy];
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