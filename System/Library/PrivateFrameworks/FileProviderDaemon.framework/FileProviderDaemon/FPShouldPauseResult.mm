@interface FPShouldPauseResult
- (_TtC18FileProviderDaemon19FPShouldPauseResult)init;
- (_TtC18FileProviderDaemon19FPShouldPauseResult)initWithShouldPause:(BOOL)pause semaphore:(id)semaphore;
@end

@implementation FPShouldPauseResult

- (_TtC18FileProviderDaemon19FPShouldPauseResult)initWithShouldPause:(BOOL)pause semaphore:(id)semaphore
{
  *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause) = pause;
  *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore) = semaphore;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FPShouldPauseResult();
  semaphoreCopy = semaphore;
  return [(FPShouldPauseResult *)&v7 init];
}

- (_TtC18FileProviderDaemon19FPShouldPauseResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end