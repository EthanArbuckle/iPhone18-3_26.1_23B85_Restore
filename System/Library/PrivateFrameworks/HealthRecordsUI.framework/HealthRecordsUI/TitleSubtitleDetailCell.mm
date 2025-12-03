@interface TitleSubtitleDetailCell
- (_TtC15HealthRecordsUI23TitleSubtitleDetailCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI23TitleSubtitleDetailCell)initWithFrame:(CGRect)frame;
@end

@implementation TitleSubtitleDetailCell

- (_TtC15HealthRecordsUI23TitleSubtitleDetailCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailCell_item;
  v9 = type metadata accessor for TitleSubtitleDetailCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(TitleSubtitleDetailCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI23TitleSubtitleDetailCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI23TitleSubtitleDetailCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TitleSubtitleDetailCell();
  coderCopy = coder;
  v6 = [(TitleSubtitleDetailCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end