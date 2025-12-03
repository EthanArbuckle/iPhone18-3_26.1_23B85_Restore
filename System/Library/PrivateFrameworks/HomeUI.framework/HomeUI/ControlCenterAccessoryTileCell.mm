@interface ControlCenterAccessoryTileCell
- (BOOL)toggleable;
- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithCoder:(id)coder;
- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithFrame:(CGRect)frame;
- (id)tappableAreaForPoint:(CGPoint)point;
- (void)setToggleable:(BOOL)toggleable;
@end

@implementation ControlCenterAccessoryTileCell

- (BOOL)toggleable
{
  selfCopy = self;
  v3 = sub_20CFF9EEC();

  return v3 & 1;
}

- (void)setToggleable:(BOOL)toggleable
{
  v3 = self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = toggleable;
  if (v3 != toggleable)
  {
    [(ControlCenterAccessoryTileCell *)self setNeedsUpdateConfiguration];
  }
}

- (id)tappableAreaForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = &self->HUAccessoryTileCell_opaque[OBJC_IVAR___HUTileCell__gridSize];
  if (self->HUAccessoryTileCell_opaque[OBJC_IVAR___HUTileCell__gridSize + 16])
  {
    v7 = sub_20D005CF8(self);
    v9 = v8;
  }

  else
  {
    v7 = *v6;
    v9 = v6[1];
    selfCopy = self;
  }

  if (v7 == 1 && v9 == 1)
  {
    v12 = @"HUTileCellTappableAreaGeneralToggleArea";
  }

  else
  {
    v12 = sub_20D00325C(x, y);
  }

  v13 = v12;

  return v13;
}

- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  return [(HUAccessoryTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithCoder:(id)coder
{
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  coderCopy = coder;
  v5 = [(HUAccessoryTileCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end