@interface MNNavigationServiceCallback_DidEndNavigation
+ (id)didEndNavigationWithReason:(unint64_t)reason;
- (MNNavigationServiceCallback_DidEndNavigation)initWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidEndNavigation

- (MNNavigationServiceCallback_DidEndNavigation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidEndNavigation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"_reason"];
    v6 = v5;
  }

  return v5;
}

+ (id)didEndNavigationWithReason:(unint64_t)reason
{
  v4 = objc_opt_new();
  [v4 setReason:reason];

  return v4;
}

@end