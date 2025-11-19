@interface DNDSHearingTestEvent
- (DNDSHearingTestEvent)initWithIsHearingTestActive:(BOOL)a3;
@end

@implementation DNDSHearingTestEvent

- (DNDSHearingTestEvent)initWithIsHearingTestActive:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DNDSHearingTestEvent;
  result = [(DNDSHearingTestEvent *)&v5 init];
  if (result)
  {
    result->_hearingTestActive = a3;
  }

  return result;
}

@end