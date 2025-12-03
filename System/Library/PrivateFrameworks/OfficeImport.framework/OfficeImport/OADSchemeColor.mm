@interface OADSchemeColor
+ (id)schemeColorWithIndex:(int)index;
- (BOOL)isEqual:(id)equal;
- (OADSchemeColor)initWithSchemeColorIndex:(int)index;
- (id)copyWithZone:(_NSZone *)zone;
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

- (OADSchemeColor)initWithSchemeColorIndex:(int)index
{
  v5.receiver = self;
  v5.super_class = OADSchemeColor;
  result = [(OADSchemeColor *)&v5 init];
  if (result)
  {
    result->mIndex = index;
  }

  return result;
}

+ (id)schemeColorWithIndex:(int)index
{
  v3 = [[OADSchemeColor alloc] initWithSchemeColorIndex:*&index];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSchemeColorIndex:", self->mIndex}];
  transforms = [(OADColor *)self transforms];
  v7 = [transforms copyWithZone:zone];

  [v5 setTransforms:v7];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADSchemeColor hash](self, "hash"), v5 == [equalCopy hash]))
  {
    v8.receiver = self;
    v8.super_class = OADSchemeColor;
    v6 = [(OADColor *)&v8 isEqual:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end