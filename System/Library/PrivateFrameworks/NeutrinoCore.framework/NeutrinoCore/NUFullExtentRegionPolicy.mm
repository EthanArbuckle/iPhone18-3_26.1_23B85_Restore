@interface NUFullExtentRegionPolicy
- (id)regionForGeometry:(id)geometry;
@end

@implementation NUFullExtentRegionPolicy

- (id)regionForGeometry:(id)geometry
{
  v6[2] = [geometry scaledSize];
  v6[3] = v3;
  v4 = [NURegion regionWithRect:v6];

  return v4;
}

@end