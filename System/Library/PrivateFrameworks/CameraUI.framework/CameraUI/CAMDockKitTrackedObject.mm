@interface CAMDockKitTrackedObject
- (_TtC8CameraUI23CAMDockKitTrackedObject)init;
- (_TtC8CameraUI23CAMDockKitTrackedObject)initWithIdentifier:(int64_t)identifier saliency:(int64_t)saliency trackingLock:(BOOL)lock;
@end

@implementation CAMDockKitTrackedObject

- (_TtC8CameraUI23CAMDockKitTrackedObject)initWithIdentifier:(int64_t)identifier saliency:(int64_t)saliency trackingLock:(BOOL)lock
{
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_identifier) = identifier;
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_saliency) = saliency;
  *(&self->super.isa + OBJC_IVAR____TtC8CameraUI23CAMDockKitTrackedObject_trackingLock) = lock;
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