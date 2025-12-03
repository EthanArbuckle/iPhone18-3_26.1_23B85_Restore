@interface EmptyStateCellView
- (_TtC18HealthExperienceUI18EmptyStateCellView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EmptyStateCellView

- (_TtC18HealthExperienceUI18EmptyStateCellView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___spinner) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18EmptyStateCellView____lazy_storage___stackView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for EmptyStateCellView();
  height = [(EmptyStateCellView *)&v10 initWithFrame:x, y, width, height];
  sub_1BA4206F0();

  return height;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_1BA420B18();
}

@end