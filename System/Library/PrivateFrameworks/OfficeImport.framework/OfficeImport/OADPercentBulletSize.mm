@interface OADPercentBulletSize
- (BOOL)isEqual:(id)equal;
- (OADPercentBulletSize)initWithPercent:(float)percent;
@end

@implementation OADPercentBulletSize

- (OADPercentBulletSize)initWithPercent:(float)percent
{
  v5.receiver = self;
  v5.super_class = OADPercentBulletSize;
  result = [(OADPercentBulletSize *)&v5 init];
  if (result)
  {
    result->mPercent = percent;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mPercent = self->mPercent;
    [equalCopy percent];
    v7 = mPercent == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end