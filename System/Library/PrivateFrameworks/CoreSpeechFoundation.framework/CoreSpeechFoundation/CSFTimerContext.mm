@interface CSFTimerContext
- (id)initTimerinterval:(double)timerinterval identifier:(id)identifier;
@end

@implementation CSFTimerContext

- (id)initTimerinterval:(double)timerinterval identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CSFTimerContext;
  v8 = [(CSFTimerContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (!identifierCopy)
    {
      __assert_rtn("[CSFTimerContext initTimerinterval:identifier:]", "CSFTimer.m", 17, "identifier");
    }

    v8->_timerInterval = timerinterval;
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v9;
}

@end