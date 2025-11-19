@interface TitleEmptyStateCollectionViewCell
- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation TitleEmptyStateCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  v2 = v3.receiver;
  [(TitleEmptyStateCollectionViewCell *)&v3 prepareForReuse];
  [v2 setUserInteractionEnabled_];
}

- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return [(ContentConfigurationCollectionViewListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  v4 = a3;
  v5 = [(ContentConfigurationCollectionViewListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end