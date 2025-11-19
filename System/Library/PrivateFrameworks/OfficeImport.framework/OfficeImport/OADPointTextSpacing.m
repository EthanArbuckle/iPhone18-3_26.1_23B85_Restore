@interface OADPointTextSpacing
- (BOOL)isEqual:(id)a3;
- (OADPointTextSpacing)initWithPoints:(int)a3;
@end

@implementation OADPointTextSpacing

- (OADPointTextSpacing)initWithPoints:(int)a3
{
  v5.receiver = self;
  v5.super_class = OADPointTextSpacing;
  result = [(OADPointTextSpacing *)&v5 init];
  if (result)
  {
    result->mPoints = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mPoints = self->mPoints;
    v6 = mPoints == [v4 points];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end