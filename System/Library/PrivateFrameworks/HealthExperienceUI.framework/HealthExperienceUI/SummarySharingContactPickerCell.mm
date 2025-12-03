@interface SummarySharingContactPickerCell
- (_TtC18HealthExperienceUI31SummarySharingContactPickerCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI31SummarySharingContactPickerCell)initWithFrame:(CGRect)frame;
@end

@implementation SummarySharingContactPickerCell

- (_TtC18HealthExperienceUI31SummarySharingContactPickerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  v9 = type metadata accessor for SummarySharingContactPickerCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(SummarySharingContactPickerCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI31SummarySharingContactPickerCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI31SummarySharingContactPickerCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummarySharingContactPickerCell();
  coderCopy = coder;
  v6 = [(SummarySharingContactPickerCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end