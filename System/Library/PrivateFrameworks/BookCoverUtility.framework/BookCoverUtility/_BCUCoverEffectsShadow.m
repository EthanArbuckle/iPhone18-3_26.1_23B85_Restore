@interface _BCUCoverEffectsShadow
- (CGRect)contentsCenter;
- (CGSize)size;
- (UIEdgeInsets)insets;
- (UIEdgeInsets)roundedInsetsWithSize:(CGSize)a3;
- (_BCUCoverEffectsShadow)initWithImage:(CGImage *)a3 insets:(UIEdgeInsets)a4 blendMode:(id)a5;
@end

@implementation _BCUCoverEffectsShadow

- (_BCUCoverEffectsShadow)initWithImage:(CGImage *)a3 insets:(UIEdgeInsets)a4 blendMode:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v12 = a5;
  v15.receiver = self;
  v15.super_class = _BCUCoverEffectsShadow;
  v13 = [(_BCUCoverEffectsShadow *)&v15 init];
  if (v13)
  {
    v13->_image = CGImageRetain(a3);
    v13->_insets.top = top;
    v13->_insets.left = left;
    v13->_insets.bottom = bottom;
    v13->_insets.right = right;
    objc_storeStrong(&v13->_blendMode, a5);
  }

  return v13;
}

- (CGSize)size
{
  Width = CGImageGetWidth(self->_image);
  Height = CGImageGetHeight(self->_image);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (CGRect)contentsCenter
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  objc_msgSend_size(self, a2, v2);
  v8 = 1.0 - (left + right) / v7;
  v10 = 1.0 - (top + bottom) / v9;
  v11 = top / v9;
  v12 = left / v7;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)roundedInsetsWithSize:(CGSize)a3
{
  width = a3.width;
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  objc_msgSend_size(self, a2, v3, a3.width, a3.height);
  v10 = 1.0;
  if (width > 0.0)
  {
    v10 = (v9 - left - right) / width;
  }

  v11 = floor(top / v10);
  v12 = floor(left / v10);
  v13 = floor(bottom / v10);
  v14 = floor(right / v10);
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)insets
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