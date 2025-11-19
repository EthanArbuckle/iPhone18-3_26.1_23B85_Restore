@interface NUFixedUpRegionPolicy
- (id)regionForGeometry:(id)a3;
@end

@implementation NUFixedUpRegionPolicy

- (id)regionForGeometry:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NUFixedUpRegionPolicy;
  v5 = [(NUFixedRegionPolicy *)&v9 regionForGeometry:v4];
  if (v4)
  {
    [v4 extent];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [v5 regionByFlippingInRect:v8];

  return v6;
}

@end