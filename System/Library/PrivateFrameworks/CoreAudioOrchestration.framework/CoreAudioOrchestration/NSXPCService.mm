@interface NSXPCService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC22CoreAudioOrchestration12NSXPCService)init;
@end

@implementation NSXPCService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2450BC190(connectionCopy);

  return v9 & 1;
}

- (_TtC22CoreAudioOrchestration12NSXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end