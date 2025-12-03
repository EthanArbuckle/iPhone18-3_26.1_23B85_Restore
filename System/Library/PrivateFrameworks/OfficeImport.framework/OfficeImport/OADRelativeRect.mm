@interface OADRelativeRect
- (BOOL)isEqual:(id)equal;
- (OADRelativeRect)initWithLeft:(float)left top:(float)top right:(float)right bottom:(float)bottom;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADRelativeRect

- (OADRelativeRect)initWithLeft:(float)left top:(float)top right:(float)right bottom:(float)bottom
{
  v11.receiver = self;
  v11.super_class = OADRelativeRect;
  result = [(OADRelativeRect *)&v11 init];
  if (result)
  {
    result->mLeft = left;
    result->mTop = top;
    result->mRight = right;
    result->mBottom = bottom;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *&v5 = self->mLeft;
  *&v6 = self->mTop;
  *&v7 = self->mRight;
  *&v8 = self->mBottom;

  return [v4 initWithLeft:v5 top:v6 right:v7 bottom:v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (mTop = self->mTop, [equalCopy top], mTop == v6) && (mBottom = self->mBottom, objc_msgSend(equalCopy, "bottom"), mBottom == v8) && (mLeft = self->mLeft, objc_msgSend(equalCopy, "left"), mLeft == v10))
  {
    mRight = self->mRight;
    [equalCopy right];
    v13 = mRight == v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADRelativeRect;
  v2 = [(OADRelativeRect *)&v4 description];

  return v2;
}

@end