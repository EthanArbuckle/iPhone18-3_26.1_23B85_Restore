@interface NUFixedUpRegionPolicy
- (id)regionForGeometry:(id)geometry;
@end

@implementation NUFixedUpRegionPolicy

- (id)regionForGeometry:(id)geometry
{
  geometryCopy = geometry;
  v9.receiver = self;
  v9.super_class = NUFixedUpRegionPolicy;
  v5 = [(NUFixedRegionPolicy *)&v9 regionForGeometry:geometryCopy];
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [v5 regionByFlippingInRect:v8];

  return v6;
}

@end