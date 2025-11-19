@interface OADPoint3D
- (BOOL)isEqual:(id)a3;
- (OADPoint3D)initWithX:(float)a3 y:(float)a4 z:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADPoint3D

- (OADPoint3D)initWithX:(float)a3 y:(float)a4 z:(float)a5
{
  v9.receiver = self;
  v9.super_class = OADPoint3D;
  result = [(OADPoint3D *)&v9 init];
  if (result)
  {
    result->mX = a3;
    result->mY = a4;
    result->mZ = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->mX;
  *&v6 = self->mY;
  *&v7 = self->mZ;

  return [v4 initWithX:v5 y:v6 z:v7];
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