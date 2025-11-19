@interface FPShouldPauseResult
- (_TtC18FileProviderDaemon19FPShouldPauseResult)init;
- (_TtC18FileProviderDaemon19FPShouldPauseResult)initWithShouldPause:(BOOL)a3 semaphore:(id)a4;
@end

@implementation FPShouldPauseResult

- (_TtC18FileProviderDaemon19FPShouldPauseResult)initWithShouldPause:(BOOL)a3 semaphore:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FPShouldPauseResult();
  v5 = a4;
  return [(FPShouldPauseResult *)&v7 init];
}

- (_TtC18FileProviderDaemon19FPShouldPauseResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end