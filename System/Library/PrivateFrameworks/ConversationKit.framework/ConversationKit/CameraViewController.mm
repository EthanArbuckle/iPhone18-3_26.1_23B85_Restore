@interface CameraViewController
- (void)effectBrowserViewController:(id)controller didDismissPickerForEffectType:(id)type;
- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier;
- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect;
@end

@implementation CameraViewController

- (void)effectBrowserViewController:(id)controller didSelectAppWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  CameraViewController.effectBrowserViewController(_:didSelectAppWith:)(controllerCopy, v6, v8);
}

- (void)effectBrowserViewController:(id)controller didSelectEffect:(id)effect
{
  controllerCopy = controller;
  effectCopy = effect;
  selfCopy = self;
  CameraViewController.effectBrowserViewController(_:didSelect:)(controllerCopy, effectCopy);
}

- (void)effectBrowserViewController:(id)controller didDismissPickerForEffectType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  CameraViewController.effectBrowserViewController(_:didDismissPickerFor:)(selfCopy, typeCopy);
}

@end