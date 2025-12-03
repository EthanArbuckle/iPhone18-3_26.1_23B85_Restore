@interface BiometricBindingTouchIDReplacementViewController
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BiometricBindingTouchIDReplacementViewController

- (void)loadView
{
  selfCopy = self;
  sub_2457AD3E4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2457AD624(appear);
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (params)
  {
    params = sub_2459108F4();
  }

  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_2457AF5F8;
  }

  selfCopy = self;
  sub_2457AECFC(event, params, v8);
  sub_245771C34(v8);
}

@end