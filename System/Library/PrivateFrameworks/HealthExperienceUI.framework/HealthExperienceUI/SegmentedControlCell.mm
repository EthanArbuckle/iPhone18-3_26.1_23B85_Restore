@interface SegmentedControlCell
- (_TtC18HealthExperienceUI20SegmentedControlCell)initWithFrame:(CGRect)frame;
- (void)segmentedControlChanged:(id)changed;
@end

@implementation SegmentedControlCell

- (_TtC18HealthExperienceUI20SegmentedControlCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v10 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v11 = sub_1BA4A6AE8();
  initWithItems_ = [v10 initWithItems_];

  *(&self->super.super.super.super.super.isa + v9) = initWithItems_;
  v15.receiver = self;
  v15.super_class = type metadata accessor for SegmentedControlCell();
  height = [(SegmentedControlCell *)&v15 initWithFrame:x, y, width, height];
  sub_1BA3779BC();

  return height;
}

- (void)segmentedControlChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BA377D20(changedCopy);
}

@end