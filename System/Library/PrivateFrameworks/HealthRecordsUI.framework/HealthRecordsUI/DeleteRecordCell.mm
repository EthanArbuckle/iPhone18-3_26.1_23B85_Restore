@interface DeleteRecordCell
- (_TtC15HealthRecordsUI16DeleteRecordCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI16DeleteRecordCell)initWithFrame:(CGRect)frame;
@end

@implementation DeleteRecordCell

- (_TtC15HealthRecordsUI16DeleteRecordCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI16DeleteRecordCell_item;
  v9 = type metadata accessor for DeleteRecordCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(DeleteRecordCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI16DeleteRecordCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI16DeleteRecordCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DeleteRecordCell();
  coderCopy = coder;
  v6 = [(DeleteRecordCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end