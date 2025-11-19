@interface CAMDockKitTrackedObject
- (_TtC8CameraUI23CAMDockKitTrackedObject)init;
- (_TtC8CameraUI23CAMDockKitTrackedObject)initWithIdentifier:(int64_t)a3 saliency:(int64_t)a4 trackingLock:(BOOL)a5;
@end

@implementation CAMDockKitTrackedObject

- (_TtC8CameraUI23CAMDockKitTrackedObject)initWithIdentifier:(int64_t)a3 saliency:(int64_t)a4 trackingLock:(BOOL)a5
{
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_identifier) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_saliency) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_trackingLock) = a5;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CAMDockKitTrackedObject();
  return [(CAMDockKitTrackedObject *)&v6 init];
}

- (_TtC8CameraUI23CAMDockKitTrackedObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end