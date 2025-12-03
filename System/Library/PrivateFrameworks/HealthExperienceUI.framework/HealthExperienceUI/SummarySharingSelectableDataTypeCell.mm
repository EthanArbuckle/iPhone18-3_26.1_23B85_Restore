@interface SummarySharingSelectableDataTypeCell
- (_TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell)initWithFrame:(CGRect)frame;
- (void)switchUpdated;
@end

@implementation SummarySharingSelectableDataTypeCell

- (void)switchUpdated
{
  selfCopy = self;
  sub_1BA253F88();
}

- (_TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch;
  *(&self->super.super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font;
  *(&self->super.super.super.super.super.super.super.isa + v9) = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v11.receiver = self;
  v11.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  return [(IconWithNameCell *)&v11 initWithFrame:x, y, width, height];
}

@end