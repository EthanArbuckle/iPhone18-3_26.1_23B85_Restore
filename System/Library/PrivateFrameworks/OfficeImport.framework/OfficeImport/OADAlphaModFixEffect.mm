@interface OADAlphaModFixEffect
- (BOOL)isEqual:(id)a3;
- (OADAlphaModFixEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADAlphaModFixEffect

- (OADAlphaModFixEffect)init
{
  v3.receiver = self;
  v3.super_class = OADAlphaModFixEffect;
  result = [(OADBlipEffect *)&v3 initWithType:4];
  if (result)
  {
    *(&result->super.mType + 1) = 1065353216;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = *(&self->super.mType + 1);
  v4.receiver = self;
  v4.super_class = OADAlphaModFixEffect;
  return [(OADBlipEffect *)&v4 hash]^ v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  LODWORD(v5) = *(&self->super.mType + 1);
  [v4 setAlpha:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [v4 alpha], v5 == v6))
  {
    v9.receiver = self;
    v9.super_class = OADAlphaModFixEffect;
    v7 = [(OADBlipEffect *)&v9 isEqual:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end