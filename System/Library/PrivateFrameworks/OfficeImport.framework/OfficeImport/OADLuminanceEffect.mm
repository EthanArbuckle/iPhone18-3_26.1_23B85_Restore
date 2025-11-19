@interface OADLuminanceEffect
- (BOOL)isEqual:(id)a3;
- (OADLuminanceEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADLuminanceEffect

- (OADLuminanceEffect)init
{
  v3.receiver = self;
  v3.super_class = OADLuminanceEffect;
  return [(OADBlipEffect *)&v3 initWithType:2];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  LODWORD(v5) = *(&self->super.mType + 1);
  [v4 setBrightness:v5];
  *&v6 = self->mBrightness;
  [v4 setContrast:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = self->mBrightness ^ *(&self->super.mType + 1);
  v4.receiver = self;
  v4.super_class = OADLuminanceEffect;
  return v2 ^ [(OADBlipEffect *)&v4 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [v4 brightness], v5 == v6) && (mBrightness = self->mBrightness, objc_msgSend(v4, "contrast"), mBrightness == v8))
  {
    v11.receiver = self;
    v11.super_class = OADLuminanceEffect;
    v9 = [(OADBlipEffect *)&v11 isEqual:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end