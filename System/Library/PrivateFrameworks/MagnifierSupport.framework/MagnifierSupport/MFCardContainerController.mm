@interface MFCardContainerController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC16MagnifierSupport25MFCardContainerController)init;
- (void)dealloc;
- (void)handleLongPress:(id)press;
- (void)handlePanGestureWithSender:(id)sender;
@end

@implementation MFCardContainerController

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_257E7A744(beginCopy);

  return self & 1;
}

- (void)handlePanGestureWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_257E7A908(senderCopy);
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_257E7B59C(pressCopy);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_257E7C1CC();
  v5.receiver = selfCopy;
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