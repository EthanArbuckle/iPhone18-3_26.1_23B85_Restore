@interface EDLink
+ (id)linkWithType:(int)a3;
- (EDLink)initWithType:(int)a3;
- (id)description;
- (id)externalNames;
@end

@implementation EDLink

- (id)externalNames
{
  mExternalNames = self->mExternalNames;
  if (!mExternalNames)
  {
    v4 = objc_alloc_init(EDCollection);
    v5 = self->mExternalNames;
    self->mExternalNames = v4;

    mExternalNames = self->mExternalNames;
  }

  return mExternalNames;
}

- (EDLink)initWithType:(int)a3
{
  v5.receiver = self;
  v5.super_class = EDLink;
  result = [(EDLink *)&v5 init];
  if (result)
  {
    result->mType = a3;
  }

  return result;
}

+ (id)linkWithType:(int)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithType:*&a3];

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDLink;
  v2 = [(EDLink *)&v4 description];

  return v2;
}

@end