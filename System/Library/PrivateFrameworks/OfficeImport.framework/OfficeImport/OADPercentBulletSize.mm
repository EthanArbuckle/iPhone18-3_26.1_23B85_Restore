@interface OADPercentBulletSize
- (BOOL)isEqual:(id)a3;
- (OADPercentBulletSize)initWithPercent:(float)a3;
@end

@implementation OADPercentBulletSize

- (OADPercentBulletSize)initWithPercent:(float)a3
{
  v5.receiver = self;
  v5.super_class = OADPercentBulletSize;
  result = [(OADPercentBulletSize *)&v5 init];
  if (result)
  {
    result->mPercent = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mPercent = self->mPercent;
    [v4 percent];
    v7 = mPercent == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end