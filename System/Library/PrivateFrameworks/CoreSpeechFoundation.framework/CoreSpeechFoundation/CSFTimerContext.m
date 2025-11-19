@interface CSFTimerContext
- (id)initTimerinterval:(double)a3 identifier:(id)a4;
@end

@implementation CSFTimerContext

- (id)initTimerinterval:(double)a3 identifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CSFTimerContext;
  v8 = [(CSFTimerContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      __assert_rtn("[CSFTimerContext initTimerinterval:identifier:]", "CSFTimer.m", 17, "identifier");
    }

    v8->_timerInterval = a3;
    objc_storeStrong(&v8->_identifier, a4);
  }

  return v9;
}

@end