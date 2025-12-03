@interface DOCColumnLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC26DocumentManagerExecutablesP33_4B25C1241B3CB7AF52EB95B520B0CFC515DOCColumnLayout)init;
@end

@implementation DOCColumnLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
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