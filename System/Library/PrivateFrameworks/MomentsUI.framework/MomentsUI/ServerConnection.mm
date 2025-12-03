@interface ServerConnection
- (_TtC9MomentsUI16ServerConnection)init;
- (void)dealloc;
@end

@implementation ServerConnection

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xD0);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ServerConnection();
  [(ServerConnection *)&v4 dealloc];
}

- (_TtC9MomentsUI16ServerConnection)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI16ServerConnection_connection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI16ServerConnection_hasActiveConnection) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9MomentsUI16ServerConnection_activeSandboxHandles) = MEMORY[0x277D84FA0];
  v3 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for ServerConnection();
  return [(ServerConnection *)&v5 init];
}

@end