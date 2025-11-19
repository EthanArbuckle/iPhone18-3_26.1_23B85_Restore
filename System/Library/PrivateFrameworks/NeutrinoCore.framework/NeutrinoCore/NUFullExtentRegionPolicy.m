@interface NUFullExtentRegionPolicy
- (id)regionForGeometry:(id)a3;
@end

@implementation NUFullExtentRegionPolicy

- (id)regionForGeometry:(id)a3
{
  v6[2] = [a3 scaledSize];
  v6[3] = v3;
  v4 = [NURegion regionWithRect:v6];

  return v4;
}

@end