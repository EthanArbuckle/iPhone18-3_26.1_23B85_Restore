@interface HFAnalyticsSectionReorderingEvent
- (HFAnalyticsSectionReorderingEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsSectionReorderingEvent

- (HFAnalyticsSectionReorderingEvent)initWithData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HFAnalyticsSectionReorderingEvent;
  v5 = [(HFAnalyticsEvent *)&v11 initWithEventType:39];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"HFAnalyticsDataSectionCountKey"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_numberOfSections, v7);

    v8 = [v4 objectForKeyedSubscript:@"HFAnalyticsDataSectionReorderingTypeKey"];
    reorderingAction = v5->_reorderingAction;
    v5->_reorderingAction = v8;
  }

  return v5;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsSectionReorderingEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  [v4 setObject:&unk_2825254B8 forKeyedSubscript:@"homeAppEventCount"];
  v5 = [(HFAnalyticsSectionReorderingEvent *)self numberOfSections];
  [v4 setObject:v5 forKeyedSubscript:@"reorderingSectionsCount"];

  v6 = [(HFAnalyticsSectionReorderingEvent *)self reorderingAction];
  [v4 setObject:v6 forKeyedSubscript:@"reorderingSectionsType"];

  return v4;
}

@end