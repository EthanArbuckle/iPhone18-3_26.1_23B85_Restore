@interface OADIndexedColor
+ (id)indexedColorWithIndex:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (OADIndexedColor)initWithIndex:(unint64_t)index;
- (id)colorFromPalette:(id)palette;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation OADIndexedColor

- (OADIndexedColor)initWithIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = OADIndexedColor;
  result = [(OADIndexedColor *)&v5 init];
  if (result)
  {
    result->mIndex = index;
  }

  return result;
}

+ (id)indexedColorWithIndex:(unint64_t)index
{
  v3 = [objc_alloc(objc_opt_class()) initWithIndex:index];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIndex:", self->mIndex}];
  transforms = [(OADColor *)self transforms];
  v7 = [transforms copyWithZone:zone];

  [v5 setTransforms:v7];
  return v5;
}

- (id)colorFromPalette:(id)palette
{
  v3 = [palette colorWithIndex:self->mIndex];

  return v3;
}

- (unint64_t)hash
{
  mIndex = self->mIndex;
  v4.receiver = self;
  v4.super_class = OADIndexedColor;
  return [(OADColor *)&v4 hash]^ mIndex;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADIndexedColor hash](self, "hash"), v5 == [equalCopy hash]))
  {
    v8.receiver = self;
    v8.super_class = OADIndexedColor;
    v6 = [(OADColor *)&v8 isEqual:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end