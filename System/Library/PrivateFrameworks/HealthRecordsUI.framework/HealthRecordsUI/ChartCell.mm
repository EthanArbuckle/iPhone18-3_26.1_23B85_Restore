@interface ChartCell
- (_TtC15HealthRecordsUI9ChartCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI9ChartCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)didMoveToSuperview;
@end

@implementation ChartCell

- (_TtC15HealthRecordsUI9ChartCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  v9 = type metadata accessor for ChartCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(ChartCell *)&v12 initWithFrame:x, y, width, height];
  sub_1D12A310C();

  return height;
}

- (_TtC15HealthRecordsUI9ChartCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ChartCell();
  coderCopy = coder;
  v6 = [(ChartCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChartCell();
  v2 = v3.receiver;
  [(ChartCell *)&v3 awakeFromNib];
  sub_1D12A310C();
}

- (void)didMoveToSuperview
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ChartCell();
  v2 = v6.receiver;
  [(ChartCell *)&v6 didMoveToSuperview];
  v3 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v2 + v3, v4);
  if (v5)
  {
    sub_1D10A72B8(v4);
    sub_1D12A3908();
  }

  else
  {

    sub_1D10A72B8(v4);
  }
}

@end