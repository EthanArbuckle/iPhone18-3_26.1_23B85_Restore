@interface OADScene3D
+ (id)nullScene3D;
- (BOOL)isEqual:(id)a3;
- (OADScene3D)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADCamera *)self->mCamera copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OADLightRig *)self->mLightRig copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(OADBackdrop *)self->mBackdrop copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = v4) != 0)
  {
    v6 = v5;
    mCamera = self->mCamera;
    v8 = [v5 camera];
    if ([(OADCamera *)mCamera isEqual:v8])
    {
      mLightRig = self->mLightRig;
      v10 = [v6 lightRig];
      if ([(OADLightRig *)mLightRig isEqual:v10])
      {
        mBackdrop = self->mBackdrop;
        v12 = [v6 backdrop];
        v13 = [(OADBackdrop *)mBackdrop isEqual:v12];
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