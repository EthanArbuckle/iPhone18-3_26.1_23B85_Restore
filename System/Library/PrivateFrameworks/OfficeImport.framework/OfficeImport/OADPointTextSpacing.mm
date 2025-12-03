@interface OADPointTextSpacing
- (BOOL)isEqual:(id)equal;
- (OADPointTextSpacing)initWithPoints:(int)points;
@end

@implementation OADPointTextSpacing

- (OADPointTextSpacing)initWithPoints:(int)points
{
  v5.receiver = self;
  v5.super_class = OADPointTextSpacing;
  result = [(OADPointTextSpacing *)&v5 init];
  if (result)
  {
    result->mPoints = points;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mPoints = self->mPoints;
    v6 = mPoints == [equalCopy points];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end