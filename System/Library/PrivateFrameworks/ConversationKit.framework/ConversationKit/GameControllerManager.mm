@interface GameControllerManager
- (BOOL)consumePressEventForGCSystemButton;
- (GCSystemButtonServiceRevlock)systemButtonService;
- (void)observerDeliveryPolicyDidChange:(id)change;
@end

@implementation GameControllerManager

- (GCSystemButtonServiceRevlock)systemButtonService
{
  v2 = GameControllerManager.systemButtonService.getter();

  return v2;
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  GameControllerManager.observerDeliveryPolicyDidChange(_:)(changeCopy);
}

- (BOOL)consumePressEventForGCSystemButton
{
  selfCopy = self;
  v3 = GameControllerManager.consumePressEventForGCSystemButton()();

  return v3;
}

@end