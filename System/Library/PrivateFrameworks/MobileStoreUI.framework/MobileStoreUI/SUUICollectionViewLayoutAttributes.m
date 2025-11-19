@interface SUUICollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUICollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SUUICollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 44, self->_backgroundColor);
  v4[45] = self->_position;
  v4[46] = *&self->_zoomingImageAlpha;
  v4[49] = *&self->_zoomingImageLambda;
  v4[47] = *&self->_zoomingImageWidth;
  v4[48] = *&self->_zoomingImageImposedAlphaOfOtherViews;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((backgroundColor = v4->_backgroundColor, backgroundColor == self->_backgroundColor) || [(UIColor *)backgroundColor isEqual:?]) && v4->_position == self->_position && v4->_zoomingImageAlpha == self->_zoomingImageAlpha && v4->_zoomingImageLambda == self->_zoomingImageLambda && v4->_zoomingImageWidth == self->_zoomingImageWidth && v4->_zoomingImageImposedAlphaOfOtherViews == self->_zoomingImageImposedAlphaOfOtherViews)
    {
      v8.receiver = self;
      v8.super_class = SUUICollectionViewLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end