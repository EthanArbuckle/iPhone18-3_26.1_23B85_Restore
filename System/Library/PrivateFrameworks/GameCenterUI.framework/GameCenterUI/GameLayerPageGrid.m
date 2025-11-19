@interface GameLayerPageGrid
- (GameLayerPageGrid)initWithWidth:(double)a3 columnSizeCategory:(int64_t)a4 maxColumns:(id)a5;
- (UIEdgeInsets)centeringInsets;
- (UIEdgeInsets)minimumInsets;
@end

@implementation GameLayerPageGrid

- (UIEdgeInsets)minimumInsets
{
  v2 = PageGrid.minimumInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)centeringInsets
{
  v2 = PageGrid.centeringInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (GameLayerPageGrid)initWithWidth:(double)a3 columnSizeCategory:(int64_t)a4 maxColumns:(id)a5
{
  v6 = a4;
  v7 = a5;
  return PageGrid.init(width:columnSizeCategory:maxColumns:)(v6, a5);
}

@end