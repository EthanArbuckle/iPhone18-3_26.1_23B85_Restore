@interface OADColorChangeEffect
- (BOOL)isEqual:(id)equal;
- (OADColorChangeEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setStyleColor:(id)color;
@end

@implementation OADColorChangeEffect

- (OADColorChangeEffect)init
{
  v3.receiver = self;
  v3.super_class = OADColorChangeEffect;
  return [(OADBlipEffect *)&v3 initWithType:3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OADColor *)self->mFromColor copyWithZone:zone];
  [v5 setFromColor:v6];
  v7 = [(OADColor *)self->mToColor copyWithZone:zone];
  [v5 setToColor:v7];

  return v5;
}

- (void)setStyleColor:(id)color
{
  colorCopy = color;
  v4 = [(OADColor *)self->mFromColor colorForStyleColor:?];
  [(OADColorChangeEffect *)self setFromColor:v4];

  v5 = [(OADColor *)self->mToColor colorForStyleColor:colorCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mFromColor = self->mFromColor;
    fromColor = [equalCopy fromColor];
    if ([(OADColor *)mFromColor isEqual:fromColor])
    {
      mToColor = self->mToColor;
      toColor = [equalCopy toColor];
      if ([(OADColor *)mToColor isEqual:toColor])
      {
        v11.receiver = self;
        v11.super_class = OADColorChangeEffect;
        v9 = [(OADBlipEffect *)&v11 isEqual:equalCopy];
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