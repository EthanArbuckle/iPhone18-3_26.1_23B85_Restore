@interface OADDuotoneEffect
- (BOOL)isEqual:(id)a3;
- (OADDuotoneEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setStyleColor:(id)a3;
@end

@implementation OADDuotoneEffect

- (OADDuotoneEffect)init
{
  v3.receiver = self;
  v3.super_class = OADDuotoneEffect;
  result = [(OADBlipEffect *)&v3 initWithType:5];
  if (result)
  {
    result->mTransferMode1 = 11;
    result->mTransferMode2 = 4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADColor *)self->mColor1 copyWithZone:a3];
  [v5 setColor1:v6];
  v7 = [(OADColor *)self->mColor2 copyWithZone:a3];
  [v5 setColor2:v7];

  return v5;
}

- (void)setStyleColor:(id)a3
{
  v6 = a3;
  v4 = [(OADColor *)self->mColor1 colorForStyleColor:?];
  [(OADDuotoneEffect *)self setColor1:v4];

  v5 = [(OADColor *)self->mColor2 colorForStyleColor:v6];
  [(OADDuotoneEffect *)self setColor2:v5];
}

- (unint64_t)hash
{
  v3 = [(OADColor *)self->mColor1 hash];
  v4 = [(OADColor *)self->mColor2 hash]^ v3;
  v5 = self->mTransferMode1 ^ self->mTransferMode2;
  v7.receiver = self;
  v7.super_class = OADDuotoneEffect;
  return v4 ^ v5 ^ [(OADBlipEffect *)&v7 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mColor1 = self->mColor1;
    v6 = [v4 color1];
    if ([(OADColor *)mColor1 isEqual:v6])
    {
      mColor2 = self->mColor2;
      v8 = [v4 color2];
      if (-[OADColor isEqual:](mColor2, "isEqual:", v8) && (mTransferMode1 = self->mTransferMode1, mTransferMode1 == [v4 transferMode1]) && (mTransferMode2 = self->mTransferMode2, mTransferMode2 == objc_msgSend(v4, "transferMode2")))
      {
        v13.receiver = self;
        v13.super_class = OADDuotoneEffect;
        v11 = [(OADBlipEffect *)&v13 isEqual:v4];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end