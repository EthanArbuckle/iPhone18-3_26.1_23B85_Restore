@interface OADOuterShadowEffect
- (BOOL)isEqual:(id)equal;
- (OADOuterShadowEffect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation OADOuterShadowEffect

- (OADOuterShadowEffect)init
{
  v3.receiver = self;
  v3.super_class = OADOuterShadowEffect;
  result = [(OADShadowEffect *)&v3 initWithType:1];
  if (result)
  {
    *(&result->super.mAngle + 1) = 1065353216;
    result->mXScale = 1.0;
    result->mYScale = 0.0;
    result->mXSkew = 0.0;
    LODWORD(result->mYSkew) = 8;
    LOBYTE(result->mAlignment) = 0;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = self->mXScale ^ *(&self->super.mAngle + 1) ^ self->mYScale ^ self->mXSkew;
  v3 = LODWORD(self->mYSkew) ^ LOBYTE(self->mAlignment);
  v5.receiver = self;
  v5.super_class = OADOuterShadowEffect;
  return v2 ^ v3 ^ [(OADShadowEffect *)&v5 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithShadowEffect:type:", self, 1}];
  *(result + 9) = *(&self->super.mAngle + 1);
  *(result + 10) = LODWORD(self->mXScale);
  *(result + 11) = LODWORD(self->mYScale);
  *(result + 12) = LODWORD(self->mXSkew);
  *(result + 13) = LODWORD(self->mYSkew);
  *(result + 56) = self->mAlignment;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADOuterShadowEffect;
  if ([(OADShadowEffect *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = *(&self->super.mAngle + 1) == v5[9] && self->mXScale == v5[10] && self->mYScale == v5[11] && self->mXSkew == v5[12] && LODWORD(self->mYSkew) == *(v5 + 13) && LOBYTE(self->mAlignment) == *(v5 + 56);
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
  v4.super_class = OADOuterShadowEffect;
  v2 = [(OADShadowEffect *)&v4 description];

  return v2;
}

@end