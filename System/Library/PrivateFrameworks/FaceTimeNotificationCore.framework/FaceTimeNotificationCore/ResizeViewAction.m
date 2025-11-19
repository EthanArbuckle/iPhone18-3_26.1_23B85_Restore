@interface ResizeViewAction
- (_TtC24FaceTimeNotificationCore16ResizeViewAction)init;
- (_TtC24FaceTimeNotificationCore16ResizeViewAction)initWithCoder:(id)a3;
@end

@implementation ResizeViewAction

- (_TtC24FaceTimeNotificationCore16ResizeViewAction)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeSize];
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size);
  *v5 = v6;
  v5[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DownstreamAction();
  v8 = [(DownstreamAction *)&v10 init];

  return v8;
}

- (_TtC24FaceTimeNotificationCore16ResizeViewAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end