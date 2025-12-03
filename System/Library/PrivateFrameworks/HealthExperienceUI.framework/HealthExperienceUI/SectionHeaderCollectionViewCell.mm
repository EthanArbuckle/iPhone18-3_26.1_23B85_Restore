@interface SectionHeaderCollectionViewCell
- (_TtC18HealthExperienceUI31SectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation SectionHeaderCollectionViewCell

- (_TtC18HealthExperienceUI31SectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  v10 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v9 = 0;
  v9[1] = 0;
  initWithFrame_ = [objc_allocWithZone(v10) initWithFrame_];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView) = initWithFrame_;
  v14.receiver = self;
  v14.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  height = [(SectionHeaderCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  sub_1BA167A40();

  return height;
}

@end