@interface FMReverseGeocodingOperation
- (_TtC8FMIPCore27FMReverseGeocodingOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMReverseGeocodingOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = sub_24A82CF94();
  [(FMReverseGeocodingOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation__isFinished) = finished;
  v5 = sub_24A82CF94();
  [(FMReverseGeocodingOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_24A792E68();
}

- (void)start
{
  selfCopy = self;
  sub_24A792FBC();
}

- (_TtC8FMIPCore27FMReverseGeocodingOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end