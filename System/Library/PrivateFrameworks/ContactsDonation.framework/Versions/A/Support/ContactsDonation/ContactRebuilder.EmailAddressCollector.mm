@interface ContactRebuilder.EmailAddressCollector
- (_TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector)init;
- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label;
- (void)visitDonationValue:(id)value imageData:(id)data;
- (void)visitDonationValue:(id)value nameComponents:(id)components;
- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label;
- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label;
@end

@implementation ContactRebuilder.EmailAddressCollector

- (void)visitDonationValue:(id)value nameComponents:(id)components
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  valueCopy = value;
  selfCopy = self;
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

- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  valueCopy = value;
  selfCopy = self;
  sub_100011C18(valueCopy, v7, v9);
}

- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label
{
  v7 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  valueCopy = value;
  selfCopy = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((*(&self->super.isa + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label
{
  v8 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  valueCopy = value;
  selfCopy = self;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(&self->super.isa + v8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

- (void)visitDonationValue:(id)value imageData:(id)data
{
  valueCopy = value;
  dataCopy = data;
  selfCopy = self;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000636C(v9, v10);

  v11 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v12 = valueCopy;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(&selfCopy->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&selfCopy->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(&selfCopy->super.isa + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
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