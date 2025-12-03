@interface OADBulletFontSpecification
- (BOOL)isEqual:(id)equal;
- (OADBulletFontSpecification)initWithFont:(id)font;
@end

@implementation OADBulletFontSpecification

- (OADBulletFontSpecification)initWithFont:(id)font
{
  fontCopy = font;
  v5 = [fontCopy copy];
  mFont = self->mFont;
  self->mFont = v5;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mFont = self->mFont;
    font = [equalCopy font];
    v7 = [(NSString *)mFont isEqual:font];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end