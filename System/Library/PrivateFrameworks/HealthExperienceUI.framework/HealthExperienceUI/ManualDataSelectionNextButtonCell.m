@interface ManualDataSelectionNextButtonCell
- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithFrame:(CGRect)a3;
@end

@implementation ManualDataSelectionNextButtonCell

- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction);
  ButtonCell = type metadata accessor for ManualDataSelectionNextButtonCell();
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = ButtonCell;
  return [(ManualDataSelectionNextButtonCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ManualDataSelectionNextButtonCell();
  v6 = a3;
  v7 = [(ManualDataSelectionNextButtonCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end