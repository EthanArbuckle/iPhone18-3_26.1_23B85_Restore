@interface SectionHeaderCollectionViewCell
- (_TtC18HealthExperienceUI31SectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation SectionHeaderCollectionViewCell

- (_TtC18HealthExperienceUI31SectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  v10 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v9 = 0;
  v9[1] = 0;
  v11 = [objc_allocWithZone(v10) initWithFrame_];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView) = v11;
  v14.receiver = self;
  v14.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  v12 = [(SectionHeaderCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  sub_1BA167A40();

  return v12;
}

@end