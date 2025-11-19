@interface CameraViewController
- (void)effectBrowserViewController:(id)a3 didDismissPickerForEffectType:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4;
- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4;
@end

@implementation CameraViewController

- (void)effectBrowserViewController:(id)a3 didSelectAppWithIdentifier:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  CameraViewController.effectBrowserViewController(_:didSelectAppWith:)(v9, v6, v8);
}

- (void)effectBrowserViewController:(id)a3 didSelectEffect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CameraViewController.effectBrowserViewController(_:didSelect:)(v6, v7);
}

- (void)effectBrowserViewController:(id)a3 didDismissPickerForEffectType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CameraViewController.effectBrowserViewController(_:didDismissPickerFor:)(v8, v7);
}

@end