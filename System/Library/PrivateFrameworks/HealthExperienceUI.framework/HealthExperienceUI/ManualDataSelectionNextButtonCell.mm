@interface ManualDataSelectionNextButtonCell
- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithFrame:(CGRect)frame;
@end

@implementation ManualDataSelectionNextButtonCell

- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell)initWithCoder:(id)coder
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
  coderCopy = coder;
  v7 = [(ManualDataSelectionNextButtonCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end