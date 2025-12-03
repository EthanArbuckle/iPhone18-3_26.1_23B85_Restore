@interface OADVector3D
- (BOOL)isEqual:(id)equal;
- (OADVector3D)initWithDx:(float)dx dy:(float)dy dz:(float)dz;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADVector3D

- (OADVector3D)initWithDx:(float)dx dy:(float)dy dz:(float)dz
{
  v9.receiver = self;
  v9.super_class = OADVector3D;
  result = [(OADVector3D *)&v9 init];
  if (result)
  {
    result->mDx = dx;
    result->mDy = dy;
    result->mDz = dz;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *&v5 = self->mDx;
  *&v6 = self->mDy;
  *&v7 = self->mDz;

  return [v4 initWithDx:v5 dy:v6 dz:v7];
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