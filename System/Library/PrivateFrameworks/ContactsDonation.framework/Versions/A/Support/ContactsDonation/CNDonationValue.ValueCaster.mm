@interface CNDonationValue.ValueCaster
- (_TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster)init;
- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label;
- (void)visitDonationValue:(id)value imageData:(id)data;
- (void)visitDonationValue:(id)value nameComponents:(id)components;
- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label;
- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label;
@end

@implementation CNDonationValue.ValueCaster

- (void)visitDonationValue:(id)value nameComponents:(id)components
{
  v5 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PersonNameComponents();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v11 + 32))(v9, v15, v10);
  v16 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v17 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  selfCopy = self;
  sub_1000083DC(v9, self + v17);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = (&v19 - v9);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v10 = v11;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v16 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  selfCopy = self;
  sub_1000083DC(v10, self + v17);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label
{
  v7 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = (&v23 - v10);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  numberCopy = number;
  selfCopy = self;
  stringValue = [numberCopy stringValue];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v11 = v18;
  v11[1] = v20;
  v11[2] = v12;
  v11[3] = v14;
  v21 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  v22 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_1000083DC(v11, selfCopy + v22);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label
{
  v9 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = (&v20 - v12);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v13 = address;
  v13[1] = style;
  v13[2] = v14;
  v13[3] = v15;
  v16 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  v17 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  addressCopy = address;
  selfCopy = self;
  sub_1000083DC(v13, self + v17);
  swift_endAccess();
}

- (void)visitDonationValue:(id)value imageData:(id)data
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = (&v18 - v9);
  dataCopy = data;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  v16 = type metadata accessor for CNDonationValue.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_1000083DC(v10, selfCopy + v17);
  swift_endAccess();
}

- (_TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end