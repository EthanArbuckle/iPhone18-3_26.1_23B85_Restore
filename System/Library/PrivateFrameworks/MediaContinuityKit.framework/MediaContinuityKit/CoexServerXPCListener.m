@interface CoexServerXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC18MediaContinuityKit21CoexServerXPCListener)init;
@end

@implementation CoexServerXPCListener

- (_TtC18MediaContinuityKit21CoexServerXPCListener)init
{
  v3 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v4 = sub_25853341C();
  v5 = [v3 initWithMachServiceName_];

  *(&self->super.isa + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener) = v5;
  v6 = type metadata accessor for CoexSessionManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager) = sub_2584CA2B8();
  v10.receiver = self;
  v10.super_class = type metadata accessor for CoexServerXPCListener();
  return [(CoexServerXPCListener *)&v10 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CoexServerXPCListener.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

@end