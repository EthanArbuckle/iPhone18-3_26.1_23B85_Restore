@interface FMReverseGeocodingOperation
- (_TtC7FMFCore27FMReverseGeocodingOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMReverseGeocodingOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = sub_24A4AB820();
  [(FMReverseGeocodingOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation__isFinished) = finished;
  v5 = sub_24A4AB820();
  [(FMReverseGeocodingOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_24A3E2AAC();
}

- (void)start
{
  selfCopy = self;
  sub_24A3E2C00();
}

- (_TtC7FMFCore27FMReverseGeocodingOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end