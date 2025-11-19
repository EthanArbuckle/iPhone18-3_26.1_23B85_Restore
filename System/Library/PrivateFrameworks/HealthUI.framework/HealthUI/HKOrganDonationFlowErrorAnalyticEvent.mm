@interface HKOrganDonationFlowErrorAnalyticEvent
- (HKOrganDonationFlowErrorAnalyticEvent)initWithErrorType:(int)a3;
- (id)createEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKOrganDonationFlowErrorAnalyticEvent

- (HKOrganDonationFlowErrorAnalyticEvent)initWithErrorType:(int)a3
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationFlowErrorAnalyticEvent;
  result = [(HKOrganDonationFlowErrorAnalyticEvent *)&v5 init];
  if (result)
  {
    result->_errorType = a3;
  }

  return result;
}

- (id)createEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = HKOrganDonationErrorTypeAsString(self->_errorType);
  [v5 setObject:v6 forKeyedSubscript:@"errorType"];

  return v5;
}

@end