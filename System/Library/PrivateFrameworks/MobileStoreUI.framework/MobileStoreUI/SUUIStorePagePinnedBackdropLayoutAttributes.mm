@interface SUUIStorePagePinnedBackdropLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SUUIStorePagePinnedBackdropLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SUUIStorePagePinnedBackdropLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setBackdropColor:self->_backdropColor];
  [v4 setBackdropGroupName:self->_backdropGroupName];
  [v4 setBackdropStyle:self->_backdropStyle];
  [v4 setHidesBackdropView:self->_hidesBackdropView];
  [v4 setTransitionProgress:self->_transitionProgress];
  return v4;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SUUIStorePagePinnedBackdropLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v8 hash];
  v4 = [(UIColor *)self->_backdropColor hash]^ v3;
  v5 = [(NSString *)self->_backdropGroupName hash];
  v6 = 10000;
  if (!self->_hidesBackdropView)
  {
    v6 = 0;
  }

  return v4 ^ v5 ^ self->_backdropStyle ^ v6 ^ llround(self->_transitionProgress * 1000.0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v10.receiver = self;
      v10.super_class = SUUIStorePagePinnedBackdropLayoutAttributes;
      v8 = [(UICollectionViewLayoutAttributes *)&v10 isEqual:v5]&& ((backdropColor = self->_backdropColor, backdropColor == v5->_backdropColor) || [(UIColor *)backdropColor isEqual:?]) && ((backdropGroupName = self->_backdropGroupName, backdropGroupName == v5->_backdropGroupName) || [(NSString *)backdropGroupName isEqualToString:?]) && self->_backdropStyle == v5->_backdropStyle && self->_hidesBackdropView == v5->_hidesBackdropView && self->_transitionProgress != v5->_transitionProgress;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end