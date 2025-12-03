@interface IMRichCards
- (BOOL)isEqual:(id)equal;
- (IMRichCards)init;
- (IMRichCards)initWithCardArray:(id)array;
- (IMRichCards)initWithCards:(id)cards;
- (NSArray)cards;
- (id)expandToIndividualCard;
- (id)previewText;
- (int64_t)hash;
- (void)updateUrlToTransferMap:(id)map;
@end

@implementation IMRichCards

- (NSArray)cards
{
  type metadata accessor for IMRichCard(0);

  v2 = sub_1A88C85E8();

  return v2;
}

- (IMRichCards)initWithCards:(id)cards
{
  type metadata accessor for IMRichCard(0);
  *(self + OBJC_IVAR___IMRichCards_cards) = sub_1A88C85F8();
  v5.receiver = self;
  v5.super_class = IMRichCards;
  return [(IMRichCards *)&v5 init];
}

- (IMRichCards)initWithCardArray:(id)array
{
  sub_1A870CCE0(&unk_1EB3091D0);
  v3 = sub_1A88C85F8();
  return sub_1A88B8C74(v3);
}

- (void)updateUrlToTransferMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  sub_1A88B9904(mapCopy);
}

- (id)previewText
{
  selfCopy = self;
  sub_1A88B9A78();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A88C82A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)expandToIndividualCard
{
  selfCopy = self;
  sub_1A88B9C68();

  type metadata accessor for IMRichCards();
  v3 = sub_1A88C85E8();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IMRichCards.isEqual(_:)(v8);

  sub_1A85EF638(v8, &qword_1EB3057B0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_1A88C9588();
  selfCopy = self;
  cards = [(IMRichCards *)selfCopy cards];
  type metadata accessor for IMRichCard(0);
  v5 = sub_1A88C85F8();

  sub_1A87F85A4(v8, v5);

  v6 = sub_1A88C9568();

  return v6;
}

- (IMRichCards)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end