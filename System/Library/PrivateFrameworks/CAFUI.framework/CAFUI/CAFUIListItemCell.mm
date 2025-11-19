@interface CAFUIListItemCell
- (_TtC5CAFUI17CAFUIListItemCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation CAFUIListItemCell

- (_TtC5CAFUI17CAFUIListItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CAFUIListItemCell();
  v7 = [(CAFUITileBaseCell *)&v10 initWithFrame:x, y, width, height];
  v8 = MEMORY[0x245D0D180](0xD000000000000011, 0x8000000242426560);
  [(CAFUIListItemCell *)v7 setAccessibilityIdentifier:v8];

  return v7;
}

- (void)prepareForReuse
{
  v2 = self;
  CAFUIListItemCell.prepareForReuse()();
}

@end