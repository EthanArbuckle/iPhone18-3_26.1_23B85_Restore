@interface StartDraggingAction
- (_TtC24FaceTimeNotificationCore19StartDraggingAction)init;
- (_TtC24FaceTimeNotificationCore19StartDraggingAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StartDraggingAction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  StartDraggingAction.encode(with:)(v4);
}

- (_TtC24FaceTimeNotificationCore19StartDraggingAction)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_24A9E1CB0(v3);

  return v4;
}

- (_TtC24FaceTimeNotificationCore19StartDraggingAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end