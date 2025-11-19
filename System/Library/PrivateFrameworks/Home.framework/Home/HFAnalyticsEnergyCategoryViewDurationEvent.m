@interface HFAnalyticsEnergyCategoryViewDurationEvent
- (HFAnalyticsEnergyCategoryViewDurationEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsEnergyCategoryViewDurationEvent

- (HFAnalyticsEnergyCategoryViewDurationEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"energyViewDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsene.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"userHasAccessories"];
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
    v3 = [(HFAnalyticsEvent *)&v8 payload];
    v4 = [v3 mutableCopy];

    v5 = [(HFAnalyticsEnergyCategoryViewDurationEvent *)self energyViewDuration];
    [v4 setObject:v5 forKeyedSubscript:@"energyViewDuration"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsEnergyCategoryViewDurationEvent userHasAccessories](self, "userHasAccessories")}];
    [v4 setObject:v6 forKeyedSubscript:@"energyViewUserHasAccessories"];

    [v4 na_safeSetObject:&unk_282523340 forKey:@"homeAppEventCount"];
  }

  return v4;
}

@end