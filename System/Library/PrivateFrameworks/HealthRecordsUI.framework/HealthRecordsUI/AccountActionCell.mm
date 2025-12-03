@interface AccountActionCell
- (_TtC15HealthRecordsUI17AccountActionCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI17AccountActionCell)initWithFrame:(CGRect)frame;
@end

@implementation AccountActionCell

- (_TtC15HealthRecordsUI17AccountActionCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionCell_item;
  v9 = type metadata accessor for AccountActionCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(AccountActionCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI17AccountActionCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccountActionCell();
  coderCopy = coder;
  v6 = [(AccountActionCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end