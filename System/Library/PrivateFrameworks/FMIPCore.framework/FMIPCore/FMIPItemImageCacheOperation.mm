@interface FMIPItemImageCacheOperation
- (_TtC8FMIPCore27FMIPItemImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMIPItemImageCacheOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = sub_24A82CF94();
  [(FMIPItemImageCacheOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished) = a3;
  v5 = sub_24A82CF94();
  [(FMIPItemImageCacheOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_24A7F2898();
}

- (void)start
{
  v2 = self;
  sub_24A7F29EC();
}

- (_TtC8FMIPCore27FMIPItemImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end