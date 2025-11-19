@interface CPLPlaceAnnotation
- (CPLPlaceAnnotation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CPLPlaceAnnotation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLPlaceAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLPlaceAnnotation;
  v5 = [(CPLPlaceAnnotation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

@end