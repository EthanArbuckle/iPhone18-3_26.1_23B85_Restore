@interface HFAnalyticsEnergyWidgetAndComplicationSettingsEvent
- (HFAnalyticsEnergyWidgetAndComplicationSettingsEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsEnergyWidgetAndComplicationSettingsEvent

- (HFAnalyticsEnergyWidgetAndComplicationSettingsEvent)initWithData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"energyWidgetAndComplicationLocationSetting"];
  if (!v4)
  {
    NSLog(&cfstr_Hfanalyticsene_4.isa);
  }

  v8.receiver = self;
  v8.super_class = HFAnalyticsEnergyWidgetAndComplicationSettingsEvent;
  v5 = [(HFAnalyticsEvent *)&v8 initWithEventType:52];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_location, v4);
  }

  return v6;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsEnergyWidgetAndComplicationSettingsEvent;
  v3 = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsEnergyWidgetAndComplicationSettingsEvent *)self location];
  [v4 na_safeSetObject:v5 forKey:@"energyWidgetAndComplicationLocation"];

  [v4 na_safeSetObject:&unk_2825236B8 forKey:@"homeAppEventCount"];

  return v4;
}

@end