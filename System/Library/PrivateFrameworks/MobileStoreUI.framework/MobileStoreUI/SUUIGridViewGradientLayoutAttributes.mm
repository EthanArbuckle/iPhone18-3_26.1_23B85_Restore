@interface SUUIGridViewGradientLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SUUIGridViewGradientLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SUUIGridViewGradientLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v8 copyWithZone:zone];
  v5 = [(IKColor *)self->_gradientColor copy];
  v6 = v4[44];
  v4[44] = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((gradientColor = equalCopy->_gradientColor, gradientColor == self->_gradientColor) || [(IKColor *)gradientColor isEqual:?]))
    {
      v8.receiver = self;
      v8.super_class = SUUIGridViewGradientLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:equalCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SUUIGridViewGradientLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v5 hash];
  return [(IKColor *)self->_gradientColor hash]^ v3;
}

@end