@interface OADPlaceholderColor
- (BOOL)isEqual:(id)equal;
- (id)colorForStyleColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation OADPlaceholderColor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  transforms = [(OADColor *)self transforms];
  v7 = [transforms copyWithZone:zone];
  [v5 setTransforms:v7];

  return v5;
}

- (id)colorForStyleColor:(id)color
{
  colorCopy = color;
  transforms = [(OADColor *)self transforms];
  transforms2 = [colorCopy transforms];
  if (transforms && [transforms count] && (!transforms2 || !objc_msgSend(transforms2, "count")))
  {
    v7 = [colorCopy copy];

    colorCopy = v7;
    [v7 setTransforms:transforms];
  }

  return colorCopy;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = OADPlaceholderColor;
  return [(OADColor *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = OADPlaceholderColor;
    v5 = [(OADColor *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end