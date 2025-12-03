@interface OADBiLevelEffect
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation OADBiLevelEffect

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  LODWORD(v5) = *(&self->super.mType + 1);
  [v4 setThreshold:v5];
  return v4;
}

- (unint64_t)hash
{
  v2 = *(&self->super.mType + 1);
  v4.receiver = self;
  v4.super_class = OADBiLevelEffect;
  return [(OADBlipEffect *)&v4 hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = *(&self->super.mType + 1), [equalCopy threshold], v5 == v6))
  {
    v9.receiver = self;
    v9.super_class = OADBiLevelEffect;
    v7 = [(OADBlipEffect *)&v9 isEqual:equalCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end