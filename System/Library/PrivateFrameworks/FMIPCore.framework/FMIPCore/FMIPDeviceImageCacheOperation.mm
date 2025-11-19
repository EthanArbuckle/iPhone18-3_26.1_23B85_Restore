@interface FMIPDeviceImageCacheOperation
- (_TtC8FMIPCore29FMIPDeviceImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMIPDeviceImageCacheOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = sub_24A82CF94();
  [(FMIPDeviceImageCacheOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished) = a3;
  v5 = sub_24A82CF94();
  [(FMIPDeviceImageCacheOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_24A6D2E7C();
}

- (void)start
{
  v2 = self;
  sub_24A6D2FD0();
}

- (_TtC8FMIPCore29FMIPDeviceImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end