@interface OADRelativeRect
- (BOOL)isEqual:(id)a3;
- (OADRelativeRect)initWithLeft:(float)a3 top:(float)a4 right:(float)a5 bottom:(float)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADRelativeRect

- (OADRelativeRect)initWithLeft:(float)a3 top:(float)a4 right:(float)a5 bottom:(float)a6
{
  v11.receiver = self;
  v11.super_class = OADRelativeRect;
  result = [(OADRelativeRect *)&v11 init];
  if (result)
  {
    result->mLeft = a3;
    result->mTop = a4;
    result->mRight = a5;
    result->mBottom = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *&v5 = self->mLeft;
  *&v6 = self->mTop;
  *&v7 = self->mRight;
  *&v8 = self->mBottom;

  return [v4 initWithLeft:v5 top:v6 right:v7 bottom:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (mTop = self->mTop, [v4 top], mTop == v6) && (mBottom = self->mBottom, objc_msgSend(v4, "bottom"), mBottom == v8) && (mLeft = self->mLeft, objc_msgSend(v4, "left"), mLeft == v10))
  {
    mRight = self->mRight;
    [v4 right];
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