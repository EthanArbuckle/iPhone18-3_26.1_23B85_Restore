@interface DNDSHearingTestEvent
- (DNDSHearingTestEvent)initWithIsHearingTestActive:(BOOL)active;
@end

@implementation DNDSHearingTestEvent

- (DNDSHearingTestEvent)initWithIsHearingTestActive:(BOOL)active
{
  v5.receiver = self;
  v5.super_class = DNDSHearingTestEvent;
  result = [(DNDSHearingTestEvent *)&v5 init];
  if (result)
  {
    result->_hearingTestActive = active;
  }

  return result;
}

@end