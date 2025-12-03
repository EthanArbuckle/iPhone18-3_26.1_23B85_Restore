@interface FMIPItemImageCacheOperation
- (_TtC8FMIPCore27FMIPItemImageCacheOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMIPItemImageCacheOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = sub_24A82CF94();
  [(FMIPItemImageCacheOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished) = finished;
  v5 = sub_24A82CF94();
  [(FMIPItemImageCacheOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_24A7F2898();
}

- (void)start
{
  selfCopy = self;
  sub_24A7F29EC();
}

- (_TtC8FMIPCore27FMIPItemImageCacheOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end