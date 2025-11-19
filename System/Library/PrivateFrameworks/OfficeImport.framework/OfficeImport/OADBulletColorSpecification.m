@interface OADBulletColorSpecification
- (BOOL)isEqual:(id)a3;
@end

@implementation OADBulletColorSpecification

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mColor = self->mColor;
    v6 = [v4 color];
    v7 = [(OADColor *)mColor isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end