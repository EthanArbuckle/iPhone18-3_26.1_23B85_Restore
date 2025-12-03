@interface UploadNewDataCell
- (_TtC15HealthRecordsUI17UploadNewDataCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI17UploadNewDataCell)initWithFrame:(CGRect)frame;
@end

@implementation UploadNewDataCell

- (_TtC15HealthRecordsUI17UploadNewDataCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for UploadNewDataCell();
  height = [(UploadNewDataCell *)&v10 initWithFrame:x, y, width, height];
  sub_1D12F75BC();

  return height;
}

- (_TtC15HealthRecordsUI17UploadNewDataCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button) = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end