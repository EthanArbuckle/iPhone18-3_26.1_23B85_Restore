@interface PresenceHostSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)description;
- (_TtC14CopresenceCore19PresenceHostSession)init;
@end

@implementation PresenceHostSession

- (NSString)description
{
  selfCopy = self;
  v3 = PresenceHostSession.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (_TtC14CopresenceCore19PresenceHostSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized PresenceHostSession.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

@end