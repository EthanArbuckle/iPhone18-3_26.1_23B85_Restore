@interface ListCell
- (_TtC15HealthRecordsUI8ListCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI8ListCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation ListCell

- (_TtC15HealthRecordsUI8ListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_textLabel;
  *(&self->super.super.super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = self + OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  v10 = type metadata accessor for ListCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = self;
  v15.super_class = v10;
  v11 = [(ListCell *)&v15 initWithFrame:x, y, width, height];
  v12 = *((*MEMORY[0x1E69E7D40] & v11->super.super.super.super.super.super.super.isa) + 0x60);
  v13 = v11;
  v12();

  return v13;
}

- (_TtC15HealthRecordsUI8ListCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_textLabel;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v7 = a3;
  *(&self->super.super.super.super.super.super.super.isa + v5) = [v6 init];
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  v9 = type metadata accessor for ListCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(ListCell *)&v12 initWithCoder:v7];

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
  v3 = [(ListCell *)&v4 awakeFromNib];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(v3);
}

@end