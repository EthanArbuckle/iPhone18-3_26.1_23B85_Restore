@interface NSMutableArray(MapsUIExtras)
- (void)_mapsui_addObjectIfNotNil:()MapsUIExtras;
- (void)_mapsui_addObjectsFromArrayIfNotNil:()MapsUIExtras;
@end

@implementation NSMutableArray(MapsUIExtras)

- (void)_mapsui_addObjectsFromArrayIfNotNil:()MapsUIExtras
{
  v4 = a3;
  if ([v4 count])
  {
    [a1 addObjectsFromArray:v4];
  }
}

- (void)_mapsui_addObjectIfNotNil:()MapsUIExtras
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end