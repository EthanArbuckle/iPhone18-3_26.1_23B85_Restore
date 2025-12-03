@interface EDProtection
+ (EDProtection)protectionWithHidden:(BOOL)hidden locked:(BOOL)locked;
- (BOOL)isEqual:(id)equal;
- (EDProtection)init;
- (EDProtection)initWithHidden:(BOOL)hidden locked:(BOOL)locked;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation EDProtection

- (EDProtection)init
{
  v3.receiver = self;
  v3.super_class = EDProtection;
  result = [(EDProtection *)&v3 init];
  if (result)
  {
    *&result->mHidden = 256;
  }

  return result;
}

- (EDProtection)initWithHidden:(BOOL)hidden locked:(BOOL)locked
{
  result = [(EDProtection *)self init];
  if (result)
  {
    result->mHidden = hidden;
    result->mLocked = locked;
  }

  return result;
}

+ (EDProtection)protectionWithHidden:(BOOL)hidden locked:(BOOL)locked
{
  v4 = [objc_alloc(objc_opt_class()) initWithHidden:hidden locked:locked];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mHidden = self->mHidden;
  mLocked = self->mLocked;

  return [v4 initWithHidden:mHidden locked:mLocked];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDProtection *)self isEqualToProtection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = 512;
  if (self->mHidden)
  {
    v2 = 256;
  }

  v3 = 1;
  if (!self->mLocked)
  {
    v3 = 2;
  }

  return v3 | v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDProtection;
  v2 = [(EDProtection *)&v4 description];

  return v2;
}

@end