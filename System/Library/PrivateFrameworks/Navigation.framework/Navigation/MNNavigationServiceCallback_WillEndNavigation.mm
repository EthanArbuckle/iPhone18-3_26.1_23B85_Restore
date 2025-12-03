@interface MNNavigationServiceCallback_WillEndNavigation
+ (id)willEndNavigationWithReason:(unint64_t)reason;
- (MNNavigationServiceCallback_WillEndNavigation)initWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_WillEndNavigation

- (MNNavigationServiceCallback_WillEndNavigation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_WillEndNavigation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"_reason"];
    v6 = v5;
  }

  return v5;
}

+ (id)willEndNavigationWithReason:(unint64_t)reason
{
  v4 = objc_opt_new();
  [v4 setReason:reason];

  return v4;
}

@end