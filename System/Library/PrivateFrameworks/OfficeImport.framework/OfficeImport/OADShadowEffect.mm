@interface OADShadowEffect
- (BOOL)isEqual:(id)equal;
- (OADShadowEffect)initWithShadowEffect:(id)effect type:(int)type;
- (OADShadowEffect)initWithType:(int)type;
- (id)description;
- (unint64_t)hash;
- (void)setStyleColor:(id)color;
@end

@implementation OADShadowEffect

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mColor hash]^ self->mBlurRadius ^ self->mDistance ^ self->mAngle;
  v5.receiver = self;
  v5.super_class = OADShadowEffect;
  return v3 ^ [(OADEffect *)&v5 hash];
}

- (OADShadowEffect)initWithType:(int)type
{
  v7.receiver = self;
  v7.super_class = OADShadowEffect;
  v3 = [(OADEffect *)&v7 initWithType:*&type];
  v4 = v3;
  if (v3)
  {
    mColor = v3->mColor;
    v3->mColor = 0;

    v4->mBlurRadius = 0.0;
    v4->mDistance = 0.0;
    v4->mAngle = 0.0;
  }

  return v4;
}

- (OADShadowEffect)initWithShadowEffect:(id)effect type:(int)type
{
  v4 = *&type;
  effectCopy = effect;
  v7 = [(OADShadowEffect *)self initWithType:v4];
  if (v7)
  {
    color = [effectCopy color];
    v9 = [color copy];
    mColor = v7->mColor;
    v7->mColor = v9;

    [effectCopy blurRadius];
    v7->mBlurRadius = v11;
    [effectCopy distance];
    v7->mDistance = v12;
    [effectCopy angle];
    v7->mAngle = v13;
  }

  return v7;
}

- (void)setStyleColor:(id)color
{
  v4 = [(OADColor *)self->mColor colorForStyleColor:color];
  [(OADShadowEffect *)self setColor:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADShadowEffect;
  if ([(OADEffect *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = [(OADColor *)self->mColor isEqual:*(v5 + 2)]&& self->mBlurRadius == v5[6] && self->mDistance == v5[7] && self->mAngle == v5[8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADShadowEffect;
  v2 = [(OADEffect *)&v4 description];

  return v2;
}

@end