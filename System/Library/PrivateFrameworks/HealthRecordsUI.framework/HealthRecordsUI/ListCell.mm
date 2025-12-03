@interface ListCell
- (_TtC15HealthRecordsUI8ListCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI8ListCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
@end

@implementation ListCell

- (_TtC15HealthRecordsUI8ListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_textLabel;
  *(&self->super.super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = self + OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  v10 = type metadata accessor for ListCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = self;
  v15.super_class = v10;
  height = [(ListCell *)&v15 initWithFrame:x, y, width, height];
  v12 = *((*MEMORY[0x1E69E7D40] & height->super.super.super.super.super.super.super.isa) + 0x60);
  v13 = height;
  v12();

  return v13;
}

- (_TtC15HealthRecordsUI8ListCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_textLabel;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  coderCopy = coder;
  *(&self->super.super.super.super.super.super.super.isa + v5) = [v6 init];
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  v9 = type metadata accessor for ListCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(ListCell *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ListCell();
  v2 = v4.receiver;
  awakeFromNib = [(ListCell *)&v4 awakeFromNib];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(awakeFromNib);
}

@end