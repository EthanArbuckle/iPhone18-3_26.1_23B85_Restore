@interface OADSystemColor
- (BOOL)isEqual:(id)a3;
- (OADSystemColor)initWithSystemColorID:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADSystemColor

- (OADSystemColor)initWithSystemColorID:(int)a3
{
  v5.receiver = self;
  v5.super_class = OADSystemColor;
  result = [(OADSystemColor *)&v5 init];
  if (result)
  {
    result->mSystemColorID = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSystemColorID:", self->mSystemColorID}];
  v6 = [(OADColor *)self transforms];
  v7 = [v6 copyWithZone:a3];

  [v5 setTransforms:v7];
  return v5;
}

- (unint64_t)hash
{
  mSystemColorID = self->mSystemColorID;
  v4.receiver = self;
  v4.super_class = OADSystemColor;
  return [(OADColor *)&v4 hash]^ mSystemColorID;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADSystemColor hash](self, "hash"), v5 == [v4 hash]))
  {
    v8.receiver = self;
    v8.super_class = OADSystemColor;
    v6 = [(OADColor *)&v8 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end