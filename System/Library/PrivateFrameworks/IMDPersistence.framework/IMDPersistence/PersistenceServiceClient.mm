@interface PersistenceServiceClient
- (IMDPersistenceService)remoteProxy;
- (IMDPersistenceService)synchronousRemoteProxy;
- (_TtC14IMDPersistence24PersistenceServiceClient)init;
- (void)reset;
@end

@implementation PersistenceServiceClient

- (IMDPersistenceService)synchronousRemoteProxy
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B7AD85D0((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v6;

  return v4;
}

- (IMDPersistenceService)remoteProxy
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B7AF5DD0((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v6;

  return v4;
}

- (_TtC14IMDPersistence24PersistenceServiceClient)init
{
  v3 = OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock;
  sub_1B7C107FC(&qword_1EBA52818, &qword_1B7D0D258);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PersistenceServiceClient();
  return [(PersistenceServiceClient *)&v6 init];
}

- (void)reset
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_1B7C4EF9C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

@end