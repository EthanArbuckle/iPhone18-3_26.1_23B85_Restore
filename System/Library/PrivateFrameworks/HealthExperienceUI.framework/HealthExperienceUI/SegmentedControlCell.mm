@interface SegmentedControlCell
- (_TtC18HealthExperienceUI20SegmentedControlCell)initWithFrame:(CGRect)a3;
- (void)segmentedControlChanged:(id)a3;
@end

@implementation SegmentedControlCell

- (_TtC18HealthExperienceUI20SegmentedControlCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI20SegmentedControlCell_segmentedControl;
  v10 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v11 = sub_1BA4A6AE8();
  v12 = [v10 initWithItems_];

  *(&self->super.super.super.super.super.isa + v9) = v12;
  v15.receiver = self;
  v15.super_class = type metadata accessor for SegmentedControlCell();
  v13 = [(SegmentedControlCell *)&v15 initWithFrame:x, y, width, height];
  sub_1BA3779BC();

  return v13;
}

- (void)segmentedControlChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA377D20(v4);
}

@end