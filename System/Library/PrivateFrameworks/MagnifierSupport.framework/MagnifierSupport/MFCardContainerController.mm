@interface MFCardContainerController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC16MagnifierSupport25MFCardContainerController)init;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)handlePanGestureWithSender:(id)a3;
@end

@implementation MFCardContainerController

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_257E7A744(v4);

  return self & 1;
}

- (void)handlePanGestureWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E7A908(v4);
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E7B59C(v4);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_257E7C1CC();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MFCardContainerController *)&v5 dealloc];
}

- (_TtC16MagnifierSupport25MFCardContainerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end