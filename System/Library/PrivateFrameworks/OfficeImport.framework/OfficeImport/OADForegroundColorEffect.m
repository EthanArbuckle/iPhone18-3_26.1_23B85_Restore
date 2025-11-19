@interface OADForegroundColorEffect
- (BOOL)isEqual:(id)a3;
- (OADForegroundColorEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setStyleColor:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADColor *)self->mForegroundColor copyWithZone:a3];
  [v5 setForegroundColor:v6];

  return v5;
}

- (void)setStyleColor:(id)a3
{
  v4 = [(OADColor *)self->mForegroundColor colorForStyleColor:a3];
  [(OADForegroundColorEffect *)self setForegroundColor:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mForegroundColor = self->mForegroundColor;
    v6 = [v4 foregroundColor];
    if ([(OADColor *)mForegroundColor isEqual:v6])
    {
      v9.receiver = self;
      v9.super_class = OADForegroundColorEffect;
      v7 = [(OADBlipEffect *)&v9 isEqual:v4];
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