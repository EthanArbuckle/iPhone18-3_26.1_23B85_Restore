@interface CKSalientContentRectangleDebugView
- (CGRect)salientContentRectangle;
- (void)layoutSubviews;
- (void)setSalientContentRectangle:(CGRect)rectangle;
@end

@implementation CKSalientContentRectangleDebugView

- (void)setSalientContentRectangle:(CGRect)rectangle
{
  self->_salientContentRectangle = rectangle;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v5 = [blackColor colorWithAlphaComponent:0.2];
  [(CKSalientContentRectangleDebugView *)self setBackgroundColor:v5];

  [(CKSalientContentRectangleDebugView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CKSalientContentRectangleDebugView;
  [(CKSalientContentRectangleDebugView *)&v12 layoutSubviews];
  borderView = self->_borderView;
  if (!borderView)
  {
    v4 = objc_opt_new();
    v5 = self->_borderView;
    self->_borderView = v4;

    layer = [(UIView *)self->_borderView layer];
    [layer setBorderWidth:3.0];

    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    cGColor = [systemGreenColor CGColor];
    layer2 = [(UIView *)self->_borderView layer];
    [layer2 setBorderColor:cGColor];

    systemGreenColor2 = [MEMORY[0x1E69DC888] systemGreenColor];
    v11 = [systemGreenColor2 colorWithAlphaComponent:0.4];
    [(UIView *)self->_borderView setBackgroundColor:v11];

    [(CKSalientContentRectangleDebugView *)self addSubview:self->_borderView];
    borderView = self->_borderView;
  }

  [(UIView *)borderView setFrame:self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height];
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end