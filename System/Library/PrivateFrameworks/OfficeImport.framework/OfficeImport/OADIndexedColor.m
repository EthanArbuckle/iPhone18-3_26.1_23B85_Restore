@interface OADIndexedColor
+ (id)indexedColorWithIndex:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (OADIndexedColor)initWithIndex:(unint64_t)a3;
- (id)colorFromPalette:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADIndexedColor

- (OADIndexedColor)initWithIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = OADIndexedColor;
  result = [(OADIndexedColor *)&v5 init];
  if (result)
  {
    result->mIndex = a3;
  }

  return result;
}

+ (id)indexedColorWithIndex:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithIndex:a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIndex:", self->mIndex}];
  v6 = [(OADColor *)self transforms];
  v7 = [v6 copyWithZone:a3];

  [v5 setTransforms:v7];
  return v5;
}

- (id)colorFromPalette:(id)a3
{
  v3 = [a3 colorWithIndex:self->mIndex];

  return v3;
}

- (unint64_t)hash
{
  mIndex = self->mIndex;
  v4.receiver = self;
  v4.super_class = OADIndexedColor;
  return [(OADColor *)&v4 hash]^ mIndex;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADIndexedColor hash](self, "hash"), v5 == [v4 hash]))
  {
    v8.receiver = self;
    v8.super_class = OADIndexedColor;
    v6 = [(OADColor *)&v8 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end