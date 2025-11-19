@interface CMFBlockedContactsCache
- (BOOL)isItemBlocked:(id)a3;
- (CMFBlockedContactsCache)init;
- (CMFBlockedContactsCache)initWithBlocklist:(id)a3;
- (id)associatedContacts:(id)a3;
- (id)getBlockedCache;
- (void)updateCacheWithBlocklist:(id)a3;
@end

@implementation CMFBlockedContactsCache

- (CMFBlockedContactsCache)initWithBlocklist:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_10000480C(sub_10000A2C8, v4);
}

- (void)updateCacheWithBlocklist:(id)a3
{
  sub_10000A2D0(0, &qword_10001CFF8, CommunicationFilterItem_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1000056DC(v4);
}

- (BOOL)isItemBlocked:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000062DC();

  return self & 1;
}

- (id)getBlockedCache
{
  v2 = self;
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

- (id)associatedContacts:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000072D0(v4);
  v7 = v6;

  return v7;
}

@end