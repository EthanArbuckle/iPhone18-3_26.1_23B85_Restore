@interface HUGuestAccessTileCell
- (HUGuestAccessTileCell)initWithCoder:(id)coder;
- (HUGuestAccessTileCell)initWithFrame:(CGRect)frame;
@end

@implementation HUGuestAccessTileCell

- (HUGuestAccessTileCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GuestAccessTileCell();
  return [(HUTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUGuestAccessTileCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GuestAccessTileCell();
  coderCopy = coder;
  v5 = [(HUTileCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end