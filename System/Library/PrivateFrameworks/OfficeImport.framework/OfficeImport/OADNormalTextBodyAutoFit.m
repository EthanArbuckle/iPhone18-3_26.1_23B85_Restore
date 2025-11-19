@interface OADNormalTextBodyAutoFit
- (BOOL)isEqual:(id)a3;
- (OADNormalTextBodyAutoFit)initWithFontScalePercent:(float)a3 lineSpacingReductionPercent:(float)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADNormalTextBodyAutoFit

- (OADNormalTextBodyAutoFit)initWithFontScalePercent:(float)a3 lineSpacingReductionPercent:(float)a4
{
  v7.receiver = self;
  v7.super_class = OADNormalTextBodyAutoFit;
  result = [(OADTextBodyAutoFit *)&v7 initWithType:2];
  if (result)
  {
    *(&result->super.mType + 1) = a3;
    result->mFontScalePercent = a4;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = self->mFontScalePercent ^ *(&self->super.mType + 1);
  v4.receiver = self;
  v4.super_class = OADNormalTextBodyAutoFit;
  return v2 ^ [(OADTextBodyAutoFit *)&v4 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [v4 fontScalePercent], v5 == v6) && (mFontScalePercent = self->mFontScalePercent, objc_msgSend(v4, "lineSpacingReductionPercent"), mFontScalePercent == v8))
  {
    v11.receiver = self;
    v11.super_class = OADNormalTextBodyAutoFit;
    v9 = [(OADTextBodyAutoFit *)&v11 isEqual:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADNormalTextBodyAutoFit;
  v2 = [(OADTextBodyAutoFit *)&v4 description];

  return v2;
}

@end