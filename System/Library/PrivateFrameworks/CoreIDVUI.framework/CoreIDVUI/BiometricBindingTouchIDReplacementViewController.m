@interface BiometricBindingTouchIDReplacementViewController
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BiometricBindingTouchIDReplacementViewController

- (void)loadView
{
  v2 = self;
  sub_2457AD3E4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457AD624(a3);
}

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    a4 = sub_2459108F4();
  }

  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_2457AF5F8;
  }

  v9 = self;
  sub_2457AECFC(a3, a4, v8);
  sub_245771C34(v8);
}

@end