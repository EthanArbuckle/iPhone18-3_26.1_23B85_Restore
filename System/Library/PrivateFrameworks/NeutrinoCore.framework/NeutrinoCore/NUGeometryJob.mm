@interface NUGeometryJob
- (id)result;
- (id)scalePolicy;
@end

@implementation NUGeometryJob

- (id)result
{
  v3 = objc_alloc_init(_NUGeometryResult);
  v4 = [(NURenderJob *)self outputGeometry];
  [(_NUGeometryResult *)v3 setGeometry:v4];

  return v3;
}

- (id)scalePolicy
{
  v2 = [(NUGeometryJob *)self geometryRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

@end