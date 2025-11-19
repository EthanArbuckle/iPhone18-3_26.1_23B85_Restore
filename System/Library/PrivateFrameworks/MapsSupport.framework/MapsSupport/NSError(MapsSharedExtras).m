@interface NSError(MapsSharedExtras)
- (BOOL)_maps_isCancellation;
- (BOOL)_maps_isErrorOfDomain:()MapsSharedExtras code:;
@end

@implementation NSError(MapsSharedExtras)

- (BOOL)_maps_isCancellation
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v3 = [a1 code] == 3072;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_maps_isErrorOfDomain:()MapsSharedExtras code:
{
  v6 = a3;
  v7 = [a1 domain];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = [a1 code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end