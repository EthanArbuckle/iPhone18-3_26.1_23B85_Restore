@interface DOCColumnLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_4B25C1241B3CB7AF52EB95B520B0CFC515DOCColumnLayout)init;
@end

@implementation DOCColumnLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = DOCColumnLayout.shouldInvalidateLayout(forBoundsChange:)(x, y, width, height);

  return v8 & 1;
}

- (_TtC26DocumentManagerExecutablesP33_4B25C1241B3CB7AF52EB95B520B0CFC515DOCColumnLayout)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCColumnLayout();
  return [(UICollectionViewFlowLayout *)&v3 init];
}

@end