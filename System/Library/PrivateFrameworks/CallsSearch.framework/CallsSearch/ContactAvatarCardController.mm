@interface ContactAvatarCardController
- (_TtC11CallsSearch27ContactAvatarCardController)init;
- (id)presentingViewControllerForAvatarCardController:(id)controller;
- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location;
@end

@implementation ContactAvatarCardController

- (id)presentingViewControllerForAvatarCardController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  selfCopy = self;
  v9 = ContactAvatarCardController.avatarCardController(_:presentationResultForLocation:)(controllerCopy, x, y);

  return v9;
}

- (_TtC11CallsSearch27ContactAvatarCardController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end