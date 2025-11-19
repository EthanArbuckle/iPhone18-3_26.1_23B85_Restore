@interface DynamicTypeButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeButton

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  v3 = sub_24E28DE48(self, a2, sub_24E28D800);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v3 = sub_24E28DE48(self, a2, sub_24E28DBB8);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_24E28DF8C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E28E078(a3);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_24E28E360(x, y);

  return self & 1;
}

@end