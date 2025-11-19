@interface OADShape3D
+ (id)nullShape3D;
- (BOOL)isEqual:(id)a3;
- (OADShape3D)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADShape3D

+ (id)nullShape3D
{
  v2 = +[OADShape3D nullShape3D]::theNullShape3D;
  if (!+[OADShape3D nullShape3D]::theNullShape3D)
  {
    v3 = objc_alloc_init(OADShape3D);
    v4 = +[OADShape3D nullShape3D]::theNullShape3D;
    +[OADShape3D nullShape3D]::theNullShape3D = v3;

    [+[OADShape3D nullShape3D]::theNullShape3D setMaterial:0];
    v2 = +[OADShape3D nullShape3D]::theNullShape3D;
  }

  return v2;
}

- (OADShape3D)init
{
  v9.receiver = self;
  v9.super_class = OADShape3D;
  v2 = [(OADShape3D *)&v9 init];
  v3 = v2;
  if (v2)
  {
    mTopBevel = v2->mTopBevel;
    v2->mTopBevel = 0;

    mBottomBevel = v3->mBottomBevel;
    v3->mBottomBevel = 0;

    mExtrusionColor = v3->mExtrusionColor;
    v3->mExtrusionColor = 0;

    v3->mExtrusionHeight = 0.0;
    mContourColor = v3->mContourColor;
    v3->mContourColor = 0;

    *&v3->mContourWidth = 0;
    v3->mMaterial = 8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADBevel *)self->mTopBevel copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(OADBevel *)self->mBottomBevel copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(OADColor *)self->mExtrusionColor copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->mExtrusionHeight;
  v12 = [(OADColor *)self->mContourColor copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 48) = self->mContourWidth;
  *(v5 + 52) = self->mShapeDepth;
  *(v5 + 56) = self->mMaterial;
  return v5;
}

- (unint64_t)hash
{
  v3 = [(OADBevel *)self->mTopBevel hash];
  v4 = [(OADBevel *)self->mBottomBevel hash];
  v5 = [(OADColor *)self->mExtrusionColor hash];
  return v4 ^ v3 ^ v5 ^ [(OADColor *)self->mContourColor hash]^ self->mExtrusionHeight ^ self->mContourWidth ^ self->mShapeDepth ^ self->mMaterial;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = v4) != 0)
  {
    v6 = v5;
    mTopBevel = self->mTopBevel;
    v8 = [v5 topBevel];
    if ([(OADBevel *)mTopBevel isEqual:v8])
    {
      mBottomBevel = self->mBottomBevel;
      v10 = [v6 bottomBevel];
      if ([(OADBevel *)mBottomBevel isEqual:v10])
      {
        mExtrusionColor = self->mExtrusionColor;
        v12 = [v6 extrusionColor];
        if ([(OADColor *)mExtrusionColor isEqual:v12])
        {
          mContourColor = self->mContourColor;
          v14 = [v6 contourColor];
          if (-[OADColor isEqual:](mContourColor, "isEqual:", v14) && (mExtrusionHeight = self->mExtrusionHeight, [v6 extrusionHeight], mExtrusionHeight == v16) && (mContourWidth = self->mContourWidth, objc_msgSend(v6, "contourWidth"), mContourWidth == v18) && (mShapeDepth = self->mShapeDepth, objc_msgSend(v6, "shapeDepth"), mShapeDepth == v20))
          {
            mMaterial = self->mMaterial;
            v22 = mMaterial == [v6 material];
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADShape3D;
  v2 = [(OADShape3D *)&v4 description];

  return v2;
}

@end