@interface HFAnalyticsEnergyCategoryViewAccessedFromURLEvent
- (HFAnalyticsEnergyCategoryViewAccessedFromURLEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyCategoryViewAccessedFromURLEvent

- (HFAnalyticsEnergyCategoryViewAccessedFromURLEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"energyCategoryViewAccessedFrom"];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsene_6.isa);
  }

  v11.receiver = self;
  v11.super_class = HFAnalyticsEnergyCategoryViewAccessedFromURLEvent;
  v8 = [(HFAnalyticsEvent *)&v11 initWithEventType:54];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fromUIView, v6);
  }

  return v9;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsEnergyCategoryViewAccessedFromURLEvent;
  payload = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [payload mutableCopy];

  fromUIView = [(HFAnalyticsEnergyCategoryViewAccessedFromURLEvent *)self fromUIView];
  [v4 na_safeSetObject:fromUIView forKey:@"energyViewAccessedFrom"];

  [v4 na_safeSetObject:&unk_282524DE0 forKey:@"homeAppEventCount"];

  return v4;
}

@end