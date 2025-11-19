@interface FMReverseGeocodingOperation
- (_TtC7FMFCore27FMReverseGeocodingOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMReverseGeocodingOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = sub_24A4AB820();
  [(FMReverseGeocodingOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation__isFinished) = a3;
  v5 = sub_24A4AB820();
  [(FMReverseGeocodingOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_24A3E2AAC();
}

- (void)start
{
  v2 = self;
  sub_24A3E2C00();
}

- (_TtC7FMFCore27FMReverseGeocodingOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end