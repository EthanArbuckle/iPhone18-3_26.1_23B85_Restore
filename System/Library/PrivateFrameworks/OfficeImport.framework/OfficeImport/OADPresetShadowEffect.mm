@interface OADPresetShadowEffect
- (BOOL)isEqual:(id)equal;
- (OADPresetShadowEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)equivalentOuterShadowEffect;
- (unint64_t)hash;
@end

@implementation OADPresetShadowEffect

- (OADPresetShadowEffect)init
{
  v3.receiver = self;
  v3.super_class = OADPresetShadowEffect;
  result = [(OADShadowEffect *)&v3 initWithType:2];
  if (result)
  {
    *(&result->super.mAngle + 1) = 0;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = *(&self->super.mAngle + 1);
  v4.receiver = self;
  v4.super_class = OADPresetShadowEffect;
  return [(OADShadowEffect *)&v4 hash]^ v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithShadowEffect:type:", self, 2}];
  [v4 setPresetShadowType:*(&self->super.mAngle + 1)];
  return v4;
}

- (id)equivalentOuterShadowEffect
{
  v3 = objc_alloc_init(OADOuterShadowEffect);
  v4 = v3;
  v5 = *(&self->super.mAngle + 1);
  if (v5 <= 10)
  {
    if (v5 <= 7)
    {
      if (v5 == 3)
      {
        [(OADOuterShadowEffect *)v3 setAlignment:8];
        v7 = 0.5;
        LODWORD(v11) = 1109626716;
        [(OADOuterShadowEffect *)v4 setYSkew:v11];
        goto LABEL_28;
      }

      if (v5 != 4)
      {
        if (v5 != 7)
        {
          goto LABEL_29;
        }

        goto LABEL_11;
      }

      goto LABEL_22;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        [(OADOuterShadowEffect *)v3 setAlignment:1];
        v7 = 0.75;
        LODWORD(v8) = 0.75;
      }

      else
      {
        [(OADOuterShadowEffect *)v3 setAlignment:9];
        v7 = 1.25;
        LODWORD(v8) = 1.25;
      }

      [(OADOuterShadowEffect *)v4 setXScale:v8];
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v5 <= 15)
  {
    if (v5 == 11)
    {
      [(OADOuterShadowEffect *)v3 setAlignment:8];
      LODWORD(v10) = 1109626716;
      goto LABEL_25;
    }

    if (v5 != 12)
    {
      if (v5 != 15)
      {
        goto LABEL_29;
      }

LABEL_11:
      [(OADOuterShadowEffect *)v3 setAlignment:8];
      LODWORD(v6) = 1109626716;
LABEL_21:
      v7 = -0.5;
      [(OADOuterShadowEffect *)v4 setXSkew:v6];
LABEL_28:
      *&v9 = v7;
      [(OADOuterShadowEffect *)v4 setYScale:v9];
      goto LABEL_29;
    }

LABEL_22:
    [(OADOuterShadowEffect *)v3 setAlignment:8];
    LODWORD(v10) = -1037856932;
LABEL_25:
    v7 = 0.5;
    [(OADOuterShadowEffect *)v4 setXSkew:v10];
    goto LABEL_28;
  }

  switch(v5)
  {
    case 16:
LABEL_20:
      [(OADOuterShadowEffect *)v3 setAlignment:8];
      LODWORD(v6) = -1037856932;
      goto LABEL_21;
    case 19:
      v7 = 0.5;
      [(OADOuterShadowEffect *)v3 setAlignment:8];
      goto LABEL_28;
    case 20:
      [(OADOuterShadowEffect *)v3 setAlignment:8];
      break;
  }

LABEL_29:
  color = [(OADShadowEffect *)self color];
  [(OADShadowEffect *)v4 setColor:color];

  [(OADShadowEffect *)self blurRadius];
  [(OADShadowEffect *)v4 setBlurRadius:?];
  [(OADShadowEffect *)self distance];
  [(OADShadowEffect *)v4 setDistance:?];
  [(OADShadowEffect *)self angle];
  [(OADShadowEffect *)v4 setAngle:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = OADPresetShadowEffect;
  if ([(OADShadowEffect *)&v7 isEqual:equalCopy])
  {
    v5 = *(&self->super.mAngle + 1) == equalCopy[9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADPresetShadowEffect;
  v2 = [(OADShadowEffect *)&v4 description];

  return v2;
}

@end