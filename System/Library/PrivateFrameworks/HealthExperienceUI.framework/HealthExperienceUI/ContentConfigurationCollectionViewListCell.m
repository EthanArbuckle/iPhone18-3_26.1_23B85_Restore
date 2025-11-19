@interface ContentConfigurationCollectionViewListCell
- (_TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation ContentConfigurationCollectionViewListCell

- (_TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  v9 = type metadata accessor for ContentConfigurationCollectionViewListCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(PresentationBasedCollectionViewListCell *)&v11 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1B9F65A5C(v7);

  (*(v5 + 8))(v7, v4);
}

@end