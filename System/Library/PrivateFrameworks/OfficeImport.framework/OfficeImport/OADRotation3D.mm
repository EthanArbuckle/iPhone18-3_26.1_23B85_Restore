@interface OADRotation3D
- (BOOL)isEqual:(id)a3;
- (OADRotation3D)initWithLatitude:(float)a3 longitude:(float)a4 revolution:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADRotation3D

- (OADRotation3D)initWithLatitude:(float)a3 longitude:(float)a4 revolution:(float)a5
{
  v9.receiver = self;
  v9.super_class = OADRotation3D;
  result = [(OADRotation3D *)&v9 init];
  if (result)
  {
    result->mLatitude = a3;
    result->mLongitude = a4;
    result->mRevolution = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->mLatitude;
  *&v6 = self->mLongitude;
  *&v7 = self->mRevolution;

  return [v4 initWithLatitude:v5 longitude:v6 revolution:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  mLatitude = self->mLatitude;
  [v5 latitude];
  if (mLatitude != v8)
  {
    goto LABEL_7;
  }

  mLongitude = self->mLongitude;
  [v6 longitude];
  if (mLongitude != v10)
  {
    goto LABEL_7;
  }

  mRevolution = self->mRevolution;
  [v6 revolution];
  v13 = mRevolution == v12;
LABEL_8:

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADRotation3D;
  v2 = [(OADRotation3D *)&v4 description];

  return v2;
}

@end