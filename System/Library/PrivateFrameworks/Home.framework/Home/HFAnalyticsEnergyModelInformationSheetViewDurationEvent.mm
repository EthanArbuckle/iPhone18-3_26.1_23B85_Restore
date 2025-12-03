@interface HFAnalyticsEnergyModelInformationSheetViewDurationEvent
- (HFAnalyticsEnergyModelInformationSheetViewDurationEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyModelInformationSheetViewDurationEvent

- (HFAnalyticsEnergyModelInformationSheetViewDurationEvent)initWithData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"energyModelInformationSheetViewDuration"];
  if (!v4)
  {
    NSLog(&cfstr_Hfanalyticsene_7.isa);
  }

  v8.receiver = self;
  v8.super_class = HFAnalyticsEnergyModelInformationSheetViewDurationEvent;
  v5 = [(HFAnalyticsEvent *)&v8 initWithEventType:50];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_modelInformationSheetViewDuration, v4);
  }

  return v6;
}

- (id)payload
{
  if ([(NSNumber *)self->_modelInformationSheetViewDuration integerValue]< 1)
  {
    v4 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HFAnalyticsEnergyModelInformationSheetViewDurationEvent;
    payload = [(HFAnalyticsEvent *)&v7 payload];
    v4 = [payload mutableCopy];

    modelInformationSheetViewDuration = [(HFAnalyticsEnergyModelInformationSheetViewDurationEvent *)self modelInformationSheetViewDuration];
    [v4 setObject:modelInformationSheetViewDuration forKeyedSubscript:@"energyModelInformationSheetViewDuration"];

    [v4 na_safeSetObject:&unk_2825251E8 forKey:@"homeAppEventCount"];
  }

  return v4;
}

@end