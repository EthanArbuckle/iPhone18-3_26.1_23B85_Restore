@interface MNNavigationServiceCallback_ShouldEnableIdleTimer
- (MNNavigationServiceCallback_ShouldEnableIdleTimer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_ShouldEnableIdleTimer

- (MNNavigationServiceCallback_ShouldEnableIdleTimer)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_ShouldEnableIdleTimer;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldEnable = [v4 decodeBoolForKey:@"_shouldEnable"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_ShouldEnableIdleTimer;
  v4 = a3;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_shouldEnable forKey:{@"_shouldEnable", v5.receiver, v5.super_class}];
}

@end