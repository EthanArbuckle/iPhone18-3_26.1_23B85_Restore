@interface CoexSessionXPCServerProxy
- (_TtC18MediaContinuityKit25CoexSessionXPCServerProxy)init;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation CoexSessionXPCServerProxy

- (_TtC18MediaContinuityKit25CoexSessionXPCServerProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)stopWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_2584D2308(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end