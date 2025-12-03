@interface HFAnalyticsEnergyCategoryViewDurationEvent
- (HFAnalyticsEnergyCategoryViewDurationEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyCategoryViewDurationEvent

- (HFAnalyticsEnergyCategoryViewDurationEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"energyViewDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsene.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"userHasAccessories"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsene_0.isa);
  }

  v10.receiver = self;
  v10.super_class = HFAnalyticsEnergyCategoryViewDurationEvent;
  v7 = [(HFAnalyticsEvent *)&v10 initWithEventType:47];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_energyViewDuration, v5);
    v8->_userHasAccessories = [v6 BOOLValue];
  }

  return v8;
}

- (id)payload
{
  if ([(NSNumber *)self->_energyViewDuration integerValue]< 1)
  {
    v4 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HFAnalyticsEnergyCategoryViewDurationEvent;
    payload = [(HFAnalyticsEvent *)&v8 payload];
    v4 = [payload mutableCopy];

    energyViewDuration = [(HFAnalyticsEnergyCategoryViewDurationEvent *)self energyViewDuration];
    [v4 setObject:energyViewDuration forKeyedSubscript:@"energyViewDuration"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsEnergyCategoryViewDurationEvent userHasAccessories](self, "userHasAccessories")}];
    [v4 setObject:v6 forKeyedSubscript:@"energyViewUserHasAccessories"];

    [v4 na_safeSetObject:&unk_282523340 forKey:@"homeAppEventCount"];
  }

  return v4;
}

@end