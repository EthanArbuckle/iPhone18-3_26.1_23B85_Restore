@interface OADColorChangeEffect
- (BOOL)isEqual:(id)a3;
- (OADColorChangeEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setStyleColor:(id)a3;
@end

@implementation OADColorChangeEffect

- (OADColorChangeEffect)init
{
  v3.receiver = self;
  v3.super_class = OADColorChangeEffect;
  return [(OADBlipEffect *)&v3 initWithType:3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADColor *)self->mFromColor copyWithZone:a3];
  [v5 setFromColor:v6];
  v7 = [(OADColor *)self->mToColor copyWithZone:a3];
  [v5 setToColor:v7];

  return v5;
}

- (void)setStyleColor:(id)a3
{
  v6 = a3;
  v4 = [(OADColor *)self->mFromColor colorForStyleColor:?];
  [(OADColorChangeEffect *)self setFromColor:v4];

  v5 = [(OADColor *)self->mToColor colorForStyleColor:v6];
  [(OADColorChangeEffect *)self setToColor:v5];
}

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mFromColor hash];
  v4 = [(OADColor *)self->mToColor hash]^ v3;
  v6.receiver = self;
  v6.super_class = OADColorChangeEffect;
  return v4 ^ [(OADBlipEffect *)&v6 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mFromColor = self->mFromColor;
    v6 = [v4 fromColor];
    if ([(OADColor *)mFromColor isEqual:v6])
    {
      mToColor = self->mToColor;
      v8 = [v4 toColor];
      if ([(OADColor *)mToColor isEqual:v8])
      {
        v11.receiver = self;
        v11.super_class = OADColorChangeEffect;
        v9 = [(OADBlipEffect *)&v11 isEqual:v4];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end