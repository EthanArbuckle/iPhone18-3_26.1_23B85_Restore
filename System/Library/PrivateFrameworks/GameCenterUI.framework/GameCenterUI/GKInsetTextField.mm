@interface GKInsetTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)textInsets;
@end

@implementation GKInsetTextField

- (CGRect)textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)editingRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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