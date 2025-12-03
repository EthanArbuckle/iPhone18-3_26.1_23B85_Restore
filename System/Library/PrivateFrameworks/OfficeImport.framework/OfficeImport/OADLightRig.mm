@interface OADLightRig
- (BOOL)isEqual:(id)equal;
- (OADLightRig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADLightRig

- (OADLightRig)init
{
  v6.receiver = self;
  v6.super_class = OADLightRig;
  v2 = [(OADLightRig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mRotation = v2->mRotation;
    v2->mRotation = 0;

    *&v3->mType = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OADRotation3D *)self->mRotation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = *&self->mType;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = equalCopy) != 0)
  {
    v6 = v5;
    mRotation = self->mRotation;
    rotation = [v5 rotation];
    if (-[OADRotation3D isEqual:](mRotation, "isEqual:", rotation) && (mType = self->mType, mType == [v6 type]))
    {
      mDirection = self->mDirection;
      v11 = mDirection == [v6 direction];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADLightRig;
  v2 = [(OADLightRig *)&v4 description];

  return v2;
}

@end