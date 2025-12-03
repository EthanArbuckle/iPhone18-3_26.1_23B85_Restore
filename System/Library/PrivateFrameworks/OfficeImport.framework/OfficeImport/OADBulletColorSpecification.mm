@interface OADBulletColorSpecification
- (BOOL)isEqual:(id)equal;
@end

@implementation OADBulletColorSpecification

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mColor = self->mColor;
    color = [equalCopy color];
    v7 = [(OADColor *)mColor isEqual:color];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end