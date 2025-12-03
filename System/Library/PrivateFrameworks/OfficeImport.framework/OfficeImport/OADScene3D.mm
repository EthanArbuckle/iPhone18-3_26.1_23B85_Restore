@interface OADScene3D
+ (id)nullScene3D;
- (BOOL)isEqual:(id)equal;
- (OADScene3D)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADScene3D

+ (id)nullScene3D
{
  v2 = +[OADScene3D nullScene3D]::theNullScene3D;
  if (!+[OADScene3D nullScene3D]::theNullScene3D)
  {
    v3 = objc_alloc_init(OADScene3D);
    v4 = +[OADScene3D nullScene3D]::theNullScene3D;
    +[OADScene3D nullScene3D]::theNullScene3D = v3;

    v2 = +[OADScene3D nullScene3D]::theNullScene3D;
  }

  return v2;
}

- (OADScene3D)init
{
  v8.receiver = self;
  v8.super_class = OADScene3D;
  v2 = [(OADScene3D *)&v8 init];
  v3 = v2;
  if (v2)
  {
    mCamera = v2->mCamera;
    v2->mCamera = 0;

    mLightRig = v3->mLightRig;
    v3->mLightRig = 0;

    mBackdrop = v3->mBackdrop;
    v3->mBackdrop = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OADCamera *)self->mCamera copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OADLightRig *)self->mLightRig copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(OADBackdrop *)self->mBackdrop copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(OADCamera *)self->mCamera hash];
  v4 = [(OADLightRig *)self->mLightRig hash]^ v3;
  return v4 ^ [(OADBackdrop *)self->mBackdrop hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = equalCopy) != 0)
  {
    v6 = v5;
    mCamera = self->mCamera;
    camera = [v5 camera];
    if ([(OADCamera *)mCamera isEqual:camera])
    {
      mLightRig = self->mLightRig;
      lightRig = [v6 lightRig];
      if ([(OADLightRig *)mLightRig isEqual:lightRig])
      {
        mBackdrop = self->mBackdrop;
        backdrop = [v6 backdrop];
        v13 = [(OADBackdrop *)mBackdrop isEqual:backdrop];
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
  v4.super_class = OADScene3D;
  v2 = [(OADScene3D *)&v4 description];

  return v2;
}

@end