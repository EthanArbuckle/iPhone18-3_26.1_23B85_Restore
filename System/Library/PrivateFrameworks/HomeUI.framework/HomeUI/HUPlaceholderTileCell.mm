@interface HUPlaceholderTileCell
- (HUPlaceholderTileCell)initWithCoder:(id)a3;
- (HUPlaceholderTileCell)initWithFrame:(CGRect)a3;
@end

@implementation HUPlaceholderTileCell

- (HUPlaceholderTileCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlaceholderTileCell();
  return [(HUTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUPlaceholderTileCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderTileCell();
  v4 = a3;
  v5 = [(HUTileCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end