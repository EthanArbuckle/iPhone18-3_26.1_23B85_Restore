@interface OADForegroundColorEffect
- (BOOL)isEqual:(id)equal;
- (OADForegroundColorEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setStyleColor:(id)color;
@end

@implementation OADForegroundColorEffect

- (OADForegroundColorEffect)init
{
  v3.receiver = self;
  v3.super_class = OADForegroundColorEffect;
  return [(OADBlipEffect *)&v3 initWithType:6];
}

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mForegroundColor hash];
  v5.receiver = self;
  v5.super_class = OADForegroundColorEffect;
  return [(OADBlipEffect *)&v5 hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OADColor *)self->mForegroundColor copyWithZone:zone];
  [v5 setForegroundColor:v6];

  return v5;
}

- (void)setStyleColor:(id)color
{
  v4 = [(OADColor *)self->mForegroundColor colorForStyleColor:color];
  [(OADForegroundColorEffect *)self setForegroundColor:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mForegroundColor = self->mForegroundColor;
    foregroundColor = [equalCopy foregroundColor];
    if ([(OADColor *)mForegroundColor isEqual:foregroundColor])
    {
      v9.receiver = self;
      v9.super_class = OADForegroundColorEffect;
      v7 = [(OADBlipEffect *)&v9 isEqual:equalCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end