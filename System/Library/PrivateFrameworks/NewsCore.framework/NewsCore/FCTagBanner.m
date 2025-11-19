@interface FCTagBanner
- (CGSize)size;
- (FCEdgeInsets)insets;
- (FCTagBanner)initWithAssetHandle:(id)a3 size:(CGSize)a4 insets:(FCEdgeInsets)a5;
@end

@implementation FCTagBanner

- (FCTagBanner)initWithAssetHandle:(id)a3 size:(CGSize)a4 insets:(FCEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = FCTagBanner;
  v14 = [(FCTagBanner *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetHandle, a3);
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