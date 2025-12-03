@interface HFAnalyticsEnergyEducationTipVisitEvent
- (HFAnalyticsEnergyEducationTipVisitEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsEnergyEducationTipVisitEvent

- (HFAnalyticsEnergyEducationTipVisitEvent)initWithData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"educationTipViewState"];
  if (!v4)
  {
    NSLog(&cfstr_Hfanalyticsene_1.isa);
  }

  v8.receiver = self;
  v8.super_class = HFAnalyticsEnergyEducationTipVisitEvent;
  v5 = [(HFAnalyticsEvent *)&v8 initWithEventType:48];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_viewState, v4);
  }

  return v6;
}

- (id)payload
{
  v7.receiver = self;
  v7.super_class = HFAnalyticsEnergyEducationTipVisitEvent;
  payload = [(HFAnalyticsEvent *)&v7 payload];
  v4 = [payload mutableCopy];

  viewState = [(HFAnalyticsEnergyEducationTipVisitEvent *)self viewState];
  [v4 setObject:viewState forKeyedSubscript:@"educationTipViewState"];

  return v4;
}

@end