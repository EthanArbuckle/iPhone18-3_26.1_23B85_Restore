@interface TopAlignedIconListCell
- (_TtC15HealthRecordsUI22TopAlignedIconListCell)initWithFrame:(CGRect)frame;
@end

@implementation TopAlignedIconListCell

- (_TtC15HealthRecordsUI22TopAlignedIconListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_iconView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI22TopAlignedIconListCell_listContentView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TopAlignedIconListCell();
  return [(TopAlignedIconListCell *)&v9 initWithFrame:x, y, width, height];
}

@end