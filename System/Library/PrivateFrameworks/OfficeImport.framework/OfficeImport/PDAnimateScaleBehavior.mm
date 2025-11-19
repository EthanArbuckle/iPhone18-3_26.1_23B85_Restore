@interface PDAnimateScaleBehavior
- (BOOL)isEqual:(id)a3;
- (CGPoint)by;
- (CGPoint)from;
- (CGPoint)to;
- (PDAnimateScaleBehavior)init;
- (unint64_t)hash;
@end

@implementation PDAnimateScaleBehavior

- (PDAnimateScaleBehavior)init
{
  v3.receiver = self;
  v3.super_class = PDAnimateScaleBehavior;
  return [(PDAnimateBehavior *)&v3 init];
}

- (CGPoint)to
{
  x = self->mTo.x;
  y = self->mTo.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)from
{
  x = self->mFrom.x;
  y = self->mFrom.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)by
{
  x = self->mBy.x;
  y = self->mBy.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);
  v7 = v6;
  if (v6 && ((v8 = self->mTo.x, v9 = self->mTo.y, [v6 to], v8 == v11) ? (v12 = v9 == v10) : (v12 = 0), v12 && ((v13 = self->mFrom.x, v14 = self->mFrom.y, objc_msgSend(v7, "from"), v13 == v16) ? (v17 = v14 == v15) : (v17 = 0), v17)))
  {
    x = self->mBy.x;
    y = self->mBy.y;
    [v7 by];
    v23 = v22;
    v25 = v24;

    if (x == v23 && y == v25)
    {
      v27.receiver = self;
      v27.super_class = PDAnimateScaleBehavior;
      v18 = [(PDAnimateBehavior *)&v27 isEqual:v4];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (unint64_t)hash
{
  if (self->mHasTo)
  {
    v2 = self->mTo.y ^ self->mTo.x;
  }

  else
  {
    v2 = 0;
  }

  if (self->mHasFrom)
  {
    v2 ^= self->mFrom.x ^ self->mFrom.y;
  }

  if (self->mHasBy)
  {
    v2 ^= self->mBy.x ^ self->mBy.y;
  }

  return v2;
}

@end