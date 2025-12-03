@interface CMFBlockedContactsCache
- (BOOL)isItemBlocked:(id)blocked;
- (CMFBlockedContactsCache)init;
- (CMFBlockedContactsCache)initWithBlocklist:(id)blocklist;
- (id)associatedContacts:(id)contacts;
- (id)getBlockedCache;
- (void)updateCacheWithBlocklist:(id)blocklist;
@end

@implementation CMFBlockedContactsCache

- (CMFBlockedContactsCache)initWithBlocklist:(id)blocklist
{
  v3 = _Block_copy(blocklist);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10000480C(sub_10000A2C8, v4);
}

- (void)updateCacheWithBlocklist:(id)blocklist
{
  sub_10000A2D0(0, &qword_10001CFF8, CommunicationFilterItem_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000056DC(v4);
}

- (BOOL)isItemBlocked:(id)blocked
{
  blockedCopy = blocked;
  selfCopy = self;
  LOBYTE(self) = sub_1000062DC();

  return self & 1;
}

- (id)getBlockedCache
{
  selfCopy = self;
  sub_1000064A4();

  sub_10000A2D0(0, &qword_10001CFF8, CommunicationFilterItem_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CMFBlockedContactsCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)associatedContacts:(id)contacts
{
  contactsCopy = contacts;
  selfCopy = self;
  sub_1000072D0(contactsCopy);
  v7 = v6;

  return v7;
}

@end