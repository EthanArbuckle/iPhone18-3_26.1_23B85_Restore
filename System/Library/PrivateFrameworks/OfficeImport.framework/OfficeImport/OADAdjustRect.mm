@interface OADAdjustRect
- (OADAdjustRect)initWithLeft:(OADAdjustCoord)left top:(OADAdjustCoord)top right:(OADAdjustCoord)right bottom:(OADAdjustCoord)bottom;
- (id)description;
@end

@implementation OADAdjustRect

- (OADAdjustRect)initWithLeft:(OADAdjustCoord)left top:(OADAdjustCoord)top right:(OADAdjustCoord)right bottom:(OADAdjustCoord)bottom
{
  v11.receiver = self;
  v11.super_class = OADAdjustRect;
  result = [(OADAdjustRect *)&v11 init];
  if (result)
  {
    result->mLeft = left;
    result->mTop = top;
    result->mRight = right;
    result->mBottom = bottom;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADAdjustRect;
  v2 = [(OADAdjustRect *)&v4 description];

  return v2;
}

@end