@interface PresentationBasedCollectionViewListCell
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation PresentationBasedCollectionViewListCell

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return [(PresentationBasedCollectionViewListCell *)&v8 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A40C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v11 = self;
  v12 = sub_1BA4A40A8();
  v13 = type metadata accessor for PresentationBasedCollectionViewListCell();
  v15.receiver = v11;
  v15.super_class = v13;
  [(PresentationBasedCollectionViewListCell *)&v15 _bridgedUpdateConfigurationUsingState:v12];

  (*((*MEMORY[0x1E69E7D40] & v11->super.super.super.super.super.super.isa) + 0x58))(v10);
  v14 = sub_1BA4A4168();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  MEMORY[0x1BFAF1F10](v6);

  (*(v8 + 8))(v10, v7);
}

- (_TtC18HealthExperienceUI39PresentationBasedCollectionViewListCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  v4 = a3;
  v5 = [(PresentationBasedCollectionViewListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end