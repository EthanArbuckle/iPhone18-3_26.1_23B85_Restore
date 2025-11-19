@interface MockURLDataTask
- (_TtC12FMNetworking15MockURLDataTask)init;
- (void)resume;
@end

@implementation MockURLDataTask

- (void)resume
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12FMNetworking15MockURLDataTask_executionBlock);
  v3 = *(&self->super.super._uploadProgress + OBJC_IVAR____TtC12FMNetworking15MockURLDataTask_executionBlock);
  v4 = self;
  v2();
}

- (_TtC12FMNetworking15MockURLDataTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end