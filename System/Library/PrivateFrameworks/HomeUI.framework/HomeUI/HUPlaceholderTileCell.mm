@interface HUPlaceholderTileCell
- (HUPlaceholderTileCell)initWithCoder:(id)coder;
- (HUPlaceholderTileCell)initWithFrame:(CGRect)frame;
@end

@implementation HUPlaceholderTileCell

- (HUPlaceholderTileCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlaceholderTileCell();
  return [(HUTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUPlaceholderTileCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderTileCell();
  coderCopy = coder;
  v5 = [(HUTileCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end