@interface OADPoint3D
- (BOOL)isEqual:(id)equal;
- (OADPoint3D)initWithX:(float)x y:(float)y z:(float)z;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADPoint3D

- (OADPoint3D)initWithX:(float)x y:(float)y z:(float)z
{
  v9.receiver = self;
  v9.super_class = OADPoint3D;
  result = [(OADPoint3D *)&v9 init];
  if (result)
  {
    result->mX = x;
    result->mY = y;
    result->mZ = z;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *&v5 = self->mX;
  *&v6 = self->mY;
  *&v7 = self->mZ;

  return [v4 initWithX:v5 y:v6 z:v7];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v5 = equalCopy;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  mX = self->mX;
  [v5 x];
  if (mX != v8)
  {
    goto LABEL_7;
  }

  mY = self->mY;
  [v6 y];
  if (mY != v10)
  {
    goto LABEL_7;
  }

  mZ = self->mZ;
  [v6 z];
  v13 = mZ == v12;
LABEL_8:

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADPoint3D;
  v2 = [(OADPoint3D *)&v4 description];

  return v2;
}

@end