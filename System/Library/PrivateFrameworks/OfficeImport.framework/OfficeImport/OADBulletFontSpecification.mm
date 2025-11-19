@interface OADBulletFontSpecification
- (BOOL)isEqual:(id)a3;
- (OADBulletFontSpecification)initWithFont:(id)a3;
@end

@implementation OADBulletFontSpecification

- (OADBulletFontSpecification)initWithFont:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  mFont = self->mFont;
  self->mFont = v5;

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mFont = self->mFont;
    v6 = [v4 font];
    v7 = [(NSString *)mFont isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end