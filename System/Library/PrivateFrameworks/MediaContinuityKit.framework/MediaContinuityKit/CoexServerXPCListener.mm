@interface CoexServerXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC18MediaContinuityKit21CoexServerXPCListener)init;
@end

@implementation CoexServerXPCListener

- (_TtC18MediaContinuityKit21CoexServerXPCListener)init
{
  v3 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v4 = sub_25853341C();
  initWithMachServiceName_ = [v3 initWithMachServiceName_];

  *(&self->super.isa + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener) = initWithMachServiceName_;
  v6 = type metadata accessor for CoexSessionManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager) = sub_2584CA2B8();
  v10.receiver = self;
  v10.super_class = type metadata accessor for CoexServerXPCListener();
  return [(CoexServerXPCListener *)&v10 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = CoexServerXPCListener.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return v9;
}

@end