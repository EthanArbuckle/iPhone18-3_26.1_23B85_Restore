@interface IRReplayEventDescriptor
- (IRReplayEventDescriptor)initWithDate:(id)a3 withContextChangeReason:(id)a4 withSystemState:(id)a5;
@end

@implementation IRReplayEventDescriptor

- (IRReplayEventDescriptor)initWithDate:(id)a3 withContextChangeReason:(id)a4 withSystemState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IRReplayEventDescriptor;
  v12 = [(IRReplayEventDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a3);
    objc_storeStrong(&v13->_contextChangeReason, a4);
    objc_storeStrong(&v13->_systemState, a5);
  }

  return v13;
}

@end