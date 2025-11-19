@interface SnippetService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC16EncoreXPCService14SnippetService)init;
- (void)echoWithEvent:(id)a3;
- (void)handleEventWithEvent:(id)a3;
- (void)publishWithEvent:(id)a3;
- (void)subscribeWithCompletion:(id)a3;
@end

@implementation SnippetService

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_24A043E18();

  return v9 & 1;
}

- (void)subscribeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_24A04344C(sub_24A0443A8, v5);
}

- (void)handleEventWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A0435F8(v4);
}

- (void)publishWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A043A60(v4);
}

- (void)echoWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A043ADC(v4);
}

- (_TtC16EncoreXPCService14SnippetService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end