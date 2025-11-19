@interface OADVector3D
- (BOOL)isEqual:(id)a3;
- (OADVector3D)initWithDx:(float)a3 dy:(float)a4 dz:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADVector3D

- (OADVector3D)initWithDx:(float)a3 dy:(float)a4 dz:(float)a5
{
  v9.receiver = self;
  v9.super_class = OADVector3D;
  result = [(OADVector3D *)&v9 init];
  if (result)
  {
    result->mDx = a3;
    result->mDy = a4;
    result->mDz = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->mDx;
  *&v6 = self->mDy;
  *&v7 = self->mDz;

  return [v4 initWithDx:v5 dy:v6 dz:v7];
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

  mDx = self->mDx;
  [v5 dx];
  if (mDx != v8)
  {
    goto LABEL_7;
  }

  mDy = self->mDy;
  [v6 dy];
  if (mDy != v10)
  {
    goto LABEL_7;
  }

  mDz = self->mDz;
  [v6 dz];
  v13 = mDz == v12;
LABEL_8:

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADVector3D;
  v2 = [(OADVector3D *)&v4 description];

  return v2;
}

@end