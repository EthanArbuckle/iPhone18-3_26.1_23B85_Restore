@interface HKOrganDonationFlowImpressionAnalyticEvent
- (HKOrganDonationFlowImpressionAnalyticEvent)initWithImpressionEvent:(int)a3;
- (id)createEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKOrganDonationFlowImpressionAnalyticEvent

- (HKOrganDonationFlowImpressionAnalyticEvent)initWithImpressionEvent:(int)a3
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationFlowImpressionAnalyticEvent;
  result = [(HKOrganDonationFlowImpressionAnalyticEvent *)&v5 init];
  if (result)
  {
    result->_impressionEvent = a3;
  }

  return result;
}

- (id)createEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = HKOrganDonationFlowImpressionEventAsString(self->_impressionEvent);
  [v5 setObject:v6 forKeyedSubscript:@"sourceOfFlowImpression"];

  return v5;
}

@end