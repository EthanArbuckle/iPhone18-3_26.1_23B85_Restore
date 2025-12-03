@interface HKOrganDonationFlowImpressionAnalyticEvent
- (HKOrganDonationFlowImpressionAnalyticEvent)initWithImpressionEvent:(int)event;
- (id)createEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKOrganDonationFlowImpressionAnalyticEvent

- (HKOrganDonationFlowImpressionAnalyticEvent)initWithImpressionEvent:(int)event
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationFlowImpressionAnalyticEvent;
  result = [(HKOrganDonationFlowImpressionAnalyticEvent *)&v5 init];
  if (result)
  {
    result->_impressionEvent = event;
  }

  return result;
}

- (id)createEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = HKOrganDonationFlowImpressionEventAsString(self->_impressionEvent);
  [v5 setObject:v6 forKeyedSubscript:@"sourceOfFlowImpression"];

  return v5;
}

@end