@interface PinnedContentStore
- (_TtC28HealthAppHealthDaemonSupport18PinnedContentStore)init;
- (id)exportedInterface;
- (id)remoteInterface;
@end

@implementation PinnedContentStore

- (id)exportedInterface
{
  interfaceWithProtocol_ = [objc_opt_self() interfaceWithProtocol_];

  return interfaceWithProtocol_;
}

- (id)remoteInterface
{
  v2 = _s09HealthAppA13DaemonSupport18PinnedContentStoreC15serverInterfaceSo14NSXPCInterfaceCvgZ_0();

  return v2;
}

- (_TtC28HealthAppHealthDaemonSupport18PinnedContentStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end