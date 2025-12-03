@interface NUGeometryJob
- (id)result;
- (id)scalePolicy;
@end

@implementation NUGeometryJob

- (id)result
{
  v3 = objc_alloc_init(_NUGeometryResult);
  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUGeometryResult *)v3 setGeometry:outputGeometry];

  return v3;
}

- (id)scalePolicy
{
  geometryRequest = [(NUGeometryJob *)self geometryRequest];
  scalePolicy = [geometryRequest scalePolicy];

  return scalePolicy;
}

@end