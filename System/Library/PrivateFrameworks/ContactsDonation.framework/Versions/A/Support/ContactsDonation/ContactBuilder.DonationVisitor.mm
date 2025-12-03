@interface ContactBuilder.DonationVisitor
- (_TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor)init;
- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label;
- (void)visitDonationValue:(id)value imageData:(id)data;
- (void)visitDonationValue:(id)value nameComponents:(id)components;
- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label;
- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label;
@end

@implementation ContactBuilder.DonationVisitor

- (_TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor)init
{
  *(&self->super.isa + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues) = _swiftEmptyArrayStorage;
  v3 = [objc_allocWithZone(CNMutableContact) init];
  *(&self->super.isa + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ContactBuilder.DonationVisitor();
  return [(ContactBuilder.DonationVisitor *)&v5 init];
}

- (void)visitDonationValue:(id)value nameComponents:(id)components
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  valueCopy = value;
  selfCopy = self;
  sub_10001BABC();

  (*(v7 + 8))(v11, v6);
}

- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  valueCopy = value;
  selfCopy = self;
  sub_10001AE84(valueCopy);
}

- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  valueCopy = value;
  numberCopy = number;
  selfCopy = self;
  sub_10001B300(valueCopy, numberCopy);
}

- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  valueCopy = value;
  addressCopy = address;
  selfCopy = self;
  sub_10001BC8C(valueCopy, addressCopy);
}

- (void)visitDonationValue:(id)value imageData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v10 setImageData:isa];
  sub_10000636C(v7, v9);
}

@end