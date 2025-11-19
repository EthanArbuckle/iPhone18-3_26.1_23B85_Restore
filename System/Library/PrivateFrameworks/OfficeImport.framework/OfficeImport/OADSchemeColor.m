@interface OADSchemeColor
+ (id)schemeColorWithIndex:(int)a3;
- (BOOL)isEqual:(id)a3;
- (OADSchemeColor)initWithSchemeColorIndex:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADSchemeColor

- (unint64_t)hash
{
  mIndex = self->mIndex;
  v4.receiver = self;
  v4.super_class = OADSchemeColor;
  return [(OADColor *)&v4 hash]^ mIndex;
}

- (OADSchemeColor)initWithSchemeColorIndex:(int)a3
{
  v5.receiver = self;
  v5.super_class = OADSchemeColor;
  result = [(OADSchemeColor *)&v5 init];
  if (result)
  {
    result->mIndex = a3;
  }

  return result;
}

+ (id)schemeColorWithIndex:(int)a3
{
  v3 = [[OADSchemeColor alloc] initWithSchemeColorIndex:*&a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSchemeColorIndex:", self->mIndex}];
  v6 = [(OADColor *)self transforms];
  v7 = [v6 copyWithZone:a3];

  [v5 setTransforms:v7];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADSchemeColor hash](self, "hash"), v5 == [v4 hash]))
  {
    v8.receiver = self;
    v8.super_class = OADSchemeColor;
    v6 = [(OADColor *)&v8 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end