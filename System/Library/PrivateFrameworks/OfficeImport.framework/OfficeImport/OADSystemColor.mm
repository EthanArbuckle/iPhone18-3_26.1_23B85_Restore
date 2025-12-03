@interface OADSystemColor
- (BOOL)isEqual:(id)equal;
- (OADSystemColor)initWithSystemColorID:(int)d;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation OADSystemColor

- (OADSystemColor)initWithSystemColorID:(int)d
{
  v5.receiver = self;
  v5.super_class = OADSystemColor;
  result = [(OADSystemColor *)&v5 init];
  if (result)
  {
    result->mSystemColorID = d;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSystemColorID:", self->mSystemColorID}];
  transforms = [(OADColor *)self transforms];
  v7 = [transforms copyWithZone:zone];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADSystemColor hash](self, "hash"), v5 == [equalCopy hash]))
  {
    v8.receiver = self;
    v8.super_class = OADSystemColor;
    v6 = [(OADColor *)&v8 isEqual:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end