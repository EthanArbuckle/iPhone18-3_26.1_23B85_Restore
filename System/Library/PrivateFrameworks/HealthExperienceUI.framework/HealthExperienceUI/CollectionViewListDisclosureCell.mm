@interface CollectionViewListDisclosureCell
- (NSString)description;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation CollectionViewListDisclosureCell

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation);
  v5 = self;
  if (v4)
  {
    v6 = v4;
    sub_1BA4A13F8();

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.super.super.super.super.super.isa + v3) = 0;

  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  [(CollectionViewListDisclosureCell *)&v8 dealloc];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  v2 = v5.receiver;
  [(CollectionViewListDisclosureCell *)&v5 prepareForReuse];
  v3 = sub_1BA27A7D4();
  [v3 setText_];

  v4 = sub_1BA27A994();
  [v4 setText_];

  [*&v2[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] setHidden_];
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  v8 = [(CollectionViewListDisclosureCell *)v7 traitCollection];
  sub_1B9F0ADF8(0, &qword_1EDC6B598);
  LOBYTE(a4) = sub_1BA4A7798();

  if ((a4 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & v7->super.super.super.super.super.super.isa) + 0x160))();
    v9 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    if (*(&v7->super.super.super.super.super.super.isa + v9))
    {
      sub_1BA27B454();
    }

    else
    {
      sub_1BA27BA50();
    }
  }

  swift_unknownObjectRelease();
}

- (NSString)description
{
  v2 = self;
  sub_1BA27E474();

  v3 = sub_1BA4A6758();

  return v3;
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1BA27E6A8();
}

@end