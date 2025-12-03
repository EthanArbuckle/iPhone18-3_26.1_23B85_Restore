@interface OADNormalTextBodyAutoFit
- (BOOL)isEqual:(id)equal;
- (OADNormalTextBodyAutoFit)initWithFontScalePercent:(float)percent lineSpacingReductionPercent:(float)reductionPercent;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADNormalTextBodyAutoFit

- (OADNormalTextBodyAutoFit)initWithFontScalePercent:(float)percent lineSpacingReductionPercent:(float)reductionPercent
{
  v7.receiver = self;
  v7.super_class = OADNormalTextBodyAutoFit;
  result = [(OADTextBodyAutoFit *)&v7 initWithType:2];
  if (result)
  {
    *(&result->super.mType + 1) = percent;
    result->mFontScalePercent = reductionPercent;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [equalCopy fontScalePercent], v5 == v6) && (mFontScalePercent = self->mFontScalePercent, objc_msgSend(equalCopy, "lineSpacingReductionPercent"), mFontScalePercent == v8))
  {
    v11.receiver = self;
    v11.super_class = OADNormalTextBodyAutoFit;
    v9 = [(OADTextBodyAutoFit *)&v11 isEqual:equalCopy];
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