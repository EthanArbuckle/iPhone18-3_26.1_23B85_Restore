@interface OADBackdrop
- (BOOL)isEqual:(id)equal;
- (OADBackdrop)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADBackdrop

- (OADBackdrop)init
{
  v8.receiver = self;
  v8.super_class = OADBackdrop;
  v2 = [(OADBackdrop *)&v8 init];
  v3 = v2;
  if (v2)
  {
    mAnchor = v2->mAnchor;
    v2->mAnchor = 0;

    mNormal = v3->mNormal;
    v3->mNormal = 0;

    mUp = v3->mUp;
    v3->mUp = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OADPoint3D *)self->mAnchor copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OADVector3D *)self->mNormal copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(OADVector3D *)self->mUp copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(OADPoint3D *)self->mAnchor hash];
  v4 = [(OADVector3D *)self->mNormal hash]^ v3;
  return v4 ^ [(OADVector3D *)self->mUp hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = equalCopy) != 0)
  {
    v6 = v5;
    mAnchor = self->mAnchor;
    anchor = [v5 anchor];
    if ([(OADPoint3D *)mAnchor isEqual:anchor])
    {
      mNormal = self->mNormal;
      normal = [v6 normal];
      if ([(OADVector3D *)mNormal isEqual:normal])
      {
        mUp = self->mUp;
        v12 = [v6 up];
        v13 = [(OADVector3D *)mUp isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADBackdrop;
  v2 = [(OADBackdrop *)&v4 description];

  return v2;
}

@end