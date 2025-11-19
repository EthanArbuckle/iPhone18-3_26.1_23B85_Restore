@interface GameControllerManager
- (BOOL)consumePressEventForGCSystemButton;
- (GCSystemButtonServiceRevlock)systemButtonService;
- (void)observerDeliveryPolicyDidChange:(id)a3;
@end

@implementation GameControllerManager

- (GCSystemButtonServiceRevlock)systemButtonService
{
  v2 = GameControllerManager.systemButtonService.getter();

  return v2;
}

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  GameControllerManager.observerDeliveryPolicyDidChange(_:)(v4);
}

- (BOOL)consumePressEventForGCSystemButton
{
  v2 = self;
  v3 = GameControllerManager.consumePressEventForGCSystemButton()();

  return v3;
}

@end