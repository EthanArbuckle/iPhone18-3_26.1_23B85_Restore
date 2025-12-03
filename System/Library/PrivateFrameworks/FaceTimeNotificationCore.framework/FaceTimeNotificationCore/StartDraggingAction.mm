@interface StartDraggingAction
- (_TtC24FaceTimeNotificationCore19StartDraggingAction)init;
- (_TtC24FaceTimeNotificationCore19StartDraggingAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StartDraggingAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StartDraggingAction.encode(with:)(coderCopy);
}

- (_TtC24FaceTimeNotificationCore19StartDraggingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24A9E1CB0(coderCopy);

  return v4;
}

- (_TtC24FaceTimeNotificationCore19StartDraggingAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end