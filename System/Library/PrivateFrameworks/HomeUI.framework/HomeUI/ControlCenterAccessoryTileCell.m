@interface ControlCenterAccessoryTileCell
- (BOOL)toggleable;
- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithCoder:(id)a3;
- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithFrame:(CGRect)a3;
- (id)tappableAreaForPoint:(CGPoint)a3;
- (void)setToggleable:(BOOL)a3;
@end

@implementation ControlCenterAccessoryTileCell

- (BOOL)toggleable
{
  v2 = self;
  v3 = sub_20CFF9EEC();

  return v3 & 1;
}

- (void)setToggleable:(BOOL)a3
{
  v3 = self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = a3;
  if (v3 != a3)
  {
    [(ControlCenterAccessoryTileCell *)self setNeedsUpdateConfiguration];
  }
}

- (id)tappableAreaForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
    v10 = self;
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

- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  return [(HUAccessoryTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6HomeUI30ControlCenterAccessoryTileCell)initWithCoder:(id)a3
{
  self->HUAccessoryTileCell_opaque[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  v4 = a3;
  v5 = [(HUAccessoryTileCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end