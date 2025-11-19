@interface BlastDoorSMSCTPartAttributedRichCards
- (BlastDoorSMSCTPartAttributedRichCards)init;
- (NSDictionary)richCards;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPartAttributedRichCards

- (NSString)description
{
  v4 = *&self->sMSCTPartAttributedRichCards[OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards];
  sub_2143001B8(*(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards));
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSDictionary)richCards
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards);
  if (v2)
  {
    v6 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards);
    v7 = *&self->sMSCTPartAttributedRichCards[OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards];
    v3 = self;
    sub_2143001B8(v2);
    MBDRichCards.dictionaryRepresentation.getter();
    v4 = sub_2146D9468();
    sub_2143002A4(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorSMSCTPartAttributedRichCards)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end