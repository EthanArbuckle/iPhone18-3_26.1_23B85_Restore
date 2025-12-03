@interface SUUICollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUICollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SUUICollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 44, self->_backgroundColor);
  v4[45] = self->_position;
  v4[46] = *&self->_zoomingImageAlpha;
  v4[49] = *&self->_zoomingImageLambda;
  v4[47] = *&self->_zoomingImageWidth;
  v4[48] = *&self->_zoomingImageImposedAlphaOfOtherViews;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((backgroundColor = equalCopy->_backgroundColor, backgroundColor == self->_backgroundColor) || [(UIColor *)backgroundColor isEqual:?]) && equalCopy->_position == self->_position && equalCopy->_zoomingImageAlpha == self->_zoomingImageAlpha && equalCopy->_zoomingImageLambda == self->_zoomingImageLambda && equalCopy->_zoomingImageWidth == self->_zoomingImageWidth && equalCopy->_zoomingImageImposedAlphaOfOtherViews == self->_zoomingImageImposedAlphaOfOtherViews)
    {
      v8.receiver = self;
      v8.super_class = SUUICollectionViewLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:equalCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end