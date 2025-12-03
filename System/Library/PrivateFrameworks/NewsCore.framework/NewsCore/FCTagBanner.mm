@interface FCTagBanner
- (CGSize)size;
- (FCEdgeInsets)insets;
- (FCTagBanner)initWithAssetHandle:(id)handle size:(CGSize)size insets:(FCEdgeInsets)insets;
@end

@implementation FCTagBanner

- (FCTagBanner)initWithAssetHandle:(id)handle size:(CGSize)size insets:(FCEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = FCTagBanner;
  v14 = [(FCTagBanner *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetHandle, handle);
    v15->_size.width = width;
    v15->_size.height = height;
    v15->_insets.top = top;
    v15->_insets.left = left;
    v15->_insets.bottom = bottom;
    v15->_insets.right = right;
  }

  return v15;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (FCEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end