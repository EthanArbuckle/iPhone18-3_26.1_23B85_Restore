@interface NSXPCService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC22CoreAudioOrchestration12NSXPCService)init;
@end

@implementation NSXPCService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2450BC190(v7);

  return v9 & 1;
}

- (_TtC22CoreAudioOrchestration12NSXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end