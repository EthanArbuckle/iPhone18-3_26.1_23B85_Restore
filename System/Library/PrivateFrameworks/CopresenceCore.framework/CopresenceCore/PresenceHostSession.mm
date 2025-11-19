@interface PresenceHostSession
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (_TtC14CopresenceCore19PresenceHostSession)init;
@end

@implementation PresenceHostSession

- (NSString)description
{
  v2 = self;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized PresenceHostSession.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end