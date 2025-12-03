@interface MNNavigationServiceCallback_ShouldEnableIdleTimer
- (MNNavigationServiceCallback_ShouldEnableIdleTimer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_ShouldEnableIdleTimer

- (MNNavigationServiceCallback_ShouldEnableIdleTimer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_ShouldEnableIdleTimer;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldEnable = [coderCopy decodeBoolForKey:@"_shouldEnable"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_ShouldEnableIdleTimer;
  coderCopy = coder;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_shouldEnable forKey:{@"_shouldEnable", v5.receiver, v5.super_class}];
}

@end