@interface FMIPDeviceImageCacheOperation
- (_TtC8FMIPCore29FMIPDeviceImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMIPDeviceImageCacheOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = sub_24A82CF94();
  [(FMIPDeviceImageCacheOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished) = finished;
  v5 = sub_24A82CF94();
  [(FMIPDeviceImageCacheOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_24A6D2E7C();
}

- (void)start
{
  selfCopy = self;
  sub_24A6D2FD0();
}

- (_TtC8FMIPCore29FMIPDeviceImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end