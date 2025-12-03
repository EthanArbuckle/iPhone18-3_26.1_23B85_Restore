@interface TitleEmptyStateCollectionViewCell
- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithFrame:(CGRect)frame;
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

- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return [(ContentConfigurationCollectionViewListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI33TitleEmptyStateCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  coderCopy = coder;
  v5 = [(ContentConfigurationCollectionViewListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end