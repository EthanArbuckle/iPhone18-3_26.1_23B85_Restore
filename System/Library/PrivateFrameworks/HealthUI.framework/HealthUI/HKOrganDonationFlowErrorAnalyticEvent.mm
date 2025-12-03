@interface HKOrganDonationFlowErrorAnalyticEvent
- (HKOrganDonationFlowErrorAnalyticEvent)initWithErrorType:(int)type;
- (id)createEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKOrganDonationFlowErrorAnalyticEvent

- (HKOrganDonationFlowErrorAnalyticEvent)initWithErrorType:(int)type
{
  v5.receiver = self;
  v5.super_class = HKOrganDonationFlowErrorAnalyticEvent;
  result = [(HKOrganDonationFlowErrorAnalyticEvent *)&v5 init];
  if (result)
  {
    result->_errorType = type;
  }

  return result;
}

- (id)createEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = HKOrganDonationErrorTypeAsString(self->_errorType);
  [v5 setObject:v6 forKeyedSubscript:@"errorType"];

  return v5;
}

@end