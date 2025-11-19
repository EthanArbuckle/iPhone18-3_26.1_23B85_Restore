@interface HMMTRAccessoryServerDiagnosticsEvent
- (HMMTRAccessoryServerDiagnosticsEvent)initWithValues:(id)a3;
@end

@implementation HMMTRAccessoryServerDiagnosticsEvent

- (HMMTRAccessoryServerDiagnosticsEvent)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMTRAccessoryServerDiagnosticsEvent;
  v6 = [(HMMTRAccessoryServerDiagnosticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, a3);
  }

  return v7;
}

@end