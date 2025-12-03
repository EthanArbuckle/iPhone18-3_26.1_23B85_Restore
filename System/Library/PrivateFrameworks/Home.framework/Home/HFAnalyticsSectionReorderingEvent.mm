@interface HFAnalyticsSectionReorderingEvent
- (HFAnalyticsSectionReorderingEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsSectionReorderingEvent

- (HFAnalyticsSectionReorderingEvent)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = HFAnalyticsSectionReorderingEvent;
  v5 = [(HFAnalyticsEvent *)&v11 initWithEventType:39];
  if (v5)
  {
    objc_opt_class();
    v6 = [dataCopy objectForKeyedSubscript:@"HFAnalyticsDataSectionCountKey"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_numberOfSections, v7);

    v8 = [dataCopy objectForKeyedSubscript:@"HFAnalyticsDataSectionReorderingTypeKey"];
    reorderingAction = v5->_reorderingAction;
    v5->_reorderingAction = v8;
  }

  return v5;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsSectionReorderingEvent;
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  [v4 setObject:&unk_2825254B8 forKeyedSubscript:@"homeAppEventCount"];
  numberOfSections = [(HFAnalyticsSectionReorderingEvent *)self numberOfSections];
  [v4 setObject:numberOfSections forKeyedSubscript:@"reorderingSectionsCount"];

  reorderingAction = [(HFAnalyticsSectionReorderingEvent *)self reorderingAction];
  [v4 setObject:reorderingAction forKeyedSubscript:@"reorderingSectionsType"];

  return v4;
}

@end