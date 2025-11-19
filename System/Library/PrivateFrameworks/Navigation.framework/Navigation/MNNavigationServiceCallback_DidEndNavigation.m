@interface MNNavigationServiceCallback_DidEndNavigation
+ (id)didEndNavigationWithReason:(unint64_t)a3;
- (MNNavigationServiceCallback_DidEndNavigation)initWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidEndNavigation

- (MNNavigationServiceCallback_DidEndNavigation)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidEndNavigation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_reason = [v4 decodeIntegerForKey:@"_reason"];
    v6 = v5;
  }

  return v5;
}

+ (id)didEndNavigationWithReason:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setReason:a3];

  return v4;
}

@end