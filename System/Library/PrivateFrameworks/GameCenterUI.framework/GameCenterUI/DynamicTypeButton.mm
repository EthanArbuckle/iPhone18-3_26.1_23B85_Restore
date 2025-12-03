@interface DynamicTypeButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeButton

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  v3 = sub_24E28DE48(self, a2, sub_24E28D800);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  v3 = sub_24E28DE48(self, a2, sub_24E28DBB8);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_24E28DEBC(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_24E28DF8C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E28E078(change);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_24E28E360(x, y);

  return self & 1;
}

@end