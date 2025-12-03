@interface HFAnalyticsEnergyCategoryStatusItemTapEvent
- (HFAnalyticsEnergyCategoryStatusItemTapEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyCategoryStatusItemTapEvent

- (HFAnalyticsEnergyCategoryStatusItemTapEvent)initWithData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"interactionType"];
  integerValue = [v4 integerValue];

  if (!integerValue)
  {
    NSLog(&cfstr_Hfanalyticsene_11.isa);
  }

  v7.receiver = self;
  v7.super_class = HFAnalyticsEnergyCategoryStatusItemTapEvent;
  result = [(HFAnalyticsEvent *)&v7 initWithEventType:46];
  if (result)
  {
    result->_interactionType = integerValue;
  }

  return result;
}

- (id)payload
{
  if (self->_interactionType)
  {
    v7.receiver = self;
    v7.super_class = HFAnalyticsEnergyCategoryStatusItemTapEvent;
    payload = [(HFAnalyticsEvent *)&v7 payload];
    v4 = [payload mutableCopy];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsEnergyCategoryStatusItemTapEvent interactionType](self, "interactionType")}];
    [v4 na_safeSetObject:v5 forKey:@"interactionType"];

    [v4 na_safeSetObject:&unk_2825254A0 forKey:@"homeAppEventCount"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end