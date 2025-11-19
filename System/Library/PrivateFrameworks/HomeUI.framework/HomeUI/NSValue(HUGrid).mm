@interface NSValue(HUGrid)
+ (id)valueWithGridPosition:()HUGrid;
+ (id)valueWithGridSize:()HUGrid;
- (uint64_t)gridPositionValue;
- (uint64_t)gridSizeValue;
@end

@implementation NSValue(HUGrid)

+ (id)valueWithGridPosition:()HUGrid
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [a1 valueWithBytes:v6 objCType:"{HUGridPosition=qq}"];

  return v4;
}

+ (id)valueWithGridSize:()HUGrid
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [a1 valueWithBytes:v6 objCType:"{HUGridSize=qq}"];

  return v4;
}

- (uint64_t)gridPositionValue
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return v2[0];
}

- (uint64_t)gridSizeValue
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return v2[0];
}

@end