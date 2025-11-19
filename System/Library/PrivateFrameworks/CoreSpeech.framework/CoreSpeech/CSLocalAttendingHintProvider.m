@interface CSLocalAttendingHintProvider
- (CSLocalAttendingHintProvider)initWithAttendingIniting:(id)a3;
@end

@implementation CSLocalAttendingHintProvider

- (CSLocalAttendingHintProvider)initWithAttendingIniting:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSLocalAttendingHintProvider;
  v6 = [(CSLocalAttendingHintProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initiator, a3);
  }

  return v7;
}

@end