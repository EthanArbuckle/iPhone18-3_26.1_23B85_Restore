@interface CKTextMetrics
- (CGSize)size;
- (CKTextMetrics)initWithSize:(CGSize)a3 singleLine:(BOOL)a4 alignmentInset:(UIEdgeInsets)a5;
- (UIEdgeInsets)alignmentInset;
@end

@implementation CKTextMetrics

- (UIEdgeInsets)alignmentInset
{
  top = self->_alignmentInset.top;
  left = self->_alignmentInset.left;
  bottom = self->_alignmentInset.bottom;
  right = self->_alignmentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CKTextMetrics)initWithSize:(CGSize)a3 singleLine:(BOOL)a4 alignmentInset:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = CKTextMetrics;
  result = [(CKTextMetrics *)&v13 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_singleLine = a4;
    result->_alignmentInset.top = top;
    result->_alignmentInset.left = left;
    result->_alignmentInset.bottom = bottom;
    result->_alignmentInset.right = right;
  }

  return result;
}

@end