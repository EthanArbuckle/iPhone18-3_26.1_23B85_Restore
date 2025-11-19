@interface HFAnalyticsEnergyIndicatorAccessoryViewTapEvent
- (HFAnalyticsEnergyIndicatorAccessoryViewTapEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsEnergyIndicatorAccessoryViewTapEvent

- (HFAnalyticsEnergyIndicatorAccessoryViewTapEvent)initWithData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"interactionType"];
  v5 = [v4 integerValue];

  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsene_5.isa);
  }

  v7.receiver = self;
  v7.super_class = HFAnalyticsEnergyIndicatorAccessoryViewTapEvent;
  result = [(HFAnalyticsEvent *)&v7 initWithEventType:55];
  if (result)
  {
    result->_interactionType = v5;
  }

  return result;
}

- (id)payload
{
  if (self->_interactionType)
  {
    v7.receiver = self;
    v7.super_class = HFAnalyticsEnergyIndicatorAccessoryViewTapEvent;
    v3 = [(HFAnalyticsEvent *)&v7 payload];
    v4 = [v3 mutableCopy];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsEnergyIndicatorAccessoryViewTapEvent interactionType](self, "interactionType")}];
    [v4 na_safeSetObject:v5 forKey:@"interactionType"];

    [v4 na_safeSetObject:&unk_282523718 forKey:@"homeAppEventCount"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end