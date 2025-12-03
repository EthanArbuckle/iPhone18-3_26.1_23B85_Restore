@interface OADImageRecolorInfo
- (BOOL)isEqual:(id)equal;
- (OADImageRecolorInfo)initWithColors:(id)colors fills:(id)fills;
- (id)description;
@end

@implementation OADImageRecolorInfo

- (OADImageRecolorInfo)initWithColors:(id)colors fills:(id)fills
{
  colorsCopy = colors;
  fillsCopy = fills;
  v12.receiver = self;
  v12.super_class = OADImageRecolorInfo;
  v9 = [(OADImageRecolorInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mColors, colors);
    objc_storeStrong(&v10->mFills, fills);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
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