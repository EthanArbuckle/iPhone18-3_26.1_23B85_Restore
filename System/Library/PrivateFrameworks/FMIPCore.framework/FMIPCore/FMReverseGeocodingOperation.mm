@interface FMReverseGeocodingOperation
- (_TtC8FMIPCore27FMReverseGeocodingOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMReverseGeocodingOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = sub_24A82CF94();
  [(FMReverseGeocodingOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC8FMIPCore27FMReverseGeocodingOperation__isFinished) = a3;
  v5 = sub_24A82CF94();
  [(FMReverseGeocodingOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_24A792E68();
}

- (void)start
{
  v2 = self;
  sub_24A792FBC();
}

- (_TtC8FMIPCore27FMReverseGeocodingOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end