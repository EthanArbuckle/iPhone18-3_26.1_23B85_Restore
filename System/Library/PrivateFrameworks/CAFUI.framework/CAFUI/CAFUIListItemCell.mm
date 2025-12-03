@interface CAFUIListItemCell
- (_TtC5CAFUI17CAFUIListItemCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation CAFUIListItemCell

- (_TtC5CAFUI17CAFUIListItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CAFUIListItemCell();
  height = [(CAFUITileBaseCell *)&v10 initWithFrame:x, y, width, height];
  v8 = MEMORY[0x245D0D180](0xD000000000000011, 0x8000000242426560);
  [(CAFUIListItemCell *)height setAccessibilityIdentifier:v8];

  return height;
}

- (void)prepareForReuse
{
  selfCopy = self;
  CAFUIListItemCell.prepareForReuse()();
}

@end