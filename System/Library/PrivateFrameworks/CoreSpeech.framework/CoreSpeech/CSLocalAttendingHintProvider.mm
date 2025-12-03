@interface CSLocalAttendingHintProvider
- (CSLocalAttendingHintProvider)initWithAttendingIniting:(id)initing;
@end

@implementation CSLocalAttendingHintProvider

- (CSLocalAttendingHintProvider)initWithAttendingIniting:(id)initing
{
  initingCopy = initing;
  v9.receiver = self;
  v9.super_class = CSLocalAttendingHintProvider;
  v6 = [(CSLocalAttendingHintProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initiator, initing);
  }

  return v7;
}

@end