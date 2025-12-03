@interface HMMTRAccessoryServerDiagnosticsEvent
- (HMMTRAccessoryServerDiagnosticsEvent)initWithValues:(id)values;
@end

@implementation HMMTRAccessoryServerDiagnosticsEvent

- (HMMTRAccessoryServerDiagnosticsEvent)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = HMMTRAccessoryServerDiagnosticsEvent;
  v6 = [(HMMTRAccessoryServerDiagnosticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, values);
  }

  return v7;
}

@end