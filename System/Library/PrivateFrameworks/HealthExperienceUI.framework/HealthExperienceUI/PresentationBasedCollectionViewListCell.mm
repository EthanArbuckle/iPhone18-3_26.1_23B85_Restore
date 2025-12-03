@interface PresentationBasedCollectionViewListCell
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation PresentationBasedCollectionViewListCell

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return [(PresentationBasedCollectionViewListCell *)&v8 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A40C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  v12 = sub_1BA4A40A8();
  v13 = type metadata accessor for PresentationBasedCollectionViewListCell();
  v15.receiver = selfCopy;
  v15.super_class = v13;
  [(PresentationBasedCollectionViewListCell *)&v15 _bridgedUpdateConfigurationUsingState:v12];

  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.super.super.isa) + 0x58))(v10);
  v14 = sub_1BA4A4168();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  MEMORY[0x1BFAF1F10](v6);

  (*(v8 + 8))(v10, v7);
}

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  coderCopy = coder;
  v5 = [(PresentationBasedCollectionViewListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end