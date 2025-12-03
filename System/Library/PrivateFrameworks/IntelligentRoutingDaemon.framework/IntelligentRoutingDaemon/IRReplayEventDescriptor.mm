@interface IRReplayEventDescriptor
- (IRReplayEventDescriptor)initWithDate:(id)date withContextChangeReason:(id)reason withSystemState:(id)state;
@end

@implementation IRReplayEventDescriptor

- (IRReplayEventDescriptor)initWithDate:(id)date withContextChangeReason:(id)reason withSystemState:(id)state
{
  dateCopy = date;
  reasonCopy = reason;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = IRReplayEventDescriptor;
  v12 = [(IRReplayEventDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    objc_storeStrong(&v13->_contextChangeReason, reason);
    objc_storeStrong(&v13->_systemState, state);
  }

  return v13;
}

@end