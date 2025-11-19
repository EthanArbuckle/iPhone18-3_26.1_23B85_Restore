@interface OADFillOverlayEffect
- (BOOL)isEqual:(id)a3;
- (OADFillOverlayEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADFillOverlayEffect

- (OADFillOverlayEffect)init
{
  v3.receiver = self;
  v3.super_class = OADFillOverlayEffect;
  result = [(OADEffect *)&v3 initWithType:5];
  if (result)
  {
    *(&result->super.mType + 1) = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [*&self->mBlendMode copyWithZone:a3];
  [v5 setFill:v6];
  [v5 setBlendMode:*(&self->super.mType + 1)];

  return v5;
}

- (unint64_t)hash
{
  v3 = [*&self->mBlendMode hash];
  v4 = *(&self->super.mType + 1);
  v6.receiver = self;
  v6.super_class = OADFillOverlayEffect;
  return v3 ^ v4 ^ [(OADEffect *)&v6 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *&self->mBlendMode;
    v6 = [v4 fill];
    if ([v5 isEqual:v6] && (v7 = *(&self->super.mType + 1), v7 == objc_msgSend(v4, "blendMode")))
    {
      v10.receiver = self;
      v10.super_class = OADFillOverlayEffect;
      v8 = [(OADEffect *)&v10 isEqual:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFillOverlayEffect;
  v2 = [(OADEffect *)&v4 description];

  return v2;
}

@end