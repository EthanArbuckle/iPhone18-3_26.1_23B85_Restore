@interface OADImageRecolorInfo
- (BOOL)isEqual:(id)a3;
- (OADImageRecolorInfo)initWithColors:(id)a3 fills:(id)a4;
- (id)description;
@end

@implementation OADImageRecolorInfo

- (OADImageRecolorInfo)initWithColors:(id)a3 fills:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OADImageRecolorInfo;
  v9 = [(OADImageRecolorInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mColors, a3);
    objc_storeStrong(&v10->mFills, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    mColors = self->mColors;
    if (mColors == v5[1] || [(NSDictionary *)mColors isEqualToDictionary:?])
    {
      mFills = self->mFills;
      if (mFills == v5[2])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSDictionary *)mFills isEqualToDictionary:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADImageRecolorInfo;
  v2 = [(OADImageRecolorInfo *)&v4 description];

  return v2;
}

@end