@interface NSError(MapsSharedExtras)
- (BOOL)_maps_isCancellation;
- (BOOL)_maps_isErrorOfDomain:()MapsSharedExtras code:;
@end

@implementation NSError(MapsSharedExtras)

- (BOOL)_maps_isCancellation
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    v3 = [self code] == 3072;
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
  domain = [self domain];
  v8 = [domain isEqualToString:v6];

  if (v8)
  {
    v9 = [self code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end