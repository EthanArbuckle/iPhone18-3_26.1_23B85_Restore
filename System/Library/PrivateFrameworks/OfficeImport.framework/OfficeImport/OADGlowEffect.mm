@interface OADGlowEffect
- (BOOL)isEqual:(id)equal;
- (OADGlowEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADGlowEffect

- (OADGlowEffect)init
{
  v3.receiver = self;
  v3.super_class = OADGlowEffect;
  return [(OADEffect *)&v3 initWithType:4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(OADColor *)self->mColor copy];
  [v4 setColor:v5];
  *&v6 = self->mRadius;
  [v4 setRadius:v6];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mColor hash];
  mRadius = self->mRadius;
  v6.receiver = self;
  v6.super_class = OADGlowEffect;
  return v3 ^ [(OADEffect *)&v6 hash]^ mRadius;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mColor = self->mColor;
    color = [equalCopy color];
    if (-[OADColor isEqual:](mColor, "isEqual:", color) && (mRadius = self->mRadius, [equalCopy radius], mRadius == v8))
    {
      v11.receiver = self;
      v11.super_class = OADGlowEffect;
      v9 = [(OADEffect *)&v11 isEqual:equalCopy];
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADGlowEffect;
  v2 = [(OADEffect *)&v4 description];

  return v2;
}

@end