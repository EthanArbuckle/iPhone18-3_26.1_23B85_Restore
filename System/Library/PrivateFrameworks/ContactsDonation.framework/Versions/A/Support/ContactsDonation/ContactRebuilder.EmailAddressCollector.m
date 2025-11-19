@interface ContactRebuilder.EmailAddressCollector
- (_TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector)init;
- (void)visitDonationValue:(id)a3 emailAddress:(id)a4 label:(id)a5;
- (void)visitDonationValue:(id)a3 imageData:(id)a4;
- (void)visitDonationValue:(id)a3 nameComponents:(id)a4;
- (void)visitDonationValue:(id)a3 phoneNumber:(id)a4 label:(id)a5;
- (void)visitDonationValue:(id)a3 postalAddress:(id)a4 style:(int64_t)a5 label:(id)a6;
@end

@implementation ContactRebuilder.EmailAddressCollector

- (void)visitDonationValue:(id)a3 nameComponents:(id)a4
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v13 = a3;
  v14 = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(&self->super.isa + v12) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v7 + 8))(v11, v6);
}

- (void)visitDonationValue:(id)a3 emailAddress:(id)a4 label:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  sub_100011C18(v10, v7, v9);
}

- (void)visitDonationValue:(id)a3 phoneNumber:(id)a4 label:(id)a5
{
  v7 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v8 = a3;
  v9 = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)visitDonationValue:(id)a3 postalAddress:(id)a4 style:(int64_t)a5 label:(id)a6
{
  v8 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v9 = a3;
  v10 = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)visitDonationValue:(id)a3 imageData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000636C(v9, v10);

  v11 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v12 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&v8->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v8->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(&v8->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (_TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end