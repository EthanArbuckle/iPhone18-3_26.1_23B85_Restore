@interface PDTransition
- (BOOL)isAdvanceOnClick;
- (PDTransition)init;
- (id)description;
- (id)options;
- (int)advanceAfterTime;
- (int)speed;
- (int)type;
@end

@implementation PDTransition

- (PDTransition)init
{
  v3.receiver = self;
  v3.super_class = PDTransition;
  result = [(OADProperties *)&v3 init];
  if (result)
  {
    *(&result->mHasSpeed + 1) = 1;
  }

  return result;
}

- (int)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasType];
  v3 = v2[5];

  return v3;
}

- (BOOL)isAdvanceOnClick
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsAdvanceOnClick];
  v3 = v2[33];

  return v3;
}

- (int)speed
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasSpeed];
  v3 = v2[7];

  return v3;
}

- (int)advanceAfterTime
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasAdvanceAfterTime];
  v3 = v2[9];

  return v3;
}

- (id)options
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasTransitionOptions];
  v3 = v2[5];
  v4 = v3;

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDTransition;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end