@interface OADBlipEffect
- (BOOL)isEqual:(id)equal;
- (OADBlipEffect)initWithType:(int)type;
- (id)description;
@end

@implementation OADBlipEffect

- (OADBlipEffect)initWithType:(int)type
{
  v5.receiver = self;
  v5.super_class = OADBlipEffect;
  result = [(OADBlipEffect *)&v5 init];
  if (result)
  {
    result->mType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mType = self->mType;
    v6 = mType == [equalCopy type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADBlipEffect;
  v2 = [(OADBlipEffect *)&v4 description];

  return v2;
}

@end