@interface ContactAvatarCardController
- (_TtC11CallsSearch27ContactAvatarCardController)init;
- (id)presentingViewControllerForAvatarCardController:(id)a3;
- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4;
@end

@implementation ContactAvatarCardController

- (id)presentingViewControllerForAvatarCardController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = ContactAvatarCardController.avatarCardController(_:presentationResultForLocation:)(v7, x, y);

  return v9;
}

- (_TtC11CallsSearch27ContactAvatarCardController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end