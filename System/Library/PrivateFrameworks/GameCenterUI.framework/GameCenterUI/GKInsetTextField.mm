@interface GKInsetTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)textInsets;
@end

@implementation GKInsetTextField

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(GKInsetTextField *)self textInsets];
  v9 = v8;
  [(GKInsetTextField *)self textInsets];
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectInset(*&v12, v9, v11);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(GKInsetTextField *)self textInsets];
  v9 = v8;
  [(GKInsetTextField *)self textInsets];
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectInset(*&v12, v9, v11);
}

- (CGSize)textInsets
{
  width = self->_textInsets.width;
  height = self->_textInsets.height;
  result.height = height;
  result.width = width;
  return result;
}

@end